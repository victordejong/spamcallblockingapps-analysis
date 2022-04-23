package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaat.class */
public final class zaat implements zabb {

    /* renamed from: a */
    private final zabe f7178a;

    public zaat(zabe zabeVar) {
        this.f7178a = zabeVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    /* renamed from: a */
    public final void mo14800a(int i) {
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    /* renamed from: b */
    public final void mo14799b(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    /* renamed from: c */
    public final void mo14798c(ConnectionResult connectionResult, Api<?> api, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void connect() {
        this.f7178a.m14792g();
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    /* renamed from: d */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo14797d(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final boolean disconnect() {
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    /* renamed from: e */
    public final void mo14796e() {
        for (Api.Client client : this.f7178a.f7221f.values()) {
            client.disconnect();
        }
        this.f7178a.f7229n.f7196p = Collections.emptySet();
    }
}
