package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.flexbox.FlexItem;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/identifier/zzb.class */
public final class zzb {
    private SharedPreferences zzs;

    public zzb(Context context) {
        try {
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            this.zzs = remoteContext == null ? null : remoteContext.getSharedPreferences("google_ads_flags", 0);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while getting SharedPreferences ", th);
            this.zzs = null;
        }
    }

    public final boolean getBoolean(String str, boolean z) {
        try {
            if (this.zzs != null) {
                return this.zzs.getBoolean(str, false);
            }
            return false;
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return false;
        }
    }

    public final float getFloat(String str, float f) {
        try {
            return this.zzs == null ? FlexItem.FLEX_GROW_DEFAULT : this.zzs.getFloat(str, FlexItem.FLEX_GROW_DEFAULT);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return FlexItem.FLEX_GROW_DEFAULT;
        }
    }

    public final String getString(String str, String str2) {
        try {
            return this.zzs == null ? str2 : this.zzs.getString(str, str2);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return str2;
        }
    }
}
