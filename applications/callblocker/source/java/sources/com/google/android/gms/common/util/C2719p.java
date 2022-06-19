package com.google.android.gms.common.util;

import android.content.Context;
import android.content.SharedPreferences;
/* renamed from: com.google.android.gms.common.util.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/p.class */
public class C2719p {
    @Deprecated
    /* renamed from: a */
    public static void m13827a(Context context, SharedPreferences.Editor editor, String str) {
        throw new IllegalStateException("world-readable shared preferences should only be used by apk");
    }
}
