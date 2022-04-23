package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzks.class */
public final class zzks {

    /* renamed from: a */
    public final Context f30140a;

    @VisibleForTesting
    public zzks(Context context) {
        Preconditions.m17288a(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.m17288a(applicationContext);
        this.f30140a = applicationContext;
    }
}
