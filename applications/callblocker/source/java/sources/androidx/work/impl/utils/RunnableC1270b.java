package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.work.AbstractC1293l;
import androidx.work.AbstractC1296n;
import androidx.work.C1129c;
import androidx.work.C1133e;
import androidx.work.impl.AbstractC1228d;
import androidx.work.impl.C1167b;
import androidx.work.impl.C1229e;
import androidx.work.impl.C1230f;
import androidx.work.impl.C1249i;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.p055b.C1191p;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.work.impl.utils.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/b.class */
public class RunnableC1270b implements Runnable {

    /* renamed from: a */
    private static final String f4279a = AbstractC1293l.m17541a("EnqueueRunnable");

    /* renamed from: b */
    private final C1230f f4280b;

    /* renamed from: c */
    private final C1167b f4281c = new C1167b();

    public RunnableC1270b(C1230f c1230f) {
        this.f4280b = c1230f;
    }

    /* renamed from: a */
    private static void m17585a(C1191p c1191p) {
        C1129c c1129c = c1191p.f4022j;
        if (c1129c.m17936d() || c1129c.m17934e()) {
            String str = c1191p.f4015c;
            C1133e.C1134a c1134a = new C1133e.C1134a();
            c1134a.m17911a(c1191p.f4017e).m17909a("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            c1191p.f4015c = ConstraintTrackingWorker.class.getName();
            c1191p.f4017e = c1134a.m17912a();
        }
    }

    /* renamed from: a */
    private static boolean m17584a(C1230f c1230f) {
        boolean z;
        List<C1230f> m17690h = c1230f.m17690h();
        if (m17690h != null) {
            Iterator<C1230f> it = m17690h.iterator();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                C1230f next = it.next();
                if (!next.m17692f()) {
                    z2 = m17584a(next) | z2;
                } else {
                    AbstractC1293l.m17543a().mo17537d(f4279a, String.format("Already enqueued work ids (%s).", TextUtils.join(", ", next.m17693e())), new Throwable[0]);
                }
            }
        } else {
            z = false;
        }
        return m17580b(c1230f) | z;
    }

    /* renamed from: a */
    private static boolean m17583a(C1249i c1249i, String str) {
        boolean z;
        try {
            Class<?> cls = Class.forName(str);
            Iterator<AbstractC1228d> it = c1249i.m17649e().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (cls.isAssignableFrom(it.next().getClass())) {
                    z = true;
                    break;
                }
            }
        } catch (ClassNotFoundException e) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x0082 A[EDGE_INSN: B:137:0x0082->B:15:0x0082 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0293  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m17582a(androidx.work.impl.C1249i r8, java.util.List<? extends androidx.work.AbstractC1311u> r9, java.lang.String[] r10, java.lang.String r11, androidx.work.EnumC1136g r12) {
        /*
            Method dump skipped, instructions count: 951
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.RunnableC1270b.m17582a(androidx.work.impl.i, java.util.List, java.lang.String[], java.lang.String, androidx.work.g):boolean");
    }

    /* renamed from: b */
    private static boolean m17580b(C1230f c1230f) {
        boolean m17582a = m17582a(c1230f.m17699a(), c1230f.m17694d(), (String[]) C1230f.m17698a(c1230f).toArray(new String[0]), c1230f.m17696b(), c1230f.m17695c());
        c1230f.m17691g();
        return m17582a;
    }

    /* renamed from: a */
    public AbstractC1296n m17586a() {
        return this.f4281c;
    }

    /* renamed from: b */
    public boolean m17581b() {
        WorkDatabase m17652c = this.f4280b.m17699a().m17652c();
        m17652c.m18291g();
        try {
            boolean m17584a = m17584a(this.f4280b);
            m17652c.m18288j();
            return m17584a;
        } finally {
            m17652c.m18290h();
        }
    }

    /* renamed from: c */
    public void m17579c() {
        C1249i m17699a = this.f4280b.m17699a();
        C1229e.m17700a(m17699a.m17650d(), m17699a.m17652c(), m17699a.m17649e());
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f4280b.m17688j()) {
                throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.f4280b));
            }
            if (m17581b()) {
                C1275d.m17569a(this.f4280b.m17699a().m17657b(), RescheduleReceiver.class, true);
                m17579c();
            }
            this.f4281c.m17826a(AbstractC1296n.f4338a);
        } catch (Throwable th) {
            this.f4281c.m17826a(new AbstractC1296n.AbstractC1298a.C1299a(th));
        }
    }
}
