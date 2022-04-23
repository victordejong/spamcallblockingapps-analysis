package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/r.class */
public final class r extends BasePendingResult<Status> {
    @Deprecated
    public r(Looper looper) {
        super(looper);
    }

    public r(g gVar) {
        super(gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ Status a(Status status) {
        return status;
    }
}
