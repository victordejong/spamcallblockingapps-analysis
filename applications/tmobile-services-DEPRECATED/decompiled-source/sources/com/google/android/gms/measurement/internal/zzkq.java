package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkq.class */
public final class zzkq {

    /* renamed from: a */
    final Context f9698a;

    @VisibleForTesting
    public zzkq(Context context) {
        Preconditions.m14523k(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.m14523k(applicationContext);
        this.f9698a = applicationContext;
    }
}
