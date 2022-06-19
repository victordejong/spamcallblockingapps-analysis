package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzp.class */
public final class zzp implements Handler.Callback {
    public final /* synthetic */ zzq zza;

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            synchronized (zzq.zzd(this.zza)) {
                zzm zzmVar = (zzm) message.obj;
                zzo zzoVar = (zzo) zzq.zzd(this.zza).get(zzmVar);
                if (zzoVar != null && zzoVar.zzh()) {
                    if (zzoVar.zze()) {
                        zzoVar.zzb("GmsClientSupervisor");
                    }
                    zzq.zzd(this.zza).remove(zzmVar);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            synchronized (zzq.zzd(this.zza)) {
                zzm zzmVar2 = (zzm) message.obj;
                zzo zzoVar2 = (zzo) zzq.zzd(this.zza).get(zzmVar2);
                if (zzoVar2 != null && zzoVar2.zzf() == 3) {
                    String valueOf = String.valueOf(zzmVar2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName zzj = zzoVar2.zzj();
                    ComponentName componentName = zzj;
                    if (zzj == null) {
                        componentName = zzmVar2.zzb();
                    }
                    ComponentName componentName2 = componentName;
                    if (componentName == null) {
                        String zza = zzmVar2.zza();
                        Preconditions.checkNotNull(zza);
                        componentName2 = new ComponentName(zza, "unknown");
                    }
                    zzoVar2.onServiceDisconnected(componentName2);
                }
            }
            return true;
        }
    }
}
