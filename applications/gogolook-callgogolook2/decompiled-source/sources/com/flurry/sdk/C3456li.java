package com.flurry.sdk;

import java.lang.Thread;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.flurry.sdk.li */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/li.class */
public final class C3456li {

    /* renamed from: c */
    public static C3456li f5947c;

    /* renamed from: b */
    public final Map<Thread.UncaughtExceptionHandler, Void> f5949b = new WeakHashMap();

    /* renamed from: a */
    public final Thread.UncaughtExceptionHandler f5948a = Thread.getDefaultUncaughtExceptionHandler();

    /* renamed from: com.flurry.sdk.li$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/li$a.class */
    public final class C3457a implements Thread.UncaughtExceptionHandler {
        public C3457a() {
        }

        public /* synthetic */ C3457a(C3456li liVar, byte b) {
            this();
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th) {
            for (Thread.UncaughtExceptionHandler uncaughtExceptionHandler : C3456li.this.m32421b()) {
                try {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                } catch (Throwable th2) {
                }
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = C3456li.this.f5948a;
            if (uncaughtExceptionHandler2 != null) {
                try {
                    uncaughtExceptionHandler2.uncaughtException(thread, th);
                } catch (Throwable th3) {
                }
            }
        }
    }

    public C3456li() {
        Thread.setDefaultUncaughtExceptionHandler(new C3457a(this, (byte) 0));
    }

    /* renamed from: a */
    public static C3456li m32422a() {
        C3456li liVar;
        synchronized (C3456li.class) {
            try {
                if (f5947c == null) {
                    f5947c = new C3456li();
                }
                liVar = f5947c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return liVar;
    }

    /* renamed from: b */
    public final Set<Thread.UncaughtExceptionHandler> m32421b() {
        Set<Thread.UncaughtExceptionHandler> keySet;
        synchronized (this.f5949b) {
            keySet = this.f5949b.keySet();
        }
        return keySet;
    }
}
