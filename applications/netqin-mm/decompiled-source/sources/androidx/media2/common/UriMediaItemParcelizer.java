package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/UriMediaItemParcelizer.class */
public final class UriMediaItemParcelizer {
    public static UriMediaItem read(VersionedParcel versionedParcel) {
        UriMediaItem uriMediaItem = new UriMediaItem();
        uriMediaItem.f1518b = (MediaMetadata) versionedParcel.m36994a((VersionedParcel) uriMediaItem.f1518b, 1);
        uriMediaItem.f1519c = versionedParcel.m36999a(uriMediaItem.f1519c, 2);
        uriMediaItem.f1520d = versionedParcel.m36999a(uriMediaItem.f1520d, 3);
        uriMediaItem.mo32075f();
        return uriMediaItem;
    }

    public static void write(UriMediaItem uriMediaItem, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        uriMediaItem.mo32076a(versionedParcel.m36962c());
        versionedParcel.m36971b(uriMediaItem.f1518b, 1);
        versionedParcel.m36976b(uriMediaItem.f1519c, 2);
        versionedParcel.m36976b(uriMediaItem.f1520d, 3);
    }
}
