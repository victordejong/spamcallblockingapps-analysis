package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/lr.class */
public final class lr implements zt<lc> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ kv f28161a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Object f28162b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ zp f28163c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ ls f28164d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lr(ls lsVar, kv kvVar, Object obj, zp zpVar) {
        this.f28164d = lsVar;
        this.f28161a = kvVar;
        this.f28162b = obj;
        this.f28163c = zpVar;
    }

    @Override // com.google.android.gms.internal.ads.zt
    public final /* synthetic */ void a(lc lcVar) {
        lc lcVar2 = lcVar;
        ls lsVar = this.f28164d;
        kv kvVar = this.f28161a;
        Object obj = this.f28162b;
        zp zpVar = this.f28163c;
        try {
            zzr.zzkv();
            String zzzr = zzj.zzzr();
            gs.p.a(zzzr, new lt(lsVar, kvVar, zpVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", zzzr);
            jSONObject.put("args", lsVar.f28166b.a(obj));
            lcVar2.b(lsVar.f28167c, jSONObject);
        } catch (Exception e) {
            try {
                zpVar.setException(e);
                zzd.zzc("Unable to invokeJavascript", e);
            } finally {
                kvVar.a();
            }
        }
    }
}
