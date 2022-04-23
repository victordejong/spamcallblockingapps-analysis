package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/be.class */
public final class be {

    /* renamed from: a  reason: collision with root package name */
    public static final Handler f28749a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    public static final Executor f28750b = new bh("Google consent worker");

    public static void a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("Method must be call on main thread.");
        }
    }
}
