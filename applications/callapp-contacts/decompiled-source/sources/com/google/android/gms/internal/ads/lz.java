package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/lz.class */
public final class lz<I, O> implements daq<I, O> {

    /* renamed from: a  reason: collision with root package name */
    final lh<O> f28180a;

    /* renamed from: b  reason: collision with root package name */
    private final lk<I> f28181b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28182c;

    /* renamed from: d  reason: collision with root package name */
    private final dbt<lc> f28183d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lz(dbt<lc> dbtVar, String str, lk<I> lkVar, lh<O> lhVar) {
        this.f28183d = dbtVar;
        this.f28182c = str;
        this.f28181b = lkVar;
        this.f28180a = lhVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ dbt a(Object obj, lc lcVar) throws Exception {
        zp zpVar = new zp();
        zzr.zzkv();
        String zzzr = zzj.zzzr();
        gs.p.a(zzzr, new mb(this, zpVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", zzzr);
        jSONObject.put("args", this.f28181b.a(obj));
        lcVar.b(this.f28182c, jSONObject);
        return zpVar;
    }

    @Override // com.google.android.gms.internal.ads.daq
    public final dbt<O> zzf(final I i) throws Exception {
        return daj.a(this.f28183d, new daq(this, i) { // from class: com.google.android.gms.internal.ads.mc

            /* renamed from: a  reason: collision with root package name */
            private final lz f28188a;

            /* renamed from: b  reason: collision with root package name */
            private final Object f28189b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28188a = this;
                this.f28189b = i;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return this.f28188a.a(this.f28189b, (lc) obj);
            }
        }, zd.f);
    }
}
