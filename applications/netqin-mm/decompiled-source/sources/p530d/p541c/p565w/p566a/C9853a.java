package p530d.p541c.p565w.p566a;

import java.util.concurrent.Callable;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.w.a.a */
/* loaded from: classes2-dex2jar.jar:d/c/w/a/a.class */
public final class C9853a {

    /* renamed from: a */
    public static volatile AbstractC9645h<Callable<AbstractC9845s>, AbstractC9845s> f37081a;

    /* renamed from: b */
    public static volatile AbstractC9645h<AbstractC9845s, AbstractC9845s> f37082b;

    /* renamed from: a */
    public static AbstractC9845s m1839a(AbstractC9645h<Callable<AbstractC9845s>, AbstractC9845s> hVar, Callable<AbstractC9845s> callable) {
        AbstractC9845s sVar = (AbstractC9845s) m1840a((AbstractC9645h<Callable<AbstractC9845s>, Object>) hVar, callable);
        if (sVar != null) {
            return sVar;
        }
        throw new NullPointerException("Scheduler Callable returned null");
    }

    /* renamed from: a */
    public static AbstractC9845s m1838a(AbstractC9845s sVar) {
        if (sVar != null) {
            AbstractC9645h<AbstractC9845s, AbstractC9845s> hVar = f37082b;
            return hVar == null ? sVar : (AbstractC9845s) m1840a(hVar, sVar);
        }
        throw new NullPointerException("scheduler == null");
    }

    /* renamed from: a */
    public static AbstractC9845s m1837a(Callable<AbstractC9845s> callable) {
        try {
            AbstractC9845s call = callable.call();
            if (call != null) {
                return call;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th) {
            C9863a.m1823a(th);
            throw null;
        }
    }

    /* renamed from: a */
    public static <T, R> R m1840a(AbstractC9645h<T, R> hVar, T t) {
        try {
            return hVar.apply(t);
        } catch (Throwable th) {
            C9863a.m1823a(th);
            throw null;
        }
    }

    /* renamed from: b */
    public static AbstractC9845s m1836b(Callable<AbstractC9845s> callable) {
        if (callable != null) {
            AbstractC9645h<Callable<AbstractC9845s>, AbstractC9845s> hVar = f37081a;
            return hVar == null ? m1837a(callable) : m1839a(hVar, callable);
        }
        throw new NullPointerException("scheduler == null");
    }
}
