package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.C4470h;
/* renamed from: com.google.android.gms.common.api.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/q.class */
public class C2563q {
    /* renamed from: a */
    public static <TResult> void m14229a(Status status, TResult tresult, C4470h<TResult> c4470h) {
        if (status.m14460d()) {
            c4470h.m3887a((C4470h<TResult>) tresult);
        } else {
            c4470h.m3888a((Exception) new ApiException(status));
        }
    }
}
