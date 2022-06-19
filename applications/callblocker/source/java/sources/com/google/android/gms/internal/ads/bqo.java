package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bqo.class */
public final class bqo implements bmw<chs, boe> {
    @GuardedBy("this")

    /* renamed from: a */
    private final Map<String, bmx<chs, boe>> f11838a = new HashMap();

    /* renamed from: b */
    private final bfg f11839b;

    public bqo(bfg bfgVar) {
        this.f11839b = bfgVar;
    }

    @Override // com.google.android.gms.internal.ads.bmw
    /* renamed from: a */
    public final bmx<chs, boe> mo11704a(String str, JSONObject jSONObject) {
        bmx<chs, boe> bmxVar;
        synchronized (this) {
            bmx<chs, boe> bmxVar2 = this.f11838a.get(str);
            bmxVar = bmxVar2;
            if (bmxVar2 == null) {
                chs m12006a = this.f11839b.m12006a(str, jSONObject);
                if (m12006a == null) {
                    bmxVar = null;
                } else {
                    bmxVar = new bmx<>(m12006a, new boe(), str);
                    this.f11838a.put(str, bmxVar);
                }
            }
        }
        return bmxVar;
    }
}
