package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadataParcelizer.class */
public final class MediaMetadataParcelizer {
    public static MediaMetadata read(VersionedParcel versionedParcel) {
        MediaMetadata mediaMetadata = new MediaMetadata();
        mediaMetadata.f5039c = versionedParcel.m39642b(mediaMetadata.f5039c, 1);
        mediaMetadata.f5040d = (ParcelImplListSlice) versionedParcel.m39640b((VersionedParcel) mediaMetadata.f5040d, 2);
        mediaMetadata.mo39666e();
        return mediaMetadata;
    }

    public static void write(MediaMetadata mediaMetadata, VersionedParcel versionedParcel) {
        mediaMetadata.mo39667a(false);
        versionedParcel.m39662a(mediaMetadata.f5039c, 1);
        versionedParcel.m39660a(mediaMetadata.f5040d, 2);
    }
}
