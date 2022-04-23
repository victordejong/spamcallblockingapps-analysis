package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/Tasks.class */
public final class Tasks {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/Tasks$zza.class */
    private static final class zza implements zzb {

        /* renamed from: a */
        private final CountDownLatch f9844a;

        private zza() {
            this.f9844a = new CountDownLatch(1);
        }

        /* synthetic */ zza(zzv zzvVar) {
            this();
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        /* renamed from: a */
        public final void mo10800a() {
            this.f9844a.countDown();
        }

        /* renamed from: b */
        public final void m10815b() throws InterruptedException {
            this.f9844a.await();
        }

        /* renamed from: c */
        public final boolean m10814c(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.f9844a.await(j, timeUnit);
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public final void onFailure(@NonNull Exception exc) {
            this.f9844a.countDown();
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public final void onSuccess(Object obj) {
            this.f9844a.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/Tasks$zzb.class */
    public interface zzb extends OnCanceledListener, OnFailureListener, OnSuccessListener<Object> {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/Tasks$zzc.class */
    public static final class zzc implements zzb {

        /* renamed from: a */
        private final Object f9845a = new Object();

        /* renamed from: b */
        private final int f9846b;

        /* renamed from: c */
        private final zzu<Void> f9847c;
        @GuardedBy

        /* renamed from: d */
        private int f9848d;
        @GuardedBy

        /* renamed from: e */
        private int f9849e;
        @GuardedBy

        /* renamed from: f */
        private int f9850f;
        @GuardedBy

        /* renamed from: g */
        private Exception f9851g;
        @GuardedBy

        /* renamed from: h */
        private boolean f9852h;

        public zzc(int i, zzu<Void> zzuVar) {
            this.f9846b = i;
            this.f9847c = zzuVar;
        }

        @GuardedBy
        /* renamed from: b */
        private final void m10813b() {
            if (this.f9848d + this.f9849e + this.f9850f != this.f9846b) {
                return;
            }
            if (this.f9851g != null) {
                zzu<Void> zzuVar = this.f9847c;
                int i = this.f9849e;
                int i2 = this.f9846b;
                StringBuilder sb = new StringBuilder(54);
                sb.append(i);
                sb.append(" out of ");
                sb.append(i2);
                sb.append(" underlying tasks failed");
                zzuVar.m10779q(new ExecutionException(sb.toString(), this.f9851g));
            } else if (this.f9852h) {
                this.f9847c.m10775u();
            } else {
                this.f9847c.m10778r(null);
            }
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        /* renamed from: a */
        public final void mo10800a() {
            synchronized (this.f9845a) {
                this.f9850f++;
                this.f9852h = true;
                m10813b();
            }
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public final void onFailure(@NonNull Exception exc) {
            synchronized (this.f9845a) {
                this.f9849e++;
                this.f9851g = exc;
                m10813b();
            }
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public final void onSuccess(Object obj) {
            synchronized (this.f9845a) {
                this.f9848d++;
                m10813b();
            }
        }
    }

    private Tasks() {
    }

    /* renamed from: a */
    public static <TResult> TResult m10824a(@NonNull Task<TResult> task) throws ExecutionException, InterruptedException {
        Preconditions.m14525i();
        Preconditions.m14522l(task, "Task must not be null");
        if (task.mo10783m()) {
            return (TResult) m10816i(task);
        }
        zza zzaVar = new zza(null);
        m10817h(task, zzaVar);
        zzaVar.m10815b();
        return (TResult) m10816i(task);
    }

    /* renamed from: b */
    public static <TResult> TResult m10823b(@NonNull Task<TResult> task, long j, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        Preconditions.m14525i();
        Preconditions.m14522l(task, "Task must not be null");
        Preconditions.m14522l(timeUnit, "TimeUnit must not be null");
        if (task.mo10783m()) {
            return (TResult) m10816i(task);
        }
        zza zzaVar = new zza(null);
        m10817h(task, zzaVar);
        if (zzaVar.m10814c(j, timeUnit)) {
            return (TResult) m10816i(task);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    /* renamed from: c */
    public static <TResult> Task<TResult> m10822c(@NonNull Executor executor, @NonNull Callable<TResult> callable) {
        Preconditions.m14522l(executor, "Executor must not be null");
        Preconditions.m14522l(callable, "Callback must not be null");
        zzu zzuVar = new zzu();
        executor.execute(new zzv(zzuVar, callable));
        return zzuVar;
    }

    /* renamed from: d */
    public static <TResult> Task<TResult> m10821d(@NonNull Exception exc) {
        zzu zzuVar = new zzu();
        zzuVar.m10779q(exc);
        return zzuVar;
    }

    /* renamed from: e */
    public static <TResult> Task<TResult> m10820e(TResult tresult) {
        zzu zzuVar = new zzu();
        zzuVar.m10778r(tresult);
        return zzuVar;
    }

    /* renamed from: f */
    public static Task<Void> m10819f(Collection<? extends Task<?>> collection) {
        if (collection.isEmpty()) {
            return m10820e(null);
        }
        Iterator<? extends Task<?>> it = collection.iterator();
        while (it.hasNext()) {
            if (((Task) it.next()) == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        zzu zzuVar = new zzu();
        zzc zzcVar = new zzc(collection.size(), zzuVar);
        Iterator<? extends Task<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            m10817h((Task) it2.next(), zzcVar);
        }
        return zzuVar;
    }

    /* renamed from: g */
    public static Task<Void> m10818g(Task<?>... taskArr) {
        return taskArr.length == 0 ? m10820e(null) : m10819f(Arrays.asList(taskArr));
    }

    /* renamed from: h */
    private static void m10817h(Task<?> task, zzb zzbVar) {
        task.mo10791e(TaskExecutors.f9842b, zzbVar);
        task.mo10792d(TaskExecutors.f9842b, zzbVar);
        task.mo10795a(TaskExecutors.f9842b, zzbVar);
    }

    /* renamed from: i */
    private static <TResult> TResult m10816i(Task<TResult> task) throws ExecutionException {
        if (task.mo10782n()) {
            return task.mo10786j();
        }
        if (task.mo10784l()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(task.mo10787i());
    }
}
