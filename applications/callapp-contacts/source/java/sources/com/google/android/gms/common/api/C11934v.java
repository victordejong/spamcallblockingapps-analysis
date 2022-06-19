package com.google.android.gms.common.api;

import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.internal.BasePendingResult;
/* renamed from: com.google.android.gms.common.api.v */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/v.class */
public final class C11934v<R extends AbstractC11925m> extends BasePendingResult<R> {
    public C11934v(AbstractC11826g abstractC11826g) {
        super(abstractC11826g);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final R mo11354a(Status status) {
        throw new UnsupportedOperationException("Creating failed results is not supported");
    }
}
