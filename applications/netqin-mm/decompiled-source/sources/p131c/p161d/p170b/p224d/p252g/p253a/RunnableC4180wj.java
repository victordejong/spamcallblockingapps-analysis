package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbgj;
/* renamed from: c.d.b.d.g.a.wj */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/wj.class */
public final /* synthetic */ class RunnableC4180wj implements Runnable {

    /* renamed from: a */
    public final zzbgj f15953a;

    public RunnableC4180wj(zzbgj zzbgjVar) {
        this.f15953a = zzbgjVar;
    }

    /* renamed from: a */
    public static Runnable m26171a(zzbgj zzbgjVar) {
        return new RunnableC4180wj(zzbgjVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f15953a.destroy();
    }
}
