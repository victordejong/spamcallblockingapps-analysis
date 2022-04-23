package androidx.media2.exoplayer.external.audio;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/TeeAudioProcessor.class */
public final class TeeAudioProcessor extends BaseAudioProcessor {
    public final AudioBufferSink audioBufferSink;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/TeeAudioProcessor$AudioBufferSink.class */
    public interface AudioBufferSink {
        void flush(int i, int i2, int i3);

        void handleBuffer(ByteBuffer byteBuffer);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/TeeAudioProcessor$WavFileAudioBufferSink.class */
    public static final class WavFileAudioBufferSink implements AudioBufferSink {
        public static final int FILE_SIZE_MINUS_44_OFFSET = 40;
        public static final int FILE_SIZE_MINUS_8_OFFSET = 4;
        public static final int HEADER_LENGTH = 44;
        public static final String TAG = "WaveFileAudioBufferSink";
        public int bytesWritten;
        public int channelCount;
        public int counter;
        public int encoding;
        public final String outputFileNamePrefix;
        @Nullable
        public RandomAccessFile randomAccessFile;
        public int sampleRateHz;
        public final byte[] scratchBuffer = new byte[1024];
        public final ByteBuffer scratchByteBuffer = ByteBuffer.wrap(this.scratchBuffer).order(ByteOrder.LITTLE_ENDIAN);

        public WavFileAudioBufferSink(String str) {
            this.outputFileNamePrefix = str;
        }

        private String getNextOutputFileName() {
            String str = this.outputFileNamePrefix;
            int i = this.counter;
            this.counter = i + 1;
            return Util.formatInvariant("%s-%04d.wav", str, Integer.valueOf(i));
        }

        private void maybePrepareFile() throws IOException {
            if (this.randomAccessFile == null) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(getNextOutputFileName(), "rw");
                writeFileHeader(randomAccessFile);
                this.randomAccessFile = randomAccessFile;
                this.bytesWritten = 44;
            }
        }

        private void reset() throws IOException {
            RandomAccessFile randomAccessFile = this.randomAccessFile;
            if (randomAccessFile != null) {
                try {
                    this.scratchByteBuffer.clear();
                    this.scratchByteBuffer.putInt(this.bytesWritten - 8);
                    randomAccessFile.seek(4L);
                    randomAccessFile.write(this.scratchBuffer, 0, 4);
                    this.scratchByteBuffer.clear();
                    this.scratchByteBuffer.putInt(this.bytesWritten - 44);
                    randomAccessFile.seek(40L);
                    randomAccessFile.write(this.scratchBuffer, 0, 4);
                } catch (IOException e) {
                    Log.m37482w(TAG, "Error updating file size", e);
                }
                try {
                    randomAccessFile.close();
                } finally {
                    this.randomAccessFile = null;
                }
            }
        }

        private void writeBuffer(ByteBuffer byteBuffer) throws IOException {
            RandomAccessFile randomAccessFile = (RandomAccessFile) Assertions.checkNotNull(this.randomAccessFile);
            while (byteBuffer.hasRemaining()) {
                int min = Math.min(byteBuffer.remaining(), this.scratchBuffer.length);
                byteBuffer.get(this.scratchBuffer, 0, min);
                randomAccessFile.write(this.scratchBuffer, 0, min);
                this.bytesWritten += min;
            }
        }

        private void writeFileHeader(RandomAccessFile randomAccessFile) throws IOException {
            randomAccessFile.writeInt(WavUtil.RIFF_FOURCC);
            randomAccessFile.writeInt(-1);
            randomAccessFile.writeInt(WavUtil.WAVE_FOURCC);
            randomAccessFile.writeInt(WavUtil.FMT_FOURCC);
            this.scratchByteBuffer.clear();
            this.scratchByteBuffer.putInt(16);
            this.scratchByteBuffer.putShort((short) WavUtil.getTypeForEncoding(this.encoding));
            this.scratchByteBuffer.putShort((short) this.channelCount);
            this.scratchByteBuffer.putInt(this.sampleRateHz);
            int pcmFrameSize = Util.getPcmFrameSize(this.encoding, this.channelCount);
            this.scratchByteBuffer.putInt(this.sampleRateHz * pcmFrameSize);
            this.scratchByteBuffer.putShort((short) pcmFrameSize);
            this.scratchByteBuffer.putShort((short) ((pcmFrameSize * 8) / this.channelCount));
            randomAccessFile.write(this.scratchBuffer, 0, this.scratchByteBuffer.position());
            randomAccessFile.writeInt(1684108385);
            randomAccessFile.writeInt(-1);
        }

        @Override // androidx.media2.exoplayer.external.audio.TeeAudioProcessor.AudioBufferSink
        public void flush(int i, int i2, int i3) {
            try {
                reset();
            } catch (IOException e) {
                Log.m37486e(TAG, "Error resetting", e);
            }
            this.sampleRateHz = i;
            this.channelCount = i2;
            this.encoding = i3;
        }

        @Override // androidx.media2.exoplayer.external.audio.TeeAudioProcessor.AudioBufferSink
        public void handleBuffer(ByteBuffer byteBuffer) {
            try {
                maybePrepareFile();
                writeBuffer(byteBuffer);
            } catch (IOException e) {
                Log.m37486e(TAG, "Error writing data", e);
            }
        }
    }

    public TeeAudioProcessor(AudioBufferSink audioBufferSink) {
        this.audioBufferSink = (AudioBufferSink) Assertions.checkNotNull(audioBufferSink);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public boolean configure(int i, int i2, int i3) {
        return setInputFormat(i, i2, i3);
    }

    @Override // androidx.media2.exoplayer.external.audio.BaseAudioProcessor
    public void onFlush() {
        if (isActive()) {
            this.audioBufferSink.flush(this.sampleRateHz, this.channelCount, this.encoding);
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        if (remaining != 0) {
            this.audioBufferSink.handleBuffer(byteBuffer.asReadOnlyBuffer());
            replaceOutputBuffer(remaining).put(byteBuffer).flip();
        }
    }
}
