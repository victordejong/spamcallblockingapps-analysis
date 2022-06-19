package com.google.android.gms.common.api;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/ResultCallbacks.class */
public abstract class ResultCallbacks<R extends Result> implements ResultCallback<R> {
    @Override // com.google.android.gms.common.api.ResultCallback
    @KeepForSdk
    /* renamed from: a */
    public final void mo38948a(R r) {
        Status status = r.getStatus();
        if (status.m39042q2()) {
            m39046c(r);
            return;
        }
        mo39047b(status);
        if (!(r instanceof Releasable)) {
            return;
        }
        try {
            ((Releasable) r).release();
        } catch (RuntimeException e) {
            String valueOf = String.valueOf(r);
            valueOf.length();
            "Unable to release ".concat(valueOf);
        }
    }

    /* renamed from: b */
    public abstract void mo39047b(Status status);

    /* renamed from: c */
    public abstract void m39046c(R r);
}
