package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fr0.class */
public final class fr0 {

    /* renamed from: a */
    private final ConcurrentHashMap<String, String> f6578a;

    /* renamed from: b */
    private final do f6579b;

    public fr0(or0 or0Var, do doVar) {
        this.f6578a = new ConcurrentHashMap<>(or0Var.f8254a);
        this.f6579b = doVar;
    }

    /* renamed from: a */
    public final void m7459a(ml1 ml1Var) {
        String str;
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (ml1Var.f7583b.f6991a.size() > 0) {
            switch (ml1Var.f7583b.f6991a.get(0).f6009b) {
                case 1:
                    concurrentHashMap = this.f6578a;
                    str = "banner";
                    concurrentHashMap.put("ad_format", str);
                    break;
                case 2:
                    concurrentHashMap = this.f6578a;
                    str = "interstitial";
                    concurrentHashMap.put("ad_format", str);
                    break;
                case 3:
                    concurrentHashMap = this.f6578a;
                    str = "native_express";
                    concurrentHashMap.put("ad_format", str);
                    break;
                case 4:
                    concurrentHashMap = this.f6578a;
                    str = "native_advanced";
                    concurrentHashMap.put("ad_format", str);
                    break;
                case 5:
                    concurrentHashMap = this.f6578a;
                    str = "rewarded";
                    concurrentHashMap.put("ad_format", str);
                    break;
                case 6:
                    this.f6578a.put("ad_format", "app_open_ad");
                    this.f6578a.put("as", true != this.f6579b.i() ? "0" : "1");
                    break;
                default:
                    concurrentHashMap = this.f6578a;
                    str = "unknown";
                    concurrentHashMap.put("ad_format", str);
                    break;
            }
        }
        if (!TextUtils.isEmpty(ml1Var.f7583b.f6992b.f6335b)) {
            this.f6578a.put("gqi", ml1Var.f7583b.f6992b.f6335b);
        }
    }

    /* renamed from: b */
    public final void m7458b(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.f6578a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.f6578a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    /* renamed from: c */
    public final Map<String, String> m7457c() {
        return this.f6578a;
    }
}
