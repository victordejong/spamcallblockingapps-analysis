package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzakk;
import com.google.android.gms.internal.ads.zzbgj;
/* renamed from: c.d.b.d.g.a.j1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/j1.class */
public final class RunnableC3678j1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f13571a;

    /* renamed from: b */
    public final /* synthetic */ zzakk f13572b;

    public RunnableC3678j1(zzakk zzakkVar, String str) {
        this.f13572b = zzakkVar;
        this.f13571a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbgj zzbgjVar;
        zzbgjVar = this.f13572b.f24157a;
        zzbgjVar.loadUrl(this.f13571a);
    }
}
