package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzalp;
import com.google.android.gms.internal.ads.zzamn;
import com.google.android.gms.internal.ads.zzdzc;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3901p2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamn.class */
public final class zzamn<I, O> implements zzdya<I, O> {

    /* renamed from: a */
    public final zzalv<O> f24191a;

    /* renamed from: b */
    public final zzaly<I> f24192b;

    /* renamed from: c */
    public final String f24193c;

    /* renamed from: d */
    public final zzdzc<zzalp> f24194d;

    public zzamn(zzdzc<zzalp> zzdzcVar, String str, zzaly<I> zzalyVar, zzalv<O> zzalvVar) {
        this.f24194d = zzdzcVar;
        this.f24193c = str;
        this.f24192b = zzalyVar;
        this.f24191a = zzalvVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m16653a(Object obj, zzalp zzalpVar) throws Exception {
        zzbcg zzbcgVar = new zzbcg();
        zzp.m17969c();
        String b = zzayu.m16115b();
        zzagx.f24106p.m16748a(b, new C3901p2(this, zzbcgVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", b);
        jSONObject.put("args", this.f24192b.mo15308b(obj));
        zzalpVar.mo15569b(this.f24193c, jSONObject);
        return zzbcgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdya
    /* renamed from: d */
    public final zzdzc<O> mo13006d(final I i) throws Exception {
        return zzdyq.m12992a(this.f24194d, new zzdya(this, i) { // from class: c.d.b.d.g.a.q2

            /* renamed from: a */
            public final zzamn f14581a;

            /* renamed from: b */
            public final Object f14582b;

            {
                this.f14581a = this;
                this.f14582b = i;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f14581a.m16653a(this.f14582b, (zzalp) obj);
            }
        }, zzbbz.f24769f);
    }
}
