package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.SharedPreferences;
import p081h.p203i.p204a.p224e.p235d.C6799g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/identifier/zzb.class */
public final class zzb {
    public SharedPreferences zzs;

    public zzb(Context context) {
        try {
            Context remoteContext = C6799g.getRemoteContext(context);
            this.zzs = remoteContext == null ? null : remoteContext.getSharedPreferences("google_ads_flags", 0);
        } catch (Throwable th) {
            this.zzs = null;
        }
    }

    public final boolean getBoolean(String str, boolean z) {
        try {
            if (this.zzs == null) {
                return false;
            }
            return this.zzs.getBoolean(str, false);
        } catch (Throwable th) {
            return false;
        }
    }

    public final float getFloat(String str, float f) {
        try {
            if (this.zzs == null) {
                return 0.0f;
            }
            return this.zzs.getFloat(str, 0.0f);
        } catch (Throwable th) {
            return 0.0f;
        }
    }

    public final String getString(String str, String str2) {
        try {
            return this.zzs == null ? str2 : this.zzs.getString(str, str2);
        } catch (Throwable th) {
            return str2;
        }
    }
}
