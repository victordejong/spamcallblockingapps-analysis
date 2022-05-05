package p081h.p203i.p204a.p224e.p235d.p249s.p250t;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.s.t.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/t/b.class */
public class ThreadFactoryC7089b implements ThreadFactory {

    /* renamed from: a */
    public final String f17198a;

    /* renamed from: b */
    public final ThreadFactory f17199b;

    public ThreadFactoryC7089b(String str) {
        this(str, 0);
    }

    public ThreadFactoryC7089b(String str, int i) {
        this.f17199b = Executors.defaultThreadFactory();
        C7021t.m21289a(str, (Object) "Name must not be null");
        this.f17198a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f17199b.newThread(new RunnableC7091d(runnable, 0));
        newThread.setName(this.f17198a);
        return newThread;
    }
}
