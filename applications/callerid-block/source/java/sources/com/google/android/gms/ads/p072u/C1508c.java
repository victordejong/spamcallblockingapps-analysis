package com.google.android.gms.ads.p072u;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.common.C1555c;
/* renamed from: com.google.android.gms.ads.u.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/u/c.class */
public final class C1508c {

    /* renamed from: a */
    private SharedPreferences f5731a;

    public C1508c(Context context) {
        try {
            Context m8451b = C1555c.m8451b(context);
            this.f5731a = m8451b == null ? null : m8451b.getSharedPreferences("google_ads_flags", 0);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while getting SharedPreferences ", th);
            this.f5731a = null;
        }
    }

    /* renamed from: a */
    public final boolean m8540a(String str, boolean z) {
        try {
            SharedPreferences sharedPreferences = this.f5731a;
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean(str, false);
            }
            return false;
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return false;
        }
    }

    /* renamed from: b */
    public final float m8539b(String str, float f) {
        try {
            SharedPreferences sharedPreferences = this.f5731a;
            if (sharedPreferences != null) {
                return sharedPreferences.getFloat(str, 0.0f);
            }
            return 0.0f;
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return 0.0f;
        }
    }

    /* renamed from: c */
    public final String m8538c(String str, String str2) {
        try {
            SharedPreferences sharedPreferences = this.f5731a;
            return sharedPreferences == null ? str2 : sharedPreferences.getString(str, str2);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return str2;
        }
    }
}
