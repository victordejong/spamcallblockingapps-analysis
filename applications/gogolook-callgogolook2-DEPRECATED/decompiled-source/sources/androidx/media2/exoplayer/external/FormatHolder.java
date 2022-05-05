package androidx.media2.exoplayer.external;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.drm.DecryptionResource;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/FormatHolder.class */
public final class FormatHolder {
    @Nullable
    public DecryptionResource<?> decryptionResource;
    public boolean decryptionResourceIsProvided;
    @Nullable
    public Format format;
}
