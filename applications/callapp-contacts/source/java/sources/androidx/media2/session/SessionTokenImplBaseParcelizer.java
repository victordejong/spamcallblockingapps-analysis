package androidx.media2.session;

import android.content.ComponentName;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplBaseParcelizer.class */
public final class SessionTokenImplBaseParcelizer {
    public static SessionTokenImplBase read(VersionedParcel versionedParcel) {
        SessionTokenImplBase sessionTokenImplBase = new SessionTokenImplBase();
        sessionTokenImplBase.f8777a = versionedParcel.m39644b(sessionTokenImplBase.f8777a, 1);
        sessionTokenImplBase.f8778b = versionedParcel.m39644b(sessionTokenImplBase.f8778b, 2);
        sessionTokenImplBase.f8779c = versionedParcel.m39635b(sessionTokenImplBase.f8779c, 3);
        sessionTokenImplBase.f8780d = versionedParcel.m39635b(sessionTokenImplBase.f8780d, 4);
        sessionTokenImplBase.f8781e = versionedParcel.m39641b(sessionTokenImplBase.f8781e, 5);
        sessionTokenImplBase.f8782f = (ComponentName) versionedParcel.m39640b((VersionedParcel) sessionTokenImplBase.f8782f, 6);
        sessionTokenImplBase.f8783g = versionedParcel.m39642b(sessionTokenImplBase.f8783g, 7);
        return sessionTokenImplBase;
    }

    public static void write(SessionTokenImplBase sessionTokenImplBase, VersionedParcel versionedParcel) {
        versionedParcel.m39664a(sessionTokenImplBase.f8777a, 1);
        versionedParcel.m39664a(sessionTokenImplBase.f8778b, 2);
        versionedParcel.m39653a(sessionTokenImplBase.f8779c, 3);
        versionedParcel.m39653a(sessionTokenImplBase.f8780d, 4);
        versionedParcel.m39661a(sessionTokenImplBase.f8781e, 5);
        versionedParcel.m39660a(sessionTokenImplBase.f8782f, 6);
        versionedParcel.m39662a(sessionTokenImplBase.f8783g, 7);
    }
}
