package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandParcelizer.class */
public final class SessionCommandParcelizer {
    public static SessionCommand read(VersionedParcel versionedParcel) {
        SessionCommand sessionCommand = new SessionCommand();
        sessionCommand.f = versionedParcel.b(sessionCommand.f, 1);
        sessionCommand.g = versionedParcel.b(sessionCommand.g, 2);
        sessionCommand.h = versionedParcel.b(sessionCommand.h, 3);
        return sessionCommand;
    }

    public static void write(SessionCommand sessionCommand, VersionedParcel versionedParcel) {
        versionedParcel.a(sessionCommand.f, 1);
        versionedParcel.a(sessionCommand.g, 2);
        versionedParcel.a(sessionCommand.h, 3);
    }
}
