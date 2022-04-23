package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpk.class */
public class zzpk extends IOException {
    public final zq2 zza;

    public zzpk(IOException iOException, zq2 zq2Var, int i) {
        super(iOException);
        this.zza = zq2Var;
    }

    public zzpk(String str, zq2 zq2Var, int i) {
        super(str);
        this.zza = zq2Var;
    }

    public zzpk(String str, IOException iOException, zq2 zq2Var, int i) {
        super(str, iOException);
        this.zza = zq2Var;
    }
}
