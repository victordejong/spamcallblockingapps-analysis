package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauk.class */
public final class zzauk implements zzauo, zzaun {
    private final Uri zza;
    private final zzavv zzb;
    private final zzarl zzc;
    private final int zzd;
    private final Handler zze;
    private final zzauj zzf;
    private final zzapp zzg = new zzapp();
    private final int zzh;
    private zzaun zzi;
    private zzapr zzj;
    private boolean zzk;

    public zzauk(Uri uri, zzavv zzavvVar, zzarl zzarlVar, int i, Handler handler, zzauj zzaujVar, String str, int i2) {
        this.zza = uri;
        this.zzb = zzavvVar;
        this.zzc = zzarlVar;
        this.zzd = i;
        this.zze = handler;
        this.zzf = zzaujVar;
        this.zzh = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final void zza() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final void zzb(zzaow zzaowVar, boolean z, zzaun zzaunVar) {
        this.zzi = zzaunVar;
        zzavb zzavbVar = new zzavb(-9223372036854775807L, false);
        this.zzj = zzavbVar;
        zzaunVar.zze(zzavbVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final void zzc(zzaum zzaumVar) {
        ((zzaui) zzaumVar).zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final void zzd() {
        this.zzi = null;
    }

    @Override // com.google.android.gms.internal.ads.zzaun
    public final void zze(zzapr zzaprVar, Object obj) {
        zzapp zzappVar = this.zzg;
        boolean z = false;
        zzaprVar.zzd(0, zzappVar, false);
        if (zzappVar.zzc != -9223372036854775807L) {
            z = true;
        }
        if (!this.zzk || z) {
            this.zzj = zzaprVar;
            this.zzk = z;
            this.zzi.zze(zzaprVar, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final zzaum zzf(int i, zzavz zzavzVar) {
        zzawm.zzc(i == 0);
        return new zzaui(this.zza, this.zzb.zza(), this.zzc.zza(), this.zzd, this.zze, this.zzf, this, zzavzVar, null, this.zzh, null);
    }
}
