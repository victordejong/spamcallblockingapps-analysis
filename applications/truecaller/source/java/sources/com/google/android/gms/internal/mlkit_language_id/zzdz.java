package com.google.android.gms.internal.mlkit_language_id;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzdz.class */
public abstract class zzdz {
    private int zza;
    private int zzb;
    private boolean zzc;

    /* JADX INFO: Access modifiers changed from: private */
    public zzdz() {
        this.zza = 100;
        this.zzb = Integer.MAX_VALUE;
        this.zzc = false;
    }

    public static zzdz zza(byte[] bArr, int i, int i2, boolean z) {
        zzeb zzebVar = new zzeb(bArr, i2);
        try {
            zzebVar.zza(i2);
            return zzebVar;
        } catch (zzez e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract int zza();

    public abstract int zza(int i) throws zzez;
}
