package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/DataHolderResult.class */
public class DataHolderResult implements Releasable, Result {
    @KeepForSdk

    /* renamed from: f */
    protected final Status f7062f;
    @KeepForSdk

    /* renamed from: g */
    protected final DataHolder f7063g;

    @Override // com.google.android.gms.common.api.Result
    @KeepForSdk
    /* renamed from: k */
    public Status mo10851k() {
        return this.f7062f;
    }

    @Override // com.google.android.gms.common.api.Releasable
    @KeepForSdk
    public void release() {
        DataHolder dataHolder = this.f7063g;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }
}
