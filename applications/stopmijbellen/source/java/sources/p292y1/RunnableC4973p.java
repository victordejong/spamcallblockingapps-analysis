package p292y1;

import androidx.work.C0680b;
import java.util.UUID;
import p186o1.AbstractC3824h;
import p186o1.EnumC3836m;
import p282x1.C4826m;
import p282x1.C4828o;
import p282x1.C4832p;
import p282x1.C4835r;
import p302z1.C5035c;
/* renamed from: y1.p */
/* loaded from: classes-dex2jar.jar:y1/p.class */
public class RunnableC4973p implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ UUID f15163a;

    /* renamed from: b */
    public final /* synthetic */ C0680b f15164b;

    /* renamed from: c */
    public final /* synthetic */ C5035c f15165c;

    /* renamed from: d */
    public final /* synthetic */ C4974q f15166d;

    public RunnableC4973p(C4974q c4974q, UUID uuid, C0680b c0680b, C5035c c5035c) {
        this.f15166d = c4974q;
        this.f15163a = uuid;
        this.f15164b = c0680b;
        this.f15165c = c5035c;
    }

    @Override // java.lang.Runnable
    public void run() {
        C4832p m380i;
        String uuid = this.f15163a.toString();
        AbstractC3824h m1774c = AbstractC3824h.m1774c();
        String str = C4974q.f15167c;
        m1774c.mo1772a(str, String.format("Updating progress for %s (%s)", this.f15163a, this.f15164b), new Throwable[0]);
        this.f15166d.f15168a.m3819c();
        try {
            m380i = ((C4835r) this.f15166d.f15168a.mo7475q()).m380i(uuid);
        } finally {
            try {
                return;
            } finally {
            }
        }
        if (m380i != null) {
            if (m380i.f14832b == EnumC3836m.RUNNING) {
                C4826m c4826m = new C4826m(uuid, this.f15164b);
                C4828o c4828o = (C4828o) this.f15166d.f15168a.mo7476p();
                c4828o.f14827a.m3820b();
                c4828o.f14827a.m3819c();
                c4828o.f14828b.m3831e(c4826m);
                c4828o.f14827a.m3811k();
                c4828o.f14827a.m3815g();
            } else {
                AbstractC3824h.m1774c().mo1769f(str, String.format("Ignoring setProgressAsync(...). WorkSpec (%s) is not in a RUNNING state.", uuid), new Throwable[0]);
            }
            this.f15165c.m117k(null);
            this.f15166d.f15168a.m3811k();
            return;
        }
        throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
    }
}
