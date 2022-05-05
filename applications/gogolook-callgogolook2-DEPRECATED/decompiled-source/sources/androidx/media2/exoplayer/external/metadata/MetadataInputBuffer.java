package androidx.media2.exoplayer.external.metadata;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.decoder.DecoderInputBuffer;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/MetadataInputBuffer.class */
public final class MetadataInputBuffer extends DecoderInputBuffer {
    public long subsampleOffsetUs;

    public MetadataInputBuffer() {
        super(1);
    }
}
