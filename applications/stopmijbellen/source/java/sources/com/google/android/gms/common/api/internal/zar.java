package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Result;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zar.class */
public final class zar {
    public final /* synthetic */ BasePendingResult zaa;

    public /* synthetic */ zar(BasePendingResult basePendingResult, zaq zaqVar) {
        this.zaa = basePendingResult;
    }

    public final void finalize() throws Throwable {
        Result result;
        result = this.zaa.zaj;
        BasePendingResult.zal(result);
        super.finalize();
    }
}
