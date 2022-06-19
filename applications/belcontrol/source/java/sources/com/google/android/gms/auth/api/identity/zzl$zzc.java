package com.google.android.gms.auth.api.identity;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/zzl$zzc.class */
public final class zzl$zzc {
    private String zzau;

    private zzl$zzc() {
    }

    public static zzl$zzc zzc(zzl zzlVar) {
        zzl$zzc zzl_zzc = new zzl$zzc();
        String zzh = zzlVar.zzh();
        if (zzh != null) {
            zzl_zzc.zzh(zzh);
        }
        return zzl_zzc;
    }

    public final zzl$zzc zzh(String str) {
        this.zzau = Preconditions.checkNotEmpty(str);
        return this;
    }

    public final zzl zzk() {
        return new zzl(this.zzau);
    }
}
