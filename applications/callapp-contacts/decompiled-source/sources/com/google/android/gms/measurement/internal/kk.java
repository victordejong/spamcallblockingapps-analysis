package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Looper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/kk.class */
public final class kk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public kk(Context context) {
    }

    public static final boolean a() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
