package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.FragmentC0538t;
/* renamed from: androidx.lifecycle.r */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/r.class */
public class C0533r implements AbstractC0524j {

    /* renamed from: i */
    public static final C0533r f2050i = new C0533r();

    /* renamed from: e */
    public Handler f2055e;

    /* renamed from: a */
    public int f2051a = 0;

    /* renamed from: b */
    public int f2052b = 0;

    /* renamed from: c */
    public boolean f2053c = true;

    /* renamed from: d */
    public boolean f2054d = true;

    /* renamed from: f */
    public final C0525k f2056f = new C0525k(this);

    /* renamed from: g */
    public Runnable f2057g = new RunnableC0534a();

    /* renamed from: h */
    public FragmentC0538t.AbstractC0539a f2058h = new C0535b();

    /* renamed from: androidx.lifecycle.r$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/r$a.class */
    public class RunnableC0534a implements Runnable {
        public RunnableC0534a() {
            C0533r.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0533r c0533r = C0533r.this;
            if (c0533r.f2052b == 0) {
                c0533r.f2053c = true;
                c0533r.f2056f.m7988e(AbstractC0516f.EnumC0518b.ON_PAUSE);
            }
            C0533r c0533r2 = C0533r.this;
            if (c0533r2.f2051a != 0 || !c0533r2.f2053c) {
                return;
            }
            c0533r2.f2056f.m7988e(AbstractC0516f.EnumC0518b.ON_STOP);
            c0533r2.f2054d = true;
        }
    }

    /* renamed from: androidx.lifecycle.r$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/r$b.class */
    public class C0535b implements FragmentC0538t.AbstractC0539a {
        public C0535b() {
            C0533r.this = r4;
        }
    }

    /* renamed from: a */
    public void m7979a() {
        int i = this.f2052b + 1;
        this.f2052b = i;
        if (i == 1) {
            if (!this.f2053c) {
                this.f2055e.removeCallbacks(this.f2057g);
                return;
            }
            this.f2056f.m7988e(AbstractC0516f.EnumC0518b.ON_RESUME);
            this.f2053c = false;
        }
    }

    /* renamed from: c */
    public void m7978c() {
        int i = this.f2051a + 1;
        this.f2051a = i;
        if (i != 1 || !this.f2054d) {
            return;
        }
        this.f2056f.m7988e(AbstractC0516f.EnumC0518b.ON_START);
        this.f2054d = false;
    }

    @Override // androidx.lifecycle.AbstractC0524j
    public AbstractC0516f getLifecycle() {
        return this.f2056f;
    }
}
