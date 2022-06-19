package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zah.class */
public final class zah extends zad<Boolean> {
    public final ListenerHolder.ListenerKey<?> zab;

    public zah(ListenerHolder.ListenerKey<?> listenerKey, TaskCompletionSource<Boolean> taskCompletionSource) {
        super(4, taskCompletionSource);
        this.zab = listenerKey;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] zaa(zabl<?> zablVar) {
        zacc zaccVar = zablVar.zag().get(this.zab);
        if (zaccVar == null) {
            return null;
        }
        return zaccVar.zaa.getRequiredFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean zab(zabl<?> zablVar) {
        zacc zaccVar = zablVar.zag().get(this.zab);
        return zaccVar != null && zaccVar.zaa.zaa();
    }

    @Override // com.google.android.gms.common.api.internal.zad, com.google.android.gms.common.api.internal.zai
    public final /* bridge */ /* synthetic */ void zae(zaaa zaaaVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zad
    public final void zag(zabl<?> zablVar) throws RemoteException {
        zacc remove = zablVar.zag().remove(this.zab);
        if (remove == null) {
            this.zaa.trySetResult(false);
            return;
        }
        remove.zab.unregisterListener(zablVar.zaf(), this.zaa);
        remove.zaa.clearListener();
    }
}
