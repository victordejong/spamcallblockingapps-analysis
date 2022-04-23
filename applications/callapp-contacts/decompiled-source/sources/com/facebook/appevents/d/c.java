package com.facebook.appevents.d;

import com.facebook.internal.b.b.a;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/d/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicBoolean f19527a = new AtomicBoolean(false);

    public static void a() {
        if (!a.a(c.class)) {
            try {
                AtomicBoolean atomicBoolean = f19527a;
                atomicBoolean.set(true);
                if (!a.a(c.class) && atomicBoolean.get()) {
                    a.a(c.class);
                    a.a();
                }
            } catch (Throwable th) {
                a.a(th, c.class);
            }
        }
    }
}
