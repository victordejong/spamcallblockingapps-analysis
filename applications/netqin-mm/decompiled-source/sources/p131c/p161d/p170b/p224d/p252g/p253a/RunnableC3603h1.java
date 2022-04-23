package p131c.p161d.p170b.p224d.p252g.p253a;

import com.android.volley.Request;
import com.google.android.gms.internal.ads.zzakk;
import com.google.android.gms.internal.ads.zzbgj;
/* renamed from: c.d.b.d.g.a.h1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/h1.class */
public final class RunnableC3603h1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f13231a;

    /* renamed from: b */
    public final /* synthetic */ zzakk f13232b;

    public RunnableC3603h1(zzakk zzakkVar, String str) {
        this.f13232b = zzakkVar;
        this.f13231a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbgj zzbgjVar;
        zzbgjVar = this.f13232b.f24157a;
        zzbgjVar.loadData(this.f13231a, "text/html", Request.DEFAULT_PARAMS_ENCODING);
    }
}
