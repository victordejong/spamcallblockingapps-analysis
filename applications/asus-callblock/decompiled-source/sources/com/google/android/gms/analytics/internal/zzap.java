package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzap.class */
public class zzap extends zzd {
    protected boolean zzUa;
    protected String zzVd;
    protected String zzVe;
    protected int zzXw;
    protected int zzYy;
    protected boolean zzZp;
    protected boolean zzZq;

    public zzap(zzf zzfVar) {
        super(zzfVar);
    }

    public int getLogLevel() {
        zzma();
        return this.zzXw;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.internal.zzd
    public void zzkO() {
        zzoF();
    }

    public String zzkU() {
        zzma();
        return this.zzVd;
    }

    public String zzkV() {
        zzma();
        return this.zzVe;
    }

    public boolean zznL() {
        zzma();
        return false;
    }

    public boolean zznN() {
        zzma();
        return this.zzZp;
    }

    public boolean zznP() {
        zzma();
        return this.zzZq;
    }

    public boolean zznQ() {
        zzma();
        return this.zzUa;
    }

    public int zzoE() {
        zzma();
        return this.zzYy;
    }

    protected void zzoF() {
        ApplicationInfo applicationInfo;
        int i;
        zzaa zzav;
        Context context = getContext();
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 129);
        } catch (PackageManager.NameNotFoundException e) {
            zzd("PackageManager doesn't know about the app package", e);
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            zzbJ("Couldn't get ApplicationInfo to load global config");
            return;
        }
        Bundle bundle = applicationInfo.metaData;
        if (bundle != null && (i = bundle.getInt("com.google.android.gms.analytics.globalConfigResource")) > 0 && (zzav = new zzz(zzlO()).zzav(i)) != null) {
            zzbG("Loading global XML config values");
            if (zzav.zznJ()) {
                String zzkU = zzav.zzkU();
                this.zzVd = zzkU;
                zzb("XML config - app name", zzkU);
            }
            if (zzav.zznK()) {
                String zzkV = zzav.zzkV();
                this.zzVe = zzkV;
                zzb("XML config - app version", zzkV);
            }
            if (zzav.zznL()) {
                String lowerCase = zzav.zznM().toLowerCase();
                int i2 = "verbose".equals(lowerCase) ? 0 : "info".equals(lowerCase) ? 1 : "warning".equals(lowerCase) ? 2 : "error".equals(lowerCase) ? 3 : -1;
                if (i2 >= 0) {
                    this.zzXw = i2;
                    zza("XML config - log level", Integer.valueOf(i2));
                }
            }
            if (zzav.zznN()) {
                int zznO = zzav.zznO();
                this.zzYy = zznO;
                this.zzZp = true;
                zzb("XML config - dispatch period (sec)", Integer.valueOf(zznO));
            }
            if (zzav.zznP()) {
                boolean zznQ = zzav.zznQ();
                this.zzUa = zznQ;
                this.zzZq = true;
                zzb("XML config - dry run", Boolean.valueOf(zznQ));
            }
        }
    }
}
