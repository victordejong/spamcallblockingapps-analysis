package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.yanzhenjie.nohttp.Headers;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/iu1.class */
public final class iu1 implements cn2<hu1, du1> {

    /* renamed from: a */
    private final String f24481a;

    public iu1(String str) {
        this.f24481a = str;
    }

    @Override // com.google.android.gms.internal.ads.cn2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ du1 mo8162a(hu1 hu1Var) {
        JSONObject jSONObject;
        ad0 ad0Var;
        ad0 ad0Var2;
        ad0 ad0Var3;
        ad0 ad0Var4;
        ad0 ad0Var5;
        ad0 ad0Var6;
        ad0 ad0Var7;
        JSONObject jSONObject2;
        hu1 hu1Var2 = hu1Var;
        jSONObject = hu1Var2.f24043a;
        int optInt = jSONObject.optInt("http_timeout_millis", 60000);
        ad0Var = hu1Var2.f24044b;
        if (ad0Var.m16646a() != -2) {
            if (ad0Var.m16646a() != 1) {
                throw new zzdym(1);
            }
            if (ad0Var.m16645b() != null) {
                ei0.m15467c(TextUtils.join(", ", ad0Var.m16645b()));
            }
            throw new zzdym(2, "Error building request URL.");
        }
        HashMap hashMap = new HashMap();
        ad0Var2 = hu1Var2.f24044b;
        if (ad0Var2.m16640g() && !TextUtils.isEmpty(this.f24481a)) {
            hashMap.put(Headers.HEAD_KEY_COOKIE, this.f24481a);
        }
        ad0Var3 = hu1Var2.f24044b;
        if (ad0Var3.m16641f()) {
            jSONObject2 = hu1Var2.f24043a;
            JSONObject optJSONObject = jSONObject2.optJSONObject("pii");
            if (optJSONObject != null) {
                if (!TextUtils.isEmpty(optJSONObject.optString("doritos", ""))) {
                    hashMap.put("x-afma-drt-cookie", optJSONObject.optString("doritos", ""));
                }
                if (!TextUtils.isEmpty(optJSONObject.optString("doritos_v2", ""))) {
                    hashMap.put("x-afma-drt-v2-cookie", optJSONObject.optString("doritos_v2", ""));
                }
            } else {
                C5722o1.m17990k("DSID signal does not exist.");
            }
        }
        String str = "";
        ad0Var4 = hu1Var2.f24044b;
        if (ad0Var4 != null) {
            str = "";
            ad0Var6 = hu1Var2.f24044b;
            if (!TextUtils.isEmpty(ad0Var6.m16643d())) {
                ad0Var7 = hu1Var2.f24044b;
                str = ad0Var7.m16643d();
            }
        }
        ad0Var5 = hu1Var2.f24044b;
        return new du1(ad0Var5.m16642e(), optInt, hashMap, str);
    }
}
