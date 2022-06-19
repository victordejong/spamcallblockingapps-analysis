package androidx.media2.session;

import androidx.media2.session.SessionToken;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenParcelizer.class */
public final class SessionTokenParcelizer {
    public static SessionToken read(VersionedParcel versionedParcel) {
        SessionToken sessionToken = new SessionToken();
        sessionToken.f8763a = (SessionToken.SessionTokenImpl) versionedParcel.m39638b((VersionedParcel) sessionToken.f8763a, 1);
        return sessionToken;
    }

    public static void write(SessionToken sessionToken, VersionedParcel versionedParcel) {
        versionedParcel.m39658a(sessionToken.f8763a, 1);
    }
}
