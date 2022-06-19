package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.C7968h;
/* renamed from: com.google.android.gms.common.api.internal.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/r.class */
public class C6059r {
    /* renamed from: a */
    public static <TResult> void m17286a(@RecentlyNonNull Status status, TResult tresult, @RecentlyNonNull C7968h<TResult> c7968h) {
        if (status.m17486p0()) {
            c7968h.m5805c(tresult);
        } else {
            c7968h.m5806b(new ApiException(status));
        }
    }
}
