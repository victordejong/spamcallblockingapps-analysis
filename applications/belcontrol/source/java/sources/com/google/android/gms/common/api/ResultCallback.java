package com.google.android.gms.common.api;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/ResultCallback.class */
public interface ResultCallback<R extends Result> {
    void onResult(@RecentlyNonNull R r);
}
