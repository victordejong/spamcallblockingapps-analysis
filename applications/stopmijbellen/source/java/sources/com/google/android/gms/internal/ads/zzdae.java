package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdae.class */
public final class zzdae extends zzcyw {
    private final zzbpz zzc;
    private final Runnable zzd;
    private final Executor zze;

    public zzdae(zzdau zzdauVar, zzbpz zzbpzVar, Runnable runnable, Executor executor) {
        super(zzdauVar);
        this.zzc = zzbpzVar;
        this.zzd = runnable;
        this.zze = executor;
    }

    public static /* synthetic */ void zzi(AtomicReference atomicReference) {
        Runnable runnable = (Runnable) atomicReference.getAndSet(null);
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdav
    public final void zzU() {
        final zzdad zzdadVar = new zzdad(new AtomicReference(this.zzd));
        this.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdac
            @Override // java.lang.Runnable
            public final void run() {
                zzdae.this.zzk(zzdadVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcyw
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcyw
    public final View zzc() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcyw
    public final zzbiz zzd() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcyw
    public final zzfdo zze() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcyw
    public final zzfdo zzf() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcyw
    public final void zzg() {
    }

    @Override // com.google.android.gms.internal.ads.zzcyw
    public final void zzh(ViewGroup viewGroup, zzbfi zzbfiVar) {
    }

    public final /* synthetic */ void zzk(Runnable runnable) {
        try {
            if (this.zzc.zzb(ObjectWrapper.wrap(runnable))) {
                return;
            }
            zzi(((zzdad) runnable).zza);
        } catch (RemoteException e) {
            zzi(((zzdad) runnable).zza);
        }
    }
}
