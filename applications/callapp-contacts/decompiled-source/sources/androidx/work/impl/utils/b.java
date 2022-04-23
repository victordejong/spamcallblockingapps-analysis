package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.work.d;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.c;
import androidx.work.impl.e;
import androidx.work.impl.f;
import androidx.work.impl.g;
import androidx.work.impl.j;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import androidx.work.k;
import androidx.work.n;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/b.class */
public final class b implements Runnable {

    /* renamed from: b  reason: collision with root package name */
    private static final String f6170b = k.a("EnqueueRunnable");

    /* renamed from: a  reason: collision with root package name */
    public final c f6171a = new c();

    /* renamed from: c  reason: collision with root package name */
    private final g f6172c;

    public b(g gVar) {
        this.f6172c = gVar;
    }

    private static void a(WorkSpec workSpec) {
        androidx.work.b bVar = workSpec.constraints;
        if (bVar.e || bVar.f) {
            String str = workSpec.workerClassName;
            d.a aVar = new d.a();
            aVar.a(workSpec.input).a("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            workSpec.workerClassName = ConstraintTrackingWorker.class.getName();
            workSpec.input = aVar.a();
        }
    }

    private boolean a() {
        WorkDatabase workDatabase = this.f6172c.f6105b.f6118c;
        workDatabase.e();
        try {
            boolean a2 = a(this.f6172c);
            workDatabase.g();
            return a2;
        } finally {
            workDatabase.f();
        }
    }

    private static boolean a(g gVar) {
        List<g> list = gVar.g;
        boolean z = false;
        if (list != null) {
            z = false;
            for (g gVar2 : list) {
                if (!gVar2.h) {
                    z |= a(gVar2);
                } else {
                    k.a().a(f6170b, String.format("Already enqueued work ids (%s).", TextUtils.join(", ", gVar2.f)));
                }
            }
        }
        return b(gVar) | z;
    }

    private static boolean a(j jVar, String str) {
        try {
            Class<?> cls = Class.forName(str);
            Iterator<e> it2 = jVar.e.iterator();
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

    /* JADX WARN: Removed duplicated region for block: B:48:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x031b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(androidx.work.impl.j r8, java.util.List<? extends androidx.work.v> r9, java.lang.String[] r10, java.lang.String r11, androidx.work.e r12) {
        /*
            Method dump skipped, instructions count: 1126
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.b.a(androidx.work.impl.j, java.util.List, java.lang.String[], java.lang.String, androidx.work.e):boolean");
    }

    private static boolean b(g gVar) {
        boolean a2 = a(gVar.f6105b, gVar.e, (String[]) g.a(gVar).toArray(new String[0]), gVar.f6106c, gVar.f6107d);
        gVar.h = true;
        return a2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (!g.a(this.f6172c, new HashSet())) {
                if (a()) {
                    d.a(this.f6172c.f6105b.f6116a, RescheduleReceiver.class, true);
                    j jVar = this.f6172c.f6105b;
                    f.a(jVar.f6117b, jVar.f6118c, jVar.e);
                }
                this.f6171a.a(n.f6232a);
                return;
            }
            throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.f6172c));
        } catch (Throwable th) {
            this.f6171a.a(new n.a.C0123a(th));
        }
    }
}
