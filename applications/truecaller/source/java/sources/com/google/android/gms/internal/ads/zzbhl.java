package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.zza;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhl.class */
public final class zzbhl {
    @VisibleForTesting
    public final zzbes zza;
    private final zzbvd zzb;
    private final zzbdk zzc;
    private final AtomicBoolean zzd;
    private final VideoController zze;
    private zzbcv zzf;
    private AdListener zzg;
    private AdSize[] zzh;
    private AppEventListener zzi;
    private zzbfn zzj;
    private VideoOptions zzk;
    private String zzl;
    @NotOnlyInitialized
    private final ViewGroup zzm;
    private int zzn;
    private boolean zzo;
    private OnPaidEventListener zzp;

    public zzbhl(ViewGroup viewGroup) {
        this(viewGroup, null, false, zzbdk.zza, null, 0);
    }

    public zzbhl(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, zzbdk.zza, null, i);
    }

    public zzbhl(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzbdk.zza, null, 0);
    }

    public zzbhl(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, z, zzbdk.zza, null, i);
    }

    @VisibleForTesting
    public zzbhl(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzbdk zzbdkVar, zzbfn zzbfnVar, int i) {
        zzbdl zzbdlVar;
        this.zzb = new zzbvd();
        this.zze = new VideoController();
        this.zza = new zzbhk(this);
        this.zzm = viewGroup;
        this.zzc = zzbdkVar;
        this.zzj = null;
        this.zzd = new AtomicBoolean(false);
        this.zzn = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzbdt zzbdtVar = new zzbdt(context, attributeSet);
                this.zzh = zzbdtVar.zza(z);
                this.zzl = zzbdtVar.zzb();
                if (!viewGroup.isInEditMode()) {
                    return;
                }
                zzcgm zza = zzber.zza();
                AdSize adSize = this.zzh[0];
                int i2 = this.zzn;
                if (adSize.equals(AdSize.INVALID)) {
                    zzbdlVar = zzbdl.zze();
                } else {
                    zzbdlVar = new zzbdl(context, adSize);
                    zzbdlVar.zzj = zzC(i2);
                }
                zza.zzc(viewGroup, zzbdlVar, "Ads by Google");
            } catch (IllegalArgumentException e) {
                zzber.zza().zzb(viewGroup, new zzbdl(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }

    private static zzbdl zzB(Context context, AdSize[] adSizeArr, int i) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.INVALID)) {
                return zzbdl.zze();
            }
        }
        zzbdl zzbdlVar = new zzbdl(context, adSizeArr);
        zzbdlVar.zzj = zzC(i);
        return zzbdlVar;
    }

    private static boolean zzC(int i) {
        return i == 1;
    }

    public final boolean zzA(zzbfn zzbfnVar) {
        try {
            IObjectWrapper zzi = zzbfnVar.zzi();
            if (zzi == null || ((View) ObjectWrapper.m38746B1(zzi)).getParent() != null) {
                return false;
            }
            this.zzm.addView((View) ObjectWrapper.m38746B1(zzi));
            this.zzj = zzbfnVar;
            return true;
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final void zzb() {
        try {
            zzbfn zzbfnVar = this.zzj;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzj();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    public final AdListener zzc() {
        return this.zzg;
    }

    public final AdSize zzd() {
        zzbdl zzu;
        try {
            zzbfn zzbfnVar = this.zzj;
            if (zzbfnVar != null && (zzu = zzbfnVar.zzu()) != null) {
                return zza.zza(zzu.zze, zzu.zzb, zzu.zza);
            }
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
        AdSize[] adSizeArr = this.zzh;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    public final AdSize[] zze() {
        return this.zzh;
    }

    public final String zzf() {
        zzbfn zzbfnVar;
        if (this.zzl == null && (zzbfnVar = this.zzj) != null) {
            try {
                this.zzl = zzbfnVar.zzB();
            } catch (RemoteException e) {
                zzcgt.zzl("#007 Could not call remote method.", e);
            }
        }
        return this.zzl;
    }

    public final AppEventListener zzg() {
        return this.zzi;
    }

    public final void zzh(zzbhj zzbhjVar) {
        try {
            if (this.zzj == null) {
                if (this.zzh == null || this.zzl == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.zzm.getContext();
                zzbdl zzB = zzB(context, this.zzh, this.zzn);
                zzbfn zzd = "search_v2".equals(zzB.zza) ? new zzbee(zzber.zzb(), context, zzB, this.zzl).zzd(context, false) : new zzbec(zzber.zzb(), context, zzB, this.zzl, this.zzb).zzd(context, false);
                this.zzj = zzd;
                zzd.zzo(new zzbdb(this.zza));
                zzbcv zzbcvVar = this.zzf;
                if (zzbcvVar != null) {
                    this.zzj.zzF(new zzbcw(zzbcvVar));
                }
                AppEventListener appEventListener = this.zzi;
                if (appEventListener != null) {
                    this.zzj.zzp(new zzawr(appEventListener));
                }
                VideoOptions videoOptions = this.zzk;
                if (videoOptions != null) {
                    this.zzj.zzM(new zzbis(videoOptions));
                }
                this.zzj.zzX(new zzbil(this.zzp));
                this.zzj.zzG(this.zzo);
                zzbfn zzbfnVar = this.zzj;
                if (zzbfnVar != null) {
                    try {
                        IObjectWrapper zzi = zzbfnVar.zzi();
                        if (zzi != null) {
                            this.zzm.addView((View) ObjectWrapper.m38746B1(zzi));
                        }
                    } catch (RemoteException e) {
                        zzcgt.zzl("#007 Could not call remote method.", e);
                    }
                }
            }
            zzbfn zzbfnVar2 = this.zzj;
            Objects.requireNonNull(zzbfnVar2);
            if (!zzbfnVar2.zzl(this.zzc.zza(this.zzm.getContext(), zzbhjVar))) {
                return;
            }
            this.zzb.zze(zzbhjVar.zzn());
        } catch (RemoteException e2) {
            zzcgt.zzl("#007 Could not call remote method.", e2);
        }
    }

    public final void zzi() {
        try {
            zzbfn zzbfnVar = this.zzj;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzm();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzj() {
        if (this.zzd.getAndSet(true)) {
            return;
        }
        try {
            zzbfn zzbfnVar = this.zzj;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzt();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzk() {
        try {
            zzbfn zzbfnVar = this.zzj;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzn();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzl(AdListener adListener) {
        this.zzg = adListener;
        this.zza.zza(adListener);
    }

    public final void zzm(zzbcv zzbcvVar) {
        try {
            this.zzf = zzbcvVar;
            zzbfn zzbfnVar = this.zzj;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzF(zzbcvVar != null ? new zzbcw(zzbcvVar) : null);
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzn(AdSize... adSizeArr) {
        if (this.zzh == null) {
            zzo(adSizeArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    public final void zzo(AdSize... adSizeArr) {
        this.zzh = adSizeArr;
        try {
            zzbfn zzbfnVar = this.zzj;
            if (zzbfnVar != null) {
                zzbfnVar.zzv(zzB(this.zzm.getContext(), this.zzh, this.zzn));
            }
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
        this.zzm.requestLayout();
    }

    public final void zzp(String str) {
        if (this.zzl == null) {
            this.zzl = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }

    public final void zzq(AppEventListener appEventListener) {
        try {
            this.zzi = appEventListener;
            zzbfn zzbfnVar = this.zzj;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzp(appEventListener != null ? new zzawr(appEventListener) : null);
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzr(boolean z) {
        this.zzo = z;
        try {
            zzbfn zzbfnVar = this.zzj;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzG(z);
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    public final boolean zzs() {
        try {
            zzbfn zzbfnVar = this.zzj;
            if (zzbfnVar == null) {
                return false;
            }
            return zzbfnVar.zzH();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final ResponseInfo zzt() {
        zzbgz zzbgzVar;
        try {
            zzbfn zzbfnVar = this.zzj;
            zzbgzVar = null;
            if (zzbfnVar != null) {
                zzbgzVar = zzbfnVar.zzA();
            }
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
            zzbgzVar = null;
        }
        return ResponseInfo.zzb(zzbgzVar);
    }

    public final void zzu(OnPaidEventListener onPaidEventListener) {
        try {
            this.zzp = onPaidEventListener;
            zzbfn zzbfnVar = this.zzj;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzX(new zzbil(onPaidEventListener));
        } catch (RemoteException e) {
            zzcgt.zzl("#008 Must be called on the main UI thread.", e);
        }
    }

    public final OnPaidEventListener zzv() {
        return this.zzp;
    }

    public final VideoController zzw() {
        return this.zze;
    }

    public final zzbhc zzx() {
        zzbfn zzbfnVar = this.zzj;
        if (zzbfnVar != null) {
            try {
                return zzbfnVar.zzL();
            } catch (RemoteException e) {
                zzcgt.zzl("#007 Could not call remote method.", e);
                return null;
            }
        }
        return null;
    }

    public final void zzy(VideoOptions videoOptions) {
        this.zzk = videoOptions;
        try {
            zzbfn zzbfnVar = this.zzj;
            if (zzbfnVar == null) {
                return;
            }
            zzbfnVar.zzM(videoOptions == null ? null : new zzbis(videoOptions));
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }

    public final VideoOptions zzz() {
        return this.zzk;
    }
}
