package com.google.android.gms.common.util;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/BiConsumer.class */
public interface BiConsumer<T, U> {
    @KeepForSdk
    void accept(@RecentlyNonNull T t, @RecentlyNonNull U u);
}
