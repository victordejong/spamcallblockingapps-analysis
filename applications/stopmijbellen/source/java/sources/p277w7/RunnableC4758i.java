package p277w7;

import p181n7.C3759h;
import p277w7.C4766p;
/* renamed from: w7.i */
/* loaded from: classes2-dex2jar.jar:w7/i.class */
public class RunnableC4758i implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C4766p.C4767a f14647a;

    /* renamed from: b */
    public final /* synthetic */ Exception f14648b;

    /* renamed from: c */
    public final /* synthetic */ Object f14649c;

    /* renamed from: d */
    public final /* synthetic */ C4766p f14650d;

    public RunnableC4758i(C4766p c4766p, C4766p.C4767a c4767a, Exception exc, Object obj) {
        this.f14650d = c4766p;
        this.f14647a = c4767a;
        this.f14648b = exc;
        this.f14649c = obj;
    }

    @Override // java.lang.Runnable
    public void run() {
        String mo497a = this.f14650d.f14667b.mo497a();
        if (mo497a == null) {
            Exception exc = this.f14648b;
            if (exc != null) {
                this.f14647a.m1914p(exc, null, null);
                return;
            } else {
                this.f14647a.m1913q(this.f14649c);
                return;
            }
        }
        C3759h c3759h = this.f14647a.f14675j;
        c3759h.m1822b("context has died: " + mo497a);
        this.f14647a.m1925e(true);
    }
}
