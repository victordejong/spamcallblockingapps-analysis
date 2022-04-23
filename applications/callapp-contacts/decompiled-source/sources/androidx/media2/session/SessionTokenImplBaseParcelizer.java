package androidx.media2.session;

import android.content.ComponentName;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplBaseParcelizer.class */
public final class SessionTokenImplBaseParcelizer {
    public static SessionTokenImplBase read(VersionedParcel versionedParcel) {
        SessionTokenImplBase sessionTokenImplBase = new SessionTokenImplBase();
        sessionTokenImplBase.f4556a = versionedParcel.b(sessionTokenImplBase.f4556a, 1);
        sessionTokenImplBase.f4557b = versionedParcel.b(sessionTokenImplBase.f4557b, 2);
        sessionTokenImplBase.f4558c = versionedParcel.b(sessionTokenImplBase.f4558c, 3);
        sessionTokenImplBase.f4559d = versionedParcel.b(sessionTokenImplBase.f4559d, 4);
        sessionTokenImplBase.e = versionedParcel.b(sessionTokenImplBase.e, 5);
        sessionTokenImplBase.f = (ComponentName) versionedParcel.b((VersionedParcel) sessionTokenImplBase.f, 6);
        sessionTokenImplBase.g = versionedParcel.b(sessionTokenImplBase.g, 7);
        return sessionTokenImplBase;
    }

    public static void write(SessionTokenImplBase sessionTokenImplBase, VersionedParcel versionedParcel) {
        versionedParcel.a(sessionTokenImplBase.f4556a, 1);
        versionedParcel.a(sessionTokenImplBase.f4557b, 2);
        versionedParcel.a(sessionTokenImplBase.f4558c, 3);
        versionedParcel.a(sessionTokenImplBase.f4559d, 4);
        versionedParcel.a(sessionTokenImplBase.e, 5);
        versionedParcel.a(sessionTokenImplBase.f, 6);
        versionedParcel.a(sessionTokenImplBase.g, 7);
    }
}
