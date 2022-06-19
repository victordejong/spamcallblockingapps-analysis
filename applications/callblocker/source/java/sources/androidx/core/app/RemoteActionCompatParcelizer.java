package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompatParcelizer.class */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f1750a = (IconCompat) versionedParcel.m18139b((VersionedParcel) remoteActionCompat.f1750a, 1);
        remoteActionCompat.f1751b = versionedParcel.m18138b(remoteActionCompat.f1751b, 2);
        remoteActionCompat.f1752c = versionedParcel.m18138b(remoteActionCompat.f1752c, 3);
        remoteActionCompat.f1753d = (PendingIntent) versionedParcel.m18141b((VersionedParcel) remoteActionCompat.f1753d, 4);
        remoteActionCompat.f1754e = versionedParcel.m18134b(remoteActionCompat.f1754e, 5);
        remoteActionCompat.f1755f = versionedParcel.m18134b(remoteActionCompat.f1755f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.m18144a(false, false);
        versionedParcel.m18151a(remoteActionCompat.f1750a, 1);
        versionedParcel.m18149a(remoteActionCompat.f1751b, 2);
        versionedParcel.m18149a(remoteActionCompat.f1752c, 3);
        versionedParcel.m18153a(remoteActionCompat.f1753d, 4);
        versionedParcel.m18145a(remoteActionCompat.f1754e, 5);
        versionedParcel.m18145a(remoteActionCompat.f1755f, 6);
    }
}
