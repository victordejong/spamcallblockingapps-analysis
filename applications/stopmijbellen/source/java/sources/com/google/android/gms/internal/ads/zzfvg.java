package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvg.class */
public abstract class zzfvg<V> extends zzfxs implements zzfxa<V> {
    private static final boolean zzaO;
    private static final Logger zzaR;
    private static final zza zzaS;
    private static final Object zzaT;
    @CheckForNull
    private volatile zzd listeners;
    @CheckForNull
    private volatile Object value;
    @CheckForNull
    private volatile zzk waiters;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvg$zza.class */
    public abstract class zza {
        public /* synthetic */ zza(zzfvf zzfvfVar) {
        }

        public abstract void zza(zzk zzkVar, @CheckForNull zzk zzkVar2);

        public abstract void zzb(zzk zzkVar, Thread thread);

        public abstract boolean zzc(zzfvg<?> zzfvgVar, @CheckForNull zzd zzdVar, zzd zzdVar2);

        public abstract boolean zzd(zzfvg<?> zzfvgVar, @CheckForNull Object obj, Object obj2);

        public abstract boolean zze(zzfvg<?> zzfvgVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvg$zzb.class */
    public final class zzb {
        @CheckForNull
        public static final zzb zza;
        @CheckForNull
        public static final zzb zzb;
        public final boolean zzc;
        @CheckForNull
        public final Throwable zzd;

        static {
            if (zzfvg.zzaO) {
                zzb = null;
                zza = null;
                return;
            }
            zzb = new zzb(false, null);
            zza = new zzb(true, null);
        }

        public zzb(boolean z, @CheckForNull Throwable th) {
            this.zzc = z;
            this.zzd = th;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvg$zzc.class */
    public final class zzc {
        public static final zzc zza = new zzc(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.ads.zzfvg.zzc.1
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvg$zzd.class */
    public final class zzd {
        public static final zzd zza = new zzd();
        @CheckForNull
        public zzd next;
        @CheckForNull
        public final Runnable zzb;
        @CheckForNull
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvg$zze.class */
    final class zze extends zza {
        public final AtomicReferenceFieldUpdater<zzk, Thread> zza;
        public final AtomicReferenceFieldUpdater<zzk, zzk> zzb;
        public final AtomicReferenceFieldUpdater<zzfvg, zzk> zzc;
        public final AtomicReferenceFieldUpdater<zzfvg, zzd> zzd;
        public final AtomicReferenceFieldUpdater<zzfvg, Object> zze;

        public zze(AtomicReferenceFieldUpdater<zzk, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<zzk, zzk> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<zzfvg, zzk> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<zzfvg, zzd> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<zzfvg, Object> atomicReferenceFieldUpdater5) {
            super(null);
            this.zza = atomicReferenceFieldUpdater;
            this.zzb = atomicReferenceFieldUpdater2;
            this.zzc = atomicReferenceFieldUpdater3;
            this.zzd = atomicReferenceFieldUpdater4;
            this.zze = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final void zza(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            this.zzb.lazySet(zzkVar, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final void zzb(zzk zzkVar, Thread thread) {
            this.zza.lazySet(zzkVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final boolean zzc(zzfvg<?> zzfvgVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            boolean z;
            AtomicReferenceFieldUpdater<zzfvg, zzd> atomicReferenceFieldUpdater = this.zzd;
            while (true) {
                if (!atomicReferenceFieldUpdater.compareAndSet(zzfvgVar, zzdVar, zzdVar2)) {
                    if (atomicReferenceFieldUpdater.get(zzfvgVar) != zzdVar) {
                        z = false;
                        break;
                    }
                } else {
                    z = true;
                    break;
                }
            }
            return z;
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final boolean zzd(zzfvg<?> zzfvgVar, @CheckForNull Object obj, Object obj2) {
            boolean z;
            AtomicReferenceFieldUpdater<zzfvg, Object> atomicReferenceFieldUpdater = this.zze;
            while (true) {
                if (!atomicReferenceFieldUpdater.compareAndSet(zzfvgVar, obj, obj2)) {
                    if (atomicReferenceFieldUpdater.get(zzfvgVar) != obj) {
                        z = false;
                        break;
                    }
                } else {
                    z = true;
                    break;
                }
            }
            return z;
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final boolean zze(zzfvg<?> zzfvgVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            boolean z;
            AtomicReferenceFieldUpdater<zzfvg, zzk> atomicReferenceFieldUpdater = this.zzc;
            while (true) {
                if (!atomicReferenceFieldUpdater.compareAndSet(zzfvgVar, zzkVar, zzkVar2)) {
                    if (atomicReferenceFieldUpdater.get(zzfvgVar) != zzkVar) {
                        z = false;
                        break;
                    }
                } else {
                    z = true;
                    break;
                }
            }
            return z;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvg$zzf.class */
    public final class zzf<V> implements Runnable {
        public final zzfvg<V> zza;
        public final zzfxa<? extends V> zzb;

        public zzf(zzfvg<V> zzfvgVar, zzfxa<? extends V> zzfxaVar) {
            this.zza = zzfvgVar;
            this.zzb = zzfxaVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((zzfvg) this.zza).value != this) {
                return;
            }
            if (!zzfvg.zzaS.zzd(this.zza, this, zzfvg.zza(this.zzb))) {
                return;
            }
            zzfvg.zzz(this.zza);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvg$zzg.class */
    final class zzg extends zza {
        private zzg() {
            super(null);
        }

        public /* synthetic */ zzg(zzfvh zzfvhVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final void zza(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            zzkVar.next = zzkVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final void zzb(zzk zzkVar, Thread thread) {
            zzkVar.thread = thread;
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final boolean zzc(zzfvg<?> zzfvgVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            synchronized (zzfvgVar) {
                if (((zzfvg) zzfvgVar).listeners == zzdVar) {
                    ((zzfvg) zzfvgVar).listeners = zzdVar2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final boolean zzd(zzfvg<?> zzfvgVar, @CheckForNull Object obj, Object obj2) {
            synchronized (zzfvgVar) {
                if (((zzfvg) zzfvgVar).value == obj) {
                    ((zzfvg) zzfvgVar).value = obj2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final boolean zze(zzfvg<?> zzfvgVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            synchronized (zzfvgVar) {
                if (((zzfvg) zzfvgVar).waiters == zzkVar) {
                    ((zzfvg) zzfvgVar).waiters = zzkVar2;
                    return true;
                }
                return false;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvg$zzh.class */
    public interface zzh<V> extends zzfxa<V> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvg$zzi.class */
    public abstract class zzi<V> extends zzfvg<V> implements zzh<V> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvg$zzj.class */
    final class zzj extends zza {
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
                    unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.android.gms.internal.ads.zzfvg.zzj.1
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
                zzc = unsafe.objectFieldOffset(zzfvg.class.getDeclaredField("waiters"));
                zzb = unsafe.objectFieldOffset(zzfvg.class.getDeclaredField("listeners"));
                zzd = unsafe.objectFieldOffset(zzfvg.class.getDeclaredField(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                zze = unsafe.objectFieldOffset(zzk.class.getDeclaredField("thread"));
                zzf = unsafe.objectFieldOffset(zzk.class.getDeclaredField("next"));
                zza = unsafe;
            } catch (Exception e3) {
                zzfqt.zzb(e3);
                throw new RuntimeException(e3);
            }
        }

        private zzj() {
            super(null);
        }

        public /* synthetic */ zzj(zzfvi zzfviVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final void zza(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            zza.putObject(zzkVar, zzf, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final void zzb(zzk zzkVar, Thread thread) {
            zza.putObject(zzkVar, zze, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final boolean zzc(zzfvg<?> zzfvgVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            return C0608b.m7622m(zza, zzfvgVar, zzb, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final boolean zzd(zzfvg<?> zzfvgVar, @CheckForNull Object obj, Object obj2) {
            return C0608b.m7622m(zza, zzfvgVar, zzd, obj, obj2);
        }

        @Override // com.google.android.gms.internal.ads.zzfvg.zza
        public final boolean zze(zzfvg<?> zzfvgVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            return C0608b.m7622m(zza, zzfvgVar, zzc, zzkVar, zzkVar2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvg$zzk.class */
    public final class zzk {
        public static final zzk zza = new zzk(false);
        @CheckForNull
        public volatile zzk next;
        @CheckForNull
        public volatile Thread thread;

        public zzk() {
            zzfvg.zzaS.zzb(this, Thread.currentThread());
        }

        public zzk(boolean z) {
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
        zzaO = z;
        zzaR = Logger.getLogger(zzfvg.class.getName());
        try {
            zzaVar = new zzj(null);
            th2 = null;
            th = null;
        } catch (Throwable th3) {
            th2 = th3;
            try {
                zzaVar = new zze(AtomicReferenceFieldUpdater.newUpdater(zzk.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(zzk.class, zzk.class, "next"), AtomicReferenceFieldUpdater.newUpdater(zzfvg.class, zzk.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(zzfvg.class, zzd.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(zzfvg.class, Object.class, AppMeasurementSdk.ConditionalUserProperty.VALUE));
                th = null;
            } catch (Throwable th4) {
                th = th4;
                zzaVar = new zzg(null);
            }
        }
        zzaS = zzaVar;
        if (th != null) {
            Logger logger = zzaR;
            Level level = Level.SEVERE;
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        zzaT = new Object();
    }

    private static void zzA(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = zzaR;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", C1676a.m4788i(new StringBuilder(valueOf.length() + 57 + valueOf2.length()), "RuntimeException while executing runnable ", valueOf, " with executor ", valueOf2), (Throwable) e);
        }
    }

    private final void zzB(zzk zzkVar) {
        zzk zzkVar2;
        zzkVar.thread = null;
        while (true) {
            zzk zzkVar3 = this.waiters;
            if (zzkVar3 != zzk.zza) {
                zzk zzkVar4 = null;
                while (true) {
                    zzk zzkVar5 = zzkVar4;
                    if (zzkVar3 == null) {
                        return;
                    }
                    zzk zzkVar6 = zzkVar3.next;
                    if (zzkVar3.thread != null) {
                        zzkVar2 = zzkVar3;
                    } else if (zzkVar5 != null) {
                        zzkVar5.next = zzkVar6;
                        zzkVar2 = zzkVar5;
                        if (zzkVar5.thread == null) {
                            break;
                        }
                    } else {
                        zzkVar2 = zzkVar5;
                        if (!zzaS.zze(this, zzkVar3, zzkVar6)) {
                            break;
                        }
                    }
                    zzkVar3 = zzkVar6;
                    zzkVar4 = zzkVar2;
                }
            } else {
                return;
            }
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
            if (obj == zzaT) {
                obj2 = null;
            }
            return (V) obj2;
        }
    }

    public static Object zza(zzfxa<?> zzfxaVar) {
        Throwable zzk2;
        if (zzfxaVar instanceof zzh) {
            Object obj = ((zzfvg) zzfxaVar).value;
            zzb zzbVar = obj;
            if (obj instanceof zzb) {
                zzb zzbVar2 = (zzb) obj;
                zzbVar = obj;
                if (zzbVar2.zzc) {
                    Throwable th = zzbVar2.zzd;
                    zzbVar = th != null ? new zzb(false, th) : zzb.zzb;
                }
            }
            Objects.requireNonNull(zzbVar);
            return zzbVar;
        } else if ((zzfxaVar instanceof zzfxs) && (zzk2 = ((zzfxs) zzfxaVar).zzk()) != null) {
            return new zzc(zzk2);
        } else {
            boolean isCancelled = zzfxaVar.isCancelled();
            if ((!zzaO) && isCancelled) {
                zzb zzbVar3 = zzb.zzb;
                Objects.requireNonNull(zzbVar3);
                return zzbVar3;
            }
            try {
                Object zzb2 = zzb(zzfxaVar);
                if (!isCancelled) {
                    Object obj2 = zzb2;
                    if (zzb2 == null) {
                        obj2 = zzaT;
                    }
                    return obj2;
                }
                String valueOf = String.valueOf(zzfxaVar);
                StringBuilder sb = new StringBuilder(valueOf.length() + 84);
                sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb.append(valueOf);
                return new zzb(false, new IllegalArgumentException(sb.toString()));
            } catch (CancellationException e) {
                return !isCancelled ? new zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(zzfxaVar)), e)) : new zzb(false, e);
            } catch (ExecutionException e2) {
                return isCancelled ? new zzb(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(zzfxaVar)), e2)) : new zzc(e2.getCause());
            } catch (Throwable th2) {
                return new zzc(th2);
            }
        }
    }

    private static <V> V zzb(Future<V> future) throws ExecutionException {
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

    private final void zzw(StringBuilder sb) {
        try {
            Object zzb2 = zzb(this);
            sb.append("SUCCESS, result=[");
            if (zzb2 == null) {
                sb.append("null");
            } else if (zzb2 == this) {
                sb.append("this future");
            } else {
                sb.append(zzb2.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(zzb2)));
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

    private final void zzx(StringBuilder sb) {
        String str;
        int length = sb.length();
        sb.append("PENDING");
        Object obj = this.value;
        if (obj instanceof zzf) {
            sb.append(", setFuture=[");
            zzy(sb, ((zzf) obj).zzb);
            sb.append("]");
        } else {
            try {
                str = zzfqr.zza(zzd());
            } catch (RuntimeException | StackOverflowError e) {
                str = "Exception thrown from implementation: ".concat(String.valueOf(e.getClass()));
            }
            if (str != null) {
                sb.append(", info=[");
                sb.append(str);
                sb.append("]");
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            zzw(sb);
        }
    }

    private final void zzy(StringBuilder sb, @CheckForNull Object obj) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public static void zzz(zzfvg<?> zzfvgVar) {
        zzd zzdVar;
        zzd zzdVar2;
        zzfvg zzfvgVar2 = zzfvgVar;
        zzd zzdVar3 = null;
        while (true) {
            zzk zzkVar = zzfvgVar2.waiters;
            if (zzaS.zze(zzfvgVar2, zzkVar, zzk.zza)) {
                while (zzkVar != null) {
                    Thread thread = zzkVar.thread;
                    if (thread != null) {
                        zzkVar.thread = null;
                        LockSupport.unpark(thread);
                    }
                    zzkVar = zzkVar.next;
                }
                zzfvgVar2.zze();
                do {
                    zzdVar = zzfvgVar2.listeners;
                } while (!zzaS.zzc(zzfvgVar2, zzdVar, zzd.zza));
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
                    Objects.requireNonNull(runnable);
                    if (runnable instanceof zzf) {
                        zzf zzfVar = (zzf) runnable;
                        zzfvgVar2 = (zzfvg<V>) zzfVar.zza;
                        if (zzfvgVar2.value == zzfVar) {
                            if (zzaS.zzd(zzfvgVar2, zzfVar, zza(zzfVar.zzb))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        Executor executor = zzdVar2.zzc;
                        Objects.requireNonNull(executor);
                        zzA(runnable, executor);
                    }
                    zzdVar2 = zzdVar3;
                }
                return;
            }
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfvg.cancel(boolean):boolean");
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
        if ((r7 & (!(r0 instanceof com.google.android.gms.internal.ads.zzfvg.zzf))) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007a, code lost:
        return (V) zzC(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007b, code lost:
        zzB(r0);
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
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.zzfvg.zzf
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L26
            r0 = r6
            java.lang.Object r0 = zzC(r0)
            return r0
        L26:
            r0 = r5
            com.google.android.gms.internal.ads.zzfvg$zzk r0 = r0.waiters
            r6 = r0
            r0 = r6
            com.google.android.gms.internal.ads.zzfvg$zzk r1 = com.google.android.gms.internal.ads.zzfvg.zzk.zza
            if (r0 == r1) goto L99
            com.google.android.gms.internal.ads.zzfvg$zzk r0 = new com.google.android.gms.internal.ads.zzfvg$zzk
            r1 = r0
            r1.<init>()
            r8 = r0
        L3a:
            com.google.android.gms.internal.ads.zzfvg$zza r0 = com.google.android.gms.internal.ads.zzfvg.zzaS
            r9 = r0
            r0 = r9
            r1 = r8
            r2 = r6
            r0.zza(r1, r2)
            r0 = r9
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.zze(r1, r2, r3)
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
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.zzfvg.zzf
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
            r0.zzB(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L88:
            r0 = r5
            com.google.android.gms.internal.ads.zzfvg$zzk r0 = r0.waiters
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            com.google.android.gms.internal.ads.zzfvg$zzk r1 = com.google.android.gms.internal.ads.zzfvg.zzk.zza
            if (r0 != r1) goto L3a
        L99:
            r0 = r5
            java.lang.Object r0 = r0.value
            r6 = r0
            r0 = r6
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r6
            java.lang.Object r0 = zzC(r0)
            return r0
        La8:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfvg.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008f, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r7, java.lang.Math.min((long) r11, 2147483647999999999L));
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009e, code lost:
        if (java.lang.Thread.interrupted() != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a1, code lost:
        r0 = r7.value;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a9, code lost:
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ac, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b2, code lost:
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00bf, code lost:
        if ((r15 & (!(r0 instanceof com.google.android.gms.internal.ads.zzfvg.zzf))) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c7, code lost:
        return (V) zzC(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c8, code lost:
        r0 = r16 - java.lang.System.nanoTime();
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00da, code lost:
        if (r0 >= 1000) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00dd, code lost:
        zzB(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ea, code lost:
        zzB(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f7, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x015b, code lost:
        r18 = r0;
        r20 = r16;
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v133, types: [long] */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(long r8, java.util.concurrent.TimeUnit r10) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException, java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 775
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfvg.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.value instanceof zzb;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.value;
        return (!(obj instanceof zzf)) & (obj != null);
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
            zzw(sb);
        } else {
            zzx(sb);
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfxa
    public void zzc(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzfqg.zzc(runnable, "Runnable was null.");
        zzfqg.zzc(executor, "Executor was null.");
        if (!isDone()) {
            zzd zzdVar2 = this.listeners;
            if (zzdVar2 != zzd.zza) {
                zzd zzdVar3 = new zzd(runnable, executor);
                do {
                    zzdVar3.next = zzdVar2;
                    if (zzaS.zzc(this, zzdVar2, zzdVar3)) {
                        return;
                    }
                    zzdVar = this.listeners;
                    zzdVar2 = zzdVar;
                } while (zzdVar != zzd.zza);
            }
        }
        zzA(runnable, executor);
    }

    @CheckForNull
    public String zzd() {
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

    public void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzfxs
    @CheckForNull
    public final Throwable zzk() {
        if (this instanceof zzh) {
            Object obj = this.value;
            if (!(obj instanceof zzc)) {
                return null;
            }
            return ((zzc) obj).zzb;
        }
        return null;
    }

    public void zzp() {
    }

    public final void zzq(@CheckForNull Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(zzv());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean zzs(V v) {
        V v2 = v;
        if (v == null) {
            v2 = zzaT;
        }
        if (zzaS.zzd(this, null, v2)) {
            zzz(this);
            return true;
        }
        return false;
    }

    public boolean zzt(Throwable th) {
        Objects.requireNonNull(th);
        if (zzaS.zzd(this, null, new zzc(th))) {
            zzz(this);
            return true;
        }
        return false;
    }

    public final boolean zzu(zzfxa<? extends V> zzfxaVar) {
        zzc zzcVar;
        Objects.requireNonNull(zzfxaVar);
        Object obj = this.value;
        Object obj2 = obj;
        if (obj == null) {
            if (zzfxaVar.isDone()) {
                if (!zzaS.zzd(this, null, zza(zzfxaVar))) {
                    return false;
                }
                zzz(this);
                return true;
            }
            zzf zzfVar = new zzf(this, zzfxaVar);
            if (zzaS.zzd(this, null, zzfVar)) {
                try {
                    zzfxaVar.zzc(zzfVar, zzfwe.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        zzcVar = new zzc(th);
                    } catch (Throwable th2) {
                        zzcVar = zzc.zza;
                    }
                    zzaS.zzd(this, zzfVar, zzcVar);
                    return true;
                }
            }
            obj2 = this.value;
        }
        if (obj2 instanceof zzb) {
            zzfxaVar.cancel(((zzb) obj2).zzc);
            return false;
        }
        return false;
    }

    public final boolean zzv() {
        Object obj = this.value;
        return (obj instanceof zzb) && ((zzb) obj).zzc;
    }
}
