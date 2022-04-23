package p131c.p161d.p282e.p289l.p290d.p293h;

import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p304p.AbstractC5431d;
/* renamed from: c.d.e.l.d.h.p */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/p.class */
public class C5277p implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public final AbstractC5278a f18045a;

    /* renamed from: b */
    public final AbstractC5431d f18046b;

    /* renamed from: c */
    public final Thread.UncaughtExceptionHandler f18047c;

    /* renamed from: d */
    public final AtomicBoolean f18048d = new AtomicBoolean(false);

    /* renamed from: c.d.e.l.d.h.p$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/p$a.class */
    public interface AbstractC5278a {
        /* renamed from: a */
        void mo24077a(AbstractC5431d dVar, Thread thread, Throwable th);
    }

    public C5277p(AbstractC5278a aVar, AbstractC5431d dVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f18045a = aVar;
        this.f18046b = dVar;
        this.f18047c = uncaughtExceptionHandler;
    }

    /* renamed from: a */
    public boolean m24078a() {
        return this.f18048d.get();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x005b -> B:11:0x003d). Please submit an issue!!! */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        this.f18048d.set(true);
        try {
            try {
                if (thread == null) {
                    C5192b.m24319a().m24315b("Could not handle uncaught exception; null thread");
                } else if (th == null) {
                    C5192b.m24319a().m24315b("Could not handle uncaught exception; null throwable");
                } else {
                    this.f18045a.mo24077a(this.f18046b, thread, th);
                }
            } catch (Exception e) {
                C5192b.m24319a().m24314b("An error occurred in the uncaught exception handler", e);
            }
            C5192b.m24319a().m24317a("Crashlytics completed exception processing. Invoking default exception handler.");
            this.f18047c.uncaughtException(thread, th);
            this.f18048d.set(false);
        } catch (Throwable th2) {
            C5192b.m24319a().m24317a("Crashlytics completed exception processing. Invoking default exception handler.");
            this.f18047c.uncaughtException(thread, th);
            this.f18048d.set(false);
            throw th2;
        }
    }
}
