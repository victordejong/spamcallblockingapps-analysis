package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zah.class */
public final class zah extends zad<Boolean> {
    private final ListenerHolder.ListenerKey<?> zact;

    public zah(ListenerHolder.ListenerKey<?> listenerKey, TaskCompletionSource<Boolean> taskCompletionSource) {
        super(4, taskCompletionSource);
        this.zact = listenerKey;
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
        zabw zabwVar = zaaVar.zabk().get(this.zact);
        if (zabwVar == null) {
            return null;
        }
        return zabwVar.zajx.getRequiredFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean zac(GoogleApiManager.zaa<?> zaaVar) {
        zabw zabwVar = zaaVar.zabk().get(this.zact);
        return zabwVar != null && zabwVar.zajx.shouldAutoResolveMissingFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zad
    public final void zad(GoogleApiManager.zaa<?> zaaVar) {
        zabw remove = zaaVar.zabk().remove(this.zact);
        if (remove == null) {
            this.zacn.trySetResult(false);
            return;
        }
        remove.zajy.unregisterListener(zaaVar.zaab(), this.zacn);
        remove.zajx.clearListener();
    }
}
