package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaf.class */
public final class zaf extends zad<Void> {
    private final RegisterListenerMethod<Api.AnyClient, ?> zacp;
    private final UnregisterListenerMethod<Api.AnyClient, ?> zacq;

    public zaf(zabw zabwVar, TaskCompletionSource<Void> taskCompletionSource) {
        super(3, taskCompletionSource);
        this.zacp = zabwVar.zajx;
        this.zacq = zabwVar.zajy;
    }

    @Override // com.google.android.gms.common.api.internal.zad, com.google.android.gms.common.api.internal.zab
    public final /* bridge */ /* synthetic */ void zaa(Status status) {
        super.zaa(status);
    }

    @Override // com.google.android.gms.common.api.internal.zad, com.google.android.gms.common.api.internal.zab
    public final /* bridge */ /* synthetic */ void zaa(zaab zaabVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zad, com.google.android.gms.common.api.internal.zab
    public final /* bridge */ /* synthetic */ void zaa(RuntimeException runtimeException) {
        super.zaa(runtimeException);
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] zab(GoogleApiManager.zaa<?> zaaVar) {
        return this.zacp.getRequiredFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean zac(GoogleApiManager.zaa<?> zaaVar) {
        return this.zacp.shouldAutoResolveMissingFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zad
    public final void zad(GoogleApiManager.zaa<?> zaaVar) {
        this.zacp.registerListener(zaaVar.zaab(), this.zacn);
        if (this.zacp.getListenerKey() != null) {
            zaaVar.zabk().put(this.zacp.getListenerKey(), new zabw(this.zacp, this.zacq));
        }
    }
}
