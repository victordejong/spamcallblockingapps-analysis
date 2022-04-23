package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaf.class */
public final class zaf extends zad<Void> {
    private final RegisterListenerMethod<Api.AnyClient, ?> zaco;
    private final UnregisterListenerMethod<Api.AnyClient, ?> zacp;

    public zaf(zabw zabwVar, TaskCompletionSource<Void> taskCompletionSource) {
        super(3, taskCompletionSource);
        this.zaco = zabwVar.zajw;
        this.zacp = zabwVar.zajx;
    }

    @Override // com.google.android.gms.common.api.internal.zad, com.google.android.gms.common.api.internal.zab
    public final /* bridge */ /* synthetic */ void zaa(@NonNull Status status) {
        super.zaa(status);
    }

    @Override // com.google.android.gms.common.api.internal.zad, com.google.android.gms.common.api.internal.zab
    public final /* bridge */ /* synthetic */ void zaa(@NonNull zaab zaabVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zad, com.google.android.gms.common.api.internal.zab
    public final /* bridge */ /* synthetic */ void zaa(@NonNull RuntimeException runtimeException) {
        super.zaa(runtimeException);
    }

    @Override // com.google.android.gms.common.api.internal.zac
    @Nullable
    public final Feature[] zab(GoogleApiManager.zaa<?> zaaVar) {
        return this.zaco.getRequiredFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean zac(GoogleApiManager.zaa<?> zaaVar) {
        return this.zaco.shouldAutoResolveMissingFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zad
    public final void zad(GoogleApiManager.zaa<?> zaaVar) throws RemoteException {
        this.zaco.registerListener(zaaVar.zaab(), this.zacm);
        if (this.zaco.getListenerKey() != null) {
            zaaVar.zabk().put(this.zaco.getListenerKey(), new zabw(this.zaco, this.zacp));
        }
    }
}
