package androidx.core.app;

import android.app.PendingIntent;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompatParcelizer.class */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(d40 d40Var) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.a = d40Var.m2881I(remoteActionCompat.a, 1);
        remoteActionCompat.b = d40Var.m2835o(remoteActionCompat.b, 2);
        remoteActionCompat.c = d40Var.m2835o(remoteActionCompat.c, 3);
        remoteActionCompat.d = (PendingIntent) d40Var.m2889A(remoteActionCompat.d, 4);
        remoteActionCompat.e = d40Var.m2847i(remoteActionCompat.e, 5);
        remoteActionCompat.f = d40Var.m2847i(remoteActionCompat.f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2838m0(remoteActionCompat.a, 1);
        d40Var.m2871S(remoteActionCompat.b, 2);
        d40Var.m2871S(remoteActionCompat.c, 3);
        d40Var.m2856d0(remoteActionCompat.d, 4);
        d40Var.m2877M(remoteActionCompat.e, 5);
        d40Var.m2877M(remoteActionCompat.f, 6);
    }
}
