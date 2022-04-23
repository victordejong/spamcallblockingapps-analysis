package p131c.p161d.p266c.p275i.p276a;

import java.lang.Thread;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: c.d.c.i.a.r */
/* loaded from: classes2-dex2jar.jar:c/d/c/i/a/r.class */
public final class C5116r {

    /* renamed from: a */
    public String f17703a = null;

    /* renamed from: b */
    public Boolean f17704b = null;

    /* renamed from: c */
    public Integer f17705c = null;

    /* renamed from: d */
    public Thread.UncaughtExceptionHandler f17706d = null;

    /* renamed from: e */
    public ThreadFactory f17707e = null;

    /* renamed from: c.d.c.i.a.r$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/i/a/r$a.class */
    public static final class ThreadFactoryC5117a implements ThreadFactory {

        /* renamed from: a */
        public final /* synthetic */ ThreadFactory f17708a;

        /* renamed from: b */
        public final /* synthetic */ String f17709b;

        /* renamed from: c */
        public final /* synthetic */ AtomicLong f17710c;

        /* renamed from: d */
        public final /* synthetic */ Boolean f17711d;

        /* renamed from: e */
        public final /* synthetic */ Integer f17712e;

        /* renamed from: f */
        public final /* synthetic */ Thread.UncaughtExceptionHandler f17713f;

        public ThreadFactoryC5117a(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f17708a = threadFactory;
            this.f17709b = str;
            this.f17710c = atomicLong;
            this.f17711d = bool;
            this.f17712e = num;
            this.f17713f = uncaughtExceptionHandler;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = this.f17708a.newThread(runnable);
            String str = this.f17709b;
            if (str != null) {
                newThread.setName(C5116r.m24496b(str, Long.valueOf(this.f17710c.getAndIncrement())));
            }
            Boolean bool = this.f17711d;
            if (bool != null) {
                newThread.setDaemon(bool.booleanValue());
            }
            Integer num = this.f17712e;
            if (num != null) {
                newThread.setPriority(num.intValue());
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f17713f;
            if (uncaughtExceptionHandler != null) {
                newThread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
            }
            return newThread;
        }
    }

    /* renamed from: a */
    public static ThreadFactory m24500a(C5116r rVar) {
        String str = rVar.f17703a;
        Boolean bool = rVar.f17704b;
        Integer num = rVar.f17705c;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = rVar.f17706d;
        ThreadFactory threadFactory = rVar.f17707e;
        if (threadFactory == null) {
            threadFactory = Executors.defaultThreadFactory();
        }
        return new ThreadFactoryC5117a(threadFactory, str, str != null ? new AtomicLong(0L) : null, bool, num, uncaughtExceptionHandler);
    }

    /* renamed from: b */
    public static String m24496b(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    /* renamed from: a */
    public C5116r m24499a(String str) {
        m24496b(str, 0);
        this.f17703a = str;
        return this;
    }

    /* renamed from: a */
    public C5116r m24497a(boolean z) {
        this.f17704b = Boolean.valueOf(z);
        return this;
    }

    /* renamed from: a */
    public ThreadFactory m24501a() {
        return m24500a(this);
    }
}
