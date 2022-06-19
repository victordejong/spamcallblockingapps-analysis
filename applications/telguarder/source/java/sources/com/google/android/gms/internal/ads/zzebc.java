package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebc.class */
public final class zzebc {
    private final zzegl zzibn;

    private zzebc(zzegl zzeglVar) {
        this.zzibn = zzeglVar;
    }

    public static final zzebc zza(zzegl zzeglVar) throws GeneralSecurityException {
        if (zzeglVar == null || zzeglVar.zzbem() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new zzebc(zzeglVar);
    }

    public final String toString() {
        return zzebq.zzb(this.zzibn).toString();
    }

    public final zzegl zzbaq() {
        return this.zzibn;
    }
}
