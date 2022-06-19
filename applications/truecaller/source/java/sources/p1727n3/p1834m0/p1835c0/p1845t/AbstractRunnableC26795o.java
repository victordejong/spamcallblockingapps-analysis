package p1727n3.p1834m0.p1835c0.p1845t;

import n3.m0.c0.t.w.c;
/* renamed from: n3.m0.c0.t.o */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/o.class */
public abstract class AbstractRunnableC26795o<T> implements Runnable {

    /* renamed from: a */
    public final c<T> f74980a = new c<>();

    /* renamed from: a */
    public abstract T mo1327a();

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f74980a.i(mo1327a());
        } catch (Throwable th) {
            this.f74980a.j(th);
        }
    }
}
