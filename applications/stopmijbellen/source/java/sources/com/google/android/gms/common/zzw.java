package com.google.android.gms.common;

import android.util.Log;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzw.class */
public class zzw {
    private static final zzw zzd = new zzw(true, null, null);
    public final boolean zza;
    @Nullable
    public final String zzb;
    @Nullable
    public final Throwable zzc;

    public zzw(boolean z, @Nullable String str, @Nullable Throwable th) {
        this.zza = z;
        this.zzb = str;
        this.zzc = th;
    }

    public static zzw zzb() {
        return zzd;
    }

    public static zzw zzc(String str) {
        return new zzw(false, str, null);
    }

    public static zzw zzd(String str, Throwable th) {
        return new zzw(false, str, th);
    }

    @Nullable
    public String zza() {
        return this.zzb;
    }

    public final void zze() {
        if (this.zza || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.zzc != null) {
            zza();
        } else {
            zza();
        }
    }
}
