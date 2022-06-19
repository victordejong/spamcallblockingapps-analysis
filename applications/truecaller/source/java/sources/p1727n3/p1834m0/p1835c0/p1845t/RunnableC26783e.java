package p1727n3.p1834m0.p1835c0.p1845t;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.HashSet;
import java.util.Objects;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.AbstractC26844s;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.p1835c0.C26683c;
import p1727n3.p1834m0.p1835c0.C26687f;
import p1727n3.p1834m0.p1835c0.C26688g;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
/* renamed from: n3.m0.c0.t.e */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/e.class */
public class RunnableC26783e implements Runnable {

    /* renamed from: c */
    public static final String f74953c = AbstractC26839p.m1295e("EnqueueRunnable");

    /* renamed from: a */
    public final C26688g f74954a;

    /* renamed from: b */
    public final C26683c f74955b = new C26683c();

    public RunnableC26783e(C26688g c26688g) {
        this.f74954a = c26688g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0389, code lost:
        if (r28 != false) goto L104;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0421  */
    /* JADX WARN: Type inference failed for: r0v195, types: [java.util.List] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m1334a(p1727n3.p1834m0.p1835c0.C26688g r9) {
        /*
            Method dump skipped, instructions count: 1585
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1834m0.p1835c0.p1845t.RunnableC26783e.m1334a(n3.m0.c0.g):boolean");
    }

    /* renamed from: b */
    public static void m1333b(C26760p c26760p) {
        C26825d c26825d = c26760p.f74911j;
        String str = c26760p.f74904c;
        if (!str.equals(ConstraintTrackingWorker.class.getName())) {
            if (!c26825d.f75061d && !c26825d.f75062e) {
                return;
            }
            C26829f.C26830a c26830a = new C26829f.C26830a();
            c26830a.m1298b(c26760p.f74906e.f75078a);
            c26830a.f75079a.put("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            c26760p.f74904c = ConstraintTrackingWorker.class.getName();
            c26760p.f74906e = c26830a.m1299a();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            C26688g c26688g = this.f74954a;
            Objects.requireNonNull(c26688g);
            if (C26688g.m1437c(c26688g, new HashSet())) {
                throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.f74954a));
            }
            WorkDatabase workDatabase = this.f74954a.f74699a.f74725c;
            workDatabase.beginTransaction();
            boolean m1334a = m1334a(this.f74954a);
            workDatabase.setTransactionSuccessful();
            workDatabase.endTransaction();
            if (m1334a) {
                C26787h.m1330a(this.f74954a.f74699a.f74723a, RescheduleReceiver.class, true);
                C26702l c26702l = this.f74954a.f74699a;
                C26687f.m1438a(c26702l.f74724b, c26702l.f74725c, c26702l.f74727e);
            }
            this.f74955b.m1448a(AbstractC26844s.f75103a);
        } catch (Throwable th) {
            this.f74955b.m1448a(new AbstractC26844s.AbstractC26846b.C26847a(th));
        }
    }
}
