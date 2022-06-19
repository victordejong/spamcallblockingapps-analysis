package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandParcelizer.class */
public final class SessionCommandParcelizer {
    public static SessionCommand read(VersionedParcel versionedParcel) {
        SessionCommand sessionCommand = new SessionCommand();
        sessionCommand.f8753f = versionedParcel.m39644b(sessionCommand.f8753f, 1);
        sessionCommand.f8754g = versionedParcel.m39635b(sessionCommand.f8754g, 2);
        sessionCommand.f8755h = versionedParcel.m39642b(sessionCommand.f8755h, 3);
        return sessionCommand;
    }

    public static void write(SessionCommand sessionCommand, VersionedParcel versionedParcel) {
        versionedParcel.m39664a(sessionCommand.f8753f, 1);
        versionedParcel.m39653a(sessionCommand.f8754g, 2);
        versionedParcel.m39662a(sessionCommand.f8755h, 3);
    }
}
