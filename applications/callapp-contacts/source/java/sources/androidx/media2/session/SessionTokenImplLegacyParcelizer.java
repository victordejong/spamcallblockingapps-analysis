package androidx.media2.session;

import android.content.ComponentName;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplLegacyParcelizer.class */
public final class SessionTokenImplLegacyParcelizer {
    public static SessionTokenImplLegacy read(VersionedParcel versionedParcel) {
        SessionTokenImplLegacy sessionTokenImplLegacy = new SessionTokenImplLegacy();
        sessionTokenImplLegacy.f8784a = versionedParcel.m39642b(sessionTokenImplLegacy.f8784a, 1);
        sessionTokenImplLegacy.f8785b = versionedParcel.m39644b(sessionTokenImplLegacy.f8785b, 2);
        sessionTokenImplLegacy.f8786c = versionedParcel.m39644b(sessionTokenImplLegacy.f8786c, 3);
        sessionTokenImplLegacy.f8787d = (ComponentName) versionedParcel.m39640b((VersionedParcel) sessionTokenImplLegacy.f8787d, 4);
        sessionTokenImplLegacy.f8788e = versionedParcel.m39635b(sessionTokenImplLegacy.f8788e, 5);
        sessionTokenImplLegacy.f8789f = versionedParcel.m39642b(sessionTokenImplLegacy.f8789f, 6);
        sessionTokenImplLegacy.mo39666e();
        return sessionTokenImplLegacy;
    }

    public static void write(SessionTokenImplLegacy sessionTokenImplLegacy, VersionedParcel versionedParcel) {
        sessionTokenImplLegacy.mo39667a(false);
        versionedParcel.m39662a(sessionTokenImplLegacy.f8784a, 1);
        versionedParcel.m39664a(sessionTokenImplLegacy.f8785b, 2);
        versionedParcel.m39664a(sessionTokenImplLegacy.f8786c, 3);
        versionedParcel.m39660a(sessionTokenImplLegacy.f8787d, 4);
        versionedParcel.m39653a(sessionTokenImplLegacy.f8788e, 5);
        versionedParcel.m39662a(sessionTokenImplLegacy.f8789f, 6);
    }
}
