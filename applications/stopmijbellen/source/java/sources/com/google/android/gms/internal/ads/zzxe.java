package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxe.class */
public class zzxe implements zzwq {
    private final zzwq zza;

    public zzxe(zzwq zzwqVar) {
        this.zza = zzwqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final int zzb(int i) throws IOException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public long zzc() {
        return this.zza.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public long zzd() {
        return this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public long zze() {
        return this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final void zzf(int i) throws IOException {
        ((zzwk) this.zza).zzl(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzwq, com.google.android.gms.internal.ads.zzdg
    public final int zzg(byte[] bArr, int i, int i2) throws IOException {
        return this.zza.zzg(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final void zzh(byte[] bArr, int i, int i2) throws IOException {
        ((zzwk) this.zza).zzm(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final void zzi(byte[] bArr, int i, int i2) throws IOException {
        ((zzwk) this.zza).zzn(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final void zzj() {
        this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final void zzk(int i) throws IOException {
        ((zzwk) this.zza).zzo(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final boolean zzm(byte[] bArr, int i, int i2, boolean z) throws IOException {
        return this.zza.zzm(bArr, 0, 8, true);
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final boolean zzn(byte[] bArr, int i, int i2, boolean z) throws IOException {
        return this.zza.zzn(bArr, 0, 8, true);
    }
}
