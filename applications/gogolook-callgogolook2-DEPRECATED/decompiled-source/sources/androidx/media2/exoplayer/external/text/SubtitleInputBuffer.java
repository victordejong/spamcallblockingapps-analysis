package androidx.media2.exoplayer.external.text;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.decoder.DecoderInputBuffer;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/SubtitleInputBuffer.class */
public class SubtitleInputBuffer extends DecoderInputBuffer {
    public long subsampleOffsetUs;

    public SubtitleInputBuffer() {
        super(1);
    }
}
