package androidx.media2.session;

import androidx.media2.common.MediaItem;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionResultParcelizer.class */
public final class SessionResultParcelizer {
    public static SessionResult read(VersionedParcel versionedParcel) {
        SessionResult sessionResult = new SessionResult();
        sessionResult.f8758a = versionedParcel.m39644b(sessionResult.f8758a, 1);
        sessionResult.f8759b = versionedParcel.m39643b(sessionResult.f8759b, 2);
        sessionResult.f8760c = versionedParcel.m39642b(sessionResult.f8760c, 3);
        sessionResult.f8762e = (MediaItem) versionedParcel.m39638b((VersionedParcel) sessionResult.f8762e, 4);
        sessionResult.mo39666e();
        return sessionResult;
    }

    public static void write(SessionResult sessionResult, VersionedParcel versionedParcel) {
        sessionResult.mo39667a(false);
        versionedParcel.m39664a(sessionResult.f8758a, 1);
        versionedParcel.m39663a(sessionResult.f8759b, 2);
        versionedParcel.m39662a(sessionResult.f8760c, 3);
        versionedParcel.m39658a(sessionResult.f8762e, 4);
    }
}
