package p292y1;

import androidx.work.C0680b;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.HashSet;
import java.util.Objects;
import p186o1.AbstractC3824h;
import p186o1.AbstractC3829k;
import p186o1.C3816b;
import p197p1.C3997b;
import p197p1.C4001e;
import p197p1.C4002f;
import p197p1.C4006j;
import p282x1.C4832p;
/* renamed from: y1.e */
/* loaded from: classes-dex2jar.jar:y1/e.class */
public class RunnableC4958e implements Runnable {

    /* renamed from: c */
    public static final String f15122c = AbstractC3824h.m1773e("EnqueueRunnable");

    /* renamed from: a */
    public final C4002f f15123a;

    /* renamed from: b */
    public final C3997b f15124b = new C3997b();

    public RunnableC4958e(C4002f c4002f) {
        this.f15123a = c4002f;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:0x040f  */
    /* JADX WARN: Type inference failed for: r0v221, types: [java.util.List] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m178a(p197p1.C4002f r9) {
        /*
            Method dump skipped, instructions count: 1652
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p292y1.RunnableC4958e.m178a(p1.f):boolean");
    }

    /* renamed from: b */
    public static void m177b(C4832p c4832p) {
        C3816b c3816b = c4832p.f14840j;
        String str = c4832p.f14833c;
        if (!str.equals(ConstraintTrackingWorker.class.getName())) {
            if (!c3816b.f12297d && !c3816b.f12298e) {
                return;
            }
            C0680b.C0681a c0681a = new C0680b.C0681a();
            c0681a.m7481b(c4832p.f14835e.f2640a);
            c0681a.f2641a.put("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            c4832p.f14833c = ConstraintTrackingWorker.class.getName();
            c4832p.f14835e = c0681a.m7482a();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            C4002f c4002f = this.f15123a;
            Objects.requireNonNull(c4002f);
            if (C4002f.m1541c(c4002f, new HashSet())) {
                throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.f15123a));
            }
            WorkDatabase workDatabase = this.f15123a.f12567a.f12584c;
            workDatabase.m3819c();
            boolean m178a = m178a(this.f15123a);
            workDatabase.m3811k();
            workDatabase.m3815g();
            if (m178a) {
                C4960g.m174a(this.f15123a.f12567a.f12582a, RescheduleReceiver.class, true);
                C4006j c4006j = this.f15123a.f12567a;
                C4001e.m1542a(c4006j.f12583b, c4006j.f12584c, c4006j.f12586e);
            }
            this.f15124b.m1552a(AbstractC3829k.f12320a);
        } catch (Throwable th) {
            this.f15124b.m1552a(new AbstractC3829k.AbstractC3831b.C3832a(th));
        }
    }
}
