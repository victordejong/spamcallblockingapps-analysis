package p131c.p161d.p170b.p224d.p265m;

import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.m.u */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/u.class */
public final class RunnableC4906u implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C4904s f17545a;

    /* renamed from: b */
    public final /* synthetic */ Callable f17546b;

    public RunnableC4906u(C4904s sVar, Callable callable) {
        this.f17545a = sVar;
        this.f17546b = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f17545a.m24853a((C4904s) this.f17546b.call());
        } catch (Exception e) {
            this.f17545a.m24854a(e);
        }
    }
}
