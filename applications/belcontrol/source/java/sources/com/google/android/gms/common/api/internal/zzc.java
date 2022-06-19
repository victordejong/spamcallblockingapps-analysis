package com.google.android.gms.common.api.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zzc.class */
public final class zzc implements Runnable {
    public final /* synthetic */ LifecycleCallback zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzd zzc;

    public zzc(zzd zzdVar, LifecycleCallback lifecycleCallback, String str) {
        this.zzc = zzdVar;
        this.zza = lifecycleCallback;
        this.zzb = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (zzd.zzb(this.zzc) > 0) {
            this.zza.onCreate(zzd.zzc(this.zzc) != null ? zzd.zzc(this.zzc).getBundle(this.zzb) : null);
        }
        if (zzd.zzb(this.zzc) >= 2) {
            this.zza.onStart();
        }
        if (zzd.zzb(this.zzc) >= 3) {
            this.zza.onResume();
        }
        if (zzd.zzb(this.zzc) >= 4) {
            this.zza.onStop();
        }
        if (zzd.zzb(this.zzc) >= 5) {
            this.zza.onDestroy();
        }
    }
}
