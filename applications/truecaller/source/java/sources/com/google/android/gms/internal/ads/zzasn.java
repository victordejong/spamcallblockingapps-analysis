package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasn.class */
public final class zzasn implements zzasr, zzasq {
    private final Uri zza;
    private final zzaty zzb;
    private final zzapq zzc;
    private final int zzd;
    private final Handler zze;
    private final zzasm zzf;
    private final zzanv zzg = new zzanv();
    private final int zzh;
    private zzasq zzi;
    private zzanx zzj;
    private boolean zzk;

    public zzasn(Uri uri, zzaty zzatyVar, zzapq zzapqVar, int i, Handler handler, zzasm zzasmVar, String str, int i2) {
        this.zza = uri;
        this.zzb = zzatyVar;
        this.zzc = zzapqVar;
        this.zzd = i;
        this.zze = handler;
        this.zzf = zzasmVar;
        this.zzh = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzasr
    public final void zza(zzanc zzancVar, boolean z, zzasq zzasqVar) {
        this.zzi = zzasqVar;
        zzate zzateVar = new zzate(-9223372036854775807L, false);
        this.zzj = zzateVar;
        zzasqVar.zzi(zzateVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzasr
    public final void zzb() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.zzasr
    public final void zzc(zzasp zzaspVar) {
        ((zzasl) zzaspVar).zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzasr
    public final void zzd() {
        this.zzi = null;
    }

    @Override // com.google.android.gms.internal.ads.zzasr
    public final zzasp zze(int i, zzauc zzaucVar) {
        zzaup.zza(i == 0);
        return new zzasl(this.zza, this.zzb.zza(), this.zzc.zza(), this.zzd, this.zze, this.zzf, this, zzaucVar, null, this.zzh, null);
    }

    @Override // com.google.android.gms.internal.ads.zzasq
    public final void zzi(zzanx zzanxVar, Object obj) {
        zzanv zzanvVar = this.zzg;
        boolean z = false;
        zzanxVar.zzd(0, zzanvVar, false);
        if (zzanvVar.zzc != -9223372036854775807L) {
            z = true;
        }
        if (!this.zzk || z) {
            this.zzj = zzanxVar;
            this.zzk = z;
            this.zzi.zzi(zzanxVar, null);
        }
    }
}
