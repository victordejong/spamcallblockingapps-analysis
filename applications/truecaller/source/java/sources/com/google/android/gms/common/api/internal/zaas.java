package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.util.Collections;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zaas.class */
public final class zaas implements zaba {
    @NotOnlyInitialized

    /* renamed from: a */
    public final zabd f5808a;

    public zaas(zabd zabdVar) {
        this.f5808a = zabdVar;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: a */
    public final boolean mo38985a() {
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: b */
    public final void mo38984b() {
        for (Api.Client client : this.f5808a.f5838f.values()) {
            client.disconnect();
        }
        this.f5808a.f5846n.f5823p = Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: c */
    public final void mo38983c() {
        zabd zabdVar = this.f5808a;
        zabdVar.f5833a.lock();
        try {
            zabdVar.f5843k = new zaar(zabdVar, zabdVar.f5840h, zabdVar.f5841i, zabdVar.f5836d, zabdVar.f5842j, zabdVar.f5833a, zabdVar.f5835c);
            zabdVar.f5843k.mo38984b();
            zabdVar.f5834b.signalAll();
        } finally {
            zabdVar.f5833a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: d */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo38982d(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: e */
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T mo38981e(T t) {
        this.f5808a.f5846n.f5815h.add(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: f */
    public final void mo38980f(int i) {
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: g */
    public final void mo38979g(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: h */
    public final void mo38978h(ConnectionResult connectionResult, Api<?> api, boolean z) {
    }
}
