package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Objects;
@VisibleForTesting
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzkq.class */
public final class zzkq {

    /* renamed from: a */
    public final Context f6454a;

    @VisibleForTesting
    public zzkq(Context context) {
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null reference");
        this.f6454a = applicationContext;
    }
}
