package com.google.android.gms.ads;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7192yr;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/j.class */
public final class C5756j extends C5592a {

    /* renamed from: e */
    private final C5844r f18617e;

    public C5756j(int i, @RecentlyNonNull String str, @RecentlyNonNull String str2, C5592a c5592a, C5844r c5844r) {
        super(i, str, str2, c5592a);
        this.f18617e = c5844r;
    }

    @Override // com.google.android.gms.ads.C5592a
    @RecentlyNonNull
    /* renamed from: e */
    public final JSONObject mo17906e() {
        JSONObject mo17906e = super.mo17906e();
        C5844r m17905f = m17905f();
        if (m17905f == null) {
            mo17906e.put("Response Info", "null");
        } else {
            mo17906e.put("Response Info", m17905f.m17770c());
        }
        return mo17906e;
    }

    @RecentlyNullable
    /* renamed from: f */
    public C5844r m17905f() {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25625X5)).booleanValue()) {
            return this.f18617e;
        }
        return null;
    }

    @Override // com.google.android.gms.ads.C5592a
    @RecentlyNonNull
    public String toString() {
        String str;
        try {
            str = mo17906e().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }
}
