package p012b.p076s.p078b.p079a.p102w0.p105n0;

import p012b.p076s.p078b.p079a.p102w0.p105n0.C1610n;
/* renamed from: b.s.b.a.w0.n0.m */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/m.class */
public final /* synthetic */ class RunnableC1609m implements Runnable {

    /* renamed from: a */
    public final C1610n.AbstractC1611a f6579a;

    public RunnableC1609m(C1610n.AbstractC1611a aVar) {
        this.f6579a = aVar;
    }

    /* renamed from: a */
    public static Runnable m32668a(C1610n.AbstractC1611a aVar) {
        return new RunnableC1609m(aVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6579a.onPrepared();
    }
}
