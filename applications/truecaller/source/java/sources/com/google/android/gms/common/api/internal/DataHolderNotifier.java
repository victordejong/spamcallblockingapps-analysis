package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.data.DataHolder;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/DataHolderNotifier.class */
public abstract class DataHolderNotifier<L> implements ListenerHolder.Notifier<L> {
    @KeepForSdk
    /* renamed from: a */
    public abstract void m39037a(@RecentlyNonNull L l, @RecentlyNonNull DataHolder dataHolder);

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    @KeepForSdk
    public final void notifyListener(@RecentlyNonNull L l) {
        m39037a(l, null);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    @KeepForSdk
    public void onNotifyListenerFailed() {
    }
}
