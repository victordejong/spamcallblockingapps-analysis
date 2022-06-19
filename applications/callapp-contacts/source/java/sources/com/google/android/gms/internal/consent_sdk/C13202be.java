package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.consent_sdk.be */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/be.class */
public final class C13202be {

    /* renamed from: a */
    public static final Handler f50380a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public static final Executor f50381b = new ExecutorC13205bh("Google consent worker");

    /* renamed from: a */
    public static void m13564a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        throw new IllegalStateException("Method must be call on main thread.");
    }
}
