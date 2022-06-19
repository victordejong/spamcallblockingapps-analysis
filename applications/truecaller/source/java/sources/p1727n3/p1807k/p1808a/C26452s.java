package p1727n3.p1807k.p1808a;

import android.app.Notification;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
/* renamed from: n3.k.a.s */
/* loaded from: classes-dex2jar.jar:n3/k/a/s.class */
public class C26452s extends AbstractC26455u {

    /* renamed from: e */
    public ArrayList<CharSequence> f74167e = new ArrayList<>();

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: b */
    public void mo1832b(AbstractC26441j abstractC26441j) {
        Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(((C26456v) abstractC26441j).f74184b).setBigContentTitle(this.f74180b);
        if (this.f74182d) {
            bigContentTitle.setSummaryText(this.f74181c);
        }
        Iterator<CharSequence> it = this.f74167e.iterator();
        while (it.hasNext()) {
            bigContentTitle.addLine(it.next());
        }
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: c */
    public void mo1831c(Bundle bundle) {
        super.mo1831c(bundle);
        bundle.remove("android.textLines");
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: f */
    public String mo1828f() {
        return "androidx.core.app.NotificationCompat$InboxStyle";
    }

    @Override // p1727n3.p1807k.p1808a.AbstractC26455u
    /* renamed from: j */
    public void mo1824j(Bundle bundle) {
        super.mo1824j(bundle);
        this.f74167e.clear();
        if (bundle.containsKey("android.textLines")) {
            Collections.addAll(this.f74167e, bundle.getCharSequenceArray("android.textLines"));
        }
    }

    /* renamed from: k */
    public C26452s m1841k(CharSequence charSequence) {
        if (charSequence != null) {
            this.f74167e.add(C26450q.m1862g(charSequence));
        }
        return this;
    }

    /* renamed from: l */
    public C26452s m1840l(CharSequence charSequence) {
        this.f74180b = C26450q.m1862g(charSequence);
        return this;
    }

    /* renamed from: m */
    public C26452s m1839m(CharSequence charSequence) {
        this.f74181c = C26450q.m1862g(charSequence);
        this.f74182d = true;
        return this;
    }
}
