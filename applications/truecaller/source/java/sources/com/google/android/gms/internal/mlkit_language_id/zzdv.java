package com.google.android.gms.internal.mlkit_language_id;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzdv.class */
public final class zzdv {
    private final zzea zza;
    private final byte[] zzb;

    private zzdv(int i) {
        byte[] bArr = new byte[i];
        this.zzb = bArr;
        this.zza = zzea.zza(bArr);
    }

    public /* synthetic */ zzdv(int i, zzdm zzdmVar) {
        this(i);
    }

    public final zzdn zza() {
        this.zza.zzb();
        return new zzdx(this.zzb);
    }

    public final zzea zzb() {
        return this.zza;
    }
}
