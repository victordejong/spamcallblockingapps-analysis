package androidx.media2.session;

import android.content.ComponentName;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplLegacyParcelizer.class */
public final class SessionTokenImplLegacyParcelizer {
    public static SessionTokenImplLegacy read(VersionedParcel versionedParcel) {
        SessionTokenImplLegacy sessionTokenImplLegacy = new SessionTokenImplLegacy();
        sessionTokenImplLegacy.f4560a = versionedParcel.b(sessionTokenImplLegacy.f4560a, 1);
        sessionTokenImplLegacy.f4561b = versionedParcel.b(sessionTokenImplLegacy.f4561b, 2);
        sessionTokenImplLegacy.f4562c = versionedParcel.b(sessionTokenImplLegacy.f4562c, 3);
        sessionTokenImplLegacy.f4563d = (ComponentName) versionedParcel.b((VersionedParcel) sessionTokenImplLegacy.f4563d, 4);
        sessionTokenImplLegacy.e = versionedParcel.b(sessionTokenImplLegacy.e, 5);
        sessionTokenImplLegacy.f = versionedParcel.b(sessionTokenImplLegacy.f, 6);
        sessionTokenImplLegacy.e();
        return sessionTokenImplLegacy;
    }

    public static void write(SessionTokenImplLegacy sessionTokenImplLegacy, VersionedParcel versionedParcel) {
        sessionTokenImplLegacy.a(false);
        versionedParcel.a(sessionTokenImplLegacy.f4560a, 1);
        versionedParcel.a(sessionTokenImplLegacy.f4561b, 2);
        versionedParcel.a(sessionTokenImplLegacy.f4562c, 3);
        versionedParcel.a(sessionTokenImplLegacy.f4563d, 4);
        versionedParcel.a(sessionTokenImplLegacy.e, 5);
        versionedParcel.a(sessionTokenImplLegacy.f, 6);
    }
}
