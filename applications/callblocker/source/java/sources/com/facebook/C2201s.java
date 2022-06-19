package com.facebook;

import android.content.SharedPreferences;
import com.facebook.internal.C2084y;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.s */
/* loaded from: classes-dex2jar.jar:com/facebook/s.class */
public final class C2201s {

    /* renamed from: a */
    private final SharedPreferences f6442a = C2095j.m15360h().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);

    /* renamed from: a */
    public C2198r m14961a() {
        C2198r c2198r;
        String string = this.f6442a.getString("com.facebook.ProfileManager.CachedProfile", null);
        if (string != null) {
            try {
                c2198r = new C2198r(new JSONObject(string));
            } catch (JSONException e) {
            }
            return c2198r;
        }
        c2198r = null;
        return c2198r;
    }

    /* renamed from: a */
    public void m14960a(C2198r c2198r) {
        C2084y.m15417a(c2198r, "profile");
        JSONObject m14967d = c2198r.m14967d();
        if (m14967d != null) {
            this.f6442a.edit().putString("com.facebook.ProfileManager.CachedProfile", m14967d.toString()).apply();
        }
    }

    /* renamed from: b */
    public void m14959b() {
        this.f6442a.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
    }
}
