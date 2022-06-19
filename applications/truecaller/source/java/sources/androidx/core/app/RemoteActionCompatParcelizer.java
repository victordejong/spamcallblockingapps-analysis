package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompatParcelizer.class */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(AbstractC26405c abstractC26405c) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f693a = abstractC26405c.m1938A(remoteActionCompat.f693a, 1);
        remoteActionCompat.f694b = abstractC26405c.m1930l(remoteActionCompat.f694b, 2);
        remoteActionCompat.f695c = abstractC26405c.m1930l(remoteActionCompat.f695c, 3);
        remoteActionCompat.f696d = (PendingIntent) abstractC26405c.m1925v(remoteActionCompat.f696d, 4);
        remoteActionCompat.f697e = abstractC26405c.m1932g(remoteActionCompat.f697e, 5);
        remoteActionCompat.f698f = abstractC26405c.m1932g(remoteActionCompat.f698f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        IconCompat iconCompat = remoteActionCompat.f693a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.m1936N(iconCompat);
        CharSequence charSequence = remoteActionCompat.f694b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1918F(charSequence);
        CharSequence charSequence2 = remoteActionCompat.f695c;
        abstractC26405c.mo1922B(3);
        abstractC26405c.mo1918F(charSequence2);
        PendingIntent pendingIntent = remoteActionCompat.f696d;
        abstractC26405c.mo1922B(4);
        abstractC26405c.mo1914K(pendingIntent);
        boolean z = remoteActionCompat.f697e;
        abstractC26405c.mo1922B(5);
        abstractC26405c.mo1921C(z);
        boolean z2 = remoteActionCompat.f698f;
        abstractC26405c.mo1922B(6);
        abstractC26405c.mo1921C(z2);
    }
}
