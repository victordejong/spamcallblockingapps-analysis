package com.google.android.gms.common.api;

import android.content.IntentSender;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/ResolvingResultCallbacks.class */
public abstract class ResolvingResultCallbacks<R extends Result> extends ResultCallbacks<R> {
    @Override // com.google.android.gms.common.api.ResultCallbacks
    @KeepForSdk
    /* renamed from: b */
    public final void mo39047b(Status status) {
        if (!status.m39044o2()) {
            m39048d(status);
            return;
        }
        try {
            status.m39041r2(null, 0);
        } catch (IntentSender.SendIntentException e) {
            m39048d(new Status(8, null));
        }
    }

    /* renamed from: d */
    public abstract void m39048d(Status status);
}
