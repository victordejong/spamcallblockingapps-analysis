package com.pgl.sys.ces;

import android.content.Context;
import com.pgl.a.b.f;
import com.pgl.sys.ces.c.b;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static int f34973a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static long f34974b = 3600;

    /* renamed from: c  reason: collision with root package name */
    public static long f34975c;

    public static void a(Context context) {
        synchronized (d.class) {
            try {
                long currentTimeMillis = System.currentTimeMillis() / 1000;
                if (currentTimeMillis - f34975c >= f34974b) {
                    int i = 0;
                    b.f34959d = false;
                    f34973a = 0;
                    f34975c = currentTimeMillis;
                    do {
                        if (i >= 3) {
                            break;
                        }
                        if (!b.f34959d && f34973a < 3) {
                            b(context);
                            f34973a++;
                        }
                        i++;
                        f.a(i * 5000);
                    } while (!b.f34959d);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void b(Context context) {
        new b(context, b.d()).a(2, null);
    }
}
