package androidx.media2.exoplayer.external.audio;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.util.Util;
import java.nio.ByteBuffer;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/TrimmingAudioProcessor.class */
public final class TrimmingAudioProcessor extends BaseAudioProcessor {
    public static final int OUTPUT_ENCODING = 2;
    public int bytesPerFrame;
    public byte[] endBuffer = Util.EMPTY_BYTE_ARRAY;
    public int endBufferSize;
    public boolean isActive;
    public int pendingTrimStartBytes;
    public boolean receivedInputSinceConfigure;
    public int trimEndFrames;
    public int trimStartFrames;
    public long trimmedFrameCount;

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public boolean configure(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        int i4;
        if (i3 == 2) {
            if (this.endBufferSize > 0) {
                this.trimmedFrameCount += i4 / this.bytesPerFrame;
            }
            this.bytesPerFrame = Util.getPcmFrameSize(2, i2);
            int i5 = this.trimEndFrames;
            int i6 = this.bytesPerFrame;
            this.endBuffer = new byte[i5 * i6];
            boolean z = false;
            this.endBufferSize = 0;
            int i7 = this.trimStartFrames;
            this.pendingTrimStartBytes = i6 * i7;
            boolean z2 = this.isActive;
            this.isActive = (i7 == 0 && i5 == 0) ? false : true;
            this.receivedInputSinceConfigure = false;
            setInputFormat(i, i2, i3);
            if (z2 != this.isActive) {
                z = true;
            }
            return z;
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // androidx.media2.exoplayer.external.audio.BaseAudioProcessor, androidx.media2.exoplayer.external.audio.AudioProcessor
    public ByteBuffer getOutput() {
        int i;
        if (super.isEnded() && (i = this.endBufferSize) > 0) {
            replaceOutputBuffer(i).put(this.endBuffer, 0, this.endBufferSize).flip();
            this.endBufferSize = 0;
        }
        return super.getOutput();
    }

    public long getTrimmedFrameCount() {
        return this.trimmedFrameCount;
    }

    @Override // androidx.media2.exoplayer.external.audio.BaseAudioProcessor, androidx.media2.exoplayer.external.audio.AudioProcessor
    public boolean isActive() {
        return this.isActive;
    }

    @Override // androidx.media2.exoplayer.external.audio.BaseAudioProcessor, androidx.media2.exoplayer.external.audio.AudioProcessor
    public boolean isEnded() {
        return super.isEnded() && this.endBufferSize == 0;
    }

    @Override // androidx.media2.exoplayer.external.audio.BaseAudioProcessor
    public void onFlush() {
        if (this.receivedInputSinceConfigure) {
            this.pendingTrimStartBytes = 0;
        }
        this.endBufferSize = 0;
    }

    @Override // androidx.media2.exoplayer.external.audio.BaseAudioProcessor
    public void onReset() {
        this.endBuffer = Util.EMPTY_BYTE_ARRAY;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i != 0) {
            this.receivedInputSinceConfigure = true;
            int min = Math.min(i, this.pendingTrimStartBytes);
            this.trimmedFrameCount += min / this.bytesPerFrame;
            this.pendingTrimStartBytes -= min;
            byteBuffer.position(position + min);
            if (this.pendingTrimStartBytes <= 0) {
                int i2 = i - min;
                int length = (this.endBufferSize + i2) - this.endBuffer.length;
                ByteBuffer replaceOutputBuffer = replaceOutputBuffer(length);
                int constrainValue = Util.constrainValue(length, 0, this.endBufferSize);
                replaceOutputBuffer.put(this.endBuffer, 0, constrainValue);
                int constrainValue2 = Util.constrainValue(length - constrainValue, 0, i2);
                byteBuffer.limit(byteBuffer.position() + constrainValue2);
                replaceOutputBuffer.put(byteBuffer);
                byteBuffer.limit(limit);
                int i3 = i2 - constrainValue2;
                this.endBufferSize -= constrainValue;
                byte[] bArr = this.endBuffer;
                System.arraycopy(bArr, constrainValue, bArr, 0, this.endBufferSize);
                byteBuffer.get(this.endBuffer, this.endBufferSize, i3);
                this.endBufferSize += i3;
                replaceOutputBuffer.flip();
            }
        }
    }

    public void resetTrimmedFrameCount() {
        this.trimmedFrameCount = 0L;
    }

    public void setTrimFrameCount(int i, int i2) {
        this.trimStartFrames = i;
        this.trimEndFrames = i2;
    }
}
