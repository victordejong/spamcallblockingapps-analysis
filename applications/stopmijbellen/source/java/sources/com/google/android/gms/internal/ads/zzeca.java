package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeca.class */
public final class zzeca implements zzo, zzcqa {
    private final Context zza;
    private final zzcjf zzb;
    private zzebt zzc;
    private zzcop zzd;
    private boolean zze;
    private boolean zzf;
    private long zzg;
    private zzbin zzh;
    private boolean zzi;

    public zzeca(Context context, zzcjf zzcjfVar) {
        this.zza = context;
        this.zzb = zzcjfVar;
    }

    private final void zzj() {
        synchronized (this) {
            if (this.zze && this.zzf) {
                zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebz
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeca.this.zzh();
                    }
                });
            }
        }
    }

    private final boolean zzk(zzbin zzbinVar) {
        synchronized (this) {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgA)).booleanValue()) {
                zzciz.zzj("Ad inspector had an internal error.");
                try {
                    zzbinVar.zze(zzfey.zzd(16, null, null));
                } catch (RemoteException e) {
                }
                return false;
            } else if (this.zzc == null) {
                zzciz.zzj("Ad inspector had an internal error.");
                try {
                    zzbinVar.zze(zzfey.zzd(16, null, null));
                } catch (RemoteException e2) {
                }
                return false;
            } else {
                if (!this.zze && !this.zzf) {
                    if (zzt.zzA().currentTimeMillis() >= this.zzg + ((Integer) zzbgq.zzc().zzb(zzblj.zzgD)).intValue()) {
                        return true;
                    }
                }
                zzciz.zzj("Ad inspector cannot be opened because it is already open.");
                try {
                    zzbinVar.zze(zzfey.zzd(19, null, null));
                } catch (RemoteException e3) {
                }
                return false;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcqa
    public final void zza(boolean z) {
        synchronized (this) {
            if (z) {
                zze.zza("Ad inspector loaded.");
                this.zze = true;
                zzj();
                return;
            }
            zzciz.zzj("Ad inspector failed to load.");
            try {
                zzbin zzbinVar = this.zzh;
                if (zzbinVar != null) {
                    zzbinVar.zze(zzfey.zzd(17, null, null));
                }
            } catch (RemoteException e) {
            }
            this.zzi = true;
            this.zzd.destroy();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        synchronized (this) {
            this.zzf = true;
            zzj();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbK() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbS() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbz() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(int i) {
        synchronized (this) {
            this.zzd.destroy();
            if (!this.zzi) {
                zze.zza("Inspector closed.");
                zzbin zzbinVar = this.zzh;
                if (zzbinVar != null) {
                    try {
                        zzbinVar.zze(null);
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

    public final void zzg(zzebt zzebtVar) {
        this.zzc = zzebtVar;
    }

    public final /* synthetic */ void zzh() {
        this.zzd.zzb("window.inspectorInfo", this.zzc.zzd().toString());
    }

    public final void zzi(zzbin zzbinVar, zzbru zzbruVar) {
        synchronized (this) {
            if (!zzk(zzbinVar)) {
                return;
            }
            try {
                zzt.zzz();
                zzcop zza = zzcpb.zza(this.zza, zzcqe.zza(), "", false, false, null, null, this.zzb, null, null, null, zzbay.zza(), null, null);
                this.zzd = zza;
                zzcqc zzP = zza.zzP();
                if (zzP == null) {
                    zzciz.zzj("Failed to obtain a web view for the ad inspector");
                    try {
                        zzbinVar.zze(zzfey.zzd(17, "Failed to obtain a web view for the ad inspector", null));
                        return;
                    } catch (RemoteException e) {
                        return;
                    }
                }
                this.zzh = zzbinVar;
                zzP.zzL(null, null, null, null, null, false, null, null, null, null, null, null, null, null, zzbruVar, null);
                zzP.zzz(this);
                this.zzd.loadUrl((String) zzbgq.zzc().zzb(zzblj.zzgB));
                zzt.zzj();
                zzm.zza(this.zza, new AdOverlayInfoParcel(this, this.zzd, 1, this.zzb), true);
                this.zzg = zzt.zzA().currentTimeMillis();
            } catch (zzcpa e2) {
                zzciz.zzk("Failed to obtain a web view for the ad inspector", e2);
                try {
                    zzbinVar.zze(zzfey.zzd(17, "Failed to obtain a web view for the ad inspector", null));
                } catch (RemoteException e3) {
                }
            }
        }
    }
}
