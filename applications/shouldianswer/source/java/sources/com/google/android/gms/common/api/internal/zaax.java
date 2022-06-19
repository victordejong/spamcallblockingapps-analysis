package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.GmsClientEventManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaax.class */
public final class zaax implements GmsClientEventManager.GmsClientEventState {
    private final /* synthetic */ zaaw zahh;

    public zaax(zaaw zaawVar) {
        this.zahh = zaawVar;
    }

    @Override // com.google.android.gms.common.internal.GmsClientEventManager.GmsClientEventState
    public final Bundle getConnectionHint() {
        return null;
    }

    @Override // com.google.android.gms.common.internal.GmsClientEventManager.GmsClientEventState
    public final boolean isConnected() {
        return this.zahh.isConnected();
    }
}
