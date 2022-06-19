package com.google.android.gms.common.api;

import com.google.android.gms.common.api.AbstractC6007i;
import com.google.android.gms.common.api.internal.BasePendingResult;
/* renamed from: com.google.android.gms.common.api.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/n.class */
final class C6081n<R extends AbstractC6007i> extends BasePendingResult<R> {

    /* renamed from: r */
    private final R f19380r;

    public C6081n(AbstractC5999d abstractC5999d, R r) {
        super(abstractC5999d);
        this.f19380r = r;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: c */
    public final R mo17240c(Status status) {
        return this.f19380r;
    }
}
