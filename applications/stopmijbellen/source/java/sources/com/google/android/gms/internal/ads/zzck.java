package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import com.google.android.gms.common.api.Api;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzck.class */
public class zzck {
    private int zza;
    private int zzb;
    private boolean zzc;
    private final zzfss<String> zzd;
    private final zzfss<String> zze;
    private final zzfss<String> zzf;
    private zzfss<String> zzg;
    private int zzh;
    private final zzfsw<zzcf, zzcm> zzi;
    private final zzftc<Integer> zzj;

    @Deprecated
    public zzck() {
        this.zza = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzb = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzc = true;
        this.zzd = zzfss.zzo();
        this.zze = zzfss.zzo();
        this.zzf = zzfss.zzo();
        this.zzg = zzfss.zzo();
        this.zzh = 0;
        this.zzi = zzfsw.zzd();
        this.zzj = zzftc.zzl();
    }

    public zzck(zzcn zzcnVar) {
        this.zza = zzcnVar.zzl;
        this.zzb = zzcnVar.zzm;
        this.zzc = zzcnVar.zzn;
        this.zzd = zzcnVar.zzo;
        this.zze = zzcnVar.zzp;
        this.zzf = zzcnVar.zzt;
        this.zzg = zzcnVar.zzu;
        this.zzh = zzcnVar.zzv;
        this.zzi = zzcnVar.zzz;
        this.zzj = zzcnVar.zzA;
    }

    public static /* bridge */ /* synthetic */ int zza(zzck zzckVar) {
        return zzckVar.zzh;
    }

    public static /* bridge */ /* synthetic */ int zzb(zzck zzckVar) {
        return zzckVar.zzb;
    }

    public static /* bridge */ /* synthetic */ int zzc(zzck zzckVar) {
        return zzckVar.zza;
    }

    public static /* bridge */ /* synthetic */ zzfss zzf(zzck zzckVar) {
        return zzckVar.zze;
    }

    public static /* bridge */ /* synthetic */ zzfss zzg(zzck zzckVar) {
        return zzckVar.zzf;
    }

    public static /* bridge */ /* synthetic */ zzfss zzh(zzck zzckVar) {
        return zzckVar.zzg;
    }

    public static /* bridge */ /* synthetic */ zzfss zzi(zzck zzckVar) {
        return zzckVar.zzd;
    }

    public static /* bridge */ /* synthetic */ zzfsw zzj(zzck zzckVar) {
        return zzckVar.zzi;
    }

    public static /* bridge */ /* synthetic */ zzftc zzk(zzck zzckVar) {
        return zzckVar.zzj;
    }

    public static /* bridge */ /* synthetic */ boolean zzl(zzck zzckVar) {
        return zzckVar.zzc;
    }

    public final zzck zzd(Context context) {
        CaptioningManager captioningManager;
        int i = zzfn.zza;
        if (i >= 19 && ((i >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled())) {
            this.zzh = 1088;
            Locale locale = captioningManager.getLocale();
            if (locale != null) {
                this.zzg = zzfss.zzp(zzfn.zzI(locale));
            }
        }
        return this;
    }

    public zzck zze(int i, int i2, boolean z) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = true;
        return this;
    }
}
