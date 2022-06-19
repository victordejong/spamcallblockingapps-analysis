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
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyk.class */
public class zzdyk<V> extends zzeao implements zzdzw<V> {
    private static final boolean GENERATE_CANCELLATION_CAUSES;
    private static final Object NULL;
    private static final Logger zzhzc;
    private static final zzb zzhzd;
    @NullableDecl
    private volatile zze listeners;
    @NullableDecl
    private volatile Object value;
    @NullableDecl
    private volatile zzk waiters;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyk$zza.class */
    public static final class zza {
        static final zza zzhze;
        static final zza zzhzf;
        @NullableDecl
        final Throwable cause;
        final boolean wasInterrupted;

        static {
            if (zzdyk.GENERATE_CANCELLATION_CAUSES) {
                zzhzf = null;
                zzhze = null;
                return;
            }
            zzhzf = new zza(false, null);
            zzhze = new zza(true, null);
        }

        zza(boolean z, @NullableDecl Throwable th) {
            this.wasInterrupted = z;
            this.cause = th;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyk$zzb.class */
    public static abstract class zzb {
        private zzb() {
        }

        abstract void zza(zzk zzkVar, zzk zzkVar2);

        abstract void zza(zzk zzkVar, Thread thread);

        abstract boolean zza(zzdyk<?> zzdykVar, zze zzeVar, zze zzeVar2);

        abstract boolean zza(zzdyk<?> zzdykVar, zzk zzkVar, zzk zzkVar2);

        abstract boolean zza(zzdyk<?> zzdykVar, Object obj, Object obj2);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyk$zzc.class */
    public static final class zzc {
        static final zzc zzhzg = new zzc(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.ads.zzdyk.zzc.1
            @Override // java.lang.Throwable
            public Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });
        final Throwable exception;

        zzc(Throwable th) {
            this.exception = (Throwable) zzdwl.checkNotNull(th);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyk$zzd.class */
    private static final class zzd extends zzb {
        final AtomicReferenceFieldUpdater<zzdyk, zze> listenersUpdater;
        final AtomicReferenceFieldUpdater<zzdyk, Object> valueUpdater;
        final AtomicReferenceFieldUpdater<zzk, zzk> waiterNextUpdater;
        final AtomicReferenceFieldUpdater<zzk, Thread> waiterThreadUpdater;
        final AtomicReferenceFieldUpdater<zzdyk, zzk> waitersUpdater;

        zzd(AtomicReferenceFieldUpdater<zzk, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<zzk, zzk> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<zzdyk, zzk> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<zzdyk, zze> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<zzdyk, Object> atomicReferenceFieldUpdater5) {
            super();
            this.waiterThreadUpdater = atomicReferenceFieldUpdater;
            this.waiterNextUpdater = atomicReferenceFieldUpdater2;
            this.waitersUpdater = atomicReferenceFieldUpdater3;
            this.listenersUpdater = atomicReferenceFieldUpdater4;
            this.valueUpdater = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final void zza(zzk zzkVar, zzk zzkVar2) {
            this.waiterNextUpdater.lazySet(zzkVar, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final void zza(zzk zzkVar, Thread thread) {
            this.waiterThreadUpdater.lazySet(zzkVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final boolean zza(zzdyk<?> zzdykVar, zze zzeVar, zze zzeVar2) {
            return this.listenersUpdater.compareAndSet(zzdykVar, zzeVar, zzeVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final boolean zza(zzdyk<?> zzdykVar, zzk zzkVar, zzk zzkVar2) {
            return this.waitersUpdater.compareAndSet(zzdykVar, zzkVar, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final boolean zza(zzdyk<?> zzdykVar, Object obj, Object obj2) {
            return this.valueUpdater.compareAndSet(zzdykVar, obj, obj2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyk$zze.class */
    public static final class zze {
        static final zze zzhzh = new zze(null, null);
        final Executor executor;
        @NullableDecl
        zze next;
        final Runnable task;

        zze(Runnable runnable, Executor executor) {
            this.task = runnable;
            this.executor = executor;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyk$zzf.class */
    private static final class zzf extends zzb {
        private zzf() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final void zza(zzk zzkVar, zzk zzkVar2) {
            zzkVar.next = zzkVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final void zza(zzk zzkVar, Thread thread) {
            zzkVar.thread = thread;
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final boolean zza(zzdyk<?> zzdykVar, zze zzeVar, zze zzeVar2) {
            synchronized (zzdykVar) {
                if (((zzdyk) zzdykVar).listeners == zzeVar) {
                    ((zzdyk) zzdykVar).listeners = zzeVar2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final boolean zza(zzdyk<?> zzdykVar, zzk zzkVar, zzk zzkVar2) {
            synchronized (zzdykVar) {
                if (((zzdyk) zzdykVar).waiters == zzkVar) {
                    ((zzdyk) zzdykVar).waiters = zzkVar2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final boolean zza(zzdyk<?> zzdykVar, Object obj, Object obj2) {
            synchronized (zzdykVar) {
                if (((zzdyk) zzdykVar).value == obj) {
                    ((zzdyk) zzdykVar).value = obj2;
                    return true;
                }
                return false;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyk$zzg.class */
    public static final class zzg<V> implements Runnable {
        final zzdzw<? extends V> future;
        final zzdyk<V> zzhzi;

        zzg(zzdyk<V> zzdykVar, zzdzw<? extends V> zzdzwVar) {
            this.zzhzi = zzdykVar;
            this.future = zzdzwVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((zzdyk) this.zzhzi).value != this) {
                return;
            }
            if (!zzdyk.zzhzd.zza((zzdyk<?>) this.zzhzi, (Object) this, zzdyk.getFutureValue(this.future))) {
                return;
            }
            zzdyk.zza((zzdyk<?>) this.zzhzi);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyk$zzh.class */
    public static class zzh<V> extends zzdyk<V> implements zzi<V> {
        @Override // com.google.android.gms.internal.ads.zzdyk, java.util.concurrent.Future
        public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (V) zzdyk.super.get(j, timeUnit);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyk$zzi.class */
    public interface zzi<V> extends zzdzw<V> {
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyk$zzj.class */
    private static final class zzj extends zzb {
        static final Unsafe zzhzj;
        static final long zzhzk;
        static final long zzhzl;
        static final long zzhzm;
        static final long zzhzn;
        static final long zzhzo;

        static {
            Unsafe unsafe;
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException e) {
                try {
                    unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.android.gms.internal.ads.zzdyk.zzj.1
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
                    });
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            }
            try {
                zzhzl = unsafe.objectFieldOffset(zzdyk.class.getDeclaredField("waiters"));
                zzhzk = unsafe.objectFieldOffset(zzdyk.class.getDeclaredField("listeners"));
                zzhzm = unsafe.objectFieldOffset(zzdyk.class.getDeclaredField("value"));
                zzhzn = unsafe.objectFieldOffset(zzk.class.getDeclaredField("thread"));
                zzhzo = unsafe.objectFieldOffset(zzk.class.getDeclaredField("next"));
                zzhzj = unsafe;
            } catch (Exception e3) {
                zzdwv.zzi(e3);
                throw new RuntimeException(e3);
            }
        }

        private zzj() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final void zza(zzk zzkVar, zzk zzkVar2) {
            zzhzj.putObject(zzkVar, zzhzo, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final void zza(zzk zzkVar, Thread thread) {
            zzhzj.putObject(zzkVar, zzhzn, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final boolean zza(zzdyk<?> zzdykVar, zze zzeVar, zze zzeVar2) {
            return zzhzj.compareAndSwapObject(zzdykVar, zzhzk, zzeVar, zzeVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final boolean zza(zzdyk<?> zzdykVar, zzk zzkVar, zzk zzkVar2) {
            return zzhzj.compareAndSwapObject(zzdykVar, zzhzl, zzkVar, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdyk.zzb
        final boolean zza(zzdyk<?> zzdykVar, Object obj, Object obj2) {
            return zzhzj.compareAndSwapObject(zzdykVar, zzhzm, obj, obj2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyk$zzk.class */
    public static final class zzk {
        static final zzk zzhzp = new zzk(false);
        @NullableDecl
        volatile zzk next;
        @NullableDecl
        volatile Thread thread;

        zzk() {
            zzdyk.zzhzd.zza(this, Thread.currentThread());
        }

        private zzk(boolean z) {
        }

        final void zzb(zzk zzkVar) {
            zzdyk.zzhzd.zza(this, zzkVar);
        }
    }

    static {
        boolean z;
        Throwable th;
        zzb zzbVar;
        Throwable th2;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException e) {
            z = false;
        }
        GENERATE_CANCELLATION_CAUSES = z;
        zzhzc = Logger.getLogger(zzdyk.class.getName());
        try {
            zzbVar = new zzj();
            th2 = null;
            th = null;
        } catch (Throwable th3) {
            th2 = th3;
            try {
                zzbVar = new zzd(AtomicReferenceFieldUpdater.newUpdater(zzk.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(zzk.class, zzk.class, "next"), AtomicReferenceFieldUpdater.newUpdater(zzdyk.class, zzk.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(zzdyk.class, zze.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(zzdyk.class, Object.class, "value"));
                th = null;
            } catch (Throwable th4) {
                th = th4;
                zzbVar = new zzf();
            }
        }
        zzhzd = zzbVar;
        if (th != null) {
            Logger logger = zzhzc;
            logger.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            logger.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        NULL = new Object();
    }

    public static Object getFutureValue(zzdzw<?> zzdzwVar) {
        Throwable zza2;
        if (zzdzwVar instanceof zzi) {
            Object obj = ((zzdyk) zzdzwVar).value;
            zza zzaVar = obj;
            if (obj instanceof zza) {
                zza zzaVar2 = (zza) obj;
                zzaVar = obj;
                if (zzaVar2.wasInterrupted) {
                    zzaVar = zzaVar2.cause != null ? new zza(false, zzaVar2.cause) : zza.zzhzf;
                }
            }
            return zzaVar;
        } else if ((zzdzwVar instanceof zzeao) && (zza2 = zzean.zza((zzeao) zzdzwVar)) != null) {
            return new zzc(zza2);
        } else {
            boolean isCancelled = zzdzwVar.isCancelled();
            if ((!GENERATE_CANCELLATION_CAUSES) && isCancelled) {
                return zza.zzhzf;
            }
            try {
                Object uninterruptibly = getUninterruptibly(zzdzwVar);
                if (!isCancelled) {
                    return uninterruptibly == null ? NULL : uninterruptibly;
                }
                String valueOf = String.valueOf(zzdzwVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 84);
                sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb.append(valueOf);
                return new zza(false, new IllegalArgumentException(sb.toString()));
            } catch (CancellationException e) {
                if (isCancelled) {
                    return new zza(false, e);
                }
                String valueOf2 = String.valueOf(zzdzwVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 77);
                sb2.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
                sb2.append(valueOf2);
                return new zzc(new IllegalArgumentException(sb2.toString(), e));
            } catch (ExecutionException e2) {
                if (!isCancelled) {
                    return new zzc(e2.getCause());
                }
                String valueOf3 = String.valueOf(zzdzwVar);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 84);
                sb3.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb3.append(valueOf3);
                return new zza(false, new IllegalArgumentException(sb3.toString(), e2));
            } catch (Throwable th) {
                return new zzc(th);
            }
        }
    }

    private static <V> V getUninterruptibly(Future<V> future) throws ExecutionException {
        boolean z;
        V v;
        boolean z2 = false;
        while (true) {
            try {
                z = z2;
                v = future.get();
                break;
            } catch (InterruptedException e) {
                z2 = true;
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

    private final void zza(zzk zzkVar) {
        zzkVar.thread = null;
        while (true) {
            zzk zzkVar2 = this.waiters;
            if (zzkVar2 == zzk.zzhzp) {
                return;
            }
            zzk zzkVar3 = null;
            while (zzkVar2 != null) {
                zzk zzkVar4 = zzkVar2.next;
                if (zzkVar2.thread == null) {
                    if (zzkVar3 != null) {
                        zzkVar3.next = zzkVar4;
                        zzkVar2 = zzkVar3;
                        if (zzkVar3.thread == null) {
                            break;
                        }
                    } else if (zzhzd.zza((zzdyk<?>) this, zzkVar2, zzkVar4)) {
                        zzkVar2 = zzkVar3;
                    }
                }
                zzkVar3 = zzkVar2;
                zzkVar2 = zzkVar4;
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [com.google.android.gms.internal.ads.zzdyk$zzb] */
    public static void zza(zzdyk<?> zzdykVar) {
        zze zzeVar;
        zze zzeVar2;
        zzdyk zzdykVar2 = zzdykVar;
        zze zzeVar3 = null;
        while (true) {
            zzk zzkVar = zzdykVar2.waiters;
            if (zzhzd.zza((zzdyk<?>) zzdykVar2, zzkVar, zzk.zzhzp)) {
                while (zzkVar != null) {
                    Thread thread = zzkVar.thread;
                    if (thread != null) {
                        zzkVar.thread = null;
                        LockSupport.unpark(thread);
                    }
                    zzkVar = zzkVar.next;
                }
                zzdykVar2.afterDone();
                do {
                    zzeVar = zzdykVar2.listeners;
                } while (!zzhzd.zza((zzdyk<?>) zzdykVar2, zzeVar, zze.zzhzh));
                zze zzeVar4 = zzeVar;
                while (true) {
                    zze zzeVar5 = zzeVar4;
                    zzeVar2 = zzeVar3;
                    if (zzeVar5 != null) {
                        zzeVar4 = zzeVar5.next;
                        zzeVar5.next = zzeVar3;
                        zzeVar3 = zzeVar5;
                    }
                }
                while (zzeVar2 != null) {
                    zze zzeVar6 = zzeVar2.next;
                    Runnable runnable = zzeVar2.task;
                    if (runnable instanceof zzg) {
                        zzg zzgVar = (zzg) runnable;
                        zzdyk zzdykVar3 = (zzdyk<V>) zzgVar.zzhzi;
                        if (zzdykVar3.value == zzgVar) {
                            zzeVar3 = zzeVar6;
                            zzdykVar2 = zzdykVar3;
                            if (!zzhzd.zza(zzdykVar3, zzgVar, getFutureValue(zzgVar.future))) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        zza(runnable, zzeVar2.executor);
                    }
                    zzeVar2 = zzeVar6;
                }
                return;
            }
        }
    }

    private static void zza(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = zzhzc;
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

    private final void zza(StringBuilder sb) {
        try {
            Object uninterruptibly = getUninterruptibly(this);
            sb.append("SUCCESS, result=[");
            zza(sb, uninterruptibly);
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

    private final void zza(StringBuilder sb, Object obj) {
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

    private static V zzaf(Object obj) throws ExecutionException {
        if (obj instanceof zza) {
            Throwable th = ((zza) obj).cause;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (obj instanceof zzc) {
            throw new ExecutionException(((zzc) obj).exception);
        } else {
            Object obj2 = obj;
            if (obj == NULL) {
                obj2 = null;
            }
            return (V) obj2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzw
    public void addListener(Runnable runnable, Executor executor) {
        zze zzeVar;
        zzdwl.checkNotNull(runnable, "Runnable was null.");
        zzdwl.checkNotNull(executor, "Executor was null.");
        if (!isDone()) {
            zze zzeVar2 = this.listeners;
            if (zzeVar2 != zze.zzhzh) {
                zze zzeVar3 = new zze(runnable, executor);
                do {
                    zzeVar3.next = zzeVar2;
                    if (zzhzd.zza((zzdyk<?>) this, zzeVar2, zzeVar3)) {
                        return;
                    }
                    zzeVar = this.listeners;
                    zzeVar2 = zzeVar;
                } while (zzeVar != zze.zzhzh);
            }
        }
        zza(runnable, executor);
    }

    public void afterDone() {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.value;
        if ((obj == null) || (obj instanceof zzg)) {
            zza zzaVar = GENERATE_CANCELLATION_CAUSES ? new zza(z, new CancellationException("Future.cancel() was called.")) : z ? zza.zzhze : zza.zzhzf;
            z2 = false;
            zzdyk<V> zzdykVar = this;
            while (true) {
                if (zzhzd.zza((zzdyk<?>) zzdykVar, obj, (Object) zzaVar)) {
                    if (z) {
                        zzdykVar.interruptTask();
                    }
                    zza((zzdyk<?>) zzdykVar);
                    z2 = true;
                    if (!(obj instanceof zzg)) {
                        break;
                    }
                    zzdzw<? extends V> zzdzwVar = ((zzg) obj).future;
                    if (!(zzdzwVar instanceof zzi)) {
                        zzdzwVar.cancel(z);
                        z2 = true;
                        break;
                    }
                    zzdykVar = (zzdyk) zzdzwVar;
                    obj = zzdykVar.value;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof zzg)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = zzdykVar.value;
                    obj = obj2;
                    if (!(obj2 instanceof zzg)) {
                        break;
                    }
                }
            }
        } else {
            z2 = false;
        }
        return z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
        if (java.lang.Thread.interrupted() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        r0 = r5.value;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005b, code lost:
        if (r0 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006d, code lost:
        if ((r7 & (!(r0 instanceof com.google.android.gms.internal.ads.zzdyk.zzg))) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0074, code lost:
        return (V) zzaf(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0075, code lost:
        zza(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0081, code lost:
        throw new java.lang.InterruptedException();
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get() throws java.lang.InterruptedException, java.util.concurrent.ExecutionException {
        /*
            r5 = this;
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L9b
            r0 = r5
            java.lang.Object r0 = r0.value
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L14
            r0 = 1
            r7 = r0
            goto L16
        L14:
            r0 = 0
            r7 = r0
        L16:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.zzdyk.zzg
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L26
            r0 = r6
            java.lang.Object r0 = zzaf(r0)
            return r0
        L26:
            r0 = r5
            com.google.android.gms.internal.ads.zzdyk$zzk r0 = r0.waiters
            r6 = r0
            r0 = r6
            com.google.android.gms.internal.ads.zzdyk$zzk r1 = com.google.android.gms.internal.ads.zzdyk.zzk.zzhzp
            if (r0 == r1) goto L93
            com.google.android.gms.internal.ads.zzdyk$zzk r0 = new com.google.android.gms.internal.ads.zzdyk$zzk
            r1 = r0
            r1.<init>()
            r8 = r0
        L3a:
            r0 = r8
            r1 = r6
            r0.zzb(r1)
            com.google.android.gms.internal.ads.zzdyk$zzb r0 = com.google.android.gms.internal.ads.zzdyk.zzhzd
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.zza(r1, r2, r3)
            if (r0 == 0) goto L82
        L4b:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L75
            r0 = r5
            java.lang.Object r0 = r0.value
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L63
            r0 = 1
            r7 = r0
            goto L65
        L63:
            r0 = 0
            r7 = r0
        L65:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.zzdyk.zzg
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L4b
            r0 = r6
            java.lang.Object r0 = zzaf(r0)
            return r0
        L75:
            r0 = r5
            r1 = r8
            r0.zza(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L82:
            r0 = r5
            com.google.android.gms.internal.ads.zzdyk$zzk r0 = r0.waiters
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            com.google.android.gms.internal.ads.zzdyk$zzk r1 = com.google.android.gms.internal.ads.zzdyk.zzk.zzhzp
            if (r0 != r1) goto L3a
        L93:
            r0 = r5
            java.lang.Object r0 = r0.value
            java.lang.Object r0 = zzaf(r0)
            return r0
        L9b:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdyk.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0082, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, java.lang.Math.min((long) r10, 2147483647999999999L));
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0091, code lost:
        if (java.lang.Thread.interrupted() != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0094, code lost:
        r0 = r6.value;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009c, code lost:
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009f, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a5, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b2, code lost:
        if ((r13 & (!(r0 instanceof com.google.android.gms.internal.ads.zzdyk.zzg))) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ba, code lost:
        return (V) zzaf(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bb, code lost:
        r16 = r14 - java.lang.System.nanoTime();
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00cd, code lost:
        if (r16 >= 1000) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d0, code lost:
        zza(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d9, code lost:
        zza(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e6, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v140, types: [long] */
    /* JADX WARN: Type inference failed for: r0v153, types: [long] */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(long r7, java.util.concurrent.TimeUnit r9) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException, java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 781
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdyk.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    protected void interruptTask() {
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.value instanceof zza;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.value;
        return (!(obj instanceof zzg)) & (obj != null);
    }

    public final void maybePropagateCancellationTo(@NullableDecl Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    @NullableDecl
    public String pendingToString() {
        if (this instanceof ScheduledFuture) {
            long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
            StringBuilder sb = new StringBuilder(41);
            sb.append("remaining delay=[");
            sb.append(delay);
            sb.append(" ms]");
            return sb.toString();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean set(@NullableDecl V v) {
        V v2 = v;
        if (v == null) {
            v2 = NULL;
        }
        if (zzhzd.zza((zzdyk<?>) this, (Object) null, (Object) v2)) {
            zza((zzdyk<?>) this);
            return true;
        }
        return false;
    }

    public boolean setException(Throwable th) {
        if (zzhzd.zza((zzdyk<?>) this, (Object) null, (Object) new zzc((Throwable) zzdwl.checkNotNull(th)))) {
            zza((zzdyk<?>) this);
            return true;
        }
        return false;
    }

    public final boolean setFuture(zzdzw<? extends V> zzdzwVar) {
        zzc zzcVar;
        zzdwl.checkNotNull(zzdzwVar);
        Object obj = this.value;
        Object obj2 = obj;
        if (obj == null) {
            if (zzdzwVar.isDone()) {
                if (!zzhzd.zza((zzdyk<?>) this, (Object) null, getFutureValue(zzdzwVar))) {
                    return false;
                }
                zza((zzdyk<?>) this);
                return true;
            }
            zzg zzgVar = new zzg(this, zzdzwVar);
            if (zzhzd.zza((zzdyk<?>) this, (Object) null, (Object) zzgVar)) {
                try {
                    zzdzwVar.addListener(zzgVar, zzdzd.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        zzcVar = new zzc(th);
                    } catch (Throwable th2) {
                        zzcVar = zzc.zzhzg;
                    }
                    zzhzd.zza((zzdyk<?>) this, (Object) zzgVar, (Object) zzcVar);
                    return true;
                }
            }
            obj2 = this.value;
        }
        if (obj2 instanceof zza) {
            zzdzwVar.cancel(((zza) obj2).wasInterrupted);
            return false;
        }
        return false;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            zza(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.value;
            if (obj instanceof zzg) {
                sb.append(", setFuture=[");
                zza(sb, ((zzg) obj).future);
                sb.append("]");
            } else {
                try {
                    str = zzdwt.emptyToNull(pendingToString());
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
                zza(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public final boolean wasInterrupted() {
        Object obj = this.value;
        return (obj instanceof zza) && ((zza) obj).wasInterrupted;
    }

    @Override // com.google.android.gms.internal.ads.zzeao
    @NullableDecl
    public final Throwable zzazt() {
        if (this instanceof zzi) {
            Object obj = this.value;
            if (!(obj instanceof zzc)) {
                return null;
            }
            return ((zzc) obj).exception;
        }
        return null;
    }
}
