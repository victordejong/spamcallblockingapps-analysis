package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.nonagon.signalgeneration.C5827n;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/io2.class */
public final class io2 {

    /* renamed from: a */
    private final HashMap<String, String> f24371a;

    /* renamed from: b */
    private final oo2 f24372b = new oo2(C5667s.m18153k());

    private io2() {
        HashMap<String, String> hashMap = new HashMap<>();
        this.f24371a = hashMap;
        hashMap.put("new_csi", "1");
    }

    /* renamed from: a */
    public static io2 m14338a(String str) {
        io2 io2Var = new io2();
        io2Var.f24371a.put("action", str);
        return io2Var;
    }

    /* renamed from: b */
    public static io2 m14337b(String str) {
        io2 io2Var = new io2();
        io2Var.f24371a.put("request_id", str);
        return io2Var;
    }

    /* renamed from: c */
    public final io2 m14336c(String str, String str2) {
        this.f24371a.put(str, str2);
        return this;
    }

    /* renamed from: d */
    public final io2 m14335d(String str) {
        this.f24372b.m12571a(str);
        return this;
    }

    /* renamed from: e */
    public final io2 m14334e(String str, String str2) {
        this.f24372b.m12570b(str, str2);
        return this;
    }

    /* renamed from: f */
    public final io2 m14333f(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.f24371a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.f24371a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
        return this;
    }

    /* renamed from: g */
    public final io2 m14332g(rj2 rj2Var, th0 th0Var) {
        qj2 qj2Var = rj2Var.f28999b;
        m14331h(qj2Var.f28519b);
        if (!qj2Var.f28518a.isEmpty()) {
            switch (qj2Var.f28518a.get(0).f22221b) {
                case 1:
                    this.f24371a.put("ad_format", "banner");
                    break;
                case 2:
                    this.f24371a.put("ad_format", "interstitial");
                    break;
                case 3:
                    this.f24371a.put("ad_format", "native_express");
                    break;
                case 4:
                    this.f24371a.put("ad_format", "native_advanced");
                    break;
                case 5:
                    this.f24371a.put("ad_format", "rewarded");
                    break;
                case 6:
                    this.f24371a.put("ad_format", "app_open_ad");
                    if (th0Var != null) {
                        this.f24371a.put("as", true != th0Var.m10678j() ? "0" : "1");
                        break;
                    }
                    break;
                default:
                    this.f24371a.put("ad_format", "unknown");
                    break;
            }
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25740l5)).booleanValue()) {
            boolean m17783a = C5827n.m17783a(rj2Var);
            this.f24371a.put("scar", String.valueOf(m17783a));
            if (m17783a) {
                String m17782b = C5827n.m17782b(rj2Var);
                if (!TextUtils.isEmpty(m17782b)) {
                    this.f24371a.put("ragent", m17782b);
                }
                String m17781c = C5827n.m17781c(rj2Var);
                if (!TextUtils.isEmpty(m17781c)) {
                    this.f24371a.put("rtype", m17781c);
                }
            }
        }
        return this;
    }

    /* renamed from: h */
    public final io2 m14331h(jj2 jj2Var) {
        if (!TextUtils.isEmpty(jj2Var.f24897b)) {
            this.f24371a.put("gqi", jj2Var.f24897b);
        }
        return this;
    }

    /* renamed from: i */
    public final io2 m14330i(ej2 ej2Var) {
        this.f24371a.put("aai", ej2Var.f22251w);
        return this;
    }

    /* renamed from: j */
    public final Map<String, String> m14329j() {
        HashMap hashMap = new HashMap(this.f24371a);
        for (no2 no2Var : this.f24372b.m12569c()) {
            hashMap.put(no2Var.f27243a, no2Var.f27244b);
        }
        return hashMap;
    }
}
