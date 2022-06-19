package androidx.media2.common;

import androidx.media2.common.SessionPlayer;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/TrackInfoParcelizer.class */
public final class TrackInfoParcelizer {
    public static SessionPlayer.TrackInfo read(VersionedParcel versionedParcel) {
        SessionPlayer.TrackInfo trackInfo = new SessionPlayer.TrackInfo();
        trackInfo.f5048a = versionedParcel.m39644b(trackInfo.f5048a, 1);
        trackInfo.f5049b = versionedParcel.m39644b(trackInfo.f5049b, 3);
        trackInfo.f5052e = versionedParcel.m39642b(trackInfo.f5052e, 4);
        trackInfo.mo39666e();
        return trackInfo;
    }

    public static void write(SessionPlayer.TrackInfo trackInfo, VersionedParcel versionedParcel) {
        trackInfo.mo39667a(false);
        versionedParcel.m39664a(trackInfo.f5048a, 1);
        versionedParcel.m39664a(trackInfo.f5049b, 3);
        versionedParcel.m39662a(trackInfo.f5052e, 4);
    }
}
