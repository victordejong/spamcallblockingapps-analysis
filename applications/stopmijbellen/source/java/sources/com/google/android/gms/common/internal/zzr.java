package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.common.zzi;
import java.util.HashMap;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzr.class */
public final class zzr extends GmsClientSupervisor {
    private final Context zzc;
    private volatile Handler zzd;
    private final zzq zze;
    @GuardedBy("connectionStatus")
    private final HashMap<zzn, zzo> zzb = new HashMap<>();
    private final ConnectionTracker zzf = ConnectionTracker.getInstance();
    private final long zzg = 5000;
    private final long zzh = 300000;

    public zzr(Context context, Looper looper) {
        zzq zzqVar = new zzq(this, null);
        this.zze = zzqVar;
        this.zzc = context.getApplicationContext();
        this.zzd = new zzi(looper, zzqVar);
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final void zza(zzn zznVar, ServiceConnection serviceConnection, String str) {
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzb) {
            zzo zzoVar = this.zzb.get(zznVar);
            if (zzoVar == null) {
                String zznVar2 = zznVar.toString();
                StringBuilder sb = new StringBuilder(zznVar2.length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(zznVar2);
                throw new IllegalStateException(sb.toString());
            } else if (!zzoVar.zzh(serviceConnection)) {
                String zznVar3 = zznVar.toString();
                StringBuilder sb2 = new StringBuilder(zznVar3.length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(zznVar3);
                throw new IllegalStateException(sb2.toString());
            } else {
                zzoVar.zzf(serviceConnection, str);
                if (zzoVar.zzi()) {
                    this.zzd.sendMessageDelayed(this.zzd.obtainMessage(0, zznVar), this.zzg);
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final boolean zzc(zzn zznVar, ServiceConnection serviceConnection, String str, Executor executor) {
        zzo zzoVar;
        boolean zzj;
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzb) {
            zzo zzoVar2 = this.zzb.get(zznVar);
            if (zzoVar2 == null) {
                zzo zzoVar3 = new zzo(this, zznVar);
                zzoVar3.zzd(serviceConnection, serviceConnection, str);
                zzoVar3.zze(str, executor);
                this.zzb.put(zznVar, zzoVar3);
                zzoVar = zzoVar3;
            } else {
                this.zzd.removeMessages(0, zznVar);
                if (zzoVar2.zzh(serviceConnection)) {
                    String zznVar2 = zznVar.toString();
                    StringBuilder sb = new StringBuilder(zznVar2.length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(zznVar2);
                    throw new IllegalStateException(sb.toString());
                }
                zzoVar2.zzd(serviceConnection, serviceConnection, str);
                int zza = zzoVar2.zza();
                if (zza == 1) {
                    serviceConnection.onServiceConnected(zzoVar2.zzb(), zzoVar2.zzc());
                    zzoVar = zzoVar2;
                } else if (zza != 2) {
                    zzoVar = zzoVar2;
                } else {
                    zzoVar2.zze(str, executor);
                    zzoVar = zzoVar2;
                }
            }
            zzj = zzoVar.zzj();
        }
        return zzj;
    }

    public final void zzi(Looper looper) {
        synchronized (this.zzb) {
            this.zzd = new zzi(looper, this.zze);
        }
    }
}
