package p131c.p161d.p170b.p224d.p252g.p253a;

import com.android.volley.Request;
import com.google.android.gms.internal.ads.zzakk;
import com.google.android.gms.internal.ads.zzbgj;
/* renamed from: c.d.b.d.g.a.g1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/g1.class */
public final class RunnableC3566g1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f13009a;

    /* renamed from: b */
    public final /* synthetic */ zzakk f13010b;

    public RunnableC3566g1(zzakk zzakkVar, String str) {
        this.f13010b = zzakkVar;
        this.f13009a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbgj zzbgjVar;
        zzbgjVar = this.f13010b.f24157a;
        zzbgjVar.loadData(this.f13009a, "text/html", Request.DEFAULT_PARAMS_ENCODING);
    }
}
