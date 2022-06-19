package p000;

import android.content.SharedPreferences;
import com.facebook.Profile;
import com.google.android.gms.common.Scopes;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: ej0 */
/* loaded from: classes-dex2jar.jar:ej0.class */
public final class ej0 {

    /* renamed from: a */
    public final SharedPreferences f6354a = ui0.e().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);

    /* renamed from: a */
    public void m2148a() {
        this.f6354a.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
    }

    /* renamed from: b */
    public Profile m2147b() {
        String string = this.f6354a.getString("com.facebook.ProfileManager.CachedProfile", null);
        if (string != null) {
            try {
                return new Profile(new JSONObject(string));
            } catch (JSONException e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: c */
    public void m2146c(Profile profile) {
        gn0.l(profile, Scopes.PROFILE);
        JSONObject m5130f = profile.m5130f();
        if (m5130f != null) {
            this.f6354a.edit().putString("com.facebook.ProfileManager.CachedProfile", m5130f.toString()).apply();
        }
    }
}
