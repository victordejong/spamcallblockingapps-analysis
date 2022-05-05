package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.PendingResultUtil;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zaj.class */
final class zaj implements PendingResultUtil.ResultConverter<R, T> {

    /* renamed from: a */
    private final /* synthetic */ Response f7549a;

    @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
    /* renamed from: a */
    public final /* synthetic */ Object mo14431a(Result result) {
        this.f7549a.m15006e(result);
        return this.f7549a;
    }
}
