package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.p058h5.OnH5AdsEventListener;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsv.class */
public final class zzbsv {
    private final Context zza;
    private final OnH5AdsEventListener zzb;
    private zzbsr zzc;

    public zzbsv(Context context, OnH5AdsEventListener onH5AdsEventListener) {
        Preconditions.checkState(true, "Android version must be Lollipop or higher");
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(onH5AdsEventListener);
        this.zza = context;
        this.zzb = onH5AdsEventListener;
        zzblj.zzc(context);
    }

    public static final boolean zzc(String str) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgU)).booleanValue()) {
            return false;
        }
        Preconditions.checkNotNull(str);
        if (str.length() > ((Integer) zzbgq.zzc().zzb(zzblj.zzgW)).intValue()) {
            zzciz.zze("H5 GMSG exceeds max length");
            return false;
        }
        Uri parse = Uri.parse(str);
        return "gmsg".equals(parse.getScheme()) && "mobileads.google.com".equals(parse.getHost()) && "/h5ads".equals(parse.getPath());
    }

    private final void zzd() {
        if (this.zzc != null) {
            return;
        }
        this.zzc = zzbgo.zza().zzk(this.zza, new zzbxe(), this.zzb);
    }

    public final void zza() {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgU)).booleanValue()) {
            return;
        }
        zzd();
        zzbsr zzbsrVar = this.zzc;
        if (zzbsrVar == null) {
            return;
        }
        try {
            zzbsrVar.zze();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final boolean zzb(String str) {
        if (!zzc(str)) {
            return false;
        }
        zzd();
        zzbsr zzbsrVar = this.zzc;
        if (zzbsrVar == null) {
            return false;
        }
        try {
            zzbsrVar.zzf(str);
            return true;
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            return true;
        }
    }
}
