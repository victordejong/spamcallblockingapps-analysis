package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.GmsClientEventManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaav.class */
final class zaav implements GmsClientEventManager.GmsClientEventState {

    /* renamed from: a */
    private final /* synthetic */ zaaw f7180a;

    @Override // com.google.android.gms.common.internal.GmsClientEventManager.GmsClientEventState
    public final Bundle getConnectionHint() {
        return null;
    }

    @Override // com.google.android.gms.common.internal.GmsClientEventManager.GmsClientEventState
    public final boolean isConnected() {
        return this.f7180a.m14814m();
    }
}
