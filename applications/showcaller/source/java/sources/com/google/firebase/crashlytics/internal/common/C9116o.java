package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.settings.AbstractC9136d;
import com.google.firebase.crashlytics.p293d.C8898b;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.firebase.crashlytics.internal.common.o */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/o.class */
class C9116o implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private final AbstractC9117a f39377a;

    /* renamed from: b */
    private final AbstractC9136d f39378b;

    /* renamed from: c */
    private final Thread.UncaughtExceptionHandler f39379c;

    /* renamed from: d */
    private final AtomicBoolean f39380d = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.crashlytics.internal.common.o$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/o$a.class */
    public interface AbstractC9117a {
        /* renamed from: a */
        void mo1798a(AbstractC9136d abstractC9136d, Thread thread, Throwable th);
    }

    public C9116o(AbstractC9117a abstractC9117a, AbstractC9136d abstractC9136d, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f39377a = abstractC9117a;
        this.f39378b = abstractC9136d;
        this.f39379c = uncaughtExceptionHandler;
    }

    /* renamed from: a */
    public boolean m1799a() {
        return this.f39380d.get();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x005b -> B:11:0x003d). Please submit an issue!!! */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        this.f39380d.set(true);
        try {
            try {
                if (thread == null) {
                    C8898b.m2397f().m2399d("Could not handle uncaught exception; null thread");
                } else if (th == null) {
                    C8898b.m2397f().m2399d("Could not handle uncaught exception; null throwable");
                } else {
                    this.f39377a.mo1798a(this.f39378b, thread, th);
                }
            } catch (Exception e) {
                C8898b.m2397f().m2398e("An error occurred in the uncaught exception handler", e);
            }
            C8898b.m2397f().m2401b("Completed exception processing. Invoking default exception handler.");
            this.f39379c.uncaughtException(thread, th);
            this.f39380d.set(false);
        } catch (Throwable th2) {
            C8898b.m2397f().m2401b("Completed exception processing. Invoking default exception handler.");
            this.f39379c.uncaughtException(thread, th);
            this.f39380d.set(false);
            throw th2;
        }
    }
}
