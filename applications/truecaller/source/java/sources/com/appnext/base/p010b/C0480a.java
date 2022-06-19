package com.appnext.base.p010b;

import android.content.Context;
/* renamed from: com.appnext.base.b.a */
/* loaded from: classes-dex2jar.jar:com/appnext/base/b/a.class */
public final class C0480a {

    /* renamed from: cu */
    private static Context f1667cu;

    public static Context getContext() {
        return f1667cu;
    }

    public static void init(Context context) {
        if (context != null) {
            f1667cu = context.getApplicationContext();
            return;
        }
        throw new IllegalArgumentException("context shouldn't be null");
    }
}
