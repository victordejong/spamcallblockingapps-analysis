package androidx.work;

import android.os.Build;
import androidx.work.impl.p018n.C1344p;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
/* renamed from: androidx.work.r */
/* loaded from: classes-dex2jar.jar:androidx/work/r.class */
public abstract class AbstractC1419r {

    /* renamed from: a */
    private UUID f5748a;

    /* renamed from: b */
    private C1344p f5749b;

    /* renamed from: c */
    private Set<String> f5750c;

    /* renamed from: androidx.work.r$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/r$a.class */
    public static abstract class AbstractC1420a<B extends AbstractC1420a<?, ?>, W extends AbstractC1419r> {

        /* renamed from: c */
        C1344p f5753c;

        /* renamed from: e */
        Class<? extends ListenableWorker> f5755e;

        /* renamed from: a */
        boolean f5751a = false;

        /* renamed from: d */
        Set<String> f5754d = new HashSet();

        /* renamed from: b */
        UUID f5752b = UUID.randomUUID();

        public AbstractC1420a(Class<? extends ListenableWorker> cls) {
            this.f5755e = cls;
            this.f5753c = new C1344p(this.f5752b.toString(), cls.getName());
            m30138a(cls.getName());
        }

        /* renamed from: a */
        public final B m30138a(String str) {
            this.f5754d.add(str);
            return mo30135d();
        }

        /* renamed from: b */
        public final W m30137b() {
            W mo30136c = mo30136c();
            C1234b c1234b = this.f5753c.f5587l;
            int i = Build.VERSION.SDK_INT;
            boolean z = (i >= 24 && c1234b.m30578e()) || c1234b.m30577f() || c1234b.m30576g() || (i >= 23 && c1234b.m30575h());
            C1344p c1344p = this.f5753c;
            if (c1344p.f5594s) {
                if (z) {
                    throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
                }
                if (c1344p.f5584i > 0) {
                    throw new IllegalArgumentException("Expedited jobs cannot be delayed");
                }
            }
            this.f5752b = UUID.randomUUID();
            C1344p c1344p2 = new C1344p(this.f5753c);
            this.f5753c = c1344p2;
            c1344p2.f5578c = this.f5752b.toString();
            return mo30136c;
        }

        /* renamed from: c */
        abstract W mo30136c();

        /* renamed from: d */
        abstract B mo30135d();

        /* renamed from: e */
        public final B m30134e(C1234b c1234b) {
            this.f5753c.f5587l = c1234b;
            return mo30135d();
        }

        /* renamed from: f */
        public final B m30133f(C1238d c1238d) {
            this.f5753c.f5582g = c1238d;
            return mo30135d();
        }
    }

    public AbstractC1419r(UUID uuid, C1344p c1344p, Set<String> set) {
        this.f5748a = uuid;
        this.f5749b = c1344p;
        this.f5750c = set;
    }

    /* renamed from: a */
    public String m30141a() {
        return this.f5748a.toString();
    }

    /* renamed from: b */
    public Set<String> m30140b() {
        return this.f5750c;
    }

    /* renamed from: c */
    public C1344p m30139c() {
        return this.f5749b;
    }
}
