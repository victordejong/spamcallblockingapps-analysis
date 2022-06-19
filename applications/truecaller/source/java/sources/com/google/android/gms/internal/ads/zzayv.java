package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.IOException;
import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayv.class */
public final class zzayv implements BaseGmsClient.BaseConnectionCallbacks {
    public static final /* synthetic */ int zzd = 0;
    public final /* synthetic */ zzayn zza;
    public final /* synthetic */ zzchl zzb;
    public final /* synthetic */ zzayx zzc;

    public zzayv(zzayx zzayxVar, zzayn zzaynVar, zzchl zzchlVar) {
        this.zzc = zzayxVar;
        this.zza = zzaynVar;
        this.zzb = zzchlVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Object obj;
        boolean z;
        zzaym zzaymVar;
        obj = this.zzc.zzd;
        synchronized (obj) {
            z = this.zzc.zzb;
            if (z) {
                return;
            }
            this.zzc.zzb = true;
            zzaymVar = this.zzc.zza;
            if (zzaymVar == null) {
                return;
            }
            zzfsm<?> zza = zzchg.zza.zza(new Runnable(this, zzaymVar, this.zza, this.zzb) { // from class: com.google.android.gms.internal.ads.zzays
                private final zzayv zza;
                private final zzaym zzb;
                private final zzayn zzc;
                private final zzchl zzd;

                {
                    this.zza = this;
                    this.zzb = zzaymVar;
                    this.zzc = zzaynVar;
                    this.zzd = zzchlVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzayv zzayvVar = this.zza;
                    zzaym zzaymVar2 = this.zzb;
                    zzayn zzaynVar2 = this.zzc;
                    zzchl zzchlVar2 = this.zzd;
                    try {
                        zzayp zzq = zzaymVar2.zzq();
                        zzayk zzf = zzaymVar2.zzp() ? zzq.zzf(zzaynVar2) : zzq.zze(zzaynVar2);
                        if (!zzf.zza()) {
                            zzchlVar2.zzd(new RuntimeException("No entry contents."));
                            zzayx.zzf(zzayvVar.zzc);
                            return;
                        }
                        zzayu zzayuVar = new zzayu(zzayvVar, zzf.zzb(), 1);
                        int read = zzayuVar.read();
                        if (read == -1) {
                            throw new IOException("Unable to read from cache.");
                        }
                        zzayuVar.unread(read);
                        zzchlVar2.zzc(zzayz.zza(zzayuVar, zzf.zzd(), zzf.zzg(), zzf.zzf(), zzf.zze()));
                    } catch (RemoteException | IOException e) {
                        zzcgt.zzg("Unable to obtain a cache service instance.", e);
                        zzchlVar2.zzd(e);
                        zzayx.zzf(zzayvVar.zzc);
                    }
                }
            });
            zzchl zzchlVar = this.zzb;
            zzchlVar.zze(new Runnable(zzchlVar, zza) { // from class: com.google.android.gms.internal.ads.zzayt
                private final zzchl zza;
                private final Future zzb;

                {
                    this.zza = zzchlVar;
                    this.zzb = zza;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzchl zzchlVar3 = this.zza;
                    Future future = this.zzb;
                    if (zzchlVar3.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, zzchg.zzf);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
