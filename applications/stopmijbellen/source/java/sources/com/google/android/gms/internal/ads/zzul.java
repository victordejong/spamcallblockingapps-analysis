package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzul.class */
public final class zzul implements zzdi {
    private final zzdi zza;
    private long zzb;
    private Uri zzc = Uri.EMPTY;
    private Map<String, List<String>> zzd = Collections.emptyMap();

    public zzul(zzdi zzdiVar) {
        Objects.requireNonNull(zzdiVar);
        this.zza = zzdiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdi, com.google.android.gms.internal.ads.zzdv
    public final Map<String, List<String>> zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzb(zzdx zzdxVar) {
        Objects.requireNonNull(zzdxVar);
        this.zza.zzb(zzdxVar);
    }

    public final long zzc() {
        return this.zzb;
    }

    public final Uri zzd() {
        return this.zzc;
    }

    public final Map<String, List<String>> zze() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final int zzg(byte[] bArr, int i, int i2) throws IOException {
        int zzg = this.zza.zzg(bArr, i, i2);
        if (zzg != -1) {
            this.zzb += zzg;
        }
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final long zzh(zzdm zzdmVar) throws IOException {
        this.zzc = zzdmVar.zza;
        this.zzd = Collections.emptyMap();
        long zzh = this.zza.zzh(zzdmVar);
        Uri zzi = zzi();
        Objects.requireNonNull(zzi);
        this.zzc = zzi;
        this.zzd = zza();
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final Uri zzi() {
        return this.zza.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzj() throws IOException {
        this.zza.zzj();
    }
}
