package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Tracker;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzgf.class */
public final class zzgf {
    private Tracker zzrh;
    private Context zzri;
    private GoogleAnalytics zzrk;

    public zzgf(Context context) {
        this.zzri = context;
    }

    private final void zzdz(String str) {
        synchronized (this) {
            if (this.zzrk == null) {
                this.zzrk = GoogleAnalytics.getInstance(this.zzri);
                this.zzrk.setLogger(new zzgg());
                this.zzrh = this.zzrk.newTracker(str);
            }
        }
    }

    public final Tracker zzdy(String str) {
        zzdz(str);
        return this.zzrh;
    }
}
