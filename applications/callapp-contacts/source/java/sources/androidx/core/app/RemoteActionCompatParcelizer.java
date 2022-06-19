package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompatParcelizer.class */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f3253a = (IconCompat) versionedParcel.m39638b((VersionedParcel) remoteActionCompat.f3253a, 1);
        remoteActionCompat.f3254b = versionedParcel.m39637b(remoteActionCompat.f3254b, 2);
        remoteActionCompat.f3255c = versionedParcel.m39637b(remoteActionCompat.f3255c, 3);
        remoteActionCompat.f3256d = (PendingIntent) versionedParcel.m39640b((VersionedParcel) remoteActionCompat.f3256d, 4);
        remoteActionCompat.f3257e = versionedParcel.m39634b(remoteActionCompat.f3257e, 5);
        remoteActionCompat.f3258f = versionedParcel.m39634b(remoteActionCompat.f3258f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.m39658a(remoteActionCompat.f3253a, 1);
        versionedParcel.m39655a(remoteActionCompat.f3254b, 2);
        versionedParcel.m39655a(remoteActionCompat.f3255c, 3);
        versionedParcel.m39660a(remoteActionCompat.f3256d, 4);
        versionedParcel.m39647a(remoteActionCompat.f3257e, 5);
        versionedParcel.m39647a(remoteActionCompat.f3258f, 6);
    }
}
