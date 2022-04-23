package androidx.media2.exoplayer.external.metadata;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/MetadataDecoder.class */
public interface MetadataDecoder {
    @Nullable
    Metadata decode(MetadataInputBuffer metadataInputBuffer);
}
