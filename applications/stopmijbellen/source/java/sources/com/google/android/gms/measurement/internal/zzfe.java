package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfe.class */
public final class zzfe {
    public final zzfu zza;

    public zzfe(zzfu zzfuVar) {
        this.zza = zzfuVar;
    }

    @VisibleForTesting
    public final boolean zza() {
        boolean z = false;
        try {
            PackageManagerWrapper packageManager = Wrappers.packageManager(this.zza.zzax());
            if (packageManager == null) {
                this.zza.zzau().zzk().zza("Failed to get PackageManager for Install Referrer Play Store compatibility check");
                return false;
            }
            if (packageManager.getPackageInfo("com.android.vending", 128).versionCode >= 80837300) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            this.zza.zzau().zzk().zzb("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
