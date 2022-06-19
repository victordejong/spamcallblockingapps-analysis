package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bhg.class */
public final class bhg {

    /* renamed from: a */
    private ConcurrentHashMap<String, String> f11239a;

    public bhg(bho bhoVar) {
        this.f11239a = bhoVar.m11922b();
    }

    /* renamed from: a */
    public final Map<String, String> m11945a() {
        return this.f11239a;
    }

    /* renamed from: a */
    public final void m11944a(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.f11239a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.f11239a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    /* renamed from: a */
    public final void m11943a(chd chdVar) {
        if (chdVar.f13035b.f13024a.size() > 0) {
            switch (chdVar.f13035b.f13024a.get(0).f12980b) {
                case 1:
                    this.f11239a.put("ad_format", "banner");
                    break;
                case 2:
                    this.f11239a.put("ad_format", "interstitial");
                    break;
                case 3:
                    this.f11239a.put("ad_format", "native_express");
                    break;
                case 4:
                    this.f11239a.put("ad_format", "native_advanced");
                    break;
                case 5:
                    this.f11239a.put("ad_format", "rewarded");
                    break;
                default:
                    this.f11239a.put("ad_format", "unknown");
                    break;
            }
        }
        if (!TextUtils.isEmpty(chdVar.f13035b.f13025b.f13006b)) {
            this.f11239a.put("gqi", chdVar.f13035b.f13025b.f13006b);
        }
    }
}
