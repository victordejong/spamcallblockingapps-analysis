package com.google.android.gms.auth.api.identity;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/zzf$zzc.class */
public final class zzf$zzc {
    private String zzau;

    private zzf$zzc() {
    }

    public static zzf$zzc zzc(zzf zzfVar) {
        zzf$zzc zzf_zzc = new zzf$zzc();
        String zzh = zzfVar.zzh();
        if (zzh != null) {
            zzf_zzc.zze(zzh);
        }
        return zzf_zzc;
    }

    public final zzf$zzc zze(String str) {
        this.zzau = Preconditions.checkNotEmpty(str);
        return this;
    }

    public final zzf zzi() {
        return new zzf(this.zzau);
    }
}
