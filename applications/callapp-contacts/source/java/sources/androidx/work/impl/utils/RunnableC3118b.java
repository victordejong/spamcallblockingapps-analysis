package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.work.AbstractC3145k;
import androidx.work.AbstractC3150n;
import androidx.work.C2988b;
import androidx.work.C2992d;
import androidx.work.impl.AbstractC3048e;
import androidx.work.impl.C3045c;
import androidx.work.impl.C3049f;
import androidx.work.impl.C3057g;
import androidx.work.impl.C3068j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.work.impl.utils.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/b.class */
public final class RunnableC3118b implements Runnable {

    /* renamed from: b */
    private static final String f11443b = AbstractC3145k.m39275a("EnqueueRunnable");

    /* renamed from: a */
    public final C3045c f11444a = new C3045c();

    /* renamed from: c */
    private final C3057g f11445c;

    public RunnableC3118b(C3057g c3057g) {
        this.f11445c = c3057g;
    }

    /* renamed from: a */
    private static void m39305a(WorkSpec workSpec) {
        C2988b c2988b = workSpec.constraints;
        if (c2988b.f11133e || c2988b.f11134f) {
            String str = workSpec.workerClassName;
            C2992d.C2993a c2993a = new C2992d.C2993a();
            c2993a.m39501a(workSpec.input).m39497a("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            workSpec.workerClassName = ConstraintTrackingWorker.class.getName();
            workSpec.input = c2993a.m39502a();
        }
    }

    /* renamed from: a */
    private boolean m39309a() {
        WorkDatabase workDatabase = this.f11445c.f11330b.f11355c;
        workDatabase.m39959e();
        try {
            boolean m39308a = m39308a(this.f11445c);
            workDatabase.m39957g();
            return m39308a;
        } finally {
            workDatabase.m39958f();
        }
    }

    /* renamed from: a */
    private static boolean m39308a(C3057g c3057g) {
        List<C3057g> list = c3057g.f11335g;
        boolean z = false;
        if (list != null) {
            z = false;
            for (C3057g c3057g2 : list) {
                if (!c3057g2.f11336h) {
                    z |= m39308a(c3057g2);
                } else {
                    AbstractC3145k.m39277a().mo39274a(f11443b, String.format("Already enqueued work ids (%s).", TextUtils.join(", ", c3057g2.f11334f)));
                }
            }
        }
        return m39304b(c3057g) | z;
    }

    /* renamed from: a */
    private static boolean m39307a(C3068j c3068j, String str) {
        try {
            Class<?> cls = Class.forName(str);
            Iterator<AbstractC3048e> it2 = c3068j.f11357e.iterator();
            do {
                if (!it2.hasNext()) {
                    return false;
                }
            } while (!cls.isAssignableFrom(it2.next().getClass()));
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x031b  */
    /* JADX WARN: Type inference failed for: r0v116, types: [java.util.List] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m39306a(androidx.work.impl.C3068j r8, java.util.List<? extends androidx.work.AbstractC3166v> r9, java.lang.String[] r10, java.lang.String r11, androidx.work.EnumC2994e r12) {
        /*
            Method dump skipped, instructions count: 1126
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.RunnableC3118b.m39306a(androidx.work.impl.j, java.util.List, java.lang.String[], java.lang.String, androidx.work.e):boolean");
    }

    /* renamed from: b */
    private static boolean m39304b(C3057g c3057g) {
        boolean m39306a = m39306a(c3057g.f11330b, c3057g.f11333e, (String[]) C3057g.m39368a(c3057g).toArray(new String[0]), c3057g.f11331c, c3057g.f11332d);
        c3057g.f11336h = true;
        return m39306a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (C3057g.m39367a(this.f11445c, new HashSet())) {
                throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.f11445c));
            }
            if (m39309a()) {
                C3123d.m39295a(this.f11445c.f11330b.f11353a, RescheduleReceiver.class, true);
                C3068j c3068j = this.f11445c.f11330b;
                C3049f.m39383a(c3068j.f11354b, c3068j.f11355c, c3068j.f11357e);
            }
            this.f11444a.m39400a(AbstractC3150n.f11510a);
        } catch (Throwable th) {
            this.f11444a.m39400a(new AbstractC3150n.AbstractC3152a.C3153a(th));
        }
    }
}
