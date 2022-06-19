package p292y1;

import androidx.work.impl.WorkDatabase;
import p186o1.AbstractC3824h;
import p186o1.EnumC3836m;
import p197p1.C3998c;
import p197p1.C4006j;
import p282x1.AbstractC4834q;
import p282x1.C4835r;
/* renamed from: y1.l */
/* loaded from: classes-dex2jar.jar:y1/l.class */
public class RunnableC4966l implements Runnable {

    /* renamed from: d */
    public static final String f15138d = AbstractC3824h.m1773e("StopWorkRunnable");

    /* renamed from: a */
    public final C4006j f15139a;

    /* renamed from: b */
    public final String f15140b;

    /* renamed from: c */
    public final boolean f15141c;

    public RunnableC4966l(C4006j c4006j, String str, boolean z) {
        this.f15139a = c4006j;
        this.f15140b = str;
        this.f15141c = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean containsKey;
        boolean z;
        C4006j c4006j = this.f15139a;
        WorkDatabase workDatabase = c4006j.f12584c;
        C3998c c3998c = c4006j.f12587f;
        AbstractC4834q mo7475q = workDatabase.mo7475q();
        workDatabase.m3819c();
        try {
            String str = this.f15140b;
            synchronized (c3998c.f12561k) {
                containsKey = c3998c.f12556f.containsKey(str);
            }
            if (this.f15141c) {
                z = this.f15139a.f12587f.m1544i(this.f15140b);
            } else {
                if (!containsKey) {
                    C4835r c4835r = (C4835r) mo7475q;
                    if (c4835r.m383f(this.f15140b) == EnumC3836m.RUNNING) {
                        c4835r.m373p(EnumC3836m.ENQUEUED, this.f15140b);
                    }
                }
                z = this.f15139a.f12587f.m1543j(this.f15140b);
            }
            AbstractC3824h.m1774c().mo1772a(f15138d, String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.f15140b, Boolean.valueOf(z)), new Throwable[0]);
            workDatabase.m3811k();
        } finally {
            workDatabase.m3815g();
        }
    }
}
