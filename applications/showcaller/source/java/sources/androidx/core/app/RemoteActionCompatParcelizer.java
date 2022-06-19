package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompatParcelizer.class */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f2818a = (IconCompat) versionedParcel.m30790v(remoteActionCompat.f2818a, 1);
        remoteActionCompat.f2819b = versionedParcel.m30796l(remoteActionCompat.f2819b, 2);
        remoteActionCompat.f2820c = versionedParcel.m30796l(remoteActionCompat.f2820c, 3);
        remoteActionCompat.f2821d = (PendingIntent) versionedParcel.m30793r(remoteActionCompat.f2821d, 4);
        remoteActionCompat.f2822e = versionedParcel.m30798h(remoteActionCompat.f2822e, 5);
        remoteActionCompat.f2823f = versionedParcel.m30798h(remoteActionCompat.f2823f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.m30789x(false, false);
        versionedParcel.m30804M(remoteActionCompat.f2818a, 1);
        versionedParcel.m30810D(remoteActionCompat.f2819b, 2);
        versionedParcel.m30810D(remoteActionCompat.f2820c, 3);
        versionedParcel.m30808H(remoteActionCompat.f2821d, 4);
        versionedParcel.m30788z(remoteActionCompat.f2822e, 5);
        versionedParcel.m30788z(remoteActionCompat.f2823f, 6);
    }
}
