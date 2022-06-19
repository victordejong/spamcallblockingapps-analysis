package com.google.android.gms.internal.mlkit_translate;

import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhu.class */
public final class zzhu {
    private final Date zza;
    private final int zzb;
    private final zzhr zzc;
    private final String zzd;

    private zzhu(Date date, int i, zzhr zzhrVar, String str) {
        this.zza = date;
        this.zzb = i;
        this.zzc = zzhrVar;
        this.zzd = str;
    }

    public static zzhu zza(zzhr zzhrVar, String str) {
        return new zzhu(zzhrVar.zzb(), 0, zzhrVar, str);
    }

    public static zzhu zza(Date date) {
        return new zzhu(date, 1, null, null);
    }

    public final zzhr zza() {
        return this.zzc;
    }
}
