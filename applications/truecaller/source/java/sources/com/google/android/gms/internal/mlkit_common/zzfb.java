package com.google.android.gms.internal.mlkit_common;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzfb.class */
public abstract class zzfb {
    private int zza;
    private int zzb;
    private boolean zzc;

    /* JADX INFO: Access modifiers changed from: private */
    public zzfb() {
        this.zza = 100;
        this.zzb = Integer.MAX_VALUE;
        this.zzc = false;
    }

    public static zzfb zza(byte[] bArr, int i, int i2, boolean z) {
        zzfd zzfdVar = new zzfd(bArr, i2);
        try {
            zzfdVar.zza(i2);
            return zzfdVar;
        } catch (zzgb e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract int zza();

    public abstract int zza(int i) throws zzgb;
}
