package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItemParcelizer.class */
public final class MediaItemParcelizer {
    public static MediaItem read(VersionedParcel versionedParcel) {
        MediaItem mediaItem = new MediaItem();
        mediaItem.f5028d = (MediaMetadata) versionedParcel.m39638b((VersionedParcel) mediaItem.f5028d, 1);
        mediaItem.f5029e = versionedParcel.m39643b(mediaItem.f5029e, 2);
        mediaItem.f5030f = versionedParcel.m39643b(mediaItem.f5030f, 3);
        mediaItem.mo39666e();
        return mediaItem;
    }

    public static void write(MediaItem mediaItem, VersionedParcel versionedParcel) {
        mediaItem.mo39667a(false);
        versionedParcel.m39658a(mediaItem.f5028d, 1);
        versionedParcel.m39663a(mediaItem.f5029e, 2);
        versionedParcel.m39663a(mediaItem.f5030f, 3);
    }
}
