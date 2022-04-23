package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C1407r;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zp1.class */
public final class zp1 {

    /* renamed from: a */
    private final HashMap<String, String> f9422a = new HashMap<>();

    /* renamed from: b */
    private final fq1 f9423b = new fq1(C1407r.m8913k());

    private zp1() {
    }

    /* renamed from: a */
    public static zp1 m4559a(String str) {
        zp1 zp1Var = new zp1();
        zp1Var.f9422a.put("action", str);
        return zp1Var;
    }

    /* renamed from: b */
    public static zp1 m4558b(String str) {
        zp1 zp1Var = new zp1();
        zp1Var.f9422a.put("request_id", str);
        return zp1Var;
    }

    /* renamed from: c */
    public final zp1 m4557c(String str, String str2) {
        this.f9422a.put(str, str2);
        return this;
    }

    /* renamed from: d */
    public final zp1 m4556d(String str) {
        this.f9423b.m7465a(str);
        return this;
    }

    /* renamed from: e */
    public final zp1 m4555e(String str, String str2) {
        this.f9423b.m7464b(str, str2);
        return this;
    }

    /* renamed from: f */
    public final zp1 m4554f(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.f9422a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.f9422a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
        return this;
    }

    /* renamed from: g */
    public final zp1 m4553g(ml1 ml1Var, do doVar) {
        String str;
        HashMap<String, String> hashMap;
        kl1 kl1Var = ml1Var.f7583b;
        m4552h(kl1Var.f6992b);
        if (!kl1Var.f6991a.isEmpty()) {
            String str2 = "ad_format";
            switch (kl1Var.f6991a.get(0).f6009b) {
                case 1:
                    hashMap = this.f9422a;
                    str = "banner";
                    hashMap.put(str2, str);
                    break;
                case 2:
                    hashMap = this.f9422a;
                    str = "interstitial";
                    hashMap.put(str2, str);
                    break;
                case 3:
                    hashMap = this.f9422a;
                    str = "native_express";
                    hashMap.put(str2, str);
                    break;
                case 4:
                    hashMap = this.f9422a;
                    str = "native_advanced";
                    hashMap.put(str2, str);
                    break;
                case 5:
                    hashMap = this.f9422a;
                    str = "rewarded";
                    hashMap.put(str2, str);
                    break;
                case 6:
                    this.f9422a.put("ad_format", "app_open_ad");
                    if (doVar != null) {
                        hashMap = this.f9422a;
                        str = true != doVar.i() ? "0" : "1";
                        str2 = "as";
                        hashMap.put(str2, str);
                        break;
                    }
                    break;
                default:
                    hashMap = this.f9422a;
                    str = "unknown";
                    hashMap.put(str2, str);
                    break;
            }
        }
        return this;
    }

    /* renamed from: h */
    public final zp1 m4552h(dl1 dl1Var) {
        if (!TextUtils.isEmpty(dl1Var.f6335b)) {
            this.f9422a.put("gqi", dl1Var.f6335b);
        }
        return this;
    }

    /* renamed from: i */
    public final zp1 m4551i(al1 al1Var) {
        this.f9422a.put("aai", al1Var.f6035v);
        return this;
    }

    /* renamed from: j */
    public final Map<String, String> m4550j() {
        HashMap hashMap = new HashMap(this.f9422a);
        for (eq1 eq1Var : this.f9423b.m7463c()) {
            hashMap.put(eq1Var.f6444a, eq1Var.f6445b);
        }
        return hashMap;
    }
}
