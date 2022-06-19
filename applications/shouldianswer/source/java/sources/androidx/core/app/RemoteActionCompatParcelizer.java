package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompatParcelizer.class */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f1570a = (IconCompat) versionedParcel.m4359b((VersionedParcel) remoteActionCompat.f1570a, 1);
        remoteActionCompat.f1571b = versionedParcel.m4358b(remoteActionCompat.f1571b, 2);
        remoteActionCompat.f1572c = versionedParcel.m4358b(remoteActionCompat.f1572c, 3);
        remoteActionCompat.f1573d = (PendingIntent) versionedParcel.m4361b((VersionedParcel) remoteActionCompat.f1573d, 4);
        remoteActionCompat.f1574e = versionedParcel.m4354b(remoteActionCompat.f1574e, 5);
        remoteActionCompat.f1575f = versionedParcel.m4354b(remoteActionCompat.f1575f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.m4364a(false, false);
        versionedParcel.m4371a(remoteActionCompat.f1570a, 1);
        versionedParcel.m4369a(remoteActionCompat.f1571b, 2);
        versionedParcel.m4369a(remoteActionCompat.f1572c, 3);
        versionedParcel.m4373a(remoteActionCompat.f1573d, 4);
        versionedParcel.m4365a(remoteActionCompat.f1574e, 5);
        versionedParcel.m4365a(remoteActionCompat.f1575f, 6);
    }
}
