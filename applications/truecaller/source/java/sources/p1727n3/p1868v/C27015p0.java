package p1727n3.p1868v;

import android.os.Handler;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.FragmentC27021r0;
/* renamed from: n3.v.p0 */
/* loaded from: classes-dex2jar.jar:n3/v/p0.class */
public class C27015p0 implements AbstractC26992b0 {

    /* renamed from: i */
    public static final C27015p0 f75545i = new C27015p0();

    /* renamed from: e */
    public Handler f75550e;

    /* renamed from: a */
    public int f75546a = 0;

    /* renamed from: b */
    public int f75547b = 0;

    /* renamed from: c */
    public boolean f75548c = true;

    /* renamed from: d */
    public boolean f75549d = true;

    /* renamed from: f */
    public final C26994c0 f75551f = new C26994c0(this);

    /* renamed from: g */
    public Runnable f75552g = new RunnableC27016a();

    /* renamed from: h */
    public FragmentC27021r0.AbstractC27022a f75553h = new C27017b();

    /* renamed from: n3.v.p0$a */
    /* loaded from: classes-dex2jar.jar:n3/v/p0$a.class */
    public class RunnableC27016a implements Runnable {
        public RunnableC27016a() {
            C27015p0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C27015p0 c27015p0 = C27015p0.this;
            if (c27015p0.f75547b == 0) {
                c27015p0.f75548c = true;
                c27015p0.f75551f.m1019e(AbstractC27028u.EnumC27029a.ON_PAUSE);
            }
            C27015p0 c27015p02 = C27015p0.this;
            if (c27015p02.f75546a != 0 || !c27015p02.f75548c) {
                return;
            }
            c27015p02.f75551f.m1019e(AbstractC27028u.EnumC27029a.ON_STOP);
            c27015p02.f75549d = true;
        }
    }

    /* renamed from: n3.v.p0$b */
    /* loaded from: classes-dex2jar.jar:n3/v/p0$b.class */
    public class C27017b implements FragmentC27021r0.AbstractC27022a {
        public C27017b() {
            C27015p0.this = r4;
        }
    }

    /* renamed from: a */
    public void m998a() {
        int i = this.f75547b + 1;
        this.f75547b = i;
        if (i == 1) {
            if (!this.f75548c) {
                this.f75550e.removeCallbacks(this.f75552g);
                return;
            }
            this.f75551f.m1019e(AbstractC27028u.EnumC27029a.ON_RESUME);
            this.f75548c = false;
        }
    }

    /* renamed from: b */
    public void m997b() {
        int i = this.f75546a + 1;
        this.f75546a = i;
        if (i != 1 || !this.f75549d) {
            return;
        }
        this.f75551f.m1019e(AbstractC27028u.EnumC27029a.ON_START);
        this.f75549d = false;
    }

    @Override // p1727n3.p1868v.AbstractC26992b0
    public AbstractC27028u getLifecycle() {
        return this.f75551f;
    }
}
