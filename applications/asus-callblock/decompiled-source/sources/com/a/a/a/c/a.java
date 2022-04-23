package com.a.a.a.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.a.a.a.b;
import com.a.a.a.b.d;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/a/a/a/c/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private d f362a;

    /* renamed from: b  reason: collision with root package name */
    private SharedPreferences f363b;
    private boolean d = false;
    private b c = new b();

    public a(b bVar, Context context) {
        this.f362a = new d(bVar);
        if (context == null) {
            throw new IllegalArgumentException("context");
        }
        this.f363b = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext());
        a();
    }

    private void a() {
        if (!this.f363b.getString("__NH_STORAGE_VERSION", BuildConfig.FLAVOR).equals("1.0.0")) {
            SharedPreferences.Editor edit = this.f363b.edit();
            for (String str : this.f363b.getAll().keySet()) {
                if (str.startsWith("__NH_")) {
                    edit.remove(str);
                }
            }
            edit.commit();
            this.d = true;
        }
    }
}
