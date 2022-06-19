package com.facebook.appevents.p283d;

import com.facebook.internal.p299b.p301b.C10249a;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.appevents.d.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/d/c.class */
public final class C10015c {

    /* renamed from: a */
    private static final AtomicBoolean f33282a = new AtomicBoolean(false);

    /* renamed from: a */
    public static void m23607a() {
        if (C10249a.m23108a(C10015c.class)) {
            return;
        }
        try {
            AtomicBoolean atomicBoolean = f33282a;
            atomicBoolean.set(true);
            if (C10249a.m23108a(C10015c.class) || !atomicBoolean.get()) {
                return;
            }
            C10249a.m23108a(C10015c.class);
            C10009a.m23629a();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10015c.class);
        }
    }
}
