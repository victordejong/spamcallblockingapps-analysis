package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import androidx.work.PeriodicWorkRequest;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.common.zzh;
import com.telguarder.ApplicationConstants;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzq.class */
public final class zzq extends GmsClientSupervisor {
    private final Context zzb;
    private final Handler zzc;
    private final HashMap<zzm, zzo> zza = new HashMap<>();
    private final ConnectionTracker zzd = ConnectionTracker.getInstance();
    private final long zze = ApplicationConstants.CALL_WIDGET_TOOLTIP_HIDE_DELAY;
    private final long zzf = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;

    public zzq(Context context) {
        this.zzb = context.getApplicationContext();
        this.zzc = new zzh(context.getMainLooper(), new zzp(this, null));
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final boolean zzb(zzm zzmVar, ServiceConnection serviceConnection, String str) {
        zzo zzoVar;
        boolean zze;
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zza) {
            zzo zzoVar2 = this.zza.get(zzmVar);
            if (zzoVar2 == null) {
                zzo zzoVar3 = new zzo(this, zzmVar);
                zzoVar3.zzc(serviceConnection, serviceConnection, str);
                zzoVar3.zza(str);
                this.zza.put(zzmVar, zzoVar3);
                zzoVar = zzoVar3;
            } else {
                this.zzc.removeMessages(0, zzmVar);
                if (zzoVar2.zzg(serviceConnection)) {
                    String valueOf = String.valueOf(zzmVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
                zzoVar2.zzc(serviceConnection, serviceConnection, str);
                int zzf = zzoVar2.zzf();
                if (zzf == 1) {
                    serviceConnection.onServiceConnected(zzoVar2.zzj(), zzoVar2.zzi());
                    zzoVar = zzoVar2;
                } else if (zzf != 2) {
                    zzoVar = zzoVar2;
                } else {
                    zzoVar2.zza(str);
                    zzoVar = zzoVar2;
                }
            }
            zze = zzoVar.zze();
        }
        return zze;
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    protected final void zzc(zzm zzmVar, ServiceConnection serviceConnection, String str) {
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zza) {
            zzo zzoVar = this.zza.get(zzmVar);
            if (zzoVar == null) {
                String valueOf = String.valueOf(zzmVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else if (!zzoVar.zzg(serviceConnection)) {
                String valueOf2 = String.valueOf(zzmVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            } else {
                zzoVar.zzd(serviceConnection, str);
                if (zzoVar.zzh()) {
                    this.zzc.sendMessageDelayed(this.zzc.obtainMessage(0, zzmVar), this.zze);
                }
            }
        }
    }
}
