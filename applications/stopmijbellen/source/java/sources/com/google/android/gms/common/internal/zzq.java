package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzq.class */
public final class zzq implements Handler.Callback {
    public final /* synthetic */ zzr zza;

    public /* synthetic */ zzq(zzr zzrVar, zzp zzpVar) {
        this.zza = zzrVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        HashMap hashMap5;
        int i = message.what;
        if (i == 0) {
            hashMap = this.zza.zzb;
            synchronized (hashMap) {
                zzn zznVar = (zzn) message.obj;
                hashMap2 = this.zza.zzb;
                zzo zzoVar = (zzo) hashMap2.get(zznVar);
                if (zzoVar != null && zzoVar.zzi()) {
                    if (zzoVar.zzj()) {
                        zzoVar.zzg("GmsClientSupervisor");
                    }
                    hashMap3 = this.zza.zzb;
                    hashMap3.remove(zznVar);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            hashMap4 = this.zza.zzb;
            synchronized (hashMap4) {
                zzn zznVar2 = (zzn) message.obj;
                hashMap5 = this.zza.zzb;
                zzo zzoVar2 = (zzo) hashMap5.get(zznVar2);
                if (zzoVar2 != null && zzoVar2.zza() == 3) {
                    new StringBuilder(String.valueOf(zznVar2).length() + 47);
                    new Exception();
                    ComponentName zzb = zzoVar2.zzb();
                    ComponentName componentName = zzb;
                    if (zzb == null) {
                        componentName = zznVar2.zzb();
                    }
                    ComponentName componentName2 = componentName;
                    if (componentName == null) {
                        String zzd = zznVar2.zzd();
                        Preconditions.checkNotNull(zzd);
                        componentName2 = new ComponentName(zzd, "unknown");
                    }
                    zzoVar2.onServiceDisconnected(componentName2);
                }
            }
            return true;
        }
    }
}
