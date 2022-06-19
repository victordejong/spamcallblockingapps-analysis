package com.applovin.impl.sdk;

import android.os.Process;
import java.lang.Thread;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinExceptionHandler.class */
public class AppLovinExceptionHandler implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private static final AppLovinExceptionHandler f4479a = new AppLovinExceptionHandler();

    /* renamed from: b */
    private final Set<C1408l> f4480b = new HashSet(2);

    /* renamed from: c */
    private final AtomicBoolean f4481c = new AtomicBoolean();

    /* renamed from: d */
    private Thread.UncaughtExceptionHandler f4482d;

    public static AppLovinExceptionHandler shared() {
        return f4479a;
    }

    public void addSdk(C1408l c1408l) {
        this.f4480b.add(c1408l);
    }

    public void enable() {
        if (this.f4481c.compareAndSet(false, true)) {
            this.f4482d = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        for (C1408l c1408l : this.f4480b) {
            c1408l.m5542A().m5116b("AppLovinExceptionHandler", "Detected unhandled exception");
            ((EventServiceImpl) c1408l.m5447w()).trackEventSynchronously("paused");
            ((EventServiceImpl) c1408l.m5447w()).trackEventSynchronously("crashed");
        }
        try {
            Thread.sleep(100L);
        } catch (InterruptedException e) {
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f4482d;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
            return;
        }
        Process.killProcess(Process.myPid());
        System.exit(1);
    }
}
