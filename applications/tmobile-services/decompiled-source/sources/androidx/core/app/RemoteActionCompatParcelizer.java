package androidx.core.app;

import android.app.PendingIntent;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompatParcelizer.class */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f2965a = (IconCompat) versionedParcel.m16556v(remoteActionCompat.f2965a, 1);
        remoteActionCompat.f2966b = versionedParcel.m16562l(remoteActionCompat.f2966b, 2);
        remoteActionCompat.f2967c = versionedParcel.m16562l(remoteActionCompat.f2967c, 3);
        remoteActionCompat.f2968d = (PendingIntent) versionedParcel.m16559r(remoteActionCompat.f2968d, 4);
        remoteActionCompat.f2969e = versionedParcel.m16564h(remoteActionCompat.f2969e, 5);
        remoteActionCompat.f2970f = versionedParcel.m16564h(remoteActionCompat.f2970f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.mo16538x(false, false);
        versionedParcel.m16569M(remoteActionCompat.f2965a, 1);
        versionedParcel.m16575D(remoteActionCompat.f2966b, 2);
        versionedParcel.m16575D(remoteActionCompat.f2967c, 3);
        versionedParcel.m16573H(remoteActionCompat.f2968d, 4);
        versionedParcel.m16555z(remoteActionCompat.f2969e, 5);
        versionedParcel.m16555z(remoteActionCompat.f2970f, 6);
    }
}
