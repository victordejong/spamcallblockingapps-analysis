package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.lr */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/lr.class */
public final class C12724lr implements AbstractC13107zt<AbstractC12709lc> {

    /* renamed from: a */
    private final /* synthetic */ C12701kv f49478a;

    /* renamed from: b */
    private final /* synthetic */ Object f49479b;

    /* renamed from: c */
    private final /* synthetic */ C13103zp f49480c;

    /* renamed from: d */
    private final /* synthetic */ C12725ls f49481d;

    public C12724lr(C12725ls c12725ls, C12701kv c12701kv, Object obj, C13103zp c13103zp) {
        this.f49481d = c12725ls;
        this.f49478a = c12701kv;
        this.f49479b = obj;
        this.f49480c = c13103zp;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13107zt
    /* renamed from: a */
    public final /* synthetic */ void mo13893a(AbstractC12709lc abstractC12709lc) {
        AbstractC12709lc abstractC12709lc2 = abstractC12709lc;
        C12725ls c12725ls = this.f49481d;
        C12701kv c12701kv = this.f49478a;
        Object obj = this.f49479b;
        C13103zp c13103zp = this.f49480c;
        try {
            zzr.zzkv();
            String zzzr = zzj.zzzr();
            C12590gs.f49326p.m14609a(zzzr, new C12726lt(c12725ls, c12701kv, c13103zp));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", zzzr);
            jSONObject.put("args", c12725ls.f49483b.mo14524a(obj));
            abstractC12709lc2.mo13757b(c12725ls.f49484c, jSONObject);
        } catch (Exception e) {
            try {
                c13103zp.setException(e);
                zzd.zzc("Unable to invokeJavascript", e);
            } finally {
                c12701kv.m14553a();
            }
        }
    }
}
