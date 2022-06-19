package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.nonagon.signalgeneration.C5827n;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nn1.class */
public final class nn1 {

    /* renamed from: a */
    private final ConcurrentHashMap<String, String> f27235a;

    /* renamed from: b */
    private final th0 f27236b;

    public nn1(wn1 wn1Var, th0 th0Var) {
        this.f27235a = new ConcurrentHashMap<>(wn1Var.f32555b);
        this.f27236b = th0Var;
    }

    /* renamed from: a */
    public final void m12843a(rj2 rj2Var) {
        if (rj2Var.f28999b.f28518a.size() > 0) {
            switch (rj2Var.f28999b.f28518a.get(0).f22221b) {
                case 1:
                    this.f27235a.put("ad_format", "banner");
                    break;
                case 2:
                    this.f27235a.put("ad_format", "interstitial");
                    break;
                case 3:
                    this.f27235a.put("ad_format", "native_express");
                    break;
                case 4:
                    this.f27235a.put("ad_format", "native_advanced");
                    break;
                case 5:
                    this.f27235a.put("ad_format", "rewarded");
                    break;
                case 6:
                    this.f27235a.put("ad_format", "app_open_ad");
                    this.f27235a.put("as", true != this.f27236b.m10678j() ? "0" : "1");
                    break;
                default:
                    this.f27235a.put("ad_format", "unknown");
                    break;
            }
        }
        if (!TextUtils.isEmpty(rj2Var.f28999b.f28519b.f24897b)) {
            this.f27235a.put("gqi", rj2Var.f28999b.f28519b.f24897b);
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25740l5)).booleanValue()) {
            boolean m17783a = C5827n.m17783a(rj2Var);
            this.f27235a.put("scar", String.valueOf(m17783a));
            if (!m17783a) {
                return;
            }
            String m17782b = C5827n.m17782b(rj2Var);
            if (!TextUtils.isEmpty(m17782b)) {
                this.f27235a.put("ragent", m17782b);
            }
            String m17781c = C5827n.m17781c(rj2Var);
            if (TextUtils.isEmpty(m17781c)) {
                return;
            }
            this.f27235a.put("rtype", m17781c);
        }
    }

    /* renamed from: b */
    public final void m12842b(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.f27235a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.f27235a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    /* renamed from: c */
    public final Map<String, String> m12841c() {
        return this.f27235a;
    }
}
