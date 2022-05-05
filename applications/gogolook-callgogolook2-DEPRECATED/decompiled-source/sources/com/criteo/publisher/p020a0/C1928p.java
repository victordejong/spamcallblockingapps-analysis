package com.criteo.publisher.p020a0;

import androidx.annotation.NonNull;
import com.criteo.publisher.C1974i;
/* renamed from: com.criteo.publisher.a0.p */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/p.class */
public class C1928p {

    /* renamed from: a */
    public static final String f2050a = "p";

    /* renamed from: a */
    public static void m36001a(@NonNull Throwable th) {
        if (C1974i.m35912U().m35899j().m36023n()) {
            throw new RuntimeException(th);
        }
    }

    /* renamed from: a */
    public static boolean m36002a(Object obj) {
        if (obj != null) {
            return true;
        }
        m36001a((Throwable) new NullPointerException("Expected non null value, but null occurs."));
        return false;
    }
}
