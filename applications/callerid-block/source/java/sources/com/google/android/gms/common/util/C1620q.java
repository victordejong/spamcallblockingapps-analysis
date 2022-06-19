package com.google.android.gms.common.util;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.common.util.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/q.class */
public class C1620q {
    @Deprecated
    /* renamed from: a */
    public static void m8202a(@RecentlyNonNull Context context, @RecentlyNonNull SharedPreferences.Editor editor, @RecentlyNonNull String str) {
        throw new IllegalStateException("world-readable shared preferences should only be used by apk");
    }
}
