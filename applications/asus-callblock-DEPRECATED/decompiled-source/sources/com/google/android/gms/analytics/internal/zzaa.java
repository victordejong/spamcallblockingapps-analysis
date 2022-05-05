package com.google.android.gms.analytics.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzaa.class */
public class zzaa implements f {
    public String zzVd;
    public String zzVe;
    public String zzYx;
    public int zzYy = -1;
    public int zzYz = -1;

    public String zzkU() {
        return this.zzVd;
    }

    public String zzkV() {
        return this.zzVe;
    }

    public boolean zznJ() {
        return this.zzVd != null;
    }

    public boolean zznK() {
        return this.zzVe != null;
    }

    public boolean zznL() {
        return this.zzYx != null;
    }

    public String zznM() {
        return this.zzYx;
    }

    public boolean zznN() {
        return this.zzYy >= 0;
    }

    public int zznO() {
        return this.zzYy;
    }

    public boolean zznP() {
        return this.zzYz != -1;
    }

    public boolean zznQ() {
        boolean z = true;
        if (this.zzYz != 1) {
            z = false;
        }
        return z;
    }
}
