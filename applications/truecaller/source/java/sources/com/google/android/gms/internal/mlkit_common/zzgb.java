package com.google.android.gms.internal.mlkit_common;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzgb.class */
public class zzgb extends IOException {
    private zzhb zza = null;

    public zzgb(String str) {
        super(str);
    }

    public static zzga zza() {
        return new zzga("Protocol message tag had invalid wire type.");
    }
}
