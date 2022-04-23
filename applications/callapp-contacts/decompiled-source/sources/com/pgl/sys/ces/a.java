package com.pgl.sys.ces;

import android.content.Context;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/a.class */
public final class a {
    static {
        try {
            System.loadLibrary("nms");
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
        }
    }

    public static native Object meta(int i, Context context, Object obj);

    public static Object njss(int i, Object obj) {
        Object obj2;
        try {
            obj2 = b.a().a(i, obj);
        } catch (Throwable th) {
            obj2 = null;
        }
        return obj2;
    }
}
