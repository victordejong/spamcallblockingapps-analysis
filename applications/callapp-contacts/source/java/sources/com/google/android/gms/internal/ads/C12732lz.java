package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.lz */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/lz.class */
public final class C12732lz<I, O> implements daq<I, O> {

    /* renamed from: a */
    final AbstractC12714lh<O> f49497a;

    /* renamed from: b */
    private final AbstractC12717lk<I> f49498b;

    /* renamed from: c */
    private final String f49499c;

    /* renamed from: d */
    private final dbt<AbstractC12709lc> f49500d;

    public C12732lz(dbt<AbstractC12709lc> dbtVar, String str, AbstractC12717lk<I> abstractC12717lk, AbstractC12714lh<O> abstractC12714lh) {
        this.f49500d = dbtVar;
        this.f49499c = str;
        this.f49498b = abstractC12717lk;
        this.f49497a = abstractC12714lh;
    }

    /* renamed from: a */
    public final /* synthetic */ dbt m14518a(Object obj, AbstractC12709lc abstractC12709lc) throws Exception {
        C13103zp c13103zp = new C13103zp();
        zzr.zzkv();
        String zzzr = zzj.zzzr();
        C12590gs.f49326p.m14609a(zzzr, new C12735mb(this, c13103zp));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", zzzr);
        jSONObject.put("args", this.f49498b.mo14524a(obj));
        abstractC12709lc.mo13757b(this.f49499c, jSONObject);
        return c13103zp;
    }

    @Override // com.google.android.gms.internal.ads.daq
    public final dbt<O> zzf(I i) throws Exception {
        return daj.m16941a(this.f49500d, new daq(this, i) { // from class: com.google.android.gms.internal.ads.mc

            /* renamed from: a */
            private final C12732lz f49505a;

            /* renamed from: b */
            private final Object f49506b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49505a = this;
                this.f49506b = i;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return this.f49505a.m14518a(this.f49506b, (AbstractC12709lc) obj);
            }
        }, C13091zd.f50123f);
    }
}
