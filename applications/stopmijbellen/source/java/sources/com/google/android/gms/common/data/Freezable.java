package com.google.android.gms.common.data;

import androidx.annotation.RecentlyNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/Freezable.class */
public interface Freezable<T> {
    @RecentlyNonNull
    T freeze();

    boolean isDataValid();
}
