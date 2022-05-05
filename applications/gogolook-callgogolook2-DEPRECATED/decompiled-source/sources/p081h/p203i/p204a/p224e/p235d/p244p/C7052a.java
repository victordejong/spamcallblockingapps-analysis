package p081h.p203i.p204a.p224e.p235d.p244p;

import java.util.concurrent.ScheduledExecutorService;
/* renamed from: h.i.a.e.d.p.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/p/a.class */
public class C7052a {

    /* renamed from: a */
    public static AbstractC7053a f17178a;

    /* renamed from: h.i.a.e.d.p.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/p/a$a.class */
    public interface AbstractC7053a {
        /* renamed from: a */
        ScheduledExecutorService mo21185a();
    }

    /* renamed from: a */
    public static AbstractC7053a m21186a() {
        AbstractC7053a aVar;
        synchronized (C7052a.class) {
            try {
                if (f17178a == null) {
                    f17178a = new C7054b();
                }
                aVar = f17178a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }
}
