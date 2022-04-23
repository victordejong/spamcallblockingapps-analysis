package androidx.media2.exoplayer.external.audio;

import androidx.annotation.CallSuper;
import androidx.annotation.RestrictTo;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/BaseAudioProcessor.class */
public abstract class BaseAudioProcessor implements AudioProcessor {
    public ByteBuffer buffer;
    public boolean inputEnded;
    public ByteBuffer outputBuffer;
    public int channelCount = -1;
    public int sampleRateHz = -1;
    public int encoding = -1;

    public BaseAudioProcessor() {
        ByteBuffer byteBuffer = AudioProcessor.EMPTY_BUFFER;
        this.buffer = byteBuffer;
        this.outputBuffer = byteBuffer;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void flush() {
        this.outputBuffer = AudioProcessor.EMPTY_BUFFER;
        this.inputEnded = false;
        onFlush();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    @CallSuper
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.outputBuffer;
        this.outputBuffer = AudioProcessor.EMPTY_BUFFER;
        return byteBuffer;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public int getOutputChannelCount() {
        return this.channelCount;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public int getOutputEncoding() {
        return this.encoding;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public int getOutputSampleRateHz() {
        return this.sampleRateHz;
    }

    public final boolean hasPendingOutput() {
        return this.outputBuffer.hasRemaining();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public boolean isActive() {
        return this.sampleRateHz != -1;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    @CallSuper
    public boolean isEnded() {
        return this.inputEnded && this.outputBuffer == AudioProcessor.EMPTY_BUFFER;
    }

    public void onFlush() {
    }

    public void onQueueEndOfStream() {
    }

    public void onReset() {
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void queueEndOfStream() {
        this.inputEnded = true;
        onQueueEndOfStream();
    }

    public final ByteBuffer replaceOutputBuffer(int i) {
        if (this.buffer.capacity() < i) {
            this.buffer = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.buffer.clear();
        }
        ByteBuffer byteBuffer = this.buffer;
        this.outputBuffer = byteBuffer;
        return byteBuffer;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void reset() {
        flush();
        this.buffer = AudioProcessor.EMPTY_BUFFER;
        this.sampleRateHz = -1;
        this.channelCount = -1;
        this.encoding = -1;
        onReset();
    }

    public final boolean setInputFormat(int i, int i2, int i3) {
        if (i == this.sampleRateHz && i2 == this.channelCount && i3 == this.encoding) {
            return false;
        }
        this.sampleRateHz = i;
        this.channelCount = i2;
        this.encoding = i3;
        return true;
    }
}
