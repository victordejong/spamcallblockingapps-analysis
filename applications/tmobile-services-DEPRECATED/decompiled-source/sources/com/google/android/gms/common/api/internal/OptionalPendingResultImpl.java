package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.OptionalPendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import java.util.concurrent.TimeUnit;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/OptionalPendingResultImpl.class */
public final class OptionalPendingResultImpl<R extends Result> extends OptionalPendingResult<R> {

    /* renamed from: a */
    private final BasePendingResult<R> f7115a;

    @Override // com.google.android.gms.common.api.PendingResult
    /* renamed from: a */
    public final R mo14773a(long j, TimeUnit timeUnit) {
        return this.f7115a.mo14773a(j, timeUnit);
    }

    @Override // com.google.android.gms.common.api.PendingResult
    /* renamed from: b */
    public final void mo14772b() {
        this.f7115a.mo14772b();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    /* renamed from: c */
    public final void mo14771c(ResultCallback<? super R> resultCallback) {
        this.f7115a.mo14771c(resultCallback);
    }
}
