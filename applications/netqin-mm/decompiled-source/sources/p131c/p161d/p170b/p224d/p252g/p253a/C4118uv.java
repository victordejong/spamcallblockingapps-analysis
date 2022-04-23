package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzbnw;
import com.google.android.gms.internal.ads.zzbqo;
import com.google.android.gms.internal.ads.zzbtq;
import com.google.android.gms.internal.ads.zzbxq;
import com.google.android.gms.internal.ads.zzctd;
import com.google.android.gms.internal.ads.zzdag;
import com.google.android.gms.internal.ads.zzdjw;
import com.google.android.gms.internal.ads.zzdkc;
import com.google.android.gms.internal.ads.zzdlv;
import com.google.android.gms.internal.ads.zzdox;
import com.google.android.gms.internal.ads.zzdpe;
import com.google.android.gms.internal.ads.zzdyr;
import com.google.android.gms.internal.ads.zzva;
import com.google.android.gms.internal.ads.zzwm;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.g.a.uv */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/uv.class */
public final class C4118uv implements zzdyr<AppOpenAd> {

    /* renamed from: a */
    public final /* synthetic */ zzdag f15673a;

    /* renamed from: b */
    public final /* synthetic */ C4155vv f15674b;

    /* renamed from: c */
    public final /* synthetic */ zzdjw f15675c;

    public C4118uv(zzdjw zzdjwVar, zzdag zzdagVar, C4155vv vvVar) {
        this.f15675c = zzdjwVar;
        this.f15673a = zzdagVar;
        this.f15674b = vvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        zzdlv zzdlvVar;
        zzdkc zzdkcVar;
        zzbtq a;
        Executor executor;
        zzdlvVar = this.f15675c.f27440e;
        zzbnw zzbnwVar = (zzbnw) zzdlvVar.mo13518a();
        final zzva a2 = zzbnwVar == null ? zzdpe.m13337a(th, (zzctd) null) : zzbnwVar.mo14140a().m15124a(th);
        synchronized (this.f15675c) {
            this.f15675c.f27443h = null;
            if (zzbnwVar != null) {
                zzbnwVar.mo15255b().mo13335a(a2);
                if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23807e4)).booleanValue()) {
                    executor = this.f15675c.f27437b;
                    executor.execute(new Runnable(this, a2) { // from class: c.d.b.d.g.a.tv

                        /* renamed from: a */
                        public final C4118uv f15427a;

                        /* renamed from: b */
                        public final zzva f15428b;

                        {
                            this.f15427a = this;
                            this.f15428b = a2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zzdkc zzdkcVar2;
                            C4118uv uvVar = this.f15427a;
                            zzva zzvaVar = this.f15428b;
                            zzdkcVar2 = uvVar.f15675c.f27439d;
                            zzdkcVar2.mo13335a(zzvaVar);
                        }
                    });
                }
            } else {
                zzdkcVar = this.f15675c.f27439d;
                zzdkcVar.mo13335a(a2);
                a = this.f15675c.m13551b(this.f15674b);
                ((zzbnw) a.mo15052c()).mo14140a().m15120c().mo14078j();
            }
            zzdox.m13387a(a2.f28995a, th, "AppOpenAdLoader.onFailure");
            this.f15673a.mo13703a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(Object obj) {
        zzdkc zzdkcVar;
        zzbqo zzbqoVar = (zzbqo) obj;
        synchronized (this.f15675c) {
            this.f15675c.f27443h = null;
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23807e4)).booleanValue()) {
                zzbxq f = zzbqoVar.m15164f();
                zzdkcVar = this.f15675c.f27439d;
                f.m14963a(zzdkcVar);
            }
            this.f15673a.onSuccess(zzbqoVar);
        }
    }
}
