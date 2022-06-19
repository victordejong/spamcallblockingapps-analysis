package p000;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
/* renamed from: cl0 */
/* loaded from: classes-dex2jar.jar:cl0.class */
public class cl0 {

    /* renamed from: a */
    public String f2392a;

    /* renamed from: b */
    public boolean f2393b;

    public cl0(String str, boolean z) {
        this.f2392a = str;
        this.f2393b = z;
    }

    /* renamed from: a */
    public static void m5308a() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(ui0.e()).edit();
        edit.remove("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage");
        edit.remove("com.facebook.appevents.SourceApplicationInfo.openedByApplink");
        edit.apply();
    }

    /* renamed from: b */
    public static cl0 m5307b() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(ui0.e());
        if (!defaultSharedPreferences.contains("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage")) {
            return null;
        }
        return new cl0(defaultSharedPreferences.getString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", null), defaultSharedPreferences.getBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", false));
    }

    /* renamed from: c */
    public void m5306c() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(ui0.e()).edit();
        edit.putString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", this.f2392a);
        edit.putBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", this.f2393b);
        edit.apply();
    }

    public String toString() {
        String str = this.f2393b ? "Applink" : "Unclassified";
        String str2 = str;
        if (this.f2392a != null) {
            str2 = str + "(" + this.f2392a + ")";
        }
        return str2;
    }
}
