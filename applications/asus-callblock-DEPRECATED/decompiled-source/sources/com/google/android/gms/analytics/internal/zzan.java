package com.google.android.gms.analytics.internal;

import android.app.Activity;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzan.class */
public class zzan implements f {
    public String zzTJ;
    public double zzZi = -1.0d;
    public int zzZj = -1;
    public int zzZk = -1;
    public int zzZl = -1;
    public int zzZm = -1;
    public Map<String, String> zzZn = new HashMap();

    public int getSessionTimeout() {
        return this.zzZj;
    }

    public String getTrackingId() {
        return this.zzTJ;
    }

    public String zzbV(String str) {
        String str2 = this.zzZn.get(str);
        if (str2 != null) {
            str = str2;
        }
        return str;
    }

    public boolean zzoA() {
        boolean z = true;
        if (this.zzZk != 1) {
            z = false;
        }
        return z;
    }

    public boolean zzoB() {
        return this.zzZl != -1;
    }

    public boolean zzoC() {
        boolean z = true;
        if (this.zzZl != 1) {
            z = false;
        }
        return z;
    }

    public boolean zzoD() {
        boolean z = true;
        if (this.zzZm != 1) {
            z = false;
        }
        return z;
    }

    public boolean zzov() {
        return this.zzTJ != null;
    }

    public boolean zzow() {
        return this.zzZi >= 0.0d;
    }

    public double zzox() {
        return this.zzZi;
    }

    public boolean zzoy() {
        return this.zzZj >= 0;
    }

    public boolean zzoz() {
        return this.zzZk != -1;
    }

    public String zzr(Activity activity) {
        return zzbV(activity.getClass().getCanonicalName());
    }
}
