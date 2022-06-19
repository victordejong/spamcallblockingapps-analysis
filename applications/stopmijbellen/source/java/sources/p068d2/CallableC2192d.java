package p068d2;

import java.util.concurrent.Callable;
/* renamed from: d2.d */
/* loaded from: classes-dex2jar.jar:d2/d.class */
public class CallableC2192d implements Callable<C2267f4> {

    /* renamed from: a */
    public final /* synthetic */ C2230f1 f8001a;

    /* renamed from: b */
    public final /* synthetic */ long f8002b;

    public CallableC2192d(C2230f1 c2230f1, long j) {
        this.f8001a = c2230f1;
        this.f8002b = j;
    }

    @Override // java.util.concurrent.Callable
    public C2267f4 call() throws Exception {
        C2267f4 m3783b = this.f8001a.m3721m().m3783b(this.f8002b);
        C2315i3.m3667d(m3783b);
        return m3783b;
    }
}
