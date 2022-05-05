package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbr.class */
public abstract class zzbr {
    private static volatile boolean zzeb = false;
    private int zzdy;
    private int zzdz;
    private boolean zzea;

    private zzbr() {
        this.zzdy = 100;
        this.zzdz = Integer.MAX_VALUE;
        this.zzea = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzbr zza(byte[] bArr, int i, int i2, boolean z) {
        zzbt zzbtVar = new zzbt(bArr, 0, i2, false);
        try {
            zzbtVar.zzk(i2);
            return zzbtVar;
        } catch (zzcs e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract int zzaa();

    public abstract int zzk(int i) throws zzcs;
}
