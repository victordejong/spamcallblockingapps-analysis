package com.facebook;

import android.content.SharedPreferences;
import com.facebook.internal.af;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f20094a = g.i().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Profile a() {
        String string = this.f20094a.getString("com.facebook.ProfileManager.CachedProfile", null);
        if (string == null) {
            return null;
        }
        try {
            return new Profile(new JSONObject(string));
        } catch (JSONException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Profile profile) {
        af.a(profile, "profile");
        JSONObject jSONObject = profile.toJSONObject();
        if (jSONObject != null) {
            this.f20094a.edit().putString("com.facebook.ProfileManager.CachedProfile", jSONObject.toString()).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.f20094a.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
    }
}
