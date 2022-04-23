package p081h.p154f;

import android.content.SharedPreferences;
import com.facebook.Profile;
import com.facebook.internal.C2416h0;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: h.f.w */
/* loaded from: classes-dex2jar.jar:h/f/w.class */
public final class C6152w {

    /* renamed from: a */
    public final SharedPreferences f15297a = C6135n.m23746e().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);

    /* renamed from: a */
    public void m23689a() {
        this.f15297a.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
    }

    /* renamed from: a */
    public void m23688a(Profile profile) {
        C2416h0.m34791a(profile, "profile");
        JSONObject b = profile.m35387b();
        if (b != null) {
            this.f15297a.edit().putString("com.facebook.ProfileManager.CachedProfile", b.toString()).apply();
        }
    }

    /* renamed from: b */
    public Profile m23687b() {
        String string = this.f15297a.getString("com.facebook.ProfileManager.CachedProfile", null);
        if (string == null) {
            return null;
        }
        try {
            return new Profile(new JSONObject(string));
        } catch (JSONException e) {
            return null;
        }
    }
}
