package p1727n3.p1868v;

import android.os.Handler;
import p1727n3.p1868v.AbstractC27028u;
/* renamed from: n3.v.u0 */
/* loaded from: classes-dex2jar.jar:n3/v/u0.class */
public class C27031u0 {

    /* renamed from: a */
    public final C26994c0 f75572a;

    /* renamed from: b */
    public final Handler f75573b = new Handler();

    /* renamed from: c */
    public RunnableC27032a f75574c;

    /* renamed from: n3.v.u0$a */
    /* loaded from: classes-dex2jar.jar:n3/v/u0$a.class */
    public static class RunnableC27032a implements Runnable {

        /* renamed from: a */
        public final C26994c0 f75575a;

        /* renamed from: b */
        public final AbstractC27028u.EnumC27029a f75576b;

        /* renamed from: c */
        public boolean f75577c = false;

        public RunnableC27032a(C26994c0 c26994c0, AbstractC27028u.EnumC27029a enumC27029a) {
            this.f75575a = c26994c0;
            this.f75576b = enumC27029a;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f75577c) {
                this.f75575a.m1019e(this.f75576b);
                this.f75577c = true;
            }
        }
    }

    public C27031u0(AbstractC26992b0 abstractC26992b0) {
        this.f75572a = new C26994c0(abstractC26992b0);
    }

    /* renamed from: a */
    public final void m983a(AbstractC27028u.EnumC27029a enumC27029a) {
        RunnableC27032a runnableC27032a = this.f75574c;
        if (runnableC27032a != null) {
            runnableC27032a.run();
        }
        RunnableC27032a runnableC27032a2 = new RunnableC27032a(this.f75572a, enumC27029a);
        this.f75574c = runnableC27032a2;
        this.f75573b.postAtFrontOfQueue(runnableC27032a2);
    }
}
