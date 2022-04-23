package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItemParcelizer.class */
public final class MediaItemParcelizer {
    public static MediaItem read(VersionedParcel versionedParcel) {
        MediaItem mediaItem = new MediaItem();
        mediaItem.f1518b = (MediaMetadata) versionedParcel.m36994a((VersionedParcel) mediaItem.f1518b, 1);
        mediaItem.f1519c = versionedParcel.m36999a(mediaItem.f1519c, 2);
        mediaItem.f1520d = versionedParcel.m36999a(mediaItem.f1520d, 3);
        mediaItem.mo32075f();
        return mediaItem;
    }

    public static void write(MediaItem mediaItem, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        mediaItem.mo32076a(versionedParcel.m36962c());
        versionedParcel.m36971b(mediaItem.f1518b, 1);
        versionedParcel.m36976b(mediaItem.f1519c, 2);
        versionedParcel.m36976b(mediaItem.f1520d, 3);
    }
}
