package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzv.class */
public class zzv {
    private int zza;
    private int zzb;
    private boolean zzc;
    private final zzfoj<String> zzd;
    private final zzfoj<String> zze;
    private final zzfoj<String> zzf;
    private zzfoj<String> zzg;
    private int zzh;
    private final zzfot<Integer> zzi;

    @Deprecated
    public zzv() {
        this.zza = Integer.MAX_VALUE;
        this.zzb = Integer.MAX_VALUE;
        this.zzc = true;
        this.zzd = zzfoj.zzi();
        this.zze = zzfoj.zzi();
        this.zzf = zzfoj.zzi();
        this.zzg = zzfoj.zzi();
        this.zzh = 0;
        this.zzi = zzfot.zzh();
    }

    public zzv(zzw zzwVar) {
        this.zza = zzwVar.zzk;
        this.zzb = zzwVar.zzl;
        this.zzc = zzwVar.zzm;
        this.zzd = zzwVar.zzn;
        this.zze = zzwVar.zzo;
        this.zzf = zzwVar.zzs;
        this.zzg = zzwVar.zzt;
        this.zzh = zzwVar.zzu;
        this.zzi = zzwVar.zzy;
    }

    public zzv zzj(int i, int i2, boolean z) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = true;
        return this;
    }

    public final zzv zzk(Context context) {
        CaptioningManager captioningManager;
        int i = zzamq.zza;
        if (i >= 19 && ((i >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled())) {
            this.zzh = 1088;
            Locale locale = captioningManager.getLocale();
            if (locale != null) {
                this.zzg = zzfoj.zzj(zzamq.zzp(locale));
            }
        }
        return this;
    }
}
