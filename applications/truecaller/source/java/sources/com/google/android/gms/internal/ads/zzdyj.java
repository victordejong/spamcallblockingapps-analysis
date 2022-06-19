package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyj.class */
public final class zzdyj implements zzo, zzcnx {
    private final Context zza;
    private final zzcgz zzb;
    private zzdyc zzc;
    private zzcml zzd;
    private boolean zze;
    private boolean zzf;
    private long zzg;
    private zzbgq zzh;
    private boolean zzi;

    public zzdyj(Context context, zzcgz zzcgzVar) {
        this.zza = context;
        this.zzb = zzcgzVar;
    }

    private final boolean zzj(zzbgq zzbgqVar) {
        synchronized (this) {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgp)).booleanValue()) {
                zzcgt.zzi("Ad inspector had an internal error.");
                try {
                    zzbgqVar.zze(zzfbm.zzd(16, null, null));
                } catch (RemoteException e) {
                }
                return false;
            } else if (this.zzc == null) {
                zzcgt.zzi("Ad inspector had an internal error.");
                try {
                    zzbgqVar.zze(zzfbm.zzd(16, null, null));
                } catch (RemoteException e2) {
                }
                return false;
            } else {
                if (!this.zze && !this.zzf) {
                    if (zzt.zzj().mo38787c() >= this.zzg + ((Integer) zzbet.zzc().zzc(zzbjl.zzgs)).intValue()) {
                        return true;
                    }
                }
                zzcgt.zzi("Ad inspector cannot be opened because it is already open.");
                try {
                    zzbgqVar.zze(zzfbm.zzd(19, null, null));
                } catch (RemoteException e3) {
                }
                return false;
            }
        }
    }

    private final void zzk() {
        synchronized (this) {
            if (this.zze && this.zzf) {
                zzchg.zze.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdyi
                    private final zzdyj zza;

                    {
                        this.zza = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzi();
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcnx
    public final void zza(boolean z) {
        synchronized (this) {
            if (z) {
                zze.zza("Ad inspector loaded.");
                this.zze = true;
                zzk();
                return;
            }
            zzcgt.zzi("Ad inspector failed to load.");
            try {
                zzbgq zzbgqVar = this.zzh;
                if (zzbgqVar != null) {
                    zzbgqVar.zze(zzfbm.zzd(17, null, null));
                }
            } catch (RemoteException e) {
            }
            this.zzi = true;
            this.zzd.destroy();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbp() {
        synchronized (this) {
            this.zzf = true;
            zzk();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbq() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbr() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs(int i) {
        synchronized (this) {
            this.zzd.destroy();
            if (!this.zzi) {
                zze.zza("Inspector closed.");
                zzbgq zzbgqVar = this.zzh;
                if (zzbgqVar != null) {
                    try {
                        zzbgqVar.zze(null);
                    } catch (RemoteException e) {
                    }
                }
            }
            this.zzf = false;
            this.zze = false;
            this.zzg = 0L;
            this.zzi = false;
            this.zzh = null;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzd() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
    }

    public final void zzg(zzdyc zzdycVar) {
        this.zzc = zzdycVar;
    }

    public final void zzh(zzbgq zzbgqVar, zzbps zzbpsVar) {
        synchronized (this) {
            if (!zzj(zzbgqVar)) {
                return;
            }
            try {
                zzt.zzd();
                zzcml zza = zzcmx.zza(this.zza, zzcob.zzb(), "", false, false, null, null, this.zzb, null, null, null, zzazb.zza(), null, null);
                this.zzd = zza;
                zzcnz zzR = zza.zzR();
                if (zzR == null) {
                    zzcgt.zzi("Failed to obtain a web view for the ad inspector");
                    try {
                        zzbgqVar.zze(zzfbm.zzd(17, "Failed to obtain a web view for the ad inspector", null));
                        return;
                    } catch (RemoteException e) {
                        return;
                    }
                }
                this.zzh = zzbgqVar;
                zzR.zzL(null, null, null, null, null, false, null, null, null, null, null, null, null, null, zzbpsVar, null);
                zzR.zzy(this);
                this.zzd.loadUrl((String) zzbet.zzc().zzc(zzbjl.zzgq));
                zzt.zzb();
                zzm.zza(this.zza, new AdOverlayInfoParcel(this, this.zzd, 1, this.zzb), true);
                this.zzg = zzt.zzj().mo38787c();
            } catch (zzcmw e2) {
                zzcgt.zzj("Failed to obtain a web view for the ad inspector", e2);
                try {
                    zzbgqVar.zze(zzfbm.zzd(17, "Failed to obtain a web view for the ad inspector", null));
                } catch (RemoteException e3) {
                }
            }
        }
    }

    public final /* synthetic */ void zzi() {
        this.zzd.zzbl("window.inspectorInfo", this.zzc.zzm().toString());
    }
}
