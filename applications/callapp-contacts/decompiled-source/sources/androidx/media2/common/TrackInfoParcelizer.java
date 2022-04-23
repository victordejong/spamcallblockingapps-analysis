package androidx.media2.common;

import androidx.media2.common.SessionPlayer;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/TrackInfoParcelizer.class */
public final class TrackInfoParcelizer {
    public static SessionPlayer.TrackInfo read(VersionedParcel versionedParcel) {
        SessionPlayer.TrackInfo trackInfo = new SessionPlayer.TrackInfo();
        trackInfo.f2754a = versionedParcel.b(trackInfo.f2754a, 1);
        trackInfo.f2755b = versionedParcel.b(trackInfo.f2755b, 3);
        trackInfo.e = versionedParcel.b(trackInfo.e, 4);
        trackInfo.e();
        return trackInfo;
    }

    public static void write(SessionPlayer.TrackInfo trackInfo, VersionedParcel versionedParcel) {
        trackInfo.a(false);
        versionedParcel.a(trackInfo.f2754a, 1);
        versionedParcel.a(trackInfo.f2755b, 3);
        versionedParcel.a(trackInfo.e, 4);
    }
}
