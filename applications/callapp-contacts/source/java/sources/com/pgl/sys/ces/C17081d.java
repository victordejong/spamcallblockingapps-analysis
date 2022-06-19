package com.pgl.sys.ces;

import android.content.Context;
import com.pgl.p474a.p476b.C17058f;
import com.pgl.sys.ces.p482c.C17080b;
/* renamed from: com.pgl.sys.ces.d */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/d.class */
public class C17081d {

    /* renamed from: a */
    public static int f60625a = 0;

    /* renamed from: b */
    public static long f60626b = 3600;

    /* renamed from: c */
    public static long f60627c;

    /* renamed from: a */
    public static void m5890a(Context context) {
        synchronized (C17081d.class) {
            try {
                long currentTimeMillis = System.currentTimeMillis() / 1000;
                if (currentTimeMillis - f60627c >= f60626b) {
                    int i = 0;
                    C17072b.f60597d = false;
                    f60625a = 0;
                    f60627c = currentTimeMillis;
                    do {
                        if (i >= 3) {
                            break;
                        }
                        if (!C17072b.f60597d && f60625a < 3) {
                            m5889b(context);
                            f60625a++;
                        }
                        i++;
                        C17058f.m5946a(i * 5000);
                    } while (!C17072b.f60597d);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static void m5889b(Context context) {
        new C17080b(context, C17072b.m5908d()).m5956a(2, null);
    }
}
