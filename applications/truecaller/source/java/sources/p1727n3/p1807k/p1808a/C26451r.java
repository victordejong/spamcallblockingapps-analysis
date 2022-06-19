package p1727n3.p1807k.p1808a;

import android.app.Notification;
import android.os.Build;
import android.widget.RemoteViews;
/* renamed from: n3.k.a.r */
/* loaded from: classes-dex2jar.jar:n3/k/a/r.class */
public class C26451r extends AbstractC26455u {
    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: b */
    public void mo1832b(AbstractC26441j abstractC26441j) {
        if (Build.VERSION.SDK_INT >= 24) {
            ((C26456v) abstractC26441j).f74184b.setStyle(new Notification.DecoratedCustomViewStyle());
        }
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: f */
    public String mo1828f() {
        return "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: g */
    public RemoteViews mo1827g(AbstractC26441j abstractC26441j) {
        if (Build.VERSION.SDK_INT >= 24) {
            return null;
        }
        C26450q c26450q = this.f74179a;
        RemoteViews remoteViews = c26450q.f74127H;
        if (remoteViews == null) {
            remoteViews = c26450q.f74126G;
        }
        if (remoteViews != null) {
            return m1842k(remoteViews, true);
        }
        return null;
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: h */
    public RemoteViews mo1826h(AbstractC26441j abstractC26441j) {
        RemoteViews remoteViews;
        if (Build.VERSION.SDK_INT < 24 && (remoteViews = this.f74179a.f74126G) != null) {
            return m1842k(remoteViews, false);
        }
        return null;
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: i */
    public RemoteViews mo1825i(AbstractC26441j abstractC26441j) {
        if (Build.VERSION.SDK_INT >= 24) {
            return null;
        }
        C26450q c26450q = this.f74179a;
        RemoteViews remoteViews = c26450q.f74128I;
        RemoteViews remoteViews2 = remoteViews != null ? remoteViews : c26450q.f74126G;
        if (remoteViews != null) {
            return m1842k(remoteViews2, true);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x04a3  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.widget.RemoteViews m1842k(android.widget.RemoteViews r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 1249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1808a.C26451r.m1842k(android.widget.RemoteViews, boolean):android.widget.RemoteViews");
    }
}
