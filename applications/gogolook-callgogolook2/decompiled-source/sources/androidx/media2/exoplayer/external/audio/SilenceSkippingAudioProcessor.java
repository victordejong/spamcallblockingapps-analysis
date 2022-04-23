package androidx.media2.exoplayer.external.audio;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor.class */
public final class SilenceSkippingAudioProcessor extends BaseAudioProcessor {
    public static final long MINIMUM_SILENCE_DURATION_US = 150000;
    public static final long PADDING_SILENCE_US = 20000;
    public static final short SILENCE_THRESHOLD_LEVEL = 1024;
    public static final byte SILENCE_THRESHOLD_LEVEL_MSB = 4;
    public static final int STATE_MAYBE_SILENT = 1;
    public static final int STATE_NOISY = 0;
    public static final int STATE_SILENT = 2;
    public int bytesPerFrame;
    public boolean enabled;
    public boolean hasOutputNoise;
    public byte[] maybeSilenceBuffer;
    public int maybeSilenceBufferSize;
    public byte[] paddingBuffer;
    public int paddingSize;
    public long skippedFrames;
    public int state;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor$State.class */
    public @interface State {
    }

    public SilenceSkippingAudioProcessor() {
        byte[] bArr = Util.EMPTY_BYTE_ARRAY;
        this.maybeSilenceBuffer = bArr;
        this.paddingBuffer = bArr;
    }

    private int durationUsToFrames(long j) {
        return (int) ((j * this.sampleRateHz) / 1000000);
    }

    private int findNoiseLimit(ByteBuffer byteBuffer) {
        for (int limit = byteBuffer.limit() - 1; limit >= byteBuffer.position(); limit -= 2) {
            if (Math.abs((int) byteBuffer.get(limit)) > 4) {
                int i = this.bytesPerFrame;
                return ((limit / i) * i) + i;
            }
        }
        return byteBuffer.position();
    }

    private int findNoisePosition(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position() + 1; position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.get(position)) > 4) {
                int i = this.bytesPerFrame;
                return i * (position / i);
            }
        }
        return byteBuffer.limit();
    }

    private void output(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        replaceOutputBuffer(remaining).put(byteBuffer).flip();
        if (remaining > 0) {
            this.hasOutputNoise = true;
        }
    }

    private void output(byte[] bArr, int i) {
        replaceOutputBuffer(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.hasOutputNoise = true;
        }
    }

    private void processMaybeSilence(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int findNoisePosition = findNoisePosition(byteBuffer);
        int position = findNoisePosition - byteBuffer.position();
        byte[] bArr = this.maybeSilenceBuffer;
        int length = bArr.length;
        int i = this.maybeSilenceBufferSize;
        int i2 = length - i;
        if (findNoisePosition >= limit || position >= i2) {
            int min = Math.min(position, i2);
            byteBuffer.limit(byteBuffer.position() + min);
            byteBuffer.get(this.maybeSilenceBuffer, this.maybeSilenceBufferSize, min);
            this.maybeSilenceBufferSize += min;
            int i3 = this.maybeSilenceBufferSize;
            byte[] bArr2 = this.maybeSilenceBuffer;
            if (i3 == bArr2.length) {
                if (this.hasOutputNoise) {
                    output(bArr2, this.paddingSize);
                    this.skippedFrames += (this.maybeSilenceBufferSize - (this.paddingSize * 2)) / this.bytesPerFrame;
                } else {
                    this.skippedFrames += (i3 - this.paddingSize) / this.bytesPerFrame;
                }
                updatePaddingBuffer(byteBuffer, this.maybeSilenceBuffer, this.maybeSilenceBufferSize);
                this.maybeSilenceBufferSize = 0;
                this.state = 2;
            }
            byteBuffer.limit(limit);
            return;
        }
        output(bArr, i);
        this.maybeSilenceBufferSize = 0;
        this.state = 0;
    }

    private void processNoisy(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.maybeSilenceBuffer.length));
        int findNoiseLimit = findNoiseLimit(byteBuffer);
        if (findNoiseLimit == byteBuffer.position()) {
            this.state = 1;
        } else {
            byteBuffer.limit(findNoiseLimit);
            output(byteBuffer);
        }
        byteBuffer.limit(limit);
    }

    private void processSilence(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int findNoisePosition = findNoisePosition(byteBuffer);
        byteBuffer.limit(findNoisePosition);
        this.skippedFrames += byteBuffer.remaining() / this.bytesPerFrame;
        updatePaddingBuffer(byteBuffer, this.paddingBuffer, this.paddingSize);
        if (findNoisePosition < limit) {
            output(this.paddingBuffer, this.paddingSize);
            this.state = 0;
            byteBuffer.limit(limit);
        }
    }

    private void updatePaddingBuffer(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.paddingSize);
        int i2 = this.paddingSize - min;
        System.arraycopy(bArr, i - i2, this.paddingBuffer, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.paddingBuffer, i2, min);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public boolean configure(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (i3 == 2) {
            this.bytesPerFrame = i2 * 2;
            return setInputFormat(i, i2, i3);
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    public long getSkippedFrames() {
        return this.skippedFrames;
    }

    @Override // androidx.media2.exoplayer.external.audio.BaseAudioProcessor, androidx.media2.exoplayer.external.audio.AudioProcessor
    public boolean isActive() {
        return super.isActive() && this.enabled;
    }

    @Override // androidx.media2.exoplayer.external.audio.BaseAudioProcessor
    public void onFlush() {
        if (isActive()) {
            int durationUsToFrames = durationUsToFrames(MINIMUM_SILENCE_DURATION_US) * this.bytesPerFrame;
            if (this.maybeSilenceBuffer.length != durationUsToFrames) {
                this.maybeSilenceBuffer = new byte[durationUsToFrames];
            }
            this.paddingSize = durationUsToFrames(PADDING_SILENCE_US) * this.bytesPerFrame;
            int length = this.paddingBuffer.length;
            int i = this.paddingSize;
            if (length != i) {
                this.paddingBuffer = new byte[i];
            }
        }
        this.state = 0;
        this.skippedFrames = 0L;
        this.maybeSilenceBufferSize = 0;
        this.hasOutputNoise = false;
    }

    @Override // androidx.media2.exoplayer.external.audio.BaseAudioProcessor
    public void onQueueEndOfStream() {
        int i = this.maybeSilenceBufferSize;
        if (i > 0) {
            output(this.maybeSilenceBuffer, i);
        }
        if (!this.hasOutputNoise) {
            this.skippedFrames += this.paddingSize / this.bytesPerFrame;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.BaseAudioProcessor
    public void onReset() {
        this.enabled = false;
        this.paddingSize = 0;
        byte[] bArr = Util.EMPTY_BYTE_ARRAY;
        this.maybeSilenceBuffer = bArr;
        this.paddingBuffer = bArr;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !hasPendingOutput()) {
            int i = this.state;
            if (i == 0) {
                processNoisy(byteBuffer);
            } else if (i == 1) {
                processMaybeSilence(byteBuffer);
            } else if (i == 2) {
                processSilence(byteBuffer);
            } else {
                throw new IllegalStateException();
            }
        }
    }

    public void setEnabled(boolean z) {
        this.enabled = z;
        flush();
    }
}
