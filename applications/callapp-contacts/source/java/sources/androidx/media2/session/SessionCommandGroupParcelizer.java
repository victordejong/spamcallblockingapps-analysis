package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroupParcelizer.class */
public final class SessionCommandGroupParcelizer {
    public static SessionCommandGroup read(VersionedParcel versionedParcel) {
        SessionCommandGroup sessionCommandGroup = new SessionCommandGroup();
        sessionCommandGroup.f8756a = versionedParcel.m39648a((Set) sessionCommandGroup.f8756a);
        return sessionCommandGroup;
    }

    public static void write(SessionCommandGroup sessionCommandGroup, VersionedParcel versionedParcel) {
        versionedParcel.m39650a(sessionCommandGroup.f8756a, 1);
    }
}
