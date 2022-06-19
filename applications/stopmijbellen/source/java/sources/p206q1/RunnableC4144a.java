package p206q1;

import p186o1.AbstractC3824h;
import p282x1.C4832p;
/* renamed from: q1.a */
/* loaded from: classes-dex2jar.jar:q1/a.class */
public class RunnableC4144a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C4832p f13070a;

    /* renamed from: b */
    public final /* synthetic */ C4145b f13071b;

    public RunnableC4144a(C4145b c4145b, C4832p c4832p) {
        this.f13071b = c4145b;
        this.f13070a = c4832p;
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractC3824h.m1774c().mo1772a(C4145b.f13072d, String.format("Scheduling work %s", this.f13070a.f14831a), new Throwable[0]);
        this.f13071b.f13073a.mo1124d(this.f13070a);
    }
}
