package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.data.DataHolder;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/DataHolderNotifier.class */
public abstract class DataHolderNotifier<L> implements ListenerHolder.Notifier<L> {
    private final DataHolder mDataHolder;

    @KeepForSdk
    protected DataHolderNotifier(DataHolder dataHolder) {
        this.mDataHolder = dataHolder;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    @KeepForSdk
    public final void notifyListener(L l) {
        notifyListener(l, this.mDataHolder);
    }

    @KeepForSdk
    protected abstract void notifyListener(L l, DataHolder dataHolder);

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    @KeepForSdk
    public void onNotifyListenerFailed() {
        if (this.mDataHolder != null) {
            this.mDataHolder.close();
        }
    }
}
