package androidx.core.app;

import android.app.PendingIntent;
import androidx.versionedparcelable.AbstractC0520a;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompatParcelizer.class */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(AbstractC0520a abstractC0520a) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.a = abstractC0520a.m11937v(remoteActionCompat.a, 1);
        remoteActionCompat.b = abstractC0520a.m11947l(remoteActionCompat.b, 2);
        remoteActionCompat.c = abstractC0520a.m11947l(remoteActionCompat.c, 3);
        remoteActionCompat.d = (PendingIntent) abstractC0520a.m11941r(remoteActionCompat.d, 4);
        remoteActionCompat.e = abstractC0520a.m11951h(remoteActionCompat.e, 5);
        remoteActionCompat.f = abstractC0520a.m11951h(remoteActionCompat.f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, AbstractC0520a abstractC0520a) {
        abstractC0520a.m11935x(false, false);
        abstractC0520a.m11960M(remoteActionCompat.a, 1);
        abstractC0520a.m11969D(remoteActionCompat.b, 2);
        abstractC0520a.m11969D(remoteActionCompat.c, 3);
        abstractC0520a.m11965H(remoteActionCompat.d, 4);
        abstractC0520a.m11933z(remoteActionCompat.e, 5);
        abstractC0520a.m11933z(remoteActionCompat.f, 6);
    }
}
