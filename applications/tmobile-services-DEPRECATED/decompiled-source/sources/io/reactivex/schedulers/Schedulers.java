package io.reactivex.schedulers;

import io.reactivex.Scheduler;
import io.reactivex.annotations.NonNull;
import io.reactivex.internal.schedulers.ComputationScheduler;
import io.reactivex.internal.schedulers.IoScheduler;
import io.reactivex.internal.schedulers.NewThreadScheduler;
import io.reactivex.internal.schedulers.SingleScheduler;
import io.reactivex.internal.schedulers.TrampolineScheduler;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/Schedulers.class */
public final class Schedulers {
    @NonNull

    /* renamed from: a */
    static final Scheduler f19668a = RxJavaPlugins.m3366h(new SingleTask());
    @NonNull

    /* renamed from: b */
    static final Scheduler f19669b = RxJavaPlugins.m3369e(new ComputationTask());
    @NonNull

    /* renamed from: c */
    static final Scheduler f19670c = RxJavaPlugins.m3368f(new IOTask());
    @NonNull

    /* renamed from: d */
    static final Scheduler f19671d = TrampolineScheduler.m3497g();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/Schedulers$ComputationHolder.class */
    public static final class ComputationHolder {

        /* renamed from: a */
        static final Scheduler f19672a = new ComputationScheduler();

        ComputationHolder() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/Schedulers$ComputationTask.class */
    static final class ComputationTask implements Callable<Scheduler> {
        ComputationTask() {
        }

        /* renamed from: a */
        public Scheduler call() throws Exception {
            return ComputationHolder.f19672a;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/Schedulers$IOTask.class */
    static final class IOTask implements Callable<Scheduler> {
        IOTask() {
        }

        /* renamed from: a */
        public Scheduler call() throws Exception {
            return IoHolder.f19673a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/Schedulers$IoHolder.class */
    public static final class IoHolder {

        /* renamed from: a */
        static final Scheduler f19673a = new IoScheduler();

        IoHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/Schedulers$NewThreadHolder.class */
    public static final class NewThreadHolder {

        /* renamed from: a */
        static final Scheduler f19674a = new NewThreadScheduler();

        NewThreadHolder() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/Schedulers$NewThreadTask.class */
    static final class NewThreadTask implements Callable<Scheduler> {
        NewThreadTask() {
        }

        /* renamed from: a */
        public Scheduler call() throws Exception {
            return NewThreadHolder.f19674a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/Schedulers$SingleHolder.class */
    public static final class SingleHolder {

        /* renamed from: a */
        static final Scheduler f19675a = new SingleScheduler();

        SingleHolder() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/Schedulers$SingleTask.class */
    static final class SingleTask implements Callable<Scheduler> {
        SingleTask() {
        }

        /* renamed from: a */
        public Scheduler call() throws Exception {
            return SingleHolder.f19675a;
        }
    }

    static {
        RxJavaPlugins.m3367g(new NewThreadTask());
    }

    private Schedulers() {
        throw new IllegalStateException("No instances!");
    }

    @NonNull
    /* renamed from: a */
    public static Scheduler m3240a() {
        return RxJavaPlugins.m3355s(f19669b);
    }

    @NonNull
    /* renamed from: b */
    public static Scheduler m3239b() {
        return RxJavaPlugins.m3353u(f19670c);
    }

    @NonNull
    /* renamed from: c */
    public static Scheduler m3238c() {
        return RxJavaPlugins.m3351w(f19668a);
    }

    @NonNull
    /* renamed from: d */
    public static Scheduler m3237d() {
        return f19671d;
    }
}
