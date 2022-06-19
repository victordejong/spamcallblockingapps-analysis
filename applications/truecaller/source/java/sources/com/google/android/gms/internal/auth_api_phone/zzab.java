package com.google.android.gms.internal.auth_api_phone;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.auth-api-phone.zzj;
import com.google.android.gms.internal.auth-api-phone.zzw;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api_phone/zzab.class */
public abstract class zzab extends TaskApiCall<zzv, Void> {
    private TaskCompletionSource<Void> zza;

    private zzab() {
    }

    public /* synthetic */ zzab(zzw zzwVar) {
        this();
    }

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public /* synthetic */ void doExecute(zzv zzvVar, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        this.zza = taskCompletionSource;
        zza((zzj) ((zzj) zzvVar.getService()));
    }

    public final void zza(Status status) {
        TaskUtil.m39015a(status, null, this.zza);
    }

    public abstract void zza(zzj zzjVar) throws RemoteException;
}
