package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.data.DataHolder;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/DataHolderNotifier.class */
public abstract class DataHolderNotifier<L> implements ListenerHolder.Notifier<L> {

    /* renamed from: a */
    private final DataHolder f7061a;

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    @KeepForSdk
    /* renamed from: a */
    public final void mo14875a(L l) {
        m14962c(l, this.f7061a);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    @KeepForSdk
    /* renamed from: b */
    public void mo14874b() {
        DataHolder dataHolder = this.f7061a;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }

    @KeepForSdk
    /* renamed from: c */
    protected abstract void m14962c(L l, DataHolder dataHolder);
}
