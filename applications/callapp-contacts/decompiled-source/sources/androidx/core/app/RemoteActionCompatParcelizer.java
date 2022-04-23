package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompatParcelizer.class */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f1693a = (IconCompat) versionedParcel.b((VersionedParcel) remoteActionCompat.f1693a, 1);
        remoteActionCompat.f1694b = versionedParcel.b(remoteActionCompat.f1694b, 2);
        remoteActionCompat.f1695c = versionedParcel.b(remoteActionCompat.f1695c, 3);
        remoteActionCompat.f1696d = (PendingIntent) versionedParcel.b((VersionedParcel) remoteActionCompat.f1696d, 4);
        remoteActionCompat.e = versionedParcel.b(remoteActionCompat.e, 5);
        remoteActionCompat.f = versionedParcel.b(remoteActionCompat.f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.a(remoteActionCompat.f1693a, 1);
        versionedParcel.a(remoteActionCompat.f1694b, 2);
        versionedParcel.a(remoteActionCompat.f1695c, 3);
        versionedParcel.a(remoteActionCompat.f1696d, 4);
        versionedParcel.a(remoteActionCompat.e, 5);
        versionedParcel.a(remoteActionCompat.f, 6);
    }
}
