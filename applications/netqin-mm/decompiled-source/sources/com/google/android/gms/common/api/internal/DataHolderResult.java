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

    /* renamed from: a */
    public final Status f23110a;
    @KeepForSdk

    /* renamed from: b */
    public final DataHolder f23111b;

    @Override // com.google.android.gms.common.api.Releasable
    @KeepForSdk
    /* renamed from: a */
    public void mo15656a() {
        DataHolder dataHolder = this.f23111b;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }

    @Override // com.google.android.gms.common.api.Result
    @KeepForSdk
    /* renamed from: d */
    public Status mo8632d() {
        return this.f23110a;
    }
}
