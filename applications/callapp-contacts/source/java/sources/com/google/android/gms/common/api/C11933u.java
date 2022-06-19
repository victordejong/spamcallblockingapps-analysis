package com.google.android.gms.common.api;

import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.internal.BasePendingResult;
/* renamed from: com.google.android.gms.common.api.u */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/u.class */
public final class C11933u<R extends AbstractC11925m> extends BasePendingResult<R> {

    /* renamed from: a */
    private final R f39421a;

    public C11933u(AbstractC11826g abstractC11826g, R r) {
        super(abstractC11826g);
        this.f39421a = r;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final R mo11354a(Status status) {
        return this.f39421a;
    }
}
