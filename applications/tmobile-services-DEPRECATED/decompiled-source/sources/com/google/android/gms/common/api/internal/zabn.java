package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabn.class */
public final class zabn<O extends Api.ApiOptions> extends zaag {

    /* renamed from: b */
    private final GoogleApi<O> f7240b;

    public zabn(GoogleApi<O> googleApi) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f7240b = googleApi;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: g */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo14785g(@NonNull T t) {
        return (T) this.f7240b.doWrite((GoogleApi<O>) t);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: h */
    public final Looper mo14784h() {
        return this.f7240b.getLooper();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: j */
    public final void mo14783j(zack zackVar) {
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: k */
    public final void mo14782k(zack zackVar) {
    }
}
