package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbd.class */
public final class zzbbd {
    private final Context zzcmf;
    private final zzbbo zzeix;
    private final ViewGroup zzekq;
    private zzbax zzekr;

    private zzbbd(Context context, ViewGroup viewGroup, zzbbo zzbboVar, zzbax zzbaxVar) {
        this.zzcmf = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzekq = viewGroup;
        this.zzeix = zzbboVar;
        this.zzekr = null;
    }

    public zzbbd(Context context, ViewGroup viewGroup, zzbeb zzbebVar) {
        this(context, viewGroup, zzbebVar, null);
    }

    public final void onDestroy() {
        Preconditions.checkMainThread("onDestroy must be called from the UI thread.");
        zzbax zzbaxVar = this.zzekr;
        if (zzbaxVar != null) {
            zzbaxVar.destroy();
            this.zzekq.removeView(this.zzekr);
            this.zzekr = null;
        }
    }

    public final void onPause() {
        Preconditions.checkMainThread("onPause must be called from the UI thread.");
        zzbax zzbaxVar = this.zzekr;
        if (zzbaxVar != null) {
            zzbaxVar.pause();
        }
    }

    public final void zza(int i, int i2, int i3, int i4, int i5, boolean z, zzbbl zzbblVar) {
        if (this.zzekr != null) {
            return;
        }
        zzabx.zza(this.zzeix.zzabi().zzsp(), this.zzeix.zzabd(), "vpr2");
        Context context = this.zzcmf;
        zzbbo zzbboVar = this.zzeix;
        zzbax zzbaxVar = new zzbax(context, zzbboVar, i5, z, zzbboVar.zzabi().zzsp(), zzbblVar);
        this.zzekr = zzbaxVar;
        this.zzekq.addView(zzbaxVar, 0, new ViewGroup.LayoutParams(-1, -1));
        this.zzekr.zzd(i, i2, i3, i4);
        this.zzeix.zzaw(false);
    }

    public final zzbax zzaav() {
        Preconditions.checkMainThread("getAdVideoUnderlay must be called from the UI thread.");
        return this.zzekr;
    }

    public final void zze(int i, int i2, int i3, int i4) {
        Preconditions.checkMainThread("The underlay may only be modified from the UI thread.");
        zzbax zzbaxVar = this.zzekr;
        if (zzbaxVar != null) {
            zzbaxVar.zzd(i, i2, i3, i4);
        }
    }
}
