package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.work.AbstractC0555f;
import androidx.work.AbstractC0556h;
import androidx.work.C0548b;
import androidx.work.C0552d;
import androidx.work.impl.AbstractC0570d;
import androidx.work.impl.C0571e;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.b;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.f;
import androidx.work.impl.h;
import androidx.work.impl.p009l.C0589j;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.work.impl.utils.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/b.class */
public class RunnableC0597b implements Runnable {

    /* renamed from: d */
    private static final String f3114d = AbstractC0555f.m11738f("EnqueueRunnable");

    /* renamed from: b */
    private final f f3115b;

    /* renamed from: c */
    private final b f3116c = new b();

    public RunnableC0597b(f fVar) {
        this.f3115b = fVar;
    }

    /* renamed from: b */
    private static boolean m11621b(f fVar) {
        boolean c = m11620c(fVar.g(), fVar.f(), (String[]) f.l(fVar).toArray(new String[0]), fVar.d(), fVar.b());
        fVar.k();
        return c;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02b8  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m11620c(androidx.work.impl.h r8, java.util.List<? extends androidx.work.AbstractC0610l> r9, java.lang.String[] r10, java.lang.String r11, androidx.work.ExistingWorkPolicy r12) {
        /*
            Method dump skipped, instructions count: 1006
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.RunnableC0597b.m11620c(androidx.work.impl.h, java.util.List, java.lang.String[], java.lang.String, androidx.work.ExistingWorkPolicy):boolean");
    }

    /* renamed from: e */
    private static boolean m11618e(f fVar) {
        List<f> e = fVar.e();
        boolean z = false;
        if (e != null) {
            z = false;
            for (f fVar2 : e) {
                if (!fVar2.j()) {
                    z |= m11618e(fVar2);
                } else {
                    AbstractC0555f.m11741c().m11736h(f3114d, String.format("Already enqueued work ids (%s).", TextUtils.join(", ", fVar2.c())), new Throwable[0]);
                }
            }
        }
        return m11621b(fVar) | z;
    }

    /* renamed from: g */
    private static void m11616g(C0589j jVar) {
        C0548b bVar = jVar.f3094j;
        if (bVar.m11780f() || bVar.m11777i()) {
            String str = jVar.f3087c;
            C0552d.C0553a aVar = new C0552d.C0553a();
            aVar.m11748c(jVar.f3089e);
            aVar.m11746e("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            jVar.f3087c = ConstraintTrackingWorker.class.getName();
            jVar.f3089e = aVar.m11750a();
        }
    }

    /* renamed from: h */
    private static boolean m11615h(h hVar, String str) {
        try {
            Class<?> cls = Class.forName(str);
            Iterator it = hVar.m().iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
            } while (!cls.isAssignableFrom(((AbstractC0570d) it.next()).getClass()));
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: a */
    public boolean m11622a() {
        WorkDatabase n = this.f3115b.g().n();
        n.m12319c();
        try {
            boolean e = m11618e(this.f3115b);
            n.m12305q();
            return e;
        } finally {
            n.m12315g();
        }
    }

    /* renamed from: d */
    public AbstractC0556h m11619d() {
        return this.f3116c;
    }

    /* renamed from: f */
    public void m11617f() {
        h g = this.f3115b.g();
        C0571e.m11716b(g.h(), g.n(), g.m());
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (!this.f3115b.h()) {
                if (m11622a()) {
                    C0599d.m11609a(this.f3115b.g().g(), RescheduleReceiver.class, true);
                    m11617f();
                }
                this.f3116c.a(AbstractC0556h.f2989a);
                return;
            }
            throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.f3115b));
        } catch (Throwable th) {
            this.f3116c.a(new AbstractC0556h.AbstractC0558b.a(th));
        }
    }
}
