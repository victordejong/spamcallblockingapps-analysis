package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/identifier/zzb.class */
public final class zzb {

    /* renamed from: a */
    private SharedPreferences f6856a;

    public zzb(Context context) {
        try {
            Context e = GooglePlayServicesUtilLight.m15050e(context);
            this.f6856a = e == null ? null : e.getSharedPreferences("google_ads_flags", 0);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while getting SharedPreferences ", th);
            this.f6856a = null;
        }
    }

    /* renamed from: a */
    public final boolean m15173a(String str, boolean z) {
        try {
            if (this.f6856a == null) {
                return false;
            }
            return this.f6856a.getBoolean(str, false);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final float m15172b(String str, float f) {
        try {
            if (this.f6856a == null) {
                return 0.0f;
            }
            return this.f6856a.getFloat(str, 0.0f);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final String m15171c(String str, String str2) {
        try {
            return this.f6856a == null ? str2 : this.f6856a.getString(str, str2);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return str2;
        }
    }
}
