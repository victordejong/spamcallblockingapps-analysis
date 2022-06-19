package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfkr.class */
public final class zzfkr {
    @SuppressLint({"StaticFieldLeak"})
    private static final zzfkr zza = new zzfkr();
    private Context zzb;
    private BroadcastReceiver zzc;
    private boolean zzd;
    private boolean zze;
    private zzfkw zzf;

    private zzfkr() {
    }

    public static zzfkr zza() {
        return zza;
    }

    public static /* bridge */ /* synthetic */ void zzb(zzfkr zzfkrVar, boolean z) {
        if (zzfkrVar.zze != z) {
            zzfkrVar.zze = z;
            if (!zzfkrVar.zzd) {
                return;
            }
            zzfkrVar.zzh();
            if (zzfkrVar.zzf == null) {
                return;
            }
            if (zzfkrVar.zzf()) {
                zzfls.zzd().zzi();
            } else {
                zzfls.zzd().zzh();
            }
        }
    }

    private final void zzh() {
        boolean z = this.zze;
        for (zzfke zzfkeVar : zzfkp.zza().zzc()) {
            zzflc zzg = zzfkeVar.zzg();
            if (zzg.zzk()) {
                zzfkv.zza().zzb(zzg.zza(), "setState", true != z ? "foregrounded" : "backgrounded");
            }
        }
    }

    public final void zzc(Context context) {
        this.zzb = context.getApplicationContext();
    }

    public final void zzd() {
        this.zzc = new zzfkq(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.zzb.registerReceiver(this.zzc, intentFilter);
        this.zzd = true;
        zzh();
    }

    public final void zze() {
        BroadcastReceiver broadcastReceiver;
        Context context = this.zzb;
        if (context != null && (broadcastReceiver = this.zzc) != null) {
            context.unregisterReceiver(broadcastReceiver);
            this.zzc = null;
        }
        this.zzd = false;
        this.zze = false;
        this.zzf = null;
    }

    public final boolean zzf() {
        return !this.zze;
    }

    public final void zzg(zzfkw zzfkwVar) {
        this.zzf = zzfkwVar;
    }
}
