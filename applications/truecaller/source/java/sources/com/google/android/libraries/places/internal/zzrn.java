package com.google.android.libraries.places.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzrn.class */
public abstract class zzrn {
    private int zza;
    private int zzb;
    private boolean zzc;

    private zzrn() {
        this.zza = 100;
        this.zzb = Integer.MAX_VALUE;
        this.zzc = false;
    }

    public static zzrn zza(byte[] bArr, int i, int i2, boolean z) {
        zzrp zzrpVar = new zzrp(bArr, 0, i2, false, (zzrq) null);
        try {
            zzrpVar.zza(i2);
            return zzrpVar;
        } catch (zzso e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract int zza();

    public abstract int zza(int i) throws zzso;
}
