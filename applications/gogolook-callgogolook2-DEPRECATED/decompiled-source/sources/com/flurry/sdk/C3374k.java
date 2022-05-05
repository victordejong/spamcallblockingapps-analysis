package com.flurry.sdk;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.k */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/k.class */
public class C3374k {

    /* renamed from: a */
    public final Map<String, String> f5793a = new HashMap();

    /* renamed from: f */
    public boolean f5794f;

    /* renamed from: g */
    public String f5795g;

    public C3374k copy() {
        C3374k kVar = new C3374k();
        Map<String, String> map = this.f5793a;
        if (map != null) {
            kVar.setUserCookies(new HashMap(map));
        }
        kVar.setEnableTestAds(this.f5794f);
        return kVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C3374k)) {
            return false;
        }
        String str = this.f5795g;
        String str2 = ((C3374k) obj).f5795g;
        return str == null ? str2 == null : str.equals(str2);
    }

    public boolean getEnableTestAds() {
        return this.f5794f;
    }

    public String getFixedAdId() {
        return this.f5795g;
    }

    public Map<String, String> getUserCookies() {
        return this.f5793a;
    }

    public int hashCode() {
        String str = this.f5795g;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public void setEnableTestAds(boolean z) {
        this.f5794f = z;
    }

    public void setUserCookies(Map<String, String> map) {
        if (!(map == null || map.isEmpty())) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (!(entry.getKey() == null || entry.getValue() == null)) {
                    this.f5793a.put(entry.getKey(), entry.getValue());
                }
            }
        }
    }
}
