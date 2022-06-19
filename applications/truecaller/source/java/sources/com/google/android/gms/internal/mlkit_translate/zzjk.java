package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzjk.class */
public abstract class zzjk {
    private int zza;
    private int zzb;
    private boolean zzc;

    /* JADX INFO: Access modifiers changed from: private */
    public zzjk() {
        this.zza = 100;
        this.zzb = Integer.MAX_VALUE;
        this.zzc = false;
    }

    public static zzjk zza(byte[] bArr, int i, int i2, boolean z) {
        zzjm zzjmVar = new zzjm(bArr, i2);
        try {
            zzjmVar.zza(i2);
            return zzjmVar;
        } catch (zzkk e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract int zza();

    public abstract int zza(int i) throws zzkk;
}
