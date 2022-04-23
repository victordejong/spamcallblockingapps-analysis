package androidx.media2.session;

import androidx.media2.session.MediaSession;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/CommandButtonParcelizer.class */
public final class CommandButtonParcelizer {
    public static MediaSession.CommandButton read(VersionedParcel versionedParcel) {
        MediaSession.CommandButton commandButton = new MediaSession.CommandButton();
        commandButton.f4526a = (SessionCommand) versionedParcel.b((VersionedParcel) commandButton.f4526a, 1);
        commandButton.f4527b = versionedParcel.b(commandButton.f4527b, 2);
        commandButton.f4528c = versionedParcel.b(commandButton.f4528c, 3);
        commandButton.f4529d = versionedParcel.b(commandButton.f4529d, 4);
        commandButton.e = versionedParcel.b(commandButton.e, 5);
        return commandButton;
    }

    public static void write(MediaSession.CommandButton commandButton, VersionedParcel versionedParcel) {
        versionedParcel.a(commandButton.f4526a, 1);
        versionedParcel.a(commandButton.f4527b, 2);
        versionedParcel.a(commandButton.f4528c, 3);
        versionedParcel.a(commandButton.f4529d, 4);
        versionedParcel.a(commandButton.e, 5);
    }
}
