package androidx.media2.session;

import androidx.media2.session.MediaSession;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/CommandButtonParcelizer.class */
public final class CommandButtonParcelizer {
    public static MediaSession.CommandButton read(VersionedParcel versionedParcel) {
        MediaSession.CommandButton commandButton = new MediaSession.CommandButton();
        commandButton.f8731a = (SessionCommand) versionedParcel.m39638b((VersionedParcel) commandButton.f8731a, 1);
        commandButton.f8732b = versionedParcel.m39644b(commandButton.f8732b, 2);
        commandButton.f8733c = versionedParcel.m39637b(commandButton.f8733c, 3);
        commandButton.f8734d = versionedParcel.m39642b(commandButton.f8734d, 4);
        commandButton.f8735e = versionedParcel.m39634b(commandButton.f8735e, 5);
        return commandButton;
    }

    public static void write(MediaSession.CommandButton commandButton, VersionedParcel versionedParcel) {
        versionedParcel.m39658a(commandButton.f8731a, 1);
        versionedParcel.m39664a(commandButton.f8732b, 2);
        versionedParcel.m39655a(commandButton.f8733c, 3);
        versionedParcel.m39662a(commandButton.f8734d, 4);
        versionedParcel.m39647a(commandButton.f8735e, 5);
    }
}
