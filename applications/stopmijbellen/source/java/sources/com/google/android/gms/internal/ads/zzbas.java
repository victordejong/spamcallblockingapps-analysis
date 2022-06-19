package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.IOException;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbas.class */
public final class zzbas implements BaseGmsClient.BaseConnectionCallbacks {
    public static final /* synthetic */ int zzd = 0;
    public final /* synthetic */ zzbak zza;
    public final /* synthetic */ zzcjr zzb;
    public final /* synthetic */ zzbau zzc;

    public zzbas(zzbau zzbauVar, zzbak zzbakVar, zzcjr zzcjrVar) {
        this.zzc = zzbauVar;
        this.zza = zzbakVar;
        this.zzb = zzcjrVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Object obj;
        boolean z;
        final zzbaj zzbajVar;
        obj = this.zzc.zzd;
        synchronized (obj) {
            z = this.zzc.zzb;
            if (z) {
                return;
            }
            this.zzc.zzb = true;
            zzbajVar = this.zzc.zza;
            if (zzbajVar == null) {
                return;
            }
            zzfxb zzfxbVar = zzcjm.zza;
            final zzbak zzbakVar = this.zza;
            final zzcjr zzcjrVar = this.zzb;
            final zzfxa<?> zza = zzfxbVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbap
                @Override // java.lang.Runnable
                public final void run() {
                    zzbas zzbasVar = zzbas.this;
                    zzbaj zzbajVar2 = zzbajVar;
                    zzbak zzbakVar2 = zzbakVar;
                    zzcjr zzcjrVar2 = zzcjrVar;
                    try {
                        zzbam zzq = zzbajVar2.zzq();
                        zzbah zzg = zzbajVar2.zzp() ? zzq.zzg(zzbakVar2) : zzq.zzf(zzbakVar2);
                        if (!zzg.zze()) {
                            zzcjrVar2.zze(new RuntimeException("No entry contents."));
                            zzbau.zze(zzbasVar.zzc);
                            return;
                        }
                        zzbar zzbarVar = new zzbar(zzbasVar, zzg.zzc(), 1);
                        int read = zzbarVar.read();
                        if (read == -1) {
                            throw new IOException("Unable to read from cache.");
                        }
                        zzbarVar.unread(read);
                        zzcjrVar2.zzd(zzbaw.zzb(zzbarVar, zzg.zzd(), zzg.zzg(), zzg.zza(), zzg.zzf()));
                    } catch (RemoteException | IOException e) {
                        zzciz.zzh("Unable to obtain a cache service instance.", e);
                        zzcjrVar2.zze(e);
                        zzbau.zze(zzbasVar.zzc);
                    }
                }
            });
            final zzcjr zzcjrVar2 = this.zzb;
            zzcjrVar2.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbaq
                @Override // java.lang.Runnable
                public final void run() {
                    zzcjr zzcjrVar3 = zzcjr.this;
                    Future future = zza;
                    if (zzcjrVar3.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, zzcjm.zzf);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
