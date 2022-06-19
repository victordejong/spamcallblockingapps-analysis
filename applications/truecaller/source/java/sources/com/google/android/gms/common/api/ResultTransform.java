package com.google.android.gms.common.api;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.api.Result;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/ResultTransform.class */
public abstract class ResultTransform<R extends Result, S extends Result> {
    @RecentlyNullable
    /* renamed from: a */
    public abstract PendingResult<S> m39045a(@RecentlyNonNull R r);
}
