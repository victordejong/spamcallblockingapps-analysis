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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbji.class */
public final class zzbji {
    @VisibleForTesting
    public final zzbgp zza;
    private final zzbxe zzb;
    private final zzbfh zzc;
    private final AtomicBoolean zzd;
    private final VideoController zze;
    private zzbes zzf;
    private AdListener zzg;
    private AdSize[] zzh;
    private AppEventListener zzi;
    private zzbhk zzj;
    private VideoOptions zzk;
    private String zzl;
    @NotOnlyInitialized
    private final ViewGroup zzm;
    private int zzn;
    private boolean zzo;
    private OnPaidEventListener zzp;

    public zzbji(ViewGroup viewGroup) {
        this(viewGroup, null, false, zzbfh.zza, null, 0);
    }

    public zzbji(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, zzbfh.zza, null, i);
    }

    public zzbji(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzbfh.zza, null, 0);
    }

    public zzbji(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, z, zzbfh.zza, null, i);
    }

    @VisibleForTesting
    public zzbji(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzbfh zzbfhVar, zzbhk zzbhkVar, int i) {
        zzbfi zzbfiVar;
        this.zzb = new zzbxe();
        this.zze = new VideoController();
        this.zza = new zzbjh(this);
        this.zzm = viewGroup;
        this.zzc = zzbfhVar;
        this.zzj = null;
        this.zzd = new AtomicBoolean(false);
        this.zzn = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzbfq zzbfqVar = new zzbfq(context, attributeSet);
                this.zzh = zzbfqVar.zzb(z);
                this.zzl = zzbfqVar.zza();
                if (!viewGroup.isInEditMode()) {
                    return;
                }
                zzcis zzb = zzbgo.zzb();
                AdSize adSize = this.zzh[0];
                int i2 = this.zzn;
                if (adSize.equals(AdSize.INVALID)) {
                    zzbfiVar = zzbfi.zze();
                } else {
                    zzbfiVar = new zzbfi(context, adSize);
                    zzbfiVar.zzj = zzC(i2);
                }
                zzb.zzh(viewGroup, zzbfiVar, "Ads by Google");
            } catch (IllegalArgumentException e) {
                zzbgo.zzb().zzg(viewGroup, new zzbfi(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }

    private static zzbfi zzB(Context context, AdSize[] adSizeArr, int i) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.INVALID)) {
                return zzbfi.zze();
            }
        }
        zzbfi zzbfiVar = new zzbfi(context, adSizeArr);
        zzbfiVar.zzj = zzC(i);
        return zzbfiVar;
    }

    private static boolean zzC(int i) {
        return i == 1;
    }

    public final AdSize[] zzA() {
        return this.zzh;
    }

    public final AdListener zza() {
        return this.zzg;
    }

    public final AdSize zzb() {
        zzbfi zzg;
        try {
            zzbhk zzbhkVar = this.zzj;
            if (zzbhkVar != null && (zzg = zzbhkVar.zzg()) != null) {
                return zza.zzc(zzg.zze, zzg.zzb, zzg.zza);
            }
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
        AdSize[] adSizeArr = this.zzh;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    public final OnPaidEventListener zzc() {
        return this.zzp;
    }

    public final ResponseInfo zzd() {
        zzbiw zzbiwVar;
        try {
            zzbhk zzbhkVar = this.zzj;
            zzbiwVar = null;
            if (zzbhkVar != null) {
                zzbiwVar = zzbhkVar.zzk();
            }
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            zzbiwVar = null;
        }
        return ResponseInfo.zza(zzbiwVar);
    }

    public final VideoController zzf() {
        return this.zze;
    }

    public final VideoOptions zzg() {
        return this.zzk;
    }

    public final AppEventListener zzh() {
        return this.zzi;
    }

    public final zzbiz zzi() {
        zzbhk zzbhkVar = this.zzj;
        if (zzbhkVar != null) {
            try {
                return zzbhkVar.zzl();
            } catch (RemoteException e) {
                zzciz.zzl("#007 Could not call remote method.", e);
                return null;
            }
        }
        return null;
    }

    public final String zzj() {
        zzbhk zzbhkVar;
        if (this.zzl == null && (zzbhkVar = this.zzj) != null) {
            try {
                this.zzl = zzbhkVar.zzr();
            } catch (RemoteException e) {
                zzciz.zzl("#007 Could not call remote method.", e);
            }
        }
        return this.zzl;
    }

    public final void zzk() {
        try {
            zzbhk zzbhkVar = this.zzj;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzx();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzl(zzbjg zzbjgVar) {
        try {
            if (this.zzj == null) {
                if (this.zzh == null || this.zzl == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.zzm.getContext();
                zzbfi zzB = zzB(context, this.zzh, this.zzn);
                zzbhk zzd = "search_v2".equals(zzB.zza) ? new zzbgb(zzbgo.zza(), context, zzB, this.zzl).zzd(context, false) : new zzbfz(zzbgo.zza(), context, zzB, this.zzl, this.zzb).zzd(context, false);
                this.zzj = zzd;
                zzd.zzD(new zzbey(this.zza));
                zzbes zzbesVar = this.zzf;
                if (zzbesVar != null) {
                    this.zzj.zzC(new zzbet(zzbesVar));
                }
                AppEventListener appEventListener = this.zzi;
                if (appEventListener != null) {
                    this.zzj.zzG(new zzayo(appEventListener));
                }
                VideoOptions videoOptions = this.zzk;
                if (videoOptions != null) {
                    this.zzj.zzU(new zzbkq(videoOptions));
                }
                this.zzj.zzP(new zzbkj(this.zzp));
                this.zzj.zzN(this.zzo);
                zzbhk zzbhkVar = this.zzj;
                if (zzbhkVar != null) {
                    try {
                        IObjectWrapper zzn = zzbhkVar.zzn();
                        if (zzn != null) {
                            this.zzm.addView((View) ObjectWrapper.unwrap(zzn));
                        }
                    } catch (RemoteException e) {
                        zzciz.zzl("#007 Could not call remote method.", e);
                    }
                }
            }
            zzbhk zzbhkVar2 = this.zzj;
            Objects.requireNonNull(zzbhkVar2);
            if (!zzbhkVar2.zzaa(this.zzc.zza(this.zzm.getContext(), zzbjgVar))) {
                return;
            }
            this.zzb.zzd(zzbjgVar.zzr());
        } catch (RemoteException e2) {
            zzciz.zzl("#007 Could not call remote method.", e2);
        }
    }

    public final void zzm() {
        try {
            zzbhk zzbhkVar = this.zzj;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzz();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzn() {
        if (this.zzd.getAndSet(true)) {
            return;
        }
        try {
            zzbhk zzbhkVar = this.zzj;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzA();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzo() {
        try {
            zzbhk zzbhkVar = this.zzj;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzB();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzp(zzbes zzbesVar) {
        try {
            this.zzf = zzbesVar;
            zzbhk zzbhkVar = this.zzj;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzC(zzbesVar != null ? new zzbet(zzbesVar) : null);
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzq(AdListener adListener) {
        this.zzg = adListener;
        this.zza.zza(adListener);
    }

    public final void zzr(AdSize... adSizeArr) {
        if (this.zzh == null) {
            zzs(adSizeArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    public final void zzs(AdSize... adSizeArr) {
        this.zzh = adSizeArr;
        try {
            zzbhk zzbhkVar = this.zzj;
            if (zzbhkVar != null) {
                zzbhkVar.zzF(zzB(this.zzm.getContext(), this.zzh, this.zzn));
            }
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
        this.zzm.requestLayout();
    }

    public final void zzt(String str) {
        if (this.zzl == null) {
            this.zzl = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }

    public final void zzu(AppEventListener appEventListener) {
        try {
            this.zzi = appEventListener;
            zzbhk zzbhkVar = this.zzj;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzG(appEventListener != null ? new zzayo(appEventListener) : null);
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzv(boolean z) {
        this.zzo = z;
        try {
            zzbhk zzbhkVar = this.zzj;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzN(z);
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzw(OnPaidEventListener onPaidEventListener) {
        try {
            this.zzp = onPaidEventListener;
            zzbhk zzbhkVar = this.zzj;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzP(new zzbkj(onPaidEventListener));
        } catch (RemoteException e) {
            zzciz.zzl("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void zzx(VideoOptions videoOptions) {
        this.zzk = videoOptions;
        try {
            zzbhk zzbhkVar = this.zzj;
            if (zzbhkVar == null) {
                return;
            }
            zzbhkVar.zzU(videoOptions == null ? null : new zzbkq(videoOptions));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final boolean zzy(zzbhk zzbhkVar) {
        try {
            IObjectWrapper zzn = zzbhkVar.zzn();
            if (zzn == null || ((View) ObjectWrapper.unwrap(zzn)).getParent() != null) {
                return false;
            }
            this.zzm.addView((View) ObjectWrapper.unwrap(zzn));
            this.zzj = zzbhkVar;
            return true;
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final boolean zzz() {
        try {
            zzbhk zzbhkVar = this.zzj;
            if (zzbhkVar == null) {
                return false;
            }
            return zzbhkVar.zzY();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }
}
