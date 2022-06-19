package p000;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p000.k61;
import p000.m91;
import p000.n91;
import p000.q71;
import p000.r71;
/* renamed from: ba1 */
/* loaded from: classes3-dex2jar.jar:ba1.class */
public class ba1 {

    /* renamed from: a */
    public static ScheduledExecutorService f1868a = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: b */
    public static ScheduledFuture<?> f1869b;

    /* renamed from: ba1$a */
    /* loaded from: classes3-dex2jar.jar:ba1$a.class */
    public static final class RunnableC0240a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ i91 f1870a;

        public RunnableC0240a(i91 i91Var) {
            this.f1870a = i91Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            n61 n61Var = new n61();
            n61Var.m1228b(this.f1870a);
            try {
                n61Var = k61.m1455g(n61Var, true);
            } catch (k61.C1456a e) {
                j91.m1505k(this, "Received server error: " + e.m1435a() + ". Still continue");
            }
            try {
                if (n61Var.m1226d() == null) {
                    return;
                }
                n91.C1485b m1216a = n91.m1216a(this.f1870a, q71.EnumC1618e.CALL);
                if (!m1216a.f7083b && m1216a.f7082a == n91.EnumC1484a.WHITE_LIST) {
                    o71.m1151h(this.f1870a, m1216a, -1L);
                    return;
                }
                if (m1216a.f7082a != n91.EnumC1484a.DND) {
                    o71.m1151h(this.f1870a, m1216a, -1L);
                }
                m91.m1281a(this, m91.EnumC1470c.GET_CALLER_COMPLETE, this.f1870a);
            } catch (Throwable th) {
                m91.m1281a(this, m91.EnumC1470c.GET_CALLER_COMPLETE, null);
            }
        }
    }

    /* renamed from: a */
    public static void m5689a(i91 i91Var, n91.C1485b c1485b) {
        if (!m5688b(i91Var, c1485b)) {
            m91.m1281a(fa1.m1839k(), m91.EnumC1470c.GET_CALLER_COMPLETE, null);
            return;
        }
        ScheduledFuture<?> scheduledFuture = f1869b;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        f1869b = f1868a.schedule(new RunnableC0240a(i91Var), 0L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: b */
    public static boolean m5688b(i91 i91Var, n91.C1485b c1485b) {
        n91.EnumC1484a enumC1484a;
        if (!fa1.m1827w() || !r71.EnumC1638a.f7909M0.m695a() || !r71.EnumC1638a.f7942d.m695a() || !r71.EnumC1638a.f7903J0.m695a()) {
            return false;
        }
        if (!r71.EnumC1638a.f7953h.m695a() && !r71.EnumC1638a.f7950g.m695a()) {
            return false;
        }
        return ((c1485b.f7082a == n91.EnumC1484a.COMMUNITY_BLACKLIST && c1485b.f7083b && c1485b.f7084c.m912d() != q71.EnumC1614a.IGNORE) || (enumC1484a = c1485b.f7082a) == n91.EnumC1484a.BLACK_LIST || enumC1484a == n91.EnumC1484a.WHITE_LIST || enumC1484a == n91.EnumC1484a.CONTACT || enumC1484a == n91.EnumC1484a.UNKNOWN_CALL || enumC1484a == n91.EnumC1484a.PRIVATE_CALL || enumC1484a == n91.EnumC1484a.NON_NUMERIC_CALLER || i91Var.m1598p() || i91Var.m1600n() || i91Var.m1595s() || i91Var.m1597q()) ? false : true;
    }
}
