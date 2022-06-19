package p130j0;

import android.os.Handler;
import p029c4.C0821e;
import p130j0.C3155j;
/* renamed from: j0.c */
/* loaded from: classes-dex2jar.jar:j0/c.class */
public class C3147c {

    /* renamed from: a */
    public final C0821e f10595a;

    /* renamed from: b */
    public final Handler f10596b;

    public C3147c(C0821e c0821e, Handler handler) {
        this.f10595a = c0821e;
        this.f10596b = handler;
    }

    /* renamed from: a */
    public void m2588a(C3155j.C3156a c3156a) {
        int i = c3156a.f10618b;
        if (!(i == 0)) {
            this.f10596b.post(new RunnableC3146b(this, this.f10595a, i));
            return;
        }
        this.f10596b.post(new RunnableC3145a(this, this.f10595a, c3156a.f10617a));
    }
}
