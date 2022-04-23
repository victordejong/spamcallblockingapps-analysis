package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadataParcelizer.class */
public final class MediaMetadataParcelizer {
    public static MediaMetadata read(VersionedParcel versionedParcel) {
        MediaMetadata mediaMetadata = new MediaMetadata();
        mediaMetadata.f2745c = versionedParcel.b(mediaMetadata.f2745c, 1);
        mediaMetadata.f2746d = (ParcelImplListSlice) versionedParcel.b((VersionedParcel) mediaMetadata.f2746d, 2);
        mediaMetadata.e();
        return mediaMetadata;
    }

    public static void write(MediaMetadata mediaMetadata, VersionedParcel versionedParcel) {
        mediaMetadata.a(false);
        versionedParcel.a(mediaMetadata.f2745c, 1);
        versionedParcel.a(mediaMetadata.f2746d, 2);
    }
}
