package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzjg.class */
public final class zzjg {
    private final zzjp zza;
    private final byte[] zzb;

    private zzjg(int i) {
        byte[] bArr = new byte[i];
        this.zzb = bArr;
        this.zza = zzjp.zza(bArr);
    }

    public /* synthetic */ zzjg(int i, zzjb zzjbVar) {
        this(i);
    }

    public final zziy zza() {
        this.zza.zzb();
        return new zzji(this.zzb);
    }

    public final zzjp zzb() {
        return this.zza;
    }
}
