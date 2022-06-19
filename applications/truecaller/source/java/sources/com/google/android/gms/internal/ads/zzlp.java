package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlp.class */
public final class zzlp implements zzaj {
    private final zzaj zza;
    private long zzb;
    private Uri zzc = Uri.EMPTY;
    private Map<String, List<String>> zzd = Collections.emptyMap();

    public zzlp(zzaj zzajVar) {
        Objects.requireNonNull(zzajVar);
        this.zza = zzajVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final void zza(zzay zzayVar) {
        Objects.requireNonNull(zzayVar);
        this.zza.zza(zzayVar);
    }

    public final long zzb() {
        return this.zzb;
    }

    public final Uri zzc() {
        return this.zzc;
    }

    public final Map<String, List<String>> zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final Map<String, List<String>> zzf() {
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzah
    public final int zzg(byte[] bArr, int i, int i2) throws IOException {
        int zzg = this.zza.zzg(bArr, i, i2);
        if (zzg != -1) {
            this.zzb += zzg;
        }
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final long zzh(zzan zzanVar) throws IOException {
        this.zzc = zzanVar.zza;
        this.zzd = Collections.emptyMap();
        long zzh = this.zza.zzh(zzanVar);
        Uri zzi = zzi();
        Objects.requireNonNull(zzi);
        this.zzc = zzi;
        this.zzd = zzf();
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final Uri zzi() {
        return this.zza.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final void zzj() throws IOException {
        this.zza.zzj();
    }
}
