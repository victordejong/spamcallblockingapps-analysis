package com.flurry.sdk;

import java.lang.Thread;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.flurry.sdk.mj */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/mj.class */
public final class C0509mj {

    /* renamed from: c */
    private static C0509mj f3589c;

    /* renamed from: b */
    public final Map<Thread.UncaughtExceptionHandler, Void> f3591b = new WeakHashMap();

    /* renamed from: a */
    public final Thread.UncaughtExceptionHandler f3590a = Thread.getDefaultUncaughtExceptionHandler();

    /* renamed from: com.flurry.sdk.mj$a */
    /* loaded from: classes-dex2jar.jar:com/flurry/sdk/mj$a.class */
    public final class C0510a implements Thread.UncaughtExceptionHandler {
        private C0510a() {
            C0509mj.this = r4;
        }

        public /* synthetic */ C0510a(C0509mj c0509mj, byte b) {
            this();
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th) {
            for (Thread.UncaughtExceptionHandler uncaughtExceptionHandler : C0509mj.this.m4452b()) {
                try {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                } catch (Throwable th2) {
                }
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = C0509mj.this.f3590a;
            if (uncaughtExceptionHandler2 != null) {
                try {
                    uncaughtExceptionHandler2.uncaughtException(thread, th);
                } catch (Throwable th3) {
                }
            }
        }
    }

    private C0509mj() {
        Thread.setDefaultUncaughtExceptionHandler(new C0510a(this, (byte) 0));
    }

    /* renamed from: a */
    public static C0509mj m4453a() {
        C0509mj c0509mj;
        synchronized (C0509mj.class) {
            try {
                if (f3589c == null) {
                    f3589c = new C0509mj();
                }
                c0509mj = f3589c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0509mj;
    }

    /* renamed from: b */
    public final Set<Thread.UncaughtExceptionHandler> m4452b() {
        Set<Thread.UncaughtExceptionHandler> keySet;
        synchronized (this.f3591b) {
            keySet = this.f3591b.keySet();
        }
        return keySet;
    }
}
