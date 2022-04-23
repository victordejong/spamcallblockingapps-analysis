package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroupParcelizer.class */
public final class SessionCommandGroupParcelizer {
    public static SessionCommandGroup read(VersionedParcel versionedParcel) {
        SessionCommandGroup sessionCommandGroup = new SessionCommandGroup();
        sessionCommandGroup.f2226a = versionedParcel.m36982a((Set) sessionCommandGroup.f2226a, 1);
        return sessionCommandGroup;
    }

    public static void write(SessionCommandGroup sessionCommandGroup, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36965b(sessionCommandGroup.f2226a, 1);
    }
}
