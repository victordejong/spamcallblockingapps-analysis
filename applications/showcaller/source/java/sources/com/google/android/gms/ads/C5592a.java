package com.google.android.gms.ads;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.zzbcz;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/a.class */
public class C5592a {

    /* renamed from: a */
    private final int f18214a;

    /* renamed from: b */
    private final String f18215b;

    /* renamed from: c */
    private final String f18216c;

    /* renamed from: d */
    private final C5592a f18217d;

    public C5592a(int i, @RecentlyNonNull String str, @RecentlyNonNull String str2) {
        this(i, str, str2, null);
    }

    public C5592a(int i, @RecentlyNonNull String str, @RecentlyNonNull String str2, C5592a c5592a) {
        this.f18214a = i;
        this.f18215b = str;
        this.f18216c = str2;
        this.f18217d = c5592a;
    }

    /* renamed from: a */
    public int m18310a() {
        return this.f18214a;
    }

    /* renamed from: b */
    public String m18309b() {
        return this.f18216c;
    }

    /* renamed from: c */
    public String m18308c() {
        return this.f18215b;
    }

    /* renamed from: d */
    public final zzbcz m18307d() {
        C5592a c5592a = this.f18217d;
        return new zzbcz(this.f18214a, this.f18215b, this.f18216c, c5592a == null ? null : new zzbcz(c5592a.f18214a, c5592a.f18215b, c5592a.f18216c, null, null), null);
    }

    @RecentlyNonNull
    /* renamed from: e */
    public JSONObject mo17906e() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Code", this.f18214a);
        jSONObject.put("Message", this.f18215b);
        jSONObject.put("Domain", this.f18216c);
        C5592a c5592a = this.f18217d;
        if (c5592a == null) {
            jSONObject.put("Cause", "null");
        } else {
            jSONObject.put("Cause", c5592a.mo17906e());
        }
        return jSONObject;
    }

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
