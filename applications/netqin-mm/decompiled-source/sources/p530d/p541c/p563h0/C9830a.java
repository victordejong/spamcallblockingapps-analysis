package p530d.p541c.p563h0;

import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p557i.C9798a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.h0.a */
/* loaded from: classes2-dex2jar.jar:d/c/h0/a.class */
public final class C9830a<T> extends AbstractC9832b<T> {

    /* renamed from: h */
    public static final Object[] f37045h = new Object[0];

    /* renamed from: i */
    public static final C9831a[] f37046i = new C9831a[0];

    /* renamed from: j */
    public static final C9831a[] f37047j = new C9831a[0];

    /* renamed from: c */
    public final ReadWriteLock f37050c;

    /* renamed from: d */
    public final Lock f37051d;

    /* renamed from: e */
    public final Lock f37052e;

    /* renamed from: g */
    public long f37054g;

    /* renamed from: b */
    public final AtomicReference<C9831a<T>[]> f37049b = new AtomicReference<>(f37046i);

    /* renamed from: a */
    public final AtomicReference<Object> f37048a = new AtomicReference<>();

    /* renamed from: f */
    public final AtomicReference<Throwable> f37053f = new AtomicReference<>();

    /* renamed from: d.c.h0.a$a */
    /* loaded from: classes2-dex2jar.jar:d/c/h0/a$a.class */
    public static final class C9831a<T> implements AbstractC9861b, C9798a.AbstractC9799a<Object> {

        /* renamed from: a */
        public final AbstractC9844r<? super T> f37055a;

        /* renamed from: b */
        public final C9830a<T> f37056b;

        /* renamed from: c */
        public boolean f37057c;

        /* renamed from: d */
        public boolean f37058d;

        /* renamed from: e */
        public C9798a<Object> f37059e;

        /* renamed from: f */
        public boolean f37060f;

        /* renamed from: g */
        public volatile boolean f37061g;

        /* renamed from: h */
        public long f37062h;

        public C9831a(AbstractC9844r<? super T> rVar, C9830a<T> aVar) {
            this.f37055a = rVar;
            this.f37056b = aVar;
        }

        /* renamed from: a */
        public void m1907a() {
            if (!this.f37061g) {
                synchronized (this) {
                    if (!this.f37061g) {
                        if (!this.f37057c) {
                            C9830a<T> aVar = this.f37056b;
                            Lock lock = aVar.f37051d;
                            lock.lock();
                            this.f37062h = aVar.f37054g;
                            Object obj = aVar.f37048a.get();
                            lock.unlock();
                            this.f37058d = obj != null;
                            this.f37057c = true;
                            if (obj != null && !test(obj)) {
                                m1905b();
                            }
                        }
                    }
                }
            }
        }

        /* renamed from: a */
        public void m1906a(Object obj, long j) {
            if (!this.f37061g) {
                if (!this.f37060f) {
                    synchronized (this) {
                        if (!this.f37061g) {
                            if (this.f37062h != j) {
                                if (this.f37058d) {
                                    C9798a<Object> aVar = this.f37059e;
                                    C9798a<Object> aVar2 = aVar;
                                    if (aVar == null) {
                                        aVar2 = new C9798a<>(4);
                                        this.f37059e = aVar2;
                                    }
                                    aVar2.m2014a((C9798a<Object>) obj);
                                    return;
                                }
                                this.f37057c = true;
                                this.f37060f = true;
                            } else {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                }
                test(obj);
            }
        }

        /* renamed from: b */
        public void m1905b() {
            C9798a<Object> aVar;
            while (!this.f37061g) {
                synchronized (this) {
                    try {
                        aVar = this.f37059e;
                        if (aVar == null) {
                            this.f37058d = false;
                            return;
                        }
                        this.f37059e = null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                aVar.m2015a((C9798a.AbstractC9799a<? super Object>) this);
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            if (!this.f37061g) {
                this.f37061g = true;
                this.f37056b.m1911b((C9831a) this);
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f37061g;
        }

        @Override // p530d.p541c.p543b0.p557i.C9798a.AbstractC9799a, p530d.p541c.p542a0.AbstractC9646i
        public boolean test(Object obj) {
            return this.f37061g || NotificationLite.accept(obj, this.f37055a);
        }
    }

    public C9830a() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f37050c = reentrantReadWriteLock;
        this.f37051d = reentrantReadWriteLock.readLock();
        this.f37052e = this.f37050c.writeLock();
    }

    /* renamed from: c */
    public static <T> C9830a<T> m1910c() {
        return new C9830a<>();
    }

    @Override // p530d.p541c.AbstractC9840o
    /* renamed from: a */
    public void mo192a(AbstractC9844r<? super T> rVar) {
        C9831a<T> aVar = new C9831a<>(rVar, this);
        rVar.onSubscribe(aVar);
        if (!m1912a((C9831a) aVar)) {
            Throwable th = this.f37053f.get();
            if (th == ExceptionHelper.f38570a) {
                rVar.onComplete();
            } else {
                rVar.onError(th);
            }
        } else if (aVar.f37061g) {
            m1911b((C9831a) aVar);
        } else {
            aVar.m1907a();
        }
    }

    /* renamed from: a */
    public boolean m1912a(C9831a<T> aVar) {
        C9831a<T>[] aVarArr;
        C9831a<T>[] aVarArr2;
        do {
            aVarArr = this.f37049b.get();
            if (aVarArr == f37047j) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new C9831a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f37049b.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    /* renamed from: b */
    public void m1911b(C9831a<T> aVar) {
        C9831a<T>[] aVarArr;
        C9831a<T>[] aVarArr2;
        do {
            aVarArr = this.f37049b.get();
            int length = aVarArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (aVarArr[i2] == aVar) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        aVarArr2 = f37046i;
                    } else {
                        aVarArr2 = new C9831a[length - 1];
                        System.arraycopy(aVarArr, 0, aVarArr2, 0, i);
                        System.arraycopy(aVarArr, i + 1, aVarArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f37049b.compareAndSet(aVarArr, aVarArr2));
    }

    /* renamed from: c */
    public void m1909c(Object obj) {
        this.f37052e.lock();
        this.f37054g++;
        this.f37048a.lazySet(obj);
        this.f37052e.unlock();
    }

    /* renamed from: d */
    public C9831a<T>[] m1908d(Object obj) {
        C9831a<T>[] andSet = this.f37049b.getAndSet(f37047j);
        if (andSet != f37047j) {
            m1909c(obj);
        }
        return andSet;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (this.f37053f.compareAndSet(null, ExceptionHelper.f38570a)) {
            Object complete = NotificationLite.complete();
            for (C9831a<T> aVar : m1908d(complete)) {
                aVar.m1906a(complete, this.f37054g);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        C9650a.m2095a(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f37053f.compareAndSet(null, th)) {
            C9815a.m1923b(th);
            return;
        }
        Object error = NotificationLite.error(th);
        for (C9831a<T> aVar : m1908d(error)) {
            aVar.m1906a(error, this.f37054g);
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        C9650a.m2095a((Object) t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f37053f.get() == null) {
            Object next = NotificationLite.next(t);
            m1909c(next);
            for (C9831a<T> aVar : this.f37049b.get()) {
                aVar.m1906a(next, this.f37054g);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (this.f37053f.get() != null) {
            bVar.dispose();
        }
    }
}
