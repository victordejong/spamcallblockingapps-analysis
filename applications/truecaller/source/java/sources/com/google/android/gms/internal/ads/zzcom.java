package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.ads.internal.zzt;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcom.class */
public final class zzcom {
    private final zzcgz zza;
    private final Context zzb;
    private final WeakReference<Context> zzc;

    public /* synthetic */ zzcom(zzcok zzcokVar, zzcol zzcolVar) {
        zzcgz zzcgzVar;
        Context context;
        WeakReference<Context> weakReference;
        zzcgzVar = zzcokVar.zza;
        this.zza = zzcgzVar;
        context = zzcokVar.zzb;
        this.zzb = context;
        weakReference = zzcokVar.zzc;
        this.zzc = weakReference;
    }

    public final Context zza() {
        return this.zzb;
    }

    public final WeakReference<Context> zzb() {
        return this.zzc;
    }

    public final zzcgz zzc() {
        return this.zza;
    }

    public final String zzd() {
        return zzt.zzc().zzi(this.zzb, this.zza.zza);
    }

    public final zzaas zze() {
        return new zzaas(new zzi(this.zzb, this.zza));
    }
}
