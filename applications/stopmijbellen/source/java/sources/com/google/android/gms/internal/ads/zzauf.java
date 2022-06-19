package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import java.io.IOException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauf.class */
public final class zzauf implements zzawi {
    public final /* synthetic */ zzaui zza;
    private final Uri zzb;
    private final zzavw zzc;
    private final zzaug zzd;
    private final zzawo zze;
    private volatile boolean zzg;
    private long zzi;
    private final zzaro zzf = new zzaro();
    private boolean zzh = true;
    private long zzj = -1;

    public zzauf(zzaui zzauiVar, Uri uri, zzavw zzavwVar, zzaug zzaugVar, zzawo zzawoVar) {
        this.zza = zzauiVar;
        Objects.requireNonNull(uri);
        this.zzb = uri;
        Objects.requireNonNull(zzavwVar);
        this.zzc = zzavwVar;
        Objects.requireNonNull(zzaugVar);
        this.zzd = zzaugVar;
        this.zze = zzawoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzawi
    public final void zzb() {
        this.zzg = true;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzawi
    public final void zzc() throws IOException, InterruptedException {
        Throwable th;
        zzari zzariVar;
        int i;
        int i2;
        long j;
        Handler handler;
        Runnable runnable;
        while (!this.zzg) {
            int i3 = 0;
            try {
                char c = this.zzf.zza;
                char zzb = this.zzc.zzb(new zzavy(this.zzb, null, c, c, -1L, null, 0));
                this.zzj = zzb;
                if (zzb != -1) {
                    zzb += c;
                    this.zzj = zzb;
                }
                zzariVar = new zzari(this.zzc, c, zzb);
                try {
                    zzarj zzb2 = this.zzd.zzb(zzariVar, this.zzc.zzc());
                    if (this.zzh) {
                        zzb2.zze(c, this.zzi);
                        this.zzh = false;
                    }
                    int i4 = 0;
                    while (true) {
                        i = i4;
                        if (i4 != 0) {
                            break;
                        }
                        i3 = i4;
                        try {
                            if (this.zzg) {
                                i = 0;
                                break;
                            }
                            int i5 = i4;
                            this.zze.zza();
                            int i6 = i4;
                            int zzf = zzb2.zzf(zzariVar, this.zzf);
                            i4 = zzf;
                            long zzd = zzariVar.zzd();
                            j = this.zza.zzg;
                            if (zzd > j + c) {
                                c = zzariVar.zzd();
                                this.zze.zzb();
                                handler = this.zza.zzm;
                                runnable = this.zza.zzl;
                                handler.post(runnable);
                                i4 = zzf;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (i3 != 1 && zzariVar != null) {
                                this.zzf.zza = zzariVar.zzd();
                            }
                            zzaxb.zzm(this.zzc);
                            throw th;
                        }
                    }
                    if (i == 1) {
                        i2 = 0;
                    } else {
                        this.zzf.zza = zzariVar.zzd();
                        i2 = i;
                    }
                    zzaxb.zzm(this.zzc);
                    if (i2 != 0) {
                        return;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                zzariVar = null;
            }
        }
    }

    public final void zzd(long j, long j2) {
        this.zzf.zza = j;
        this.zzi = j2;
        this.zzh = true;
    }

    @Override // com.google.android.gms.internal.ads.zzawi
    public final boolean zze() {
        return this.zzg;
    }
}
