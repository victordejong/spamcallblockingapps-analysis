package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.work.AbstractC1404j;
import androidx.work.AbstractC1408l;
import androidx.work.C1234b;
import androidx.work.C1238d;
import androidx.work.impl.AbstractC1268e;
import androidx.work.impl.C1265c;
import androidx.work.impl.C1269f;
import androidx.work.impl.C1277g;
import androidx.work.impl.C1289j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.p018n.C1344p;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.work.impl.utils.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/b.class */
public class RunnableC1368b implements Runnable {

    /* renamed from: d */
    private static final String f5640d = AbstractC1404j.m30159f("EnqueueRunnable");

    /* renamed from: e */
    private final C1277g f5641e;

    /* renamed from: f */
    private final C1265c f5642f = new C1265c();

    public RunnableC1368b(C1277g c1277g) {
        this.f5641e = c1277g;
    }

    /* renamed from: b */
    private static boolean m30227b(C1277g c1277g) {
        boolean m30226c = m30226c(c1277g.m30411g(), c1277g.m30412f(), (String[]) C1277g.m30406l(c1277g).toArray(new String[0]), c1277g.m30414d(), c1277g.m30416b());
        c1277g.m30407k();
        return m30226c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x030c  */
    /* JADX WARN: Type inference failed for: r0v116, types: [java.util.List] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m30226c(androidx.work.impl.C1289j r8, java.util.List<? extends androidx.work.AbstractC1419r> r9, java.lang.String[] r10, java.lang.String r11, androidx.work.ExistingWorkPolicy r12) {
        /*
            Method dump skipped, instructions count: 1103
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.RunnableC1368b.m30226c(androidx.work.impl.j, java.util.List, java.lang.String[], java.lang.String, androidx.work.ExistingWorkPolicy):boolean");
    }

    /* renamed from: e */
    private static boolean m30224e(C1277g c1277g) {
        List<C1277g> m30413e = c1277g.m30413e();
        boolean z = false;
        if (m30413e != null) {
            z = false;
            for (C1277g c1277g2 : m30413e) {
                if (!c1277g2.m30408j()) {
                    z |= m30224e(c1277g2);
                } else {
                    AbstractC1404j.m30161c().mo30154h(f5640d, String.format("Already enqueued work ids (%s).", TextUtils.join(", ", c1277g2.m30415c())), new Throwable[0]);
                }
            }
        }
        return m30227b(c1277g) | z;
    }

    /* renamed from: g */
    private static void m30222g(C1344p c1344p) {
        C1234b c1234b = c1344p.f5587l;
        String str = c1344p.f5580e;
        if (!str.equals(ConstraintTrackingWorker.class.getName())) {
            if (!c1234b.m30577f() && !c1234b.m30574i()) {
                return;
            }
            C1238d.C1239a c1239a = new C1238d.C1239a();
            c1239a.m30545c(c1344p.f5582g).m30543e("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            c1344p.f5580e = ConstraintTrackingWorker.class.getName();
            c1344p.f5582g = c1239a.m30547a();
        }
    }

    /* renamed from: h */
    private static boolean m30221h(C1289j c1289j, String str) {
        try {
            Class<?> cls = Class.forName(str);
            Iterator<AbstractC1268e> it = c1289j.m30389n().iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
            } while (!cls.isAssignableFrom(it.next().getClass()));
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: a */
    public boolean m30228a() {
        WorkDatabase m30388o = this.f5641e.m30411g().m30388o();
        m30388o.m31293c();
        try {
            boolean m30224e = m30224e(this.f5641e);
            m30388o.m31280r();
            return m30224e;
        } finally {
            m30388o.m31291g();
        }
    }

    /* renamed from: d */
    public AbstractC1408l m30225d() {
        return this.f5642f;
    }

    /* renamed from: f */
    public void m30223f() {
        C1289j m30411g = this.f5641e.m30411g();
        C1269f.m30435b(m30411g.m30394i(), m30411g.m30388o(), m30411g.m30389n());
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f5641e.m30410h()) {
                throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.f5641e));
            }
            if (m30228a()) {
                C1370d.m30215a(this.f5641e.m30411g().m30395h(), RescheduleReceiver.class, true);
                m30223f();
            }
            this.f5642f.m30449a(AbstractC1408l.f5745a);
        } catch (Throwable th) {
            this.f5642f.m30449a(new AbstractC1408l.AbstractC1410b.C1411a(th));
        }
    }
}
