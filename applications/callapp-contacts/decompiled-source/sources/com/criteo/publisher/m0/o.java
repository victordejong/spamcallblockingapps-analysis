package com.criteo.publisher.m0;

import com.criteo.publisher.q;
import com.criteo.publisher.t;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/o.class */
public class o {
    public static void a(Throwable th) {
        q.a().A().b(o.class).a(t.c(th));
        q.a().o();
    }

    public static boolean a(Object obj) {
        if (obj != null) {
            return true;
        }
        a((Throwable) new NullPointerException("Expected non null value, but null occurs."));
        return false;
    }
}
