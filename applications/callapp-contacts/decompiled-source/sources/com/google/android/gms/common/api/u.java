package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.m;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/u.class */
public final class u<R extends m> extends BasePendingResult<R> {

    /* renamed from: a  reason: collision with root package name */
    private final R f22783a;

    public u(g gVar, R r) {
        super(gVar);
        this.f22783a = r;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R a(Status status) {
        return this.f22783a;
    }
}
