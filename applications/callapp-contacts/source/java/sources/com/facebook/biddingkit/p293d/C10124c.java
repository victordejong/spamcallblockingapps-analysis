package com.facebook.biddingkit.p293d;

import android.os.Process;
import android.text.TextUtils;
import java.lang.Thread;
/* renamed from: com.facebook.biddingkit.d.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/c.class */
public final class C10124c implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private final Thread.UncaughtExceptionHandler f33505a;

    public C10124c(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f33505a = uncaughtExceptionHandler;
    }

    /* renamed from: a */
    public static void m23368a() {
        Thread.setDefaultUncaughtExceptionHandler(new C10124c(Thread.getDefaultUncaughtExceptionHandler()));
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            String m23350a = C10132h.m23350a(th);
            if (!TextUtils.isEmpty(m23350a) && m23350a.contains("com.facebook.biddingkit")) {
                C10123b.m23370a("CrashReportHandler", m23350a);
            }
        } catch (Exception e) {
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f33505a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
            return;
        }
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable th2) {
        }
        try {
            System.exit(10);
        } catch (Throwable th3) {
        }
    }
}
