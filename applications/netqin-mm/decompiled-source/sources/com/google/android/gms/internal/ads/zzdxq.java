package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq.class */
public class zzdxq<V> extends zzdzt implements zzdzc<V> {

    /* renamed from: d */
    public static final boolean f27908d;

    /* renamed from: e */
    public static final Logger f27909e;

    /* renamed from: f */
    public static final AbstractC7246c f27910f;

    /* renamed from: g */
    public static final Object f27911g;

    /* renamed from: a */
    public volatile Object f27912a;

    /* renamed from: b */
    public volatile C7248e f27913b;

    /* renamed from: c */
    public volatile C7255k f27914c;

    /* renamed from: com.google.android.gms.internal.ads.zzdxq$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq$b.class */
    public static final class C7245b {

        /* renamed from: c */
        public static final C7245b f27915c;

        /* renamed from: d */
        public static final C7245b f27916d;

        /* renamed from: a */
        public final boolean f27917a;

        /* renamed from: b */
        public final Throwable f27918b;

        static {
            if (zzdxq.f27908d) {
                f27916d = null;
                f27915c = null;
                return;
            }
            f27916d = new C7245b(false, null);
            f27915c = new C7245b(true, null);
        }

        public C7245b(boolean z, Throwable th) {
            this.f27917a = z;
            this.f27918b = th;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.zzdxq$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq$c.class */
    public static abstract class AbstractC7246c {
        public AbstractC7246c() {
        }

        /* renamed from: a */
        public abstract void mo13047a(C7255k kVar, C7255k kVar2);

        /* renamed from: a */
        public abstract void mo13046a(C7255k kVar, Thread thread);

        /* renamed from: a */
        public abstract boolean mo13045a(zzdxq<?> zzdxqVar, C7248e eVar, C7248e eVar2);

        /* renamed from: a */
        public abstract boolean mo13044a(zzdxq<?> zzdxqVar, C7255k kVar, C7255k kVar2);

        /* renamed from: a */
        public abstract boolean mo13043a(zzdxq<?> zzdxqVar, Object obj, Object obj2);
    }

    /* renamed from: com.google.android.gms.internal.ads.zzdxq$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq$d.class */
    public static final class C7247d extends AbstractC7246c {

        /* renamed from: a */
        public final AtomicReferenceFieldUpdater<C7255k, Thread> f27919a;

        /* renamed from: b */
        public final AtomicReferenceFieldUpdater<C7255k, C7255k> f27920b;

        /* renamed from: c */
        public final AtomicReferenceFieldUpdater<zzdxq, C7255k> f27921c;

        /* renamed from: d */
        public final AtomicReferenceFieldUpdater<zzdxq, C7248e> f27922d;

        /* renamed from: e */
        public final AtomicReferenceFieldUpdater<zzdxq, Object> f27923e;

        public C7247d(AtomicReferenceFieldUpdater<C7255k, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C7255k, C7255k> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<zzdxq, C7255k> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<zzdxq, C7248e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<zzdxq, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f27919a = atomicReferenceFieldUpdater;
            this.f27920b = atomicReferenceFieldUpdater2;
            this.f27921c = atomicReferenceFieldUpdater3;
            this.f27922d = atomicReferenceFieldUpdater4;
            this.f27923e = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final void mo13047a(C7255k kVar, C7255k kVar2) {
            this.f27920b.lazySet(kVar, kVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final void mo13046a(C7255k kVar, Thread thread) {
            this.f27919a.lazySet(kVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final boolean mo13045a(zzdxq<?> zzdxqVar, C7248e eVar, C7248e eVar2) {
            return this.f27922d.compareAndSet(zzdxqVar, eVar, eVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final boolean mo13044a(zzdxq<?> zzdxqVar, C7255k kVar, C7255k kVar2) {
            return this.f27921c.compareAndSet(zzdxqVar, kVar, kVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final boolean mo13043a(zzdxq<?> zzdxqVar, Object obj, Object obj2) {
            return this.f27923e.compareAndSet(zzdxqVar, obj, obj2);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.zzdxq$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq$e.class */
    public static final class C7248e {

        /* renamed from: d */
        public static final C7248e f27924d = new C7248e(null, null);

        /* renamed from: a */
        public final Runnable f27925a;

        /* renamed from: b */
        public final Executor f27926b;

        /* renamed from: c */
        public C7248e f27927c;

        public C7248e(Runnable runnable, Executor executor) {
            this.f27925a = runnable;
            this.f27926b = executor;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.zzdxq$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq$f.class */
    public static final class C7249f extends AbstractC7246c {
        public C7249f() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final void mo13047a(C7255k kVar, C7255k kVar2) {
            kVar.f27938b = kVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final void mo13046a(C7255k kVar, Thread thread) {
            kVar.f27937a = thread;
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final boolean mo13045a(zzdxq<?> zzdxqVar, C7248e eVar, C7248e eVar2) {
            synchronized (zzdxqVar) {
                if (zzdxqVar.f27913b != eVar) {
                    return false;
                }
                zzdxqVar.f27913b = eVar2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final boolean mo13044a(zzdxq<?> zzdxqVar, C7255k kVar, C7255k kVar2) {
            synchronized (zzdxqVar) {
                if (zzdxqVar.f27914c != kVar) {
                    return false;
                }
                zzdxqVar.f27914c = kVar2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final boolean mo13043a(zzdxq<?> zzdxqVar, Object obj, Object obj2) {
            synchronized (zzdxqVar) {
                if (zzdxqVar.f27912a != obj) {
                    return false;
                }
                zzdxqVar.f27912a = obj2;
                return true;
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.zzdxq$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq$g.class */
    public static final class RunnableC7250g<V> implements Runnable {

        /* renamed from: a */
        public final zzdxq<V> f27928a;

        /* renamed from: b */
        public final zzdzc<? extends V> f27929b;

        public RunnableC7250g(zzdxq<V> zzdxqVar, zzdzc<? extends V> zzdzcVar) {
            this.f27928a = zzdxqVar;
            this.f27929b = zzdzcVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f27928a.f27912a == this) {
                if (zzdxq.f27910f.mo13043a((zzdxq<?>) this.f27928a, (Object) this, zzdxq.m13059b((zzdzc<?>) this.f27929b))) {
                    zzdxq.m13068a((zzdxq<?>) this.f27928a);
                }
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.zzdxq$h */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq$h.class */
    public static class C7251h<V> extends zzdxq<V> implements AbstractC7252i<V> {
        @Override // com.google.android.gms.internal.ads.zzdxq, java.util.concurrent.Future
        public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (V) zzdxq.super.get(j, timeUnit);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.zzdxq$i */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq$i.class */
    public interface AbstractC7252i<V> extends zzdzc<V> {
    }

    /* renamed from: com.google.android.gms.internal.ads.zzdxq$j */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq$j.class */
    public static final class C7253j extends AbstractC7246c {

        /* renamed from: a */
        public static final Unsafe f27930a;

        /* renamed from: b */
        public static final long f27931b;

        /* renamed from: c */
        public static final long f27932c;

        /* renamed from: d */
        public static final long f27933d;

        /* renamed from: e */
        public static final long f27934e;

        /* renamed from: f */
        public static final long f27935f;

        /* renamed from: com.google.android.gms.internal.ads.zzdxq$j$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq$j$a.class */
        public class C7254a implements PrivilegedExceptionAction<Unsafe> {
            @Override // java.security.PrivilegedExceptionAction
            public /* synthetic */ Unsafe run() throws Exception {
                Field[] declaredFields;
                for (Field field : Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj = field.get(null);
                    if (Unsafe.class.isInstance(obj)) {
                        return (Unsafe) Unsafe.class.cast(obj);
                    }
                }
                throw new NoSuchFieldError("the Unsafe");
            }
        }

        static {
            Unsafe unsafe;
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException e) {
                try {
                    unsafe = (Unsafe) AccessController.doPrivileged(new C7254a());
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            }
            try {
                f27932c = unsafe.objectFieldOffset(zzdxq.class.getDeclaredField("c"));
                f27931b = unsafe.objectFieldOffset(zzdxq.class.getDeclaredField("b"));
                f27933d = unsafe.objectFieldOffset(zzdxq.class.getDeclaredField("a"));
                f27934e = unsafe.objectFieldOffset(C7255k.class.getDeclaredField("a"));
                f27935f = unsafe.objectFieldOffset(C7255k.class.getDeclaredField("b"));
                f27930a = unsafe;
            } catch (Exception e3) {
                zzdwh.m13082b(e3);
                throw new RuntimeException(e3);
            }
        }

        public C7253j() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final void mo13047a(C7255k kVar, C7255k kVar2) {
            f27930a.putObject(kVar, f27935f, kVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final void mo13046a(C7255k kVar, Thread thread) {
            f27930a.putObject(kVar, f27934e, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final boolean mo13045a(zzdxq<?> zzdxqVar, C7248e eVar, C7248e eVar2) {
            return f27930a.compareAndSwapObject(zzdxqVar, f27931b, eVar, eVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final boolean mo13044a(zzdxq<?> zzdxqVar, C7255k kVar, C7255k kVar2) {
            return f27930a.compareAndSwapObject(zzdxqVar, f27932c, kVar, kVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdxq.AbstractC7246c
        /* renamed from: a */
        public final boolean mo13043a(zzdxq<?> zzdxqVar, Object obj, Object obj2) {
            return f27930a.compareAndSwapObject(zzdxqVar, f27933d, obj, obj2);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.zzdxq$k */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq$k.class */
    public static final class C7255k {

        /* renamed from: c */
        public static final C7255k f27936c = new C7255k(false);

        /* renamed from: a */
        public volatile Thread f27937a;

        /* renamed from: b */
        public volatile C7255k f27938b;

        public C7255k() {
            zzdxq.f27910f.mo13046a(this, Thread.currentThread());
        }

        public C7255k(boolean z) {
        }

        /* renamed from: a */
        public final void m13042a(C7255k kVar) {
            zzdxq.f27910f.mo13047a(this, kVar);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq$zzc.class */
    public static final class zzc {

        /* renamed from: b */
        public static final zzc f27939b = new zzc(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.ads.zzdxq.zzc.1
            @Override // java.lang.Throwable
            public Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });

        /* renamed from: a */
        public final Throwable f27940a;

        public zzc(Throwable th) {
            zzdwd.m13096a(th);
            this.f27940a = th;
        }
    }

    static {
        boolean z;
        Throwable th;
        Throwable th2;
        AbstractC7246c cVar;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException e) {
            z = false;
        }
        f27908d = z;
        f27909e = Logger.getLogger(zzdxq.class.getName());
        try {
            cVar = new C7253j();
            th2 = null;
            th = null;
        } catch (Throwable th3) {
            th2 = th3;
            try {
                cVar = new C7247d(AtomicReferenceFieldUpdater.newUpdater(C7255k.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C7255k.class, C7255k.class, "b"), AtomicReferenceFieldUpdater.newUpdater(zzdxq.class, C7255k.class, "c"), AtomicReferenceFieldUpdater.newUpdater(zzdxq.class, C7248e.class, "b"), AtomicReferenceFieldUpdater.newUpdater(zzdxq.class, Object.class, "a"));
                th = null;
            } catch (Throwable th4) {
                th = th4;
                cVar = new C7249f();
            }
        }
        f27910f = cVar;
        if (th != null) {
            f27909e.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            f27909e.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        f27911g = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [com.google.android.gms.internal.ads.zzdxq$c] */
    /* renamed from: a */
    public static void m13068a(zzdxq<?> zzdxqVar) {
        C7248e eVar;
        C7248e eVar2;
        C7248e eVar3 = null;
        zzdxq zzdxqVar2 = zzdxqVar;
        while (true) {
            C7255k kVar = zzdxqVar2.f27914c;
            if (f27910f.mo13044a((zzdxq<?>) zzdxqVar2, kVar, C7255k.f27936c)) {
                while (kVar != null) {
                    Thread thread = kVar.f27937a;
                    if (thread != null) {
                        kVar.f27937a = null;
                        LockSupport.unpark(thread);
                    }
                    kVar = kVar.f27938b;
                }
                zzdxqVar2.mo13033b();
                do {
                    eVar = zzdxqVar2.f27913b;
                } while (!f27910f.mo13045a((zzdxq<?>) zzdxqVar2, eVar, C7248e.f27924d));
                C7248e eVar4 = eVar;
                while (true) {
                    eVar2 = eVar3;
                    if (eVar4 != null) {
                        eVar4 = eVar4.f27927c;
                        eVar4.f27927c = eVar3;
                        eVar3 = eVar4;
                    }
                }
                while (eVar2 != null) {
                    C7248e eVar5 = eVar2.f27927c;
                    Runnable runnable = eVar2.f27925a;
                    if (runnable instanceof RunnableC7250g) {
                        RunnableC7250g gVar = (RunnableC7250g) runnable;
                        zzdxq zzdxqVar3 = (zzdxq<V>) gVar.f27928a;
                        if (zzdxqVar3.f27912a == gVar) {
                            eVar3 = eVar5;
                            zzdxqVar2 = zzdxqVar3;
                            if (!f27910f.mo13043a(zzdxqVar3, gVar, m13059b((zzdzc<?>) gVar.f27929b))) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        m13057b(runnable, eVar2.f27926b);
                    }
                    eVar2 = eVar5;
                }
                return;
            }
        }
    }

    /* renamed from: b */
    public static Object m13059b(zzdzc<?> zzdzcVar) {
        Throwable a;
        if (zzdzcVar instanceof AbstractC7252i) {
            Object obj = ((zzdxq) zzdzcVar).f27912a;
            Object obj2 = obj;
            if (obj instanceof C7245b) {
                C7245b bVar = (C7245b) obj;
                obj2 = obj;
                if (bVar.f27917a) {
                    obj2 = bVar.f27918b != null ? new C7245b(false, bVar.f27918b) : C7245b.f27916d;
                }
            }
            return obj2;
        } else if ((zzdzcVar instanceof zzdzt) && (a = zzdzw.m12967a((zzdzt) zzdzcVar)) != null) {
            return new zzc(a);
        } else {
            boolean isCancelled = zzdzcVar.isCancelled();
            if ((!f27908d) && isCancelled) {
                return C7245b.f27916d;
            }
            try {
                Object b = m13056b((Future<Object>) zzdzcVar);
                if (!isCancelled) {
                    return b == null ? f27911g : b;
                }
                String valueOf = String.valueOf(zzdzcVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 84);
                sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb.append(valueOf);
                return new C7245b(false, new IllegalArgumentException(sb.toString()));
            } catch (CancellationException e) {
                if (isCancelled) {
                    return new C7245b(false, e);
                }
                String valueOf2 = String.valueOf(zzdzcVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 77);
                sb2.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
                sb2.append(valueOf2);
                return new zzc(new IllegalArgumentException(sb2.toString(), e));
            } catch (ExecutionException e2) {
                if (!isCancelled) {
                    return new zzc(e2.getCause());
                }
                String valueOf3 = String.valueOf(zzdzcVar);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 84);
                sb3.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb3.append(valueOf3);
                return new C7245b(false, new IllegalArgumentException(sb3.toString(), e2));
            } catch (Throwable th) {
                return new zzc(th);
            }
        }
    }

    /* renamed from: b */
    public static V m13058b(Object obj) throws ExecutionException {
        if (obj instanceof C7245b) {
            Throwable th = ((C7245b) obj).f27918b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (!(obj instanceof zzc)) {
            V v = (V) obj;
            if (obj == f27911g) {
                v = null;
            }
            return v;
        } else {
            throw new ExecutionException(((zzc) obj).f27940a);
        }
    }

    /* renamed from: b */
    public static <V> V m13056b(Future<V> future) throws ExecutionException {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException e) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    /* renamed from: b */
    public static void m13057b(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f27909e;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", sb.toString(), (Throwable) e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzt
    /* renamed from: a */
    public final Throwable mo12969a() {
        if (!(this instanceof AbstractC7252i)) {
            return null;
        }
        Object obj = this.f27912a;
        if (obj instanceof zzc) {
            return ((zzc) obj).f27940a;
        }
        return null;
    }

    /* renamed from: a */
    public final void m13069a(C7255k kVar) {
        kVar.f27937a = null;
        while (true) {
            C7255k kVar2 = this.f27914c;
            if (kVar2 != C7255k.f27936c) {
                kVar2 = null;
                while (kVar2 != null) {
                    C7255k kVar3 = kVar2.f27938b;
                    if (kVar2.f27937a == null) {
                        if (kVar2 != null) {
                            kVar2.f27938b = kVar3;
                            kVar2 = kVar2;
                            if (kVar2.f27937a == null) {
                                break;
                            }
                        } else if (f27910f.mo13044a((zzdxq<?>) this, kVar2, kVar3)) {
                            kVar2 = kVar2;
                        }
                    }
                    kVar2 = kVar3;
                }
                return;
            }
            return;
        }
    }

    /* renamed from: a */
    public void mo12976a(Runnable runnable, Executor executor) {
        C7248e eVar;
        zzdwd.m13095a(runnable, "Runnable was null.");
        zzdwd.m13095a(executor, "Executor was null.");
        if (!isDone()) {
            C7248e eVar2 = this.f27913b;
            if (eVar2 != C7248e.f27924d) {
                C7248e eVar3 = new C7248e(runnable, executor);
                do {
                    eVar3.f27927c = eVar2;
                    if (!f27910f.mo13045a((zzdxq<?>) this, eVar2, eVar3)) {
                        eVar = this.f27913b;
                        eVar2 = eVar;
                    } else {
                        return;
                    }
                } while (eVar != C7248e.f27924d);
            }
        }
        m13057b(runnable, executor);
    }

    /* renamed from: a */
    public final void m13063a(StringBuilder sb) {
        try {
            Object b = m13056b((Future<Object>) this);
            sb.append("SUCCESS, result=[");
            m13062a(sb, b);
            sb.append("]");
        } catch (CancellationException e) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    /* renamed from: a */
    public final void m13062a(StringBuilder sb, Object obj) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (RuntimeException | StackOverflowError e) {
            sb.append("Exception thrown from implementation: ");
            sb.append(e.getClass());
        }
    }

    /* renamed from: a */
    public final void m13061a(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(m13051e());
        }
    }

    /* renamed from: a */
    public final boolean m13064a(zzdzc<? extends V> zzdzcVar) {
        zzc zzcVar;
        zzdwd.m13096a(zzdzcVar);
        Object obj = this.f27912a;
        Object obj2 = obj;
        if (obj == null) {
            if (zzdzcVar.isDone()) {
                if (!f27910f.mo13043a((zzdxq<?>) this, (Object) null, m13059b((zzdzc<?>) zzdzcVar))) {
                    return false;
                }
                m13068a((zzdxq<?>) this);
                return true;
            }
            RunnableC7250g gVar = new RunnableC7250g(this, zzdzcVar);
            if (f27910f.mo13043a((zzdxq<?>) this, (Object) null, (Object) gVar)) {
                try {
                    zzdzcVar.mo12976a(gVar, zzdyj.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        zzcVar = new zzc(th);
                    } catch (Throwable th2) {
                        zzcVar = zzc.f27939b;
                    }
                    f27910f.mo13043a((zzdxq<?>) this, (Object) gVar, (Object) zzcVar);
                    return true;
                }
            } else {
                obj2 = this.f27912a;
            }
        }
        if (!(obj2 instanceof C7245b)) {
            return false;
        }
        zzdzcVar.cancel(((C7245b) obj2).f27917a);
        return false;
    }

    /* renamed from: a */
    public boolean mo12972a(V v) {
        Object obj = v;
        if (v == null) {
            obj = f27911g;
        }
        if (!f27910f.mo13043a((zzdxq<?>) this, (Object) null, obj)) {
            return false;
        }
        m13068a((zzdxq<?>) this);
        return true;
    }

    /* renamed from: a */
    public boolean mo12971a(Throwable th) {
        zzdwd.m13096a(th);
        if (!f27910f.mo13043a((zzdxq<?>) this, (Object) null, (Object) new zzc(th))) {
            return false;
        }
        m13068a((zzdxq<?>) this);
        return true;
    }

    /* renamed from: b */
    public void mo13033b() {
    }

    /* renamed from: c */
    public void mo13055c() {
    }

    public boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f27912a;
        if ((obj == null) || (obj instanceof RunnableC7250g)) {
            C7245b bVar = f27908d ? new C7245b(z, new CancellationException("Future.cancel() was called.")) : z ? C7245b.f27915c : C7245b.f27916d;
            z2 = false;
            zzdxq<V> zzdxqVar = this;
            while (true) {
                if (f27910f.mo13043a((zzdxq<?>) zzdxqVar, obj, (Object) bVar)) {
                    if (z) {
                        zzdxqVar.mo13055c();
                    }
                    m13068a((zzdxq<?>) zzdxqVar);
                    z2 = true;
                    if (!(obj instanceof RunnableC7250g)) {
                        break;
                    }
                    zzdzc<? extends V> zzdzcVar = ((RunnableC7250g) obj).f27929b;
                    if (!(zzdzcVar instanceof AbstractC7252i)) {
                        zzdzcVar.cancel(z);
                        z2 = true;
                        break;
                    }
                    zzdxqVar = (zzdxq) zzdzcVar;
                    obj = zzdxqVar.f27912a;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof RunnableC7250g)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = zzdxqVar.f27912a;
                    obj = obj2;
                    if (!(obj2 instanceof RunnableC7250g)) {
                        break;
                    }
                }
            }
        } else {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: d */
    public String mo13029d() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
        StringBuilder sb = new StringBuilder(41);
        sb.append("remaining delay=[");
        sb.append(delay);
        sb.append(" ms]");
        return sb.toString();
    }

    /* renamed from: e */
    public final boolean m13051e() {
        Object obj = this.f27912a;
        return (obj instanceof C7245b) && ((C7245b) obj).f27917a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
        if (java.lang.Thread.interrupted() != false) goto L_0x0075;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        r0 = r5.f27912a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005b, code lost:
        if (r0 == null) goto L_0x0063;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006d, code lost:
        if ((r7 & (!(r0 instanceof com.google.android.gms.internal.ads.zzdxq.RunnableC7250g))) == false) goto L_0x004b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0074, code lost:
        return (V) m13058b(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0075, code lost:
        m13069a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0081, code lost:
        throw new java.lang.InterruptedException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get() throws java.lang.InterruptedException, java.util.concurrent.ExecutionException {
        /*
            r5 = this;
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L_0x009b
            r0 = r5
            java.lang.Object r0 = r0.f27912a
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0014
            r0 = 1
            r7 = r0
            goto L_0x0016
        L_0x0014:
            r0 = 0
            r7 = r0
        L_0x0016:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.zzdxq.RunnableC7250g
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0026
            r0 = r6
            java.lang.Object r0 = m13058b(r0)
            return r0
        L_0x0026:
            r0 = r5
            com.google.android.gms.internal.ads.zzdxq$k r0 = r0.f27914c
            r6 = r0
            r0 = r6
            com.google.android.gms.internal.ads.zzdxq$k r1 = com.google.android.gms.internal.ads.zzdxq.C7255k.f27936c
            if (r0 == r1) goto L_0x0093
            com.google.android.gms.internal.ads.zzdxq$k r0 = new com.google.android.gms.internal.ads.zzdxq$k
            r1 = r0
            r1.<init>()
            r8 = r0
        L_0x003a:
            r0 = r8
            r1 = r6
            r0.m13042a(r1)
            com.google.android.gms.internal.ads.zzdxq$c r0 = com.google.android.gms.internal.ads.zzdxq.f27910f
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.mo13044a(r1, r2, r3)
            if (r0 == 0) goto L_0x0082
        L_0x004b:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L_0x0075
            r0 = r5
            java.lang.Object r0 = r0.f27912a
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0063
            r0 = 1
            r7 = r0
            goto L_0x0065
        L_0x0063:
            r0 = 0
            r7 = r0
        L_0x0065:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.zzdxq.RunnableC7250g
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x004b
            r0 = r6
            java.lang.Object r0 = m13058b(r0)
            return r0
        L_0x0075:
            r0 = r5
            r1 = r8
            r0.m13069a(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0082:
            r0 = r5
            com.google.android.gms.internal.ads.zzdxq$k r0 = r0.f27914c
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            com.google.android.gms.internal.ads.zzdxq$k r1 = com.google.android.gms.internal.ads.zzdxq.C7255k.f27936c
            if (r0 != r1) goto L_0x003a
        L_0x0093:
            r0 = r5
            java.lang.Object r0 = r0.f27912a
            java.lang.Object r0 = m13058b(r0)
            return r0
        L_0x009b:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            r6 = r0
            goto L_0x00a8
        L_0x00a6:
            r0 = r6
            throw r0
        L_0x00a8:
            goto L_0x00a6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdxq.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0082, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008b, code lost:
        if (java.lang.Thread.interrupted() != false) goto L_0x00d3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
        r0 = r6.f27912a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0096, code lost:
        if (r0 == null) goto L_0x009f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0099, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009f, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ac, code lost:
        if ((r13 & (!(r0 instanceof com.google.android.gms.internal.ads.zzdxq.RunnableC7250g))) == false) goto L_0x00b5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b4, code lost:
        return (V) m13058b(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b5, code lost:
        r16 = r14 - java.lang.System.nanoTime();
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c7, code lost:
        if (r16 >= 1000) goto L_0x0082;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ca, code lost:
        m13069a(r0);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d3, code lost:
        m13069a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e0, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2, types: [long] */
    /* JADX WARN: Type inference failed for: r16v6, types: [long] */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(long r7, java.util.concurrent.TimeUnit r9) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException, java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 780
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdxq.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    public boolean isCancelled() {
        return this.f27912a instanceof C7245b;
    }

    public boolean isDone() {
        Object obj = this.f27912a;
        return (!(obj instanceof RunnableC7250g)) & (obj != null);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m13063a(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.f27912a;
            if (obj instanceof RunnableC7250g) {
                sb.append(", setFuture=[");
                m13062a(sb, ((RunnableC7250g) obj).f27929b);
                sb.append("]");
            } else {
                try {
                    str = zzdwf.m13090a(mo13029d());
                } catch (RuntimeException | StackOverflowError e) {
                    String valueOf = String.valueOf(e.getClass());
                    StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 38);
                    sb2.append("Exception thrown from implementation: ");
                    sb2.append(valueOf);
                    str = sb2.toString();
                }
                if (str != null) {
                    sb.append(", info=[");
                    sb.append(str);
                    sb.append("]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                m13063a(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
