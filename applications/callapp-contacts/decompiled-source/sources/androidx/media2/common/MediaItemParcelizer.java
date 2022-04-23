package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItemParcelizer.class */
public final class MediaItemParcelizer {
    public static MediaItem read(VersionedParcel versionedParcel) {
        MediaItem mediaItem = new MediaItem();
        mediaItem.f2738d = (MediaMetadata) versionedParcel.b((VersionedParcel) mediaItem.f2738d, 1);
        mediaItem.e = versionedParcel.b(mediaItem.e, 2);
        mediaItem.f = versionedParcel.b(mediaItem.f, 3);
        mediaItem.e();
        return mediaItem;
    }

    public static void write(MediaItem mediaItem, VersionedParcel versionedParcel) {
        mediaItem.a(false);
        versionedParcel.a(mediaItem.f2738d, 1);
        versionedParcel.a(mediaItem.e, 2);
        versionedParcel.a(mediaItem.f, 3);
    }
}
