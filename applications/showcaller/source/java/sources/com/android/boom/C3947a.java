package com.android.boom;

import android.content.Context;
/* renamed from: com.android.boom.a */
/* loaded from: classes-dex2jar.jar:com/android/boom/a.class */
public class C3947a {

    /* renamed from: a */
    private static Context f12413a;

    /* renamed from: a */
    public static Context m23745a() {
        return f12413a;
    }

    /* renamed from: b */
    public static void m23744b(Context context) {
        if (f12413a == null) {
            f12413a = context.getApplicationContext();
        }
    }
}
