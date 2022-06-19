package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckw.class */
public final class zzckw {
    private final Context zza;
    private final zzclh zzb;
    private final ViewGroup zzc;
    private zzckv zzd;

    public zzckw(Context context, ViewGroup viewGroup, zzcop zzcopVar) {
        this.zza = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzc = viewGroup;
        this.zzb = zzcopVar;
        this.zzd = null;
    }

    public final zzckv zza() {
        Preconditions.checkMainThread("getAdVideoUnderlay must be called from the UI thread.");
        return this.zzd;
    }

    public final void zzb(int i, int i2, int i3, int i4) {
        Preconditions.checkMainThread("The underlay may only be modified from the UI thread.");
        zzckv zzckvVar = this.zzd;
        if (zzckvVar != null) {
            zzckvVar.zzD(i, i2, i3, i4);
        }
    }

    public final void zzc(int i, int i2, int i3, int i4, int i5, boolean z, zzclg zzclgVar) {
        if (this.zzd != null) {
            return;
        }
        zzblq.zza(this.zzb.zzo().zza(), this.zzb.zzn(), "vpr2");
        Context context = this.zza;
        zzclh zzclhVar = this.zzb;
        zzckv zzckvVar = new zzckv(context, zzclhVar, i5, z, zzclhVar.zzo().zza(), zzclgVar);
        this.zzd = zzckvVar;
        this.zzc.addView(zzckvVar, 0, new ViewGroup.LayoutParams(-1, -1));
        this.zzd.zzD(i, i2, i3, i4);
        this.zzb.zzB(false);
    }

    public final void zzd() {
        Preconditions.checkMainThread("onDestroy must be called from the UI thread.");
        zzckv zzckvVar = this.zzd;
        if (zzckvVar != null) {
            zzckvVar.zzn();
            this.zzc.removeView(this.zzd);
            this.zzd = null;
        }
    }

    public final void zze() {
        Preconditions.checkMainThread("onPause must be called from the UI thread.");
        zzckv zzckvVar = this.zzd;
        if (zzckvVar != null) {
            zzckvVar.zzs();
        }
    }

    public final void zzf(int i) {
        Preconditions.checkMainThread("setPlayerBackgroundColor must be called from the UI thread.");
        zzckv zzckvVar = this.zzd;
        if (zzckvVar != null) {
            zzckvVar.zzA(i);
        }
    }
}
