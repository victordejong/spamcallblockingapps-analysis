package p080e5;

import java.util.concurrent.Callable;
/* renamed from: e5.q */
/* loaded from: classes-dex2jar.jar:e5/q.class */
public class CallableC2570q implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ long f8972a;

    /* renamed from: b */
    public final /* synthetic */ String f8973b;

    /* renamed from: c */
    public final /* synthetic */ C2568p f8974c;

    public CallableC2570q(C2568p c2568p, long j, String str) {
        this.f8974c = c2568p;
        this.f8972a = j;
        this.f8973b = str;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        C2581z c2581z = this.f8974c.f8966m;
        if (!(c2581z != null && c2581z.f9005d.get())) {
            this.f8974c.f8961h.f9440c.mo3150c(this.f8972a, this.f8973b);
            return null;
        }
        return null;
    }
}
