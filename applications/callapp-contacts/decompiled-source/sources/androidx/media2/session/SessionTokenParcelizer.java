package androidx.media2.session;

import androidx.media2.session.SessionToken;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenParcelizer.class */
public final class SessionTokenParcelizer {
    public static SessionToken read(VersionedParcel versionedParcel) {
        SessionToken sessionToken = new SessionToken();
        sessionToken.f4550a = (SessionToken.SessionTokenImpl) versionedParcel.b((VersionedParcel) sessionToken.f4550a, 1);
        return sessionToken;
    }

    public static void write(SessionToken sessionToken, VersionedParcel versionedParcel) {
        versionedParcel.a(sessionToken.f4550a, 1);
    }
}
