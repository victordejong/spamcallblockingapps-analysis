package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompatParcelizer.class */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        Object obj = remoteActionCompat.f1477a;
        if (versionedParcel.mo1858i(1)) {
            obj = versionedParcel.m7491o();
        }
        remoteActionCompat.f1477a = (IconCompat) obj;
        CharSequence charSequence = remoteActionCompat.f1478b;
        if (versionedParcel.mo1858i(2)) {
            charSequence = versionedParcel.mo1859h();
        }
        remoteActionCompat.f1478b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.f1479c;
        if (versionedParcel.mo1858i(3)) {
            charSequence2 = versionedParcel.mo1859h();
        }
        remoteActionCompat.f1479c = charSequence2;
        remoteActionCompat.f1480d = (PendingIntent) versionedParcel.m7492m(remoteActionCompat.f1480d, 4);
        boolean z = remoteActionCompat.f1481e;
        if (versionedParcel.mo1858i(5)) {
            z = versionedParcel.mo1861f();
        }
        remoteActionCompat.f1481e = z;
        boolean z2 = remoteActionCompat.f1482f;
        if (versionedParcel.mo1858i(6)) {
            z2 = versionedParcel.mo1861f();
        }
        remoteActionCompat.f1482f = z2;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        Objects.requireNonNull(versionedParcel);
        IconCompat iconCompat = remoteActionCompat.f1477a;
        versionedParcel.mo1854p(1);
        versionedParcel.m7490w(iconCompat);
        CharSequence charSequence = remoteActionCompat.f1478b;
        versionedParcel.mo1854p(2);
        versionedParcel.mo1851s(charSequence);
        CharSequence charSequence2 = remoteActionCompat.f1479c;
        versionedParcel.mo1854p(3);
        versionedParcel.mo1851s(charSequence2);
        PendingIntent pendingIntent = remoteActionCompat.f1480d;
        versionedParcel.mo1854p(4);
        versionedParcel.mo1849u(pendingIntent);
        boolean z = remoteActionCompat.f1481e;
        versionedParcel.mo1854p(5);
        versionedParcel.mo1853q(z);
        boolean z2 = remoteActionCompat.f1482f;
        versionedParcel.mo1854p(6);
        versionedParcel.mo1853q(z2);
    }
}
