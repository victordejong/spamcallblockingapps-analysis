package p131c.p161d.p282e.p340u.p344g;

import com.google.firebase.perf.internal.GaugeManager;
import com.google.firebase.perf.p494v1.ApplicationProcessState;
/* renamed from: c.d.e.u.g.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/g/g.class */
public final /* synthetic */ class RunnableC5962g implements Runnable {

    /* renamed from: a */
    public final GaugeManager f19367a;

    /* renamed from: b */
    public final String f19368b;

    /* renamed from: c */
    public final ApplicationProcessState f19369c;

    public RunnableC5962g(GaugeManager gaugeManager, String str, ApplicationProcessState applicationProcessState) {
        this.f19367a = gaugeManager;
        this.f19368b = str;
        this.f19369c = applicationProcessState;
    }

    /* renamed from: a */
    public static Runnable m22512a(GaugeManager gaugeManager, String str, ApplicationProcessState applicationProcessState) {
        return new RunnableC5962g(gaugeManager, str, applicationProcessState);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f19367a.syncFlush(this.f19368b, this.f19369c);
    }
}
