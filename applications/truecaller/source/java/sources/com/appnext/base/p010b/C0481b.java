package com.appnext.base.p010b;

import android.content.Context;
import android.content.SharedPreferences;
import com.appnext.base.C0472a;
/* renamed from: com.appnext.base.b.b */
/* loaded from: classes-dex2jar.jar:com/appnext/base/b/b.class */
public final class C0481b {

    /* renamed from: cw */
    private static final C0481b f1668cw = new C0481b();

    /* renamed from: aM */
    private Context f1669aM;

    /* renamed from: cv */
    private SharedPreferences f1670cv;

    private C0481b() {
        Context context = C0480a.getContext();
        this.f1669aM = context;
        if (context != null) {
            this.f1670cv = context.getSharedPreferences("LibrarySettings", 0);
        }
    }

    /* renamed from: ak */
    public static C0481b m42559ak() {
        return f1668cw;
    }

    /* renamed from: a */
    public final long m42560a(String str, long j) {
        try {
            SharedPreferences sharedPreferences = this.f1670cv;
            return sharedPreferences != null ? sharedPreferences.getLong(str, j) : j;
        } catch (Throwable th) {
            C0472a.m42577a("LibrarySettings$getLong", th);
            return j;
        }
    }

    /* renamed from: al */
    public final void m42558al() {
        try {
            SharedPreferences sharedPreferences = this.f1670cv;
            if (sharedPreferences == null) {
                return;
            }
            sharedPreferences.edit().clear().apply();
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public final void m42557b(String str, long j) {
        try {
            SharedPreferences sharedPreferences = this.f1670cv;
            if (sharedPreferences == null) {
                return;
            }
            sharedPreferences.edit().putLong(str, j).apply();
        } catch (Throwable th) {
            C0472a.m42577a("LibrarySettings$putLong", th);
        }
    }

    /* renamed from: b */
    public final void m42556b(String str, boolean z) {
        try {
            SharedPreferences sharedPreferences = this.f1670cv;
            if (sharedPreferences == null) {
                return;
            }
            sharedPreferences.edit().putBoolean(str, true).apply();
        } catch (Throwable th) {
            C0472a.m42577a("LibrarySettings$putBoolean", th);
        }
    }

    /* renamed from: d */
    public final String m42555d(String str, String str2) {
        try {
            SharedPreferences sharedPreferences = this.f1670cv;
            return sharedPreferences != null ? sharedPreferences.getString(str, str2) : str2;
        } catch (Throwable th) {
            C0472a.m42577a("LibrarySettings$getString", th);
            return str2;
        }
    }

    /* renamed from: e */
    public final void m42554e(String str, String str2) {
        try {
            SharedPreferences sharedPreferences = this.f1670cv;
            if (sharedPreferences == null) {
                return;
            }
            sharedPreferences.edit().putString(str, str2).apply();
        } catch (Throwable th) {
            C0472a.m42577a("LibrarySettings$putString", th);
        }
    }

    public final void init(Context context) {
        if (context == null) {
            return;
        }
        this.f1669aM = context;
        this.f1670cv = context.getSharedPreferences("lib_shared_preferences", 0);
    }
}
