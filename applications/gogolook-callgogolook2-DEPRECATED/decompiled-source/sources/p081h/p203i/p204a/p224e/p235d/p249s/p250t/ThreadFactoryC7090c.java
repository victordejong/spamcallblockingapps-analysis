package p081h.p203i.p204a.p224e.p235d.p249s.p250t;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.s.t.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/t/c.class */
public class ThreadFactoryC7090c implements ThreadFactory {

    /* renamed from: a */
    public final String f17200a;

    /* renamed from: b */
    public final AtomicInteger f17201b;

    /* renamed from: c */
    public final ThreadFactory f17202c;

    public ThreadFactoryC7090c(String str) {
        this(str, 0);
    }

    public ThreadFactoryC7090c(String str, int i) {
        this.f17201b = new AtomicInteger();
        this.f17202c = Executors.defaultThreadFactory();
        C7021t.m21289a(str, (Object) "Name must not be null");
        this.f17200a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f17202c.newThread(new RunnableC7091d(runnable, 0));
        String str = this.f17200a;
        int andIncrement = this.f17201b.getAndIncrement();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13);
        sb.append(str);
        sb.append("[");
        sb.append(andIncrement);
        sb.append("]");
        newThread.setName(sb.toString());
        return newThread;
    }
}
