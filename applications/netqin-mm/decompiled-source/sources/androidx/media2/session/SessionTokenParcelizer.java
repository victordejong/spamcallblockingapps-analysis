package androidx.media2.session;

import androidx.media2.session.SessionToken;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenParcelizer.class */
public final class SessionTokenParcelizer {
    public static SessionToken read(VersionedParcel versionedParcel) {
        SessionToken sessionToken = new SessionToken();
        sessionToken.f2232a = (SessionToken.AbstractC0432a) versionedParcel.m36994a((VersionedParcel) sessionToken.f2232a, 1);
        return sessionToken;
    }

    public static void write(SessionToken sessionToken, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36971b(sessionToken.f2232a, 1);
    }
}
