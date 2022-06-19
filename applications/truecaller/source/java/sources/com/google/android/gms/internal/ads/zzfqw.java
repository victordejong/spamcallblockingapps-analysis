package com.google.android.gms.internal.ads;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.Objects;
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
import p193e.p1432d.p1439c.p1440a.C22128a;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqw.class */
public abstract class zzfqw<V> extends zzfte implements zzfsm<V> {
    private static final boolean zzaN;
    private static final Logger zzaQ;
    private static final zza zzaR;
    private static final Object zzaS;
    private volatile zzd listeners;
    private volatile Object value;
    private volatile zzl waiters;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqw$zza.class */
    public abstract class zza {
        public /* synthetic */ zza(zze zzeVar) {
        }

        public abstract void zza(zzl zzlVar, Thread thread);

        public abstract void zzb(zzl zzlVar, zzl zzlVar2);

        public abstract boolean zzc(zzfqw<?> zzfqwVar, zzl zzlVar, zzl zzlVar2);

        public abstract boolean zzd(zzfqw<?> zzfqwVar, zzd zzdVar, zzd zzdVar2);

        public abstract boolean zze(zzfqw<?> zzfqwVar, Object obj, Object obj2);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqw$zzb.class */
    public final class zzb {
        public static final zzb zza;
        public static final zzb zzb;
        public final boolean zzc;
        public final Throwable zzd;

        static {
            if (zzfqw.zzaN) {
                zzb = null;
                zza = null;
                return;
            }
            zzb = new zzb(false, null);
            zza = new zzb(true, null);
        }

