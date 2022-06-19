package com.criteo.publisher.p256m0;

import com.criteo.publisher.C8520q;
import com.criteo.publisher.C8527t;
/* renamed from: com.criteo.publisher.m0.o */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/o.class */
public class C8444o {
    /* renamed from: a */
    public static void m25675a(Throwable th) {
        C8520q.m25449a().m25475A().m25740b(C8444o.class).m25744a(C8527t.m25374c(th));
        C8520q.m25449a().m25394o();
    }

    /* renamed from: a */
    public static boolean m25676a(Object obj) {
        if (obj == null) {
            m25675a((Throwable) new NullPointerException("Expected non null value, but null occurs."));
            return false;
        }
        return true;
    }
}
