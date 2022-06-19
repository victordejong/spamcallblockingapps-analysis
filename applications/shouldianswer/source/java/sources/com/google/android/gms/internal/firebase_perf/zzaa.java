package com.google.android.gms.internal.firebase_perf;

import androidx.customview.p026a.AbstractC0610a;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzaa.class */
public final class zzaa {
    public static int zza(long j) {
        return j > 2147483647L ? Api.BaseClientBuilder.API_PRIORITY_OTHER : j < -2147483648L ? AbstractC0610a.INVALID_ID : (int) j;
    }
}
