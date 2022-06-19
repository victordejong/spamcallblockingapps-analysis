package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.android.billingclient.api.f */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/f.class */
public class C1173f {

    /* renamed from: a */
    private final String f3748a;

    /* renamed from: b */
    private final String f3749b;

    /* renamed from: c */
    private final JSONObject f3750c;

    /* renamed from: com.android.billingclient.api.f$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/f$a.class */
    public static class C1174a {

        /* renamed from: a */
        private List<C1173f> f3751a;

        /* renamed from: b */
        private int f3752b;

        public C1174a(int i, List<C1173f> list) {
            this.f3751a = list;
            this.f3752b = i;
        }

        /* renamed from: a */
        public List<C1173f> m3871a() {
            return this.f3751a;
        }
    }

    public C1173f(String str, String str2) {
        this.f3748a = str;
        this.f3749b = str2;
        this.f3750c = new JSONObject(this.f3748a);
    }

    /* renamed from: a */
    public String m3875a() {
        return this.f3750c.optString("productId");
    }

    /* renamed from: b */
    public String m3874b() {
        JSONObject jSONObject = this.f3750c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    /* renamed from: c */
    public String m3873c() {
        return this.f3748a;
    }

    /* renamed from: d */
    public String m3872d() {
        return this.f3749b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1173f)) {
            return false;
        }
        C1173f c1173f = (C1173f) obj;
        if (!TextUtils.equals(this.f3748a, c1173f.m3873c()) || !TextUtils.equals(this.f3749b, c1173f.m3872d())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f3748a.hashCode();
    }

    public String toString() {
        return "Purchase. Json: " + this.f3748a;
    }
}
