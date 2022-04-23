package p530d.p541c.p543b0.p557i;

import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10433c;
/* renamed from: d.c.b0.i.f */
/* loaded from: classes2-dex2jar.jar:d/c/b0/i/f.class */
public final class C9804f {
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <T> void m2001a(AbstractC9844r<? super T> rVar, T t, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            rVar.onNext(t);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable terminate = atomicThrowable.terminate();
                if (terminate != null) {
                    rVar.onError(terminate);
                } else {
                    rVar.onComplete();
                }
            }
        }
    }

    /* renamed from: a */
    public static void m2000a(AbstractC9844r<?> rVar, Throwable th, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (!atomicThrowable.addThrowable(th)) {
            C9815a.m1923b(th);
        } else if (atomicInteger.getAndIncrement() == 0) {
            rVar.onError(atomicThrowable.terminate());
        }
    }

    /* renamed from: a */
    public static void m1999a(AbstractC9844r<?> rVar, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable terminate = atomicThrowable.terminate();
            if (terminate != null) {
                rVar.onError(terminate);
            } else {
                rVar.onComplete();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <T> void m1998a(AbstractC10433c<? super T> cVar, T t, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            cVar.onNext(t);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable terminate = atomicThrowable.terminate();
                if (terminate != null) {
                    cVar.onError(terminate);
                } else {
                    cVar.onComplete();
                }
            }
        }
    }

    /* renamed from: a */
    public static void m1997a(AbstractC10433c<?> cVar, Throwable th, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (!atomicThrowable.addThrowable(th)) {
            C9815a.m1923b(th);
        } else if (atomicInteger.getAndIncrement() == 0) {
            cVar.onError(atomicThrowable.terminate());
        }
    }

    /* renamed from: a */
    public static void m1996a(AbstractC10433c<?> cVar, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable terminate = atomicThrowable.terminate();
            if (terminate != null) {
                cVar.onError(terminate);
            } else {
                cVar.onComplete();
            }
        }
    }
}
