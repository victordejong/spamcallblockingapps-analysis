package p081h.p203i.p325c.p364t;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p204a.p224e.p235d.p249s.p250t.ThreadFactoryC7089b;
/* renamed from: h.i.c.t.h */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/h.class */
public class C9878h {

    /* renamed from: a */
    public static final Executor f22366a = ExecutorC9876g.f22364a;

    /* renamed from: a */
    public static Executor m14050a() {
        return f22366a;
    }

    /* renamed from: b */
    public static ExecutorService m14049b() {
        return new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC7089b("firebase-iid-executor"));
    }
}
