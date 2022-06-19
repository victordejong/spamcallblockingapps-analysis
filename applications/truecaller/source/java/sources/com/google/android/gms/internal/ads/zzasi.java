package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import java.io.IOException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasi.class */
public final class zzasi implements zzaul {
    public final /* synthetic */ zzasl zza;
    private final Uri zzb;
    private final zzatz zzc;
    private final zzasj zzd;
    private final zzaur zze;
    private volatile boolean zzg;
    private long zzi;
    private final zzapt zzf = new zzapt();
    private boolean zzh = true;
    private long zzj = -1;

    public zzasi(zzasl zzaslVar, Uri uri, zzatz zzatzVar, zzasj zzasjVar, zzaur zzaurVar) {
        this.zza = zzaslVar;
        Objects.requireNonNull(uri);
        this.zzb = uri;
        Objects.requireNonNull(zzatzVar);
        this.zzc = zzatzVar;
        Objects.requireNonNull(zzasjVar);
        this.zzd = zzasjVar;
        this.zze = zzaurVar;
    }

    public final void zzb(long j, long j2) {
        this.zzf.zza = j;
        this.zzi = j2;
        this.zzh = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaul
    public final void zzc() {
        this.zzg = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaul
    public final boolean zzd() {
        return this.zzg;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzaul
    public final void zze() throws IOException, InterruptedException {
        zzapn zzapnVar;
        Throwable th;
        int i;
        long j;
        Handler handler;
        Runnable runnable;
        while (!this.zzg) {
            int i2 = 0;
            try {
                ?? r0 = this.zzf.zza;
                char zza = this.zzc.zza(new zzaub(this.zzb, null, r0, r0, -1L, null, 0));
                this.zzj = zza;
                if (zza != -1) {
                    zza += r0;
                    this.zzj = zza;
                }
                zzapnVar = new zzapn(this.zzc, r0, zza);
                try {
                    zzapo zzb = this.zzd.zzb(zzapnVar, this.zzc.zzc());
                    if (this.zzh) {
                        zzb.zze(r0, this.zzi);
                        this.zzh = false;
                    }
                    int i3 = 0;
                    char c = r0;
                    while (true) {
                        i = i3;
                        if (i3 != 0) {
                            break;
                        }
                        try {
                            if (this.zzg) {
                                i = 0;
                                break;
                            }
                            int i4 = i3;
                            this.zze.zzc();
                            int i5 = i3;
                            int zzg = zzb.zzg(zzapnVar, this.zzf);
                            i3 = zzg;
                            long zzh = zzapnVar.zzh();
                            j = this.zza.zzg;
                            if (zzh > j + c) {
                                c = zzapnVar.zzh();
                                this.zze.zzb();
                                handler = this.zza.zzm;
                                runnable = this.zza.zzl;
                                handler.post(runnable);
                                i3 = zzg;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            i2 = i3;
                            if (i2 != 1 && zzapnVar != null) {
                                this.zzf.zza = zzapnVar.zzh();
                            }
                            zzave.zzc(this.zzc);
                            throw th;
                        }
                    }
                    if (i == 1) {
                        i = 0;
                    } else {
                        this.zzf.zza = zzapnVar.zzh();
                    }
                    zzave.zzc(this.zzc);
                    if (i != 0) {
                        return;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                zzapnVar = null;
            }
        }
    }
}
