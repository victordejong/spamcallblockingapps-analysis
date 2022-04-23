package com.android.boom;

import android.content.Context;
/* renamed from: com.android.boom.a */
/* loaded from: classes-dex2jar.jar:com/android/boom/a.class */
public class C0675a {

    /* renamed from: a */
    private static Context f3288a;

    /* renamed from: a */
    public static Context m11454a() {
        return f3288a;
    }

    /* renamed from: b */
    public static void m11453b(Context context) {
        if (f3288a == null) {
            f3288a = context.getApplicationContext();
        }
    }
}
