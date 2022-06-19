package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zabp.class */
public final class zabp<O extends Api.ApiOptions> extends zaad {
    @NotOnlyInitialized

    /* renamed from: c */
    public final GoogleApi<O> f5862c;

    public zabp(GoogleApi<O> googleApi) {
        this.f5862c = googleApi;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: h */
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T mo38957h(T t) {
        return (T) this.f5862c.doRead((GoogleApi<O>) t);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: i */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo38956i(T t) {
        return (T) this.f5862c.doWrite((GoogleApi<O>) t);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: l */
    public final Context mo38955l() {
        return this.f5862c.getApplicationContext();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: m */
    public final Looper mo38954m() {
        return this.f5862c.getLooper();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: t */
    public final void mo38953t(zacv zacvVar) {
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: u */
    public final void mo38952u(zacv zacvVar) {
    }
}
