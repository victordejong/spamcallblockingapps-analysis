package com.facebook;

import android.content.SharedPreferences;
import com.facebook.internal.C10218af;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.n */
/* loaded from: classes3-dex2jar.jar:com/facebook/n.class */
public final class C10397n {

    /* renamed from: a */
    private final SharedPreferences f34034a = C10181g.m23290i().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);

    /* renamed from: a */
    public final Profile m22873a() {
        String string = this.f34034a.getString("com.facebook.ProfileManager.CachedProfile", null);
        if (string != null) {
            try {
                return new Profile(new JSONObject(string));
            } catch (JSONException e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final void m22872a(Profile profile) {
        C10218af.m23179a(profile, "profile");
        JSONObject jSONObject = profile.toJSONObject();
        if (jSONObject != null) {
            this.f34034a.edit().putString("com.facebook.ProfileManager.CachedProfile", jSONObject.toString()).apply();
        }
    }

    /* renamed from: b */
    public final void m22871b() {
        this.f34034a.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
    }
}
