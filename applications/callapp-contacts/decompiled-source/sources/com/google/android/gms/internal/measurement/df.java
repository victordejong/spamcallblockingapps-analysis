package com.google.android.gms.internal.measurement;

import android.os.Build;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/df.class */
public final class df {

    /* renamed from: a  reason: collision with root package name */
    private static volatile boolean f28954a = !a();

    public static boolean a() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
