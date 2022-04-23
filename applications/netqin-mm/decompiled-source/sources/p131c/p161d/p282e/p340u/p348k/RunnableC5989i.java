package p131c.p161d.p282e.p340u.p348k;

import com.google.firebase.perf.p494v1.ApplicationProcessState;
import p131c.p161d.p282e.p340u.p350m.C6044w;
/* renamed from: c.d.e.u.k.i */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/k/i.class */
public final /* synthetic */ class RunnableC5989i implements Runnable {

    /* renamed from: a */
    public final C5992l f19445a;

    /* renamed from: b */
    public final C6044w f19446b;

    /* renamed from: c */
    public final ApplicationProcessState f19447c;

    public RunnableC5989i(C5992l lVar, C6044w wVar, ApplicationProcessState applicationProcessState) {
        this.f19445a = lVar;
        this.f19446b = wVar;
        this.f19447c = applicationProcessState;
    }

    /* renamed from: a */
    public static Runnable m22404a(C5992l lVar, C6044w wVar, ApplicationProcessState applicationProcessState) {
        return new RunnableC5989i(lVar, wVar, applicationProcessState);
    }

    @Override // java.lang.Runnable
    public void run() {
        C5992l.m22395a(this.f19445a, this.f19446b, this.f19447c);
    }
}
