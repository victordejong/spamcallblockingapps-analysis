package com.google.android.gms.common.api;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/PendingResult.class */
public abstract class PendingResult<R extends Result> {

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/PendingResult$StatusListener.class */
    public interface StatusListener {
        @KeepForSdk
        /* renamed from: a */
        void mo17754a(Status status);
    }

    /* renamed from: a */
    public abstract void mo17508a();
}
