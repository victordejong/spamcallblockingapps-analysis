package p1727n3.p1807k.p1808a;

import android.app.Notification;
import android.os.Bundle;
/* renamed from: n3.k.a.o */
/* loaded from: classes-dex2jar.jar:n3/k/a/o.class */
public class C26447o extends AbstractC26455u {

    /* renamed from: e */
    public CharSequence f74105e;

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: a */
    public void mo1833a(Bundle bundle) {
        super.mo1833a(bundle);
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: b */
    public void mo1832b(AbstractC26441j abstractC26441j) {
        Notification.BigTextStyle bigText = new Notification.BigTextStyle(((C26456v) abstractC26441j).f74184b).setBigContentTitle(this.f74180b).bigText(this.f74105e);
        if (this.f74182d) {
            bigText.setSummaryText(this.f74181c);
        }
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: c */
    public void mo1831c(Bundle bundle) {
        super.mo1831c(bundle);
        bundle.remove("android.bigText");
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: f */
    public String mo1828f() {
        return "androidx.core.app.NotificationCompat$BigTextStyle";
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: j */
    public void mo1824j(Bundle bundle) {
        super.mo1824j(bundle);
        this.f74105e = bundle.getCharSequence("android.bigText");
    }

    /* renamed from: k */
    public C26447o m1873k(CharSequence charSequence) {
        this.f74105e = C26450q.m1862g(charSequence);
        return this;
    }
}
