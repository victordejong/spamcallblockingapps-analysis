package p068d2;

import java.util.concurrent.Callable;
/* renamed from: d2.e */
/* loaded from: classes-dex2jar.jar:d2/e.class */
public class CallableC2201e implements Callable<C2267f4> {

    /* renamed from: a */
    public final /* synthetic */ C2230f1 f8026a;

    /* renamed from: b */
    public final /* synthetic */ long f8027b;

    public CallableC2201e(C2230f1 c2230f1, long j) {
        this.f8026a = c2230f1;
        this.f8027b = j;
    }

    @Override // java.util.concurrent.Callable
    public C2267f4 call() throws Exception {
        return this.f8026a.f8081S ? C2168b.m3791g(this.f8027b) : C2168b.m3791g(-1L);
    }
}
