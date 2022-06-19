package kotlinx.coroutines.internal;

import java.lang.reflect.Constructor;
import java.util.Comparator;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.C1768j;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p073a.C1594a;
import kotlin.p074b.C1615a;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.internal.f */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/f.class */
public final class C1900f {

    /* renamed from: a */
    private static final ReentrantReadWriteLock f4638a = new ReentrantReadWriteLock();

    /* renamed from: b */
    private static final WeakHashMap<Class<? extends Throwable>, AbstractC1663b<Throwable, Throwable>> f4639b = new WeakHashMap<>();

    /* renamed from: kotlinx.coroutines.internal.f$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/f$a.class */
    public static final class C1901a<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            Constructor constructor = (Constructor) t2;
            C1694h.m3122a((Object) constructor, "it");
            Integer valueOf = Integer.valueOf(constructor.getParameterTypes().length);
            Constructor constructor2 = (Constructor) t;
            C1694h.m3122a((Object) constructor2, "it");
            return C1615a.m3177a(valueOf, Integer.valueOf(constructor2.getParameterTypes().length));
        }
    }

    /* renamed from: kotlinx.coroutines.internal.f$b */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/f$b.class */
    public static final class C1902b extends AbstractC1695i implements AbstractC1663b<Throwable, E> {

        /* renamed from: a */
        final /* synthetic */ Constructor f4640a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1902b(Constructor constructor) {
            super(1);
            this.f4640a = constructor;
        }

        /* renamed from: a */
        public final Throwable mo138a(Throwable th) {
            Object obj;
            Object newInstance;
            C1694h.m3117b(th, "e");
            try {
                C1768j.C1769a c1769a = C1768j.f4443a;
                newInstance = this.f4640a.newInstance(th.getMessage(), th);
            } catch (Throwable th2) {
                C1768j.C1769a c1769a2 = C1768j.f4443a;
                obj = C1768j.m2981e(C1771k.m2978a(th2));
            }
            if (newInstance != null) {
                obj = C1768j.m2981e((Throwable) newInstance);
                Object obj2 = obj;
                if (C1768j.m2984b(obj)) {
                    obj2 = null;
                }
                return (Throwable) obj2;
            }
            throw new TypeCastException("null cannot be cast to non-null type E");
        }
    }

    /* renamed from: kotlinx.coroutines.internal.f$c */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/f$c.class */
    public static final class C1903c extends AbstractC1695i implements AbstractC1663b<Throwable, E> {

        /* renamed from: a */
        final /* synthetic */ Constructor f4641a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1903c(Constructor constructor) {
            super(1);
            this.f4641a = constructor;
        }

        /* renamed from: a */
        public final Throwable mo138a(Throwable th) {
            Object obj;
            Object newInstance;
            C1694h.m3117b(th, "e");
            try {
                C1768j.C1769a c1769a = C1768j.f4443a;
                newInstance = this.f4641a.newInstance(th);
            } catch (Throwable th2) {
                C1768j.C1769a c1769a2 = C1768j.f4443a;
                obj = C1768j.m2981e(C1771k.m2978a(th2));
            }
            if (newInstance != null) {
                obj = C1768j.m2981e((Throwable) newInstance);
                Object obj2 = obj;
                if (C1768j.m2984b(obj)) {
                    obj2 = null;
                }
                return (Throwable) obj2;
            }
            throw new TypeCastException("null cannot be cast to non-null type E");
        }
    }

    /* renamed from: kotlinx.coroutines.internal.f$d */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/f$d.class */
    public static final class C1904d extends AbstractC1695i implements AbstractC1663b<Throwable, E> {

        /* renamed from: a */
        final /* synthetic */ Constructor f4642a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1904d(Constructor constructor) {
            super(1);
            this.f4642a = constructor;
        }

        /* renamed from: a */
        public final Throwable mo138a(Throwable th) {
            Object obj;
            Throwable th2;
            Object newInstance;
            C1694h.m3117b(th, "e");
            try {
                C1768j.C1769a c1769a = C1768j.f4443a;
                newInstance = this.f4642a.newInstance(new Object[0]);
            } catch (Throwable th3) {
                C1768j.C1769a c1769a2 = C1768j.f4443a;
                obj = C1768j.m2981e(C1771k.m2978a(th3));
            }
            if (newInstance != null) {
                obj = C1768j.m2981e((Throwable) newInstance);
                Object obj2 = obj;
                if (C1768j.m2984b(obj)) {
                    obj2 = null;
                }
                Throwable th4 = (Throwable) obj2;
                if (th4 != null) {
                    th4.initCause(th);
                    th2 = th4;
                } else {
                    th2 = null;
                }
                return th2;
            }
            throw new TypeCastException("null cannot be cast to non-null type E");
        }
    }

    /* renamed from: kotlinx.coroutines.internal.f$e */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/f$e.class */
    public static final class C1905e extends AbstractC1695i implements AbstractC1663b {

        /* renamed from: a */
        public static final C1905e f4643a = new C1905e();

        C1905e() {
            super(1);
        }

        /* renamed from: a */
        public final Void mo138a(Throwable th) {
            C1694h.m3117b(th, "it");
            return null;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v58, types: [java.lang.Throwable] */
    /* renamed from: a */
    public static final <E extends Throwable> E m2663a(E e) {
        C1902b c1902b;
        C1694h.m3117b(e, "exception");
        ReentrantReadWriteLock.ReadLock readLock = f4638a.readLock();
        readLock.lock();
        try {
            AbstractC1663b<Throwable, Throwable> abstractC1663b = f4639b.get(e.getClass());
            if (abstractC1663b != null) {
                return (E) abstractC1663b.mo138a(e);
            }
            AbstractC1663b abstractC1663b2 = null;
            Constructor<?>[] constructors = e.getClass().getConstructors();
            C1694h.m3122a((Object) constructors, "exception.javaClass.constructors");
            Iterator it = C1594a.m3205c(constructors, new C1901a()).iterator();
            while (true) {
                c1902b = abstractC1663b2;
                if (!it.hasNext()) {
                    break;
                }
                Constructor constructor = (Constructor) it.next();
                C1694h.m3122a((Object) constructor, "constructor");
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                boolean z = true;
                if (parameterTypes.length != 2 || !C1694h.m3123a(parameterTypes[0], String.class) || !C1694h.m3123a(parameterTypes[1], Throwable.class)) {
                    if (parameterTypes.length != 1 || !C1694h.m3123a(parameterTypes[0], Throwable.class)) {
                        C1694h.m3122a((Object) parameterTypes, "parameters");
                        if (parameterTypes.length != 0) {
                            z = false;
                        }
                        if (z) {
                            c1902b = new C1904d(constructor);
                            break;
                        }
                    } else {
                        c1902b = new C1903c(constructor);
                        break;
                    }
                } else {
                    c1902b = new C1902b(constructor);
                    break;
                }
            }
            ReentrantReadWriteLock reentrantReadWriteLock = f4638a;
            ReentrantReadWriteLock.ReadLock readLock2 = reentrantReadWriteLock.readLock();
            int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
            for (int i = 0; i < readHoldCount; i++) {
                readLock2.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
            writeLock.lock();
            try {
                f4639b.put(e.getClass(), c1902b != null ? c1902b : C1905e.f4643a);
                C1775o c1775o = C1775o.f4450a;
                for (int i2 = 0; i2 < readHoldCount; i2++) {
                    readLock2.lock();
                }
                writeLock.unlock();
                E e2 = null;
                if (c1902b != null) {
                    e2 = (Throwable) c1902b.mo138a(e);
                }
                return e2;
            } catch (Throwable th) {
                for (int i3 = 0; i3 < readHoldCount; i3++) {
                    readLock2.lock();
                }
                writeLock.unlock();
                throw th;
            }
        } finally {
            readLock.unlock();
        }
    }
}
