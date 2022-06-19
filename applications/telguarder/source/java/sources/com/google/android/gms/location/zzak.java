package com.google.android.gms.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzak.class */
public final class zzak extends zzap {
    final /* synthetic */ ListenerHolder zza;
    final /* synthetic */ FusedLocationProviderClient zzb;

    public zzak(FusedLocationProviderClient fusedLocationProviderClient, ListenerHolder listenerHolder) {
        this.zzb = fusedLocationProviderClient;
        this.zza = listenerHolder;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final /* bridge */ /* synthetic */ void accept(zzaz zzazVar, TaskCompletionSource<Boolean> taskCompletionSource) throws RemoteException {
        zzaz zzazVar2 = zzazVar;
        TaskCompletionSource<Boolean> taskCompletionSource2 = taskCompletionSource;
        if (zza()) {
            zzal zzalVar = new zzal(this.zzb, taskCompletionSource2);
            try {
                ListenerHolder.ListenerKey<LocationCallback> listenerKey = this.zza.getListenerKey();
                if (listenerKey == null) {
                    return;
                }
                zzazVar2.zzH(listenerKey, zzalVar);
            } catch (RuntimeException e) {
                taskCompletionSource2.trySetException(e);
            }
        }
    }
}
