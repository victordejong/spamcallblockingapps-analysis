package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzaki;
import com.google.android.gms.internal.ads.zzakr;
import com.google.android.gms.internal.ads.zzalm;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzbbz;
import com.google.android.gms.internal.ads.zzdzb;
/* renamed from: c.d.b.d.g.a.t1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/t1.class */
public final class RunnableC4051t1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzalm f15338a;

    /* renamed from: b */
    public final /* synthetic */ zzaki f15339b;

    /* renamed from: c */
    public final /* synthetic */ zzakr f15340c;

    public RunnableC4051t1(zzakr zzakrVar, zzalm zzalmVar, zzaki zzakiVar) {
        this.f15340c = zzakrVar;
        this.f15338a = zzalmVar;
        this.f15339b = zzakiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        obj = this.f15340c.f24158a;
        synchronized (obj) {
            if (!(this.f15338a.m15829a() == -1 || this.f15338a.m15829a() == 1)) {
                this.f15338a.m15825b();
                zzdzb zzdzbVar = zzbbz.f24768e;
                zzaki zzakiVar = this.f15339b;
                zzakiVar.getClass();
                zzdzbVar.execute(RunnableC4014s1.m26395a(zzakiVar));
                zzayp.m16153g("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
