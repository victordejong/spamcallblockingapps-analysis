package com.p064b.p065a.p066a.p067a;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
/* renamed from: com.b.a.a.a.a */
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/a.class */
class C1330a {

    /* renamed from: a */
    private Context f4395a;

    public C1330a(Context context) {
        this.f4395a = context;
    }

    /* renamed from: c */
    private SharedPreferences m17480c() {
        return PreferenceManager.getDefaultSharedPreferences(m17486a());
    }

    /* renamed from: a */
    public Context m17486a() {
        return this.f4395a;
    }

    /* renamed from: a */
    public boolean m17485a(String str, Boolean bool) {
        boolean z;
        SharedPreferences m17480c = m17480c();
        if (m17480c != null) {
            SharedPreferences.Editor edit = m17480c.edit();
            edit.putBoolean(str, bool.booleanValue());
            edit.commit();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m17484a(String str, String str2) {
        boolean z;
        SharedPreferences m17480c = m17480c();
        if (m17480c != null) {
            SharedPreferences.Editor edit = m17480c.edit();
            edit.putString(str, str2);
            edit.commit();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m17483a(String str, boolean z) {
        SharedPreferences m17480c = m17480c();
        boolean z2 = z;
        if (m17480c != null) {
            z2 = m17480c.getBoolean(str, z);
        }
        return z2;
    }

    /* renamed from: b */
    public String m17482b() {
        return m17486a().getPackageName() + "_preferences";
    }

    /* renamed from: b */
    public String m17481b(String str, String str2) {
        SharedPreferences m17480c = m17480c();
        String str3 = str2;
        if (m17480c != null) {
            str3 = m17480c.getString(str, str2);
        }
        return str3;
    }
}
