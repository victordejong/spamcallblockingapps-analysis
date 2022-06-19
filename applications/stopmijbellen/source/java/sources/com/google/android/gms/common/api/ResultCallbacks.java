package com.google.android.gms.common.api;

import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/ResultCallbacks.class */
public abstract class ResultCallbacks<R extends Result> implements ResultCallback<R> {
    public abstract void onFailure(Status status);

    @Override // com.google.android.gms.common.api.ResultCallback
    @KeepForSdk
    public final void onResult(R r) {
        Status status = r.getStatus();
        if (status.isSuccess()) {
            onSuccess(r);
            return;
        }
        onFailure(status);
        if (!(r instanceof Releasable)) {
            return;
        }
        try {
            ((Releasable) r).release();
        } catch (RuntimeException e) {
            Log.w("ResultCallbacks", "Unable to release ".concat(String.valueOf(r)), e);
        }
    }

    public abstract void onSuccess(R r);
}
