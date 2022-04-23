package com.facebook.biddingkit.d;

import android.os.Process;
import android.text.TextUtils;
import java.lang.Thread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/c.class */
public final class c implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f19704a;

    public c(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f19704a = uncaughtExceptionHandler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        Thread.setDefaultUncaughtExceptionHandler(new c(Thread.getDefaultUncaughtExceptionHandler()));
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            String a2 = h.a(th);
            if (!TextUtils.isEmpty(a2) && a2.contains("com.facebook.biddingkit")) {
                b.a("CrashReportHandler", a2);
            }
        } catch (Exception e) {
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f19704a;
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
