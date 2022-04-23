package com.google.android.gms.common.api;

import android.app.Activity;
import android.content.IntentSender;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/ResolvingResultCallbacks.class */
public abstract class ResolvingResultCallbacks<R extends Result> extends ResultCallbacks<R> {

    /* renamed from: a */
    public final Activity f23071a;

    /* renamed from: b */
    public final int f23072b;

    @Override // com.google.android.gms.common.api.ResultCallbacks
    @KeepForSdk
    /* renamed from: a */
    public final void mo17750a(Status status) {
        if (status.m17741v()) {
            try {
                status.m17745a(this.f23071a, this.f23072b);
            } catch (IntentSender.SendIntentException e) {
                Log.e("ResolvingResultCallback", "Failed to start resolution", e);
                m17752b(new Status(8));
            }
        } else {
            m17752b(status);
        }
    }

    /* renamed from: b */
    public abstract void m17752b(Status status);
}
