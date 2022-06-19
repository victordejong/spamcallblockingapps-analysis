package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.p071h5.OnH5AdsEventListener;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqt.class */
public final class zzbqt {
    private final Context zza;
    private final OnH5AdsEventListener zzb;
    private zzbqp zzc;

    public zzbqt(Context context, OnH5AdsEventListener onH5AdsEventListener) {
        Preconditions.m38895m(true, "Android version must be Lollipop or higher");
        Objects.requireNonNull(context, "null reference");
        Objects.requireNonNull(onH5AdsEventListener, "null reference");
        this.zza = context;
        this.zzb = onH5AdsEventListener;
        zzbjl.zza(context);
    }

    public static final boolean zzc(String str) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgJ)).booleanValue()) {
            return false;
        }
        Objects.requireNonNull(str, "null reference");
        if (str.length() > ((Integer) zzbet.zzc().zzc(zzbjl.zzgL)).intValue()) {
            zzcgt.zzd("H5 GMSG exceeds max length");
            return false;
        }
        Uri parse = Uri.parse(str);
        return "gmsg".equals(parse.getScheme()) && "mobileads.google.com".equals(parse.getHost()) && "/h5ads".equals(parse.getPath());
    }

    private final void zzd() {
        if (this.zzc != null) {
            return;
        }
        this.zzc = zzber.zzb().zzs(this.zza, new zzbvd(), this.zzb);
    }

    public final boolean zza(String str) {
        if (!zzc(str)) {
            return false;
        }
        zzd();
        zzbqp zzbqpVar = this.zzc;
        if (zzbqpVar == null) {
            return false;
        }
        try {
            zzbqpVar.zze(str);
            return true;
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
            return true;
        }
    }

    public final void zzb() {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgJ)).booleanValue()) {
            return;
        }
        zzd();
        zzbqp zzbqpVar = this.zzc;
        if (zzbqpVar == null) {
            return;
        }
        try {
            zzbqpVar.zzf();
        } catch (RemoteException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
        }
    }
}
