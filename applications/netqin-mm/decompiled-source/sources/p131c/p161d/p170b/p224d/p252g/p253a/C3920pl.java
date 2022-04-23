package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzbcg;
import com.google.android.gms.internal.ads.zzcnu;
import com.google.android.gms.internal.ads.zzdyr;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.g.a.pl */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/pl.class */
public final class C3920pl implements zzdyr<String> {

    /* renamed from: a */
    public final /* synthetic */ zzcnu f14552a;

    public C3920pl(zzcnu zzcnuVar) {
        this.f14552a = zzcnuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        long j;
        zzbcg zzbcgVar;
        synchronized (this) {
            this.f14552a.f26319b = true;
            zzcnu zzcnuVar = this.f14552a;
            long a = zzp.m17962j().mo17092a();
            j = this.f14552a.f26320c;
            zzcnuVar.m13987a("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (a - j));
            zzbcgVar = this.f14552a.f26321d;
            zzbcgVar.m15834a((Throwable) new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(String str) {
        long j;
        Executor executor;
        final String str2 = str;
        synchronized (this) {
            this.f14552a.f26319b = true;
            zzcnu zzcnuVar = this.f14552a;
            long a = zzp.m17962j().mo17092a();
            j = this.f14552a.f26320c;
            zzcnuVar.m13987a("com.google.android.gms.ads.MobileAds", true, "", (int) (a - j));
            executor = this.f14552a.f26325h;
            executor.execute(new Runnable(this, str2) { // from class: c.d.b.d.g.a.sl

                /* renamed from: a */
                public final C3920pl f15313a;

                /* renamed from: b */
                public final String f15314b;

                {
                    this.f15313a = this;
                    this.f15314b = str2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C3920pl plVar = this.f15313a;
                    plVar.f14552a.m13988a(this.f15314b);
                }
            });
        }
    }
}
