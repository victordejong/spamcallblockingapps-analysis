package androidx.core.app;

import android.app.PendingIntent;
import androidx.versionedparcelable.AbstractC0520a;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompatParcelizer.class */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(AbstractC0520a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.a = aVar.m11937v(remoteActionCompat.a, 1);
        remoteActionCompat.b = aVar.m11947l(remoteActionCompat.b, 2);
        remoteActionCompat.c = aVar.m11947l(remoteActionCompat.c, 3);
        remoteActionCompat.d = (PendingIntent) aVar.m11941r(remoteActionCompat.d, 4);
        remoteActionCompat.e = aVar.m11951h(remoteActionCompat.e, 5);
        remoteActionCompat.f = aVar.m11951h(remoteActionCompat.f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, AbstractC0520a aVar) {
        aVar.m11935x(false, false);
        aVar.m11960M(remoteActionCompat.a, 1);
        aVar.m11969D(remoteActionCompat.b, 2);
        aVar.m11969D(remoteActionCompat.c, 3);
        aVar.m11965H(remoteActionCompat.d, 4);
        aVar.m11933z(remoteActionCompat.e, 5);
        aVar.m11933z(remoteActionCompat.f, 6);
    }
}
