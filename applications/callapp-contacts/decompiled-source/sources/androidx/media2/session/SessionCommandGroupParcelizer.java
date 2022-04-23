package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroupParcelizer.class */
public final class SessionCommandGroupParcelizer {
    public static SessionCommandGroup read(VersionedParcel versionedParcel) {
        SessionCommandGroup sessionCommandGroup = new SessionCommandGroup();
        sessionCommandGroup.f4544a = versionedParcel.a((Set) sessionCommandGroup.f4544a);
        return sessionCommandGroup;
    }

    public static void write(SessionCommandGroup sessionCommandGroup, VersionedParcel versionedParcel) {
        versionedParcel.a(sessionCommandGroup.f4544a, 1);
    }
}
