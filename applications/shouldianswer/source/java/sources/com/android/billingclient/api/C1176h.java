package com.android.billingclient.api;

import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.android.billingclient.api.h */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/h.class */
public class C1176h {

    /* renamed from: a */
    private final String f3753a;

    /* renamed from: b */
    private final JSONObject f3754b;

    /* renamed from: com.android.billingclient.api.h$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/h$a.class */
    static class C1177a {

        /* renamed from: a */
        private List<C1176h> f3755a;

        /* renamed from: b */
        private int f3756b;

        public C1177a(int i, List<C1176h> list) {
            this.f3755a = list;
            this.f3756b = i;
        }

        /* renamed from: a */
        public List<C1176h> m3865a() {
            return this.f3755a;
        }

        /* renamed from: b */
        public int m3864b() {
            return this.f3756b;
        }
    }

    public C1176h(String str) {
        this.f3753a = str;
        this.f3754b = new JSONObject(this.f3753a);
    }

    /* renamed from: a */
    public String m3870a() {
        return this.f3754b.optString("productId");
    }

    /* renamed from: b */
    public String m3869b() {
        return this.f3754b.optString("type");
    }

    /* renamed from: c */
    public String m3868c() {
        return this.f3754b.optString(FirebaseAnalytics.Param.PRICE);
    }

    /* renamed from: d */
    public boolean m3867d() {
        return this.f3754b.has("rewardToken");
    }

    /* renamed from: e */
    public String m3866e() {
        return this.f3754b.optString("rewardToken");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return TextUtils.equals(this.f3753a, ((C1176h) obj).f3753a);
        }
        return false;
    }

    public int hashCode() {
        return this.f3753a.hashCode();
    }

    public String toString() {
        return "SkuDetails: " + this.f3753a;
    }
}
