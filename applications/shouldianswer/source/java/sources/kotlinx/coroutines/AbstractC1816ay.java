package kotlinx.coroutines;

import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.internal.C1896b;
/* renamed from: kotlinx.coroutines.ay */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ay.class */
public abstract class AbstractC1816ay extends AbstractC1950y {

    /* renamed from: b */
    private long f4508b;

    /* renamed from: c */
    private boolean f4509c;

    /* renamed from: d */
    private C1896b<AbstractC1809ar<?>> f4510d;

    /* renamed from: a */
    public static /* synthetic */ void m2923a(AbstractC1816ay abstractC1816ay, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                z = false;
            }
            abstractC1816ay.m2922a(z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
    }

    /* renamed from: b */
    public static /* synthetic */ void m2921b(AbstractC1816ay abstractC1816ay, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                z = false;
            }
            abstractC1816ay.m2920b(z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
    }

    /* renamed from: c */
    private final long m2919c(boolean z) {
        return z ? (char) 0 : (char) 1;
    }

    /* renamed from: a */
    public final void m2924a(AbstractC1809ar<?> abstractC1809ar) {
        C1694h.m3117b(abstractC1809ar, "task");
        C1896b<AbstractC1809ar<?>> c1896b = this.f4510d;
        if (c1896b == null) {
            c1896b = new C1896b<>();
            this.f4510d = c1896b;
        }
        c1896b.m2672a(abstractC1809ar);
    }

    /* renamed from: a */
    public final void m2922a(boolean z) {
        this.f4508b += m2919c(z);
        if (!z) {
            this.f4509c = true;
        }
    }

    /* renamed from: b */
    public long mo2911b() {
        if (!m2918e()) {
            return Long.MAX_VALUE;
        }
        return mo2906d();
    }

    /* renamed from: b */
    public final void m2920b(boolean z) {
        this.f4508b -= m2919c(z);
        long j = this.f4508b;
        if (j > 0) {
            return;
        }
        if (!(j == 0)) {
            throw new IllegalStateException("Extra decrementUseCount".toString());
        }
        if (!this.f4509c) {
            return;
        }
        mo2905i();
    }

    /* renamed from: c */
    protected boolean mo2908c() {
        return m2915h();
    }

    /* renamed from: d */
    public long mo2906d() {
        C1896b<AbstractC1809ar<?>> c1896b = this.f4510d;
        char c = 65535;
        if (c1896b != null) {
            c = c1896b.m2673a() ? (char) 65535 : (char) 0;
        }
        return c;
    }

    /* renamed from: e */
    public final boolean m2918e() {
        AbstractC1809ar<?> m2671b;
        C1896b<AbstractC1809ar<?>> c1896b = this.f4510d;
        if (c1896b == null || (m2671b = c1896b.m2671b()) == null) {
            return false;
        }
        m2671b.run();
        return true;
    }

    /* renamed from: f */
    public boolean m2917f() {
        return false;
    }

    /* renamed from: g */
    public final boolean m2916g() {
        boolean z = true;
        if (this.f4508b < m2919c(true)) {
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    public final boolean m2915h() {
        C1896b<AbstractC1809ar<?>> c1896b = this.f4510d;
        return c1896b != null ? c1896b.m2673a() : true;
    }

    /* renamed from: i */
    protected void mo2905i() {
    }
}
