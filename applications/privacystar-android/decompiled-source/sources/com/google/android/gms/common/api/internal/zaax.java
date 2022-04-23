package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.GmsClientEventManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaax.class */
public final class zaax implements GmsClientEventManager.GmsClientEventState {
    private final /* synthetic */ zaaw zahg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaax(zaaw zaawVar) {
        this.zahg = zaawVar;
    }

    @Override // com.google.android.gms.common.internal.GmsClientEventManager.GmsClientEventState
    public final Bundle getConnectionHint() {
        return null;
    }

    @Override // com.google.android.gms.common.internal.GmsClientEventManager.GmsClientEventState
    public final boolean isConnected() {
        return this.zahg.isConnected();
    }
}
