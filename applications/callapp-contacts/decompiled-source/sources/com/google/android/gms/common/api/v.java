package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/v.class */
public final class v<R extends m> extends BasePendingResult<R> {
    public v(g gVar) {
        super(gVar);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R a(Status status) {
        throw new UnsupportedOperationException("Creating failed results is not supported");
    }
}
