package p081h.p203i.p325c.p337n.p338d.p341h;

import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p352p.AbstractC9809e;
/* renamed from: h.i.c.n.d.h.r */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/r.class */
public class C9610r implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public final AbstractC9611a f21889a;

    /* renamed from: b */
    public final AbstractC9809e f21890b;

    /* renamed from: c */
    public final Thread.UncaughtExceptionHandler f21891c;

    /* renamed from: d */
    public final AtomicBoolean f21892d = new AtomicBoolean(false);

    /* renamed from: h.i.c.n.d.h.r$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/r$a.class */
    public interface AbstractC9611a {
        /* renamed from: a */
        void mo14712a(AbstractC9809e eVar, Thread thread, Throwable th);
    }

    public C9610r(AbstractC9611a aVar, AbstractC9809e eVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f21889a = aVar;
        this.f21890b = eVar;
        this.f21891c = uncaughtExceptionHandler;
    }

    /* renamed from: a */
    public boolean m14713a() {
        return this.f21892d.get();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x005b -> B:11:0x003d). Please submit an issue!!! */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        this.f21892d.set(true);
        try {
            try {
                if (thread == null) {
                    C9513b.m15015a().m15011b("Could not handle uncaught exception; null thread");
                } else if (th == null) {
                    C9513b.m15015a().m15011b("Could not handle uncaught exception; null throwable");
                } else {
                    this.f21889a.mo14712a(this.f21890b, thread, th);
                }
            } catch (Exception e) {
                C9513b.m15015a().m15010b("An error occurred in the uncaught exception handler", e);
            }
            C9513b.m15015a().m15013a("Crashlytics completed exception processing. Invoking default exception handler.");
            this.f21891c.uncaughtException(thread, th);
            this.f21892d.set(false);
        } catch (Throwable th2) {
            C9513b.m15015a().m15013a("Crashlytics completed exception processing. Invoking default exception handler.");
            this.f21891c.uncaughtException(thread, th);
            this.f21892d.set(false);
            throw th2;
        }
    }
}
