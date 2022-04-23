package com.pgl.sys.ces.d;

import android.content.Context;
import com.pgl.sys.ces.b;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/d/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static b f34976a;

    public static b a(Context context, String str, a aVar) {
        if (f34976a == null) {
            synchronized (c.class) {
                try {
                    if (f34976a == null) {
                        f34976a = b.a(context, str, 0, aVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f34976a;
    }
}
