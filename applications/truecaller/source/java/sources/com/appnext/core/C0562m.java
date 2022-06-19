package com.appnext.core;

import android.content.Context;
import android.content.SharedPreferences;
import com.appnext.base.C0472a;
/* renamed from: com.appnext.core.m */
/* loaded from: classes-dex2jar.jar:com/appnext/core/m.class */
public class C0562m {

    /* renamed from: dZ */
    private static final String f1837dZ = "m";

    /* renamed from: ea */
    private static volatile C0562m f1838ea;

    /* renamed from: aM */
    private Context f1839aM;

    /* renamed from: cv */
    private SharedPreferences f1840cv;

    private C0562m(Context context) {
        if (context == null) {
            return;
        }
        this.f1839aM = context;
        this.f1840cv = context.getSharedPreferences("sp_response_preferences", 0);
    }

    /* renamed from: l */
    public static C0562m m42347l(Context context) {
        if (f1838ea == null) {
            synchronized (C0562m.class) {
                try {
                    if (f1838ea == null) {
                        f1838ea = new C0562m(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1838ea;
    }

    /* renamed from: a */
    public final int m42353a(String str, int i) {
        try {
            SharedPreferences sharedPreferences = this.f1840cv;
            if (sharedPreferences == null) {
                return 0;
            }
            return sharedPreferences.getInt(str, 0);
        } catch (Throwable th) {
            C0472a.m42577a("SPResponse$getInt", th);
            return 0;
        }
    }

    /* renamed from: a */
    public final long m42352a(String str, long j) {
        try {
            SharedPreferences sharedPreferences = this.f1840cv;
            if (sharedPreferences == null) {
                return 0L;
            }
            return sharedPreferences.getLong(str, 0L);
        } catch (Throwable th) {
            C0472a.m42577a("SPResponse$getLong", th);
            return 0L;
        }
    }

    /* renamed from: b */
    public final void m42351b(String str, int i) {
        try {
            SharedPreferences sharedPreferences = this.f1840cv;
            if (sharedPreferences == null) {
                return;
            }
            sharedPreferences.edit().putInt(str, i).apply();
        } catch (Throwable th) {
            C0472a.m42577a("SPResponse$putInt", th);
        }
    }

    /* renamed from: b */
    public final void m42350b(String str, long j) {
        try {
            SharedPreferences sharedPreferences = this.f1840cv;
            if (sharedPreferences == null) {
                return;
            }
            sharedPreferences.edit().putLong(str, j).apply();
        } catch (Throwable th) {
            C0472a.m42577a("SPResponse$putLong", th);
        }
    }

    /* renamed from: d */
    public final String m42349d(String str, String str2) {
        try {
            SharedPreferences sharedPreferences = this.f1840cv;
            return sharedPreferences != null ? sharedPreferences.getString(str, str2) : str2;
        } catch (Throwable th) {
            C0472a.m42577a("SPResponse$getString", th);
            return str2;
        }
    }

    /* renamed from: e */
    public final void m42348e(String str, String str2) {
        try {
            SharedPreferences sharedPreferences = this.f1840cv;
            if (sharedPreferences == null) {
                return;
            }
            sharedPreferences.edit().putString(str, str2).apply();
        } catch (Throwable th) {
            C0472a.m42577a("SPResponse$putString", th);
        }
    }
}
