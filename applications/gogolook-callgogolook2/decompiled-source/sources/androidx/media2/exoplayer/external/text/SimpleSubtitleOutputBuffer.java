package androidx.media2.exoplayer.external.text;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/SimpleSubtitleOutputBuffer.class */
public final class SimpleSubtitleOutputBuffer extends SubtitleOutputBuffer {
    public final SimpleSubtitleDecoder owner;

    public SimpleSubtitleOutputBuffer(SimpleSubtitleDecoder simpleSubtitleDecoder) {
        this.owner = simpleSubtitleDecoder;
    }

    @Override // androidx.media2.exoplayer.external.text.SubtitleOutputBuffer, androidx.media2.exoplayer.external.decoder.OutputBuffer
    public final void release() {
        this.owner.releaseOutputBuffer((SubtitleOutputBuffer) this);
    }
}
