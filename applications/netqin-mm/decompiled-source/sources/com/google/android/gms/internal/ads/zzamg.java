package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3641i2;
import p131c.p161d.p170b.p224d.p252g.p253a.C3679j2;
import p131c.p161d.p170b.p224d.p252g.p253a.C3716k2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamg.class */
public final class zzamg<I, O> implements zzalt<I, O> {

    /* renamed from: a */
    public final zzalv<O> f24185a;

    /* renamed from: b */
    public final zzaly<I> f24186b;

    /* renamed from: c */
    public final zzakr f24187c;

    /* renamed from: d */
    public final String f24188d;

    public zzamg(zzakr zzakrVar, String str, zzaly<I> zzalyVar, zzalv<O> zzalvVar) {
        this.f24187c = zzakrVar;
        this.f24188d = str;
        this.f24186b = zzalyVar;
        this.f24185a = zzalvVar;
    }

    /* renamed from: a */
    public final void m16662a(zzali zzaliVar, zzalp zzalpVar, I i, zzbcg<O> zzbcgVar) {
        try {
            zzp.m17969c();
            String b = zzayu.m16115b();
            zzagx.f24106p.m16748a(b, new C3679j2(this, zzaliVar, zzbcgVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", b);
            jSONObject.put("args", this.f24186b.mo15308b(i));
            zzalpVar.mo15569b(this.f24188d, jSONObject);
        } catch (Exception e) {
            try {
                zzbcgVar.m15834a(e);
                zzbbq.m15855b("Unable to invokeJavascript", e);
            } finally {
                zzaliVar.m16679c();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalt
    /* renamed from: c */
    public final zzdzc<O> mo16659c(I i) {
        zzbcg zzbcgVar = new zzbcg();
        zzali b = this.f24187c.m16684b((zzeg) null);
        b.m15828a(new C3641i2(this, b, i, zzbcgVar), new C3716k2(this, zzbcgVar, b));
        return zzbcgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdya
    /* renamed from: d */
    public final zzdzc<O> mo13006d(I i) throws Exception {
        return mo16659c(i);
    }
}