        public zzb(boolean z, Throwable th) {
            this.zzc = z;
            this.zzd = th;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqw$zzc.class */
    public final class zzc {
        public static final zzc zza = new zzc(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.ads.zzfqw.zzc.1
            {
                super("Failure occurred while trying to finish a future.");
            }

            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });
        public final Throwable zzb;

        public zzc(Throwable th) {
            Objects.requireNonNull(th);
            this.zzb = th;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqw$zzd.class */
    public final class zzd {
        public static final zzd zza = new zzd();
        public zzd next;
        public final Runnable zzb;
        public final Executor zzc;

        public zzd() {
            this.zzb = null;
            this.zzc = null;
        }

        public zzd(Runnable runnable, Executor executor) {
            this.zzb = runnable;
            this.zzc = executor;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqw$zzf.class */
    public final class zzf extends zza {
        public final AtomicReferenceFieldUpdater<zzl, Thread> zza;
        public final AtomicReferenceFieldUpdater<zzl, zzl> zzb;
        public final AtomicReferenceFieldUpdater<zzfqw, zzl> zzc;
        public final AtomicReferenceFieldUpdater<zzfqw, zzd> zzd;
        public final AtomicReferenceFieldUpdater<zzfqw, Object> zze;

        public zzf(AtomicReferenceFieldUpdater<zzl, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<zzl, zzl> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<zzfqw, zzl> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<zzfqw, zzd> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<zzfqw, Object> atomicReferenceFieldUpdater5) {
            super(null);
            this.zza = atomicReferenceFieldUpdater;
            this.zzb = atomicReferenceFieldUpdater2;
            this.zzc = atomicReferenceFieldUpdater3;
            this.zzd = atomicReferenceFieldUpdater4;
            this.zze = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final void zza(zzl zzlVar, Thread thread) {
            this.zza.lazySet(zzlVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final void zzb(zzl zzlVar, zzl zzlVar2) {
            this.zzb.lazySet(zzlVar, zzlVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final boolean zzc(zzfqw<?> zzfqwVar, zzl zzlVar, zzl zzlVar2) {
            return this.zzc.compareAndSet(zzfqwVar, zzlVar, zzlVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final boolean zzd(zzfqw<?> zzfqwVar, zzd zzdVar, zzd zzdVar2) {
            return this.zzd.compareAndSet(zzfqwVar, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final boolean zze(zzfqw<?> zzfqwVar, Object obj, Object obj2) {
            return this.zze.compareAndSet(zzfqwVar, obj, obj2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqw$zzg.class */
    public final class zzg<V> implements Runnable {
        public final zzfqw<V> zza;
        public final zzfsm<? extends V> zzb;

        public zzg(zzfqw<V> zzfqwVar, zzfsm<? extends V> zzfsmVar) {
            this.zza = zzfqwVar;
            this.zzb = zzfsmVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((zzfqw) this.zza).value != this) {
                return;
            }
            if (!zzfqw.zzaR.zze(this.zza, this, zzfqw.zzb(this.zzb))) {
                return;
            }
            zzfqw.zzx(this.zza);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqw$zzh.class */
    public final class zzh extends zza {
        private zzh() {
            super(null);
        }

        public /* synthetic */ zzh(zze zzeVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final void zza(zzl zzlVar, Thread thread) {
            zzlVar.thread = thread;
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final void zzb(zzl zzlVar, zzl zzlVar2) {
            zzlVar.next = zzlVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final boolean zzc(zzfqw<?> zzfqwVar, zzl zzlVar, zzl zzlVar2) {
            synchronized (zzfqwVar) {
                if (((zzfqw) zzfqwVar).waiters == zzlVar) {
                    ((zzfqw) zzfqwVar).waiters = zzlVar2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final boolean zzd(zzfqw<?> zzfqwVar, zzd zzdVar, zzd zzdVar2) {
            synchronized (zzfqwVar) {
                if (((zzfqw) zzfqwVar).listeners == zzdVar) {
                    ((zzfqw) zzfqwVar).listeners = zzdVar2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final boolean zze(zzfqw<?> zzfqwVar, Object obj, Object obj2) {
            synchronized (zzfqwVar) {
                if (((zzfqw) zzfqwVar).value == obj) {
                    ((zzfqw) zzfqwVar).value = obj2;
                    return true;
                }
                return false;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqw$zzi.class */
    public interface zzi<V> extends zzfsm<V> {
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqw$zzj.class */
    public abstract class zzj<V> extends zzfqw<V> implements zzi<V> {
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqw$zzk.class */
    public final class zzk extends zza {
        public static final Unsafe zza;
        public static final long zzb;
        public static final long zzc;
        public static final long zzd;
        public static final long zze;
        public static final long zzf;

        static {
            Unsafe unsafe;
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException e) {
                try {
                    unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.android.gms.internal.ads.zzfqw.zzk.1
                        public static final Unsafe zza() throws Exception {
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

                        @Override // java.security.PrivilegedExceptionAction
                        public final /* bridge */ /* synthetic */ Unsafe run() throws Exception {
                            return zza();
                        }
                    });
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            }
            try {
                zzc = unsafe.objectFieldOffset(zzfqw.class.getDeclaredField("waiters"));
                zzb = unsafe.objectFieldOffset(zzfqw.class.getDeclaredField("listeners"));
                zzd = unsafe.objectFieldOffset(zzfqw.class.getDeclaredField("value"));
                zze = unsafe.objectFieldOffset(zzl.class.getDeclaredField("thread"));
                zzf = unsafe.objectFieldOffset(zzl.class.getDeclaredField("next"));
                zza = unsafe;
            } catch (Exception e3) {
                zzfmk.zza(e3);
                throw new RuntimeException(e3);
            }
        }

        private zzk() {
            super(null);
        }

        public /* synthetic */ zzk(zze zzeVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final void zza(zzl zzlVar, Thread thread) {
            zza.putObject(zzlVar, zze, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final void zzb(zzl zzlVar, zzl zzlVar2) {
            zza.putObject(zzlVar, zzf, zzlVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final boolean zzc(zzfqw<?> zzfqwVar, zzl zzlVar, zzl zzlVar2) {
            return zza.compareAndSwapObject(zzfqwVar, zzc, zzlVar, zzlVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final boolean zzd(zzfqw<?> zzfqwVar, zzd zzdVar, zzd zzdVar2) {
            return zza.compareAndSwapObject(zzfqwVar, zzb, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzfqw.zza
        public final boolean zze(zzfqw<?> zzfqwVar, Object obj, Object obj2) {
            return zza.compareAndSwapObject(zzfqwVar, zzd, obj, obj2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqw$zzl.class */
    public final class zzl {
        public static final zzl zza = new zzl(false);
        public volatile zzl next;
        public volatile Thread thread;

        public zzl() {
            zzfqw.zzaR.zza(this, Thread.currentThread());
        }

        public zzl(boolean z) {
        }
    }

    static {
        boolean z;
        Throwable th;
        zza zzaVar;
        Throwable th2;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException e) {
            z = false;
        }
        zzaN = z;
        zzaQ = Logger.getLogger(zzfqw.class.getName());
        try {
            zzaVar = new zzk(null);
            th2 = null;
            th = null;
        } catch (Throwable th3) {
            th2 = th3;
            try {
                zzaVar = new zzf(AtomicReferenceFieldUpdater.newUpdater(zzl.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(zzl.class, zzl.class, "next"), AtomicReferenceFieldUpdater.newUpdater(zzfqw.class, zzl.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(zzfqw.class, zzd.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(zzfqw.class, Object.class, "value"));
                th = null;
            } catch (Throwable th4) {
                th = th4;
                zzaVar = new zzh(null);
            }
        }
        zzaR = zzaVar;
        if (th != null) {
            Logger logger = zzaQ;
            Level level = Level.SEVERE;
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        zzaS = new Object();
    }

    private final void zzA(StringBuilder sb, Object obj) {
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

    private static void zzB(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = zzaQ;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", C22128a.m8606k(new StringBuilder(valueOf.length() + 57 + valueOf2.length()), "RuntimeException while executing runnable ", valueOf, " with executor ", valueOf2), (Throwable) e);
        }
    }

    private static final V zzC(Object obj) throws ExecutionException {
        if (obj instanceof zzb) {
            Throwable th = ((zzb) obj).zzd;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (obj instanceof zzc) {
            throw new ExecutionException(((zzc) obj).zzb);
        } else {
            Object obj2 = obj;
            if (obj == zzaS) {
                obj2 = null;
            }
            return (V) obj2;
        }
    }

    private final void zza(zzl zzlVar) {
        zzl zzlVar2;
        zzlVar.thread = null;
        while (true) {
            zzl zzlVar3 = this.waiters;
            if (zzlVar3 != zzl.zza) {
                zzl zzlVar4 = null;
                while (true) {
                    zzl zzlVar5 = zzlVar4;
                    if (zzlVar3 == null) {
                        return;
                    }
                    zzl zzlVar6 = zzlVar3.next;
                    if (zzlVar3.thread != null) {
                        zzlVar2 = zzlVar3;
                    } else if (zzlVar5 != null) {
                        zzlVar5.next = zzlVar6;
                        zzlVar2 = zzlVar5;
                        if (zzlVar5.thread == null) {
                            break;
                        }
                    } else {
                        zzlVar2 = zzlVar5;
                        if (!zzaR.zzc(this, zzlVar3, zzlVar6)) {
                            break;
                        }
                    }
                    zzlVar3 = zzlVar6;
                    zzlVar4 = zzlVar2;
                }
            } else {
                return;
            }
        }
    }

    public static Object zzb(zzfsm<?> zzfsmVar) {
        Throwable zzu;
        if (zzfsmVar instanceof zzi) {
            Object obj = ((zzfqw) zzfsmVar).value;
            zzb zzbVar = obj;
            if (obj instanceof zzb) {
                zzb zzbVar2 = (zzb) obj;
                zzbVar = obj;
                if (zzbVar2.zzc) {
                    Throwable th = zzbVar2.zzd;
                    zzbVar = th != null ? new zzb(false, th) : zzb.zzb;
                }
            }
            zzbVar.getClass();
            return zzbVar;
        } else if ((zzfsmVar instanceof zzfte) && (zzu = ((zzfte) zzfsmVar).zzu()) != null) {
            return new zzc(zzu);
        } else {
            boolean isCancelled = zzfsmVar.isCancelled();
            if ((!zzaN) && isCancelled) {
                zzb zzbVar3 = zzb.zzb;
                zzbVar3.getClass();
                return zzbVar3;
            }
            try {
                Object zzw = zzw(zzfsmVar);
                if (!isCancelled) {
                    Object obj2 = zzw;
                    if (zzw == null) {
                        obj2 = zzaS;
                    }
                    return obj2;
                }
                String valueOf = String.valueOf(zzfsmVar);
                StringBuilder sb = new StringBuilder(valueOf.length() + 84);
                sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb.append(valueOf);
                return new zzb(false, new IllegalArgumentException(sb.toString()));
            } catch (CancellationException e) {
                if (isCancelled) {
                    return new zzb(false, e);
                }
                String valueOf2 = String.valueOf(zzfsmVar);
                valueOf2.length();
                return new zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(valueOf2), e));
            } catch (ExecutionException e2) {
                if (!isCancelled) {
                    return new zzc(e2.getCause());
                }
                String valueOf3 = String.valueOf(zzfsmVar);
                valueOf3.length();
                return new zzb(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(valueOf3), e2));
            } catch (Throwable th2) {
                return new zzc(th2);
            }
        }
    }

    private static <V> V zzw(Future<V> future) throws ExecutionException {
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

    /* JADX WARN: Multi-variable type inference failed */
    public static void zzx(zzfqw<?> zzfqwVar) {
        zzd zzdVar;
        zzd zzdVar2;
        zzfqw zzfqwVar2 = zzfqwVar;
        zzd zzdVar3 = null;
        while (true) {
            zzl zzlVar = zzfqwVar2.waiters;
            if (zzaR.zzc(zzfqwVar2, zzlVar, zzl.zza)) {
                while (zzlVar != null) {
                    Thread thread = zzlVar.thread;
                    if (thread != null) {
                        zzlVar.thread = null;
                        LockSupport.unpark(thread);
                    }
                    zzlVar = zzlVar.next;
                }
                zzfqwVar2.zzd();
                do {
                    zzdVar = zzfqwVar2.listeners;
                } while (!zzaR.zzd(zzfqwVar2, zzdVar, zzd.zza));
                zzd zzdVar4 = zzdVar;
                while (true) {
                    zzd zzdVar5 = zzdVar4;
                    zzdVar2 = zzdVar3;
                    if (zzdVar5 != null) {
                        zzdVar4 = zzdVar5.next;
                        zzdVar5.next = zzdVar3;
                        zzdVar3 = zzdVar5;
                    }
                }
                while (zzdVar2 != null) {
                    zzdVar3 = zzdVar2.next;
                    Runnable runnable = zzdVar2.zzb;
                    runnable.getClass();
                    if (runnable instanceof zzg) {
                        zzg zzgVar = (zzg) runnable;
                        zzfqwVar2 = (zzfqw<V>) zzgVar.zza;
                        if (zzfqwVar2.value == zzgVar) {
                            if (zzaR.zze(zzfqwVar2, zzgVar, zzb(zzgVar.zzb))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        Executor executor = zzdVar2.zzc;
                        executor.getClass();
                        zzB(runnable, executor);
                    }
                    zzdVar2 = zzdVar3;
                }
                return;
            }
        }
    }

    private final void zzy(StringBuilder sb) {
        String str;
        int length = sb.length();
        sb.append("PENDING");
        Object obj = this.value;
        if (obj instanceof zzg) {
            sb.append(", setFuture=[");
            zzA(sb, ((zzg) obj).zzb);
            sb.append("]");
        } else {
            try {
                str = zzfmi.zzb(zzc());
            } catch (RuntimeException | StackOverflowError e) {
                String valueOf = String.valueOf(e.getClass());
                valueOf.length();
                str = "Exception thrown from implementation: ".concat(valueOf);
            }
            if (str != null) {
                C22128a.m8669S0(sb, ", info=[", str, "]");
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            zzz(sb);
        }
    }

    private final void zzz(StringBuilder sb) {
        try {
            Object zzw = zzw(this);
            sb.append("SUCCESS, result=[");
            if (zzw == null) {
                sb.append(AnalyticsConstants.NULL);
            } else if (zzw == this) {
                sb.append("this future");
            } else {
                sb.append(zzw.getClass().getName());
                sb.append(StringConstant.f9511AT);
                sb.append(Integer.toHexString(System.identityHashCode(zzw)));
            }
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

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ca, code lost:
        r10 = true;
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean cancel(boolean r8) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfqw.cancel(boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
        if (java.lang.Thread.interrupted() != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005b, code lost:
        r0 = r5.value;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
        if (r0 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0073, code lost:
        if ((r7 & (!(r0 instanceof com.google.android.gms.internal.ads.zzfqw.zzg))) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007a, code lost:
        return (V) zzC(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007b, code lost:
        zza(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0087, code lost:
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
            if (r0 != 0) goto La8
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
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.zzfqw.zzg
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L26
            r0 = r6
            java.lang.Object r0 = zzC(r0)
            return r0
        L26:
            r0 = r5
            com.google.android.gms.internal.ads.zzfqw$zzl r0 = r0.waiters
            r6 = r0
            r0 = r6
            com.google.android.gms.internal.ads.zzfqw$zzl r1 = com.google.android.gms.internal.ads.zzfqw.zzl.zza
            if (r0 == r1) goto L99
            com.google.android.gms.internal.ads.zzfqw$zzl r0 = new com.google.android.gms.internal.ads.zzfqw$zzl
            r1 = r0
            r1.<init>()
            r8 = r0
        L3a:
            com.google.android.gms.internal.ads.zzfqw$zza r0 = com.google.android.gms.internal.ads.zzfqw.zzaR
            r9 = r0
            r0 = r9
            r1 = r8
            r2 = r6
            r0.zzb(r1, r2)
            r0 = r9
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.zzc(r1, r2, r3)
            if (r0 == 0) goto L88
        L51:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L7b
            r0 = r5
            java.lang.Object r0 = r0.value
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L69
            r0 = 1
            r7 = r0
            goto L6b
        L69:
            r0 = 0
            r7 = r0
        L6b:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.zzfqw.zzg
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L51
            r0 = r6
            java.lang.Object r0 = zzC(r0)
            return r0
        L7b:
            r0 = r5
            r1 = r8
            r0.zza(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L88:
            r0 = r5
            com.google.android.gms.internal.ads.zzfqw$zzl r0 = r0.waiters
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            com.google.android.gms.internal.ads.zzfqw$zzl r1 = com.google.android.gms.internal.ads.zzfqw.zzl.zza
            if (r0 != r1) goto L3a
        L99:
            r0 = r5
            java.lang.Object r0 = r0.value
            r6 = r0
            r0 = r6
            java.lang.Class r0 = r0.getClass()
            r0 = r6
            java.lang.Object r0 = zzC(r0)
            return r0
        La8:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfqw.get():java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v134, types: [long] */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        ?? nanoTime;
        ?? nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.value;
            if ((obj != null) && (!(obj instanceof zzg))) {
                return (V) zzC(obj);
            }
            char nanoTime2 = nanos > 0 ? System.nanoTime() + nanos : (char) 0;
            char c = nanos;
            char c2 = nanoTime2;
            if (nanos >= 1000) {
                zzl zzlVar = this.waiters;
                if (zzlVar == zzl.zza) {
                    Object obj2 = this.value;
                    obj2.getClass();
                    return (V) zzC(obj2);
                }
                zzl zzlVar2 = new zzl();
                do {
                    zza zzaVar = zzaR;
                    zzaVar.zzb(zzlVar2, zzlVar);
                    if (zzaVar.zzc(this, zzlVar, zzlVar2)) {
                        char c3 = nanos;
                        do {
                            LockSupport.parkNanos(this, Math.min((long) c3, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                zza(zzlVar2);
                                throw new InterruptedException();
                            }
                            Object obj3 = this.value;
                            if ((obj3 != null) && (!(obj3 instanceof zzg))) {
                                return (V) zzC(obj3);
                            }
                            nanoTime = nanoTime2 - System.nanoTime();
                            c3 = nanoTime;
                        } while (nanoTime >= 1000);
                        zza(zzlVar2);
                        c = nanoTime;
                        c2 = nanoTime2;
                    } else {
                        zzlVar = this.waiters;
                    }
                } while (zzlVar != zzl.zza);
                Object obj22 = this.value;
                obj22.getClass();
                return (V) zzC(obj22);
            }
            while (c > 0) {
                Object obj4 = this.value;
                if ((obj4 != null) && (!(obj4 instanceof zzg))) {
                    return (V) zzC(obj4);
                }
                if (Thread.interrupted()) {
                    throw new InterruptedException();
                }
                char c4 = c2;
                c = c2 - System.nanoTime();
                c2 = c4;
            }
            String zzfqwVar = toString();
            String timeUnit2 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = timeUnit2.toLowerCase(locale);
            String lowerCase2 = timeUnit.toString().toLowerCase(locale);
            StringBuilder sb = new StringBuilder(String.valueOf(lowerCase2).length() + 28);
            C22128a.m8675Q0(sb, "Waited ", j, StringConstant.SPACE);
            sb.append(lowerCase2);
            String sb2 = sb.toString();
            String str = sb2;
            if (c + 1000 < 0) {
                String concat = sb2.concat(" (plus ");
                long j2 = -c;
                long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
                long nanos2 = j2 - timeUnit.toNanos(convert);
                int i = (convert > 0L ? 1 : (convert == 0L ? 0 : -1));
                boolean z = true;
                if (i != 0) {
                    z = nanos2 > 1000;
                }
                String str2 = concat;
                if (i > 0) {
                    String valueOf = String.valueOf(concat);
                    StringBuilder sb3 = new StringBuilder(valueOf.length() + 21 + String.valueOf(lowerCase).length());
                    C22128a.m8675Q0(sb3, valueOf, convert, StringConstant.SPACE);
                    sb3.append(lowerCase);
                    String sb4 = sb3.toString();
                    String str3 = sb4;
                    if (z) {
                        str3 = sb4.concat(",");
                    }
                    str2 = String.valueOf(str3).concat(StringConstant.SPACE);
                }
                String str4 = str2;
                if (z) {
                    String valueOf2 = String.valueOf(str2);
                    StringBuilder sb5 = new StringBuilder(valueOf2.length() + 33);
                    sb5.append(valueOf2);
                    sb5.append(nanos2);
                    sb5.append(" nanoseconds ");
                    str4 = sb5.toString();
                }
                str = String.valueOf(str4).concat("delay)");
            }
            if (!isDone()) {
                throw new TimeoutException(C22128a.m8610j(new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(zzfqwVar).length()), str, " for ", zzfqwVar));
            }
            throw new TimeoutException(String.valueOf(str).concat(" but future completed as timeout expired"));
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.value instanceof zzb;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.value;
        return (!(obj instanceof zzg)) & (obj != null);
    }

    public String toString() {
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
            zzz(sb);
        } else {
            zzy(sb);
        }
        sb.append("]");
        return sb.toString();
    }

    public String zzc() {
        if (this instanceof ScheduledFuture) {
            return C22128a.m8677P1(41, "remaining delay=[", ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS), " ms]");
        }
        return null;
    }

    public void zzd() {
    }

    @Override // com.google.android.gms.internal.ads.zzfsm
    public void zze(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzflx.zzc(runnable, "Runnable was null.");
        zzflx.zzc(executor, "Executor was null.");
        if (!isDone()) {
            zzd zzdVar2 = this.listeners;
            if (zzdVar2 != zzd.zza) {
                zzd zzdVar3 = new zzd(runnable, executor);
                do {
                    zzdVar3.next = zzdVar2;
                    if (zzaR.zzd(this, zzdVar2, zzdVar3)) {
                        return;
                    }
                    zzdVar = this.listeners;
                    zzdVar2 = zzdVar;
                } while (zzdVar != zzd.zza);
            }
        }
        zzB(runnable, executor);
    }

    public void zzn() {
    }

    public final boolean zzo() {
        Object obj = this.value;
        return (obj instanceof zzb) && ((zzb) obj).zzc;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean zzp(V v) {
        V v2 = v;
        if (v == null) {
            v2 = zzaS;
        }
        if (zzaR.zze(this, null, v2)) {
            zzx(this);
            return true;
        }
        return false;
    }

    public boolean zzq(Throwable th) {
        Objects.requireNonNull(th);
        if (zzaR.zze(this, null, new zzc(th))) {
            zzx(this);
            return true;
        }
        return false;
    }

    public final boolean zzr(zzfsm<? extends V> zzfsmVar) {
        zzc zzcVar;
        Objects.requireNonNull(zzfsmVar);
        Object obj = this.value;
        Object obj2 = obj;
        if (obj == null) {
            if (zzfsmVar.isDone()) {
                if (!zzaR.zze(this, null, zzb(zzfsmVar))) {
                    return false;
                }
                zzx(this);
                return true;
            }
            zzg zzgVar = new zzg(this, zzfsmVar);
            if (zzaR.zze(this, null, zzgVar)) {
                try {
                    zzfsmVar.zze(zzgVar, zzfrr.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        zzcVar = new zzc(th);
                    } catch (Throwable th2) {
                        zzcVar = zzc.zza;
                    }
                    zzaR.zze(this, zzgVar, zzcVar);
                    return true;
                }
            }
            obj2 = this.value;
        }
        if (obj2 instanceof zzb) {
            zzfsmVar.cancel(((zzb) obj2).zzc);
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfte
    public final Throwable zzu() {
        if (this instanceof zzi) {
            Object obj = this.value;
            if (!(obj instanceof zzc)) {
                return null;
            }
            return ((zzc) obj).zzb;
        }
        return null;
    }

    public final void zzv(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(zzo());
        }
    }
}
