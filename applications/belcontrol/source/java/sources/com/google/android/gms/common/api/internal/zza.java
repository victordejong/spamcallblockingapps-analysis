package com.google.android.gms.common.api.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zza.class */
public final class zza implements Runnable {
    public final /* synthetic */ LifecycleCallback zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzb zzc;

    public zza(zzb zzbVar, LifecycleCallback lifecycleCallback, String str) {
        this.zzc = zzbVar;
        this.zza = lifecycleCallback;
        this.zzb = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (zzb.zzb(this.zzc) > 0) {
            this.zza.onCreate(zzb.zzc(this.zzc) != null ? zzb.zzc(this.zzc).getBundle(this.zzb) : null);
        }
        if (zzb.zzb(this.zzc) >= 2) {
            this.zza.onStart();
        }
        if (zzb.zzb(this.zzc) >= 3) {
            this.zza.onResume();
        }
        if (zzb.zzb(this.zzc) >= 4) {
            this.zza.onStop();
        }
        if (zzb.zzb(this.zzc) >= 5) {
            this.zza.onDestroy();
        }
    }
}
