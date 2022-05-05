package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaay.class */
final class zaay implements GoogleApiClient.ConnectionCallbacks {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f7206a;

    /* renamed from: b */
    private final /* synthetic */ StatusPendingResult f7207b;

    /* renamed from: c */
    private final /* synthetic */ zaaw f7208c;

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    /* renamed from: a */
    public final void mo14715a(int i) {
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    /* renamed from: b */
    public final void mo14714b(Bundle bundle) {
        this.f7208c.m14810q((GoogleApiClient) this.f7206a.get(), this.f7207b, true);
    }
}
