package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdty.class */
public final class zzdty extends zzbub implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzbnt {
    private View zza;
    private zzbiz zzb;
    private zzdpx zzc;
    private boolean zzd = false;
    private boolean zze = false;

    public zzdty(zzdpx zzdpxVar, zzdqc zzdqcVar) {
        this.zza = zzdqcVar.zzf();
        this.zzb = zzdqcVar.zzj();
        this.zzc = zzdpxVar;
        if (zzdqcVar.zzr() != null) {
            zzdqcVar.zzr().zzao(this);
        }
    }

    private final void zzg() {
        View view;
        zzdpx zzdpxVar = this.zzc;
        if (zzdpxVar == null || (view = this.zza) == null) {
            return;
        }
        zzdpxVar.zzv(view, Collections.emptyMap(), Collections.emptyMap(), zzdpx.zzP(this.zza));
    }

    private final void zzh() {
        View view = this.zza;
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).removeView(this.zza);
    }

    private static final void zzi(zzbuf zzbufVar, int i) {
        try {
            zzbufVar.zze(i);
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzg();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzbuc
    public final zzbiz zzb() throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzd) {
            zzciz.zzg("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbuc
    public final zzbof zzc() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzd) {
            zzciz.zzg("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        zzdpx zzdpxVar = this.zzc;
        if (zzdpxVar != null && zzdpxVar.zza() != null) {
            return this.zzc.zza().zza();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbuc
    public final void zzd() throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzh();
        zzdpx zzdpxVar = this.zzc;
        if (zzdpxVar != null) {
            zzdpxVar.zzT();
        }
        this.zzc = null;
        this.zza = null;
        this.zzb = null;
        this.zzd = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbuc
    public final void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzf(iObjectWrapper, new zzdtx(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbuc
    public final void zzf(IObjectWrapper iObjectWrapper, zzbuf zzbufVar) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzd) {
            zzciz.zzg("Instream ad can not be shown after destroy().");
            zzi(zzbufVar, 2);
            return;
        }
        View view = this.zza;
        if (view == null || this.zzb == null) {
            String str = view == null ? "can not get video view." : "can not get video controller.";
            zzciz.zzg(str.length() != 0 ? "Instream internal error: ".concat(str) : new String("Instream internal error: "));
            zzi(zzbufVar, 0);
        } else if (this.zze) {
            zzciz.zzg("Instream ad should not be used again.");
            zzi(zzbufVar, 1);
        } else {
            this.zze = true;
            zzh();
            ((ViewGroup) ObjectWrapper.unwrap(iObjectWrapper)).addView(this.zza, new ViewGroup.LayoutParams(-1, -1));
            zzt.zzx();
            zzcjz.zza(this.zza, this);
            zzt.zzx();
            zzcjz.zzb(this.zza, this);
            zzg();
            try {
                zzbufVar.zzf();
            } catch (RemoteException e) {
                zzciz.zzl("#007 Could not call remote method.", e);
            }
        }
    }
}
