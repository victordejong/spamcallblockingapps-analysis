package org.xutils.common.task;

import android.os.Looper;
import java.util.concurrent.atomic.AtomicInteger;
import org.xutils.C9682x;
import org.xutils.common.Callback;
import org.xutils.common.TaskController;
import org.xutils.common.util.LogUtil;
/* loaded from: classes2-dex2jar.jar:org/xutils/common/task/TaskControllerImpl.class */
public final class TaskControllerImpl implements TaskController {

    /* renamed from: a */
    private static volatile TaskController f40572a;

    /* renamed from: org.xutils.common.task.TaskControllerImpl$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/common/task/TaskControllerImpl$a.class */
    class RunnableC9625a implements Runnable {

        /* renamed from: d */
        private final int f40573d;

        /* renamed from: e */
        private final AtomicInteger f40574e = new AtomicInteger(0);

        /* renamed from: f */
        final /* synthetic */ AbsTask[] f40575f;

        /* renamed from: g */
        final /* synthetic */ Callback.GroupCallback f40576g;

        RunnableC9625a(AbsTask[] absTaskArr, Callback.GroupCallback groupCallback) {
            TaskControllerImpl.this = r6;
            this.f40575f = absTaskArr;
            this.f40576g = groupCallback;
            this.f40573d = absTaskArr.length;
        }

        @Override // java.lang.Runnable
        public void run() {
            Callback.GroupCallback groupCallback;
            if (this.f40574e.incrementAndGet() != this.f40573d || (groupCallback = this.f40576g) == null) {
                return;
            }
            try {
                groupCallback.onAllFinished();
            } catch (Throwable th) {
                try {
                    this.f40576g.onError(null, th, true);
                } catch (Throwable th2) {
                    LogUtil.m258e(th2.getMessage(), th2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.xutils.common.task.TaskControllerImpl$b */
    /* loaded from: classes2-dex2jar.jar:org/xutils/common/task/TaskControllerImpl$b.class */
    public class C9626b extends C9633b {

        /* renamed from: l */
        final /* synthetic */ Callback.GroupCallback f40578l;

        /* renamed from: m */
        final /* synthetic */ AbsTask f40579m;

        /* renamed from: n */
        final /* synthetic */ Runnable f40580n;

        /* renamed from: org.xutils.common.task.TaskControllerImpl$b$a */
        /* loaded from: classes2-dex2jar.jar:org/xutils/common/task/TaskControllerImpl$b$a.class */
        class RunnableC9627a implements Runnable {
            RunnableC9627a() {
                C9626b.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C9626b c9626b = C9626b.this;
                Callback.GroupCallback groupCallback = c9626b.f40578l;
                if (groupCallback != null) {
                    try {
                        groupCallback.onSuccess(c9626b.f40579m);
                    } catch (Throwable th) {
                        try {
                            C9626b c9626b2 = C9626b.this;
                            c9626b2.f40578l.onError(c9626b2.f40579m, th, true);
                        } catch (Throwable th2) {
                            LogUtil.m258e(th2.getMessage(), th2);
                        }
                    }
                }
            }
        }

        /* renamed from: org.xutils.common.task.TaskControllerImpl$b$b */
        /* loaded from: classes2-dex2jar.jar:org/xutils/common/task/TaskControllerImpl$b$b.class */
        class RunnableC9628b implements Runnable {

            /* renamed from: d */
            final /* synthetic */ Callback.CancelledException f40583d;

            RunnableC9628b(Callback.CancelledException cancelledException) {
                C9626b.this = r4;
                this.f40583d = cancelledException;
            }

            @Override // java.lang.Runnable
            public void run() {
                C9626b c9626b = C9626b.this;
                Callback.GroupCallback groupCallback = c9626b.f40578l;
                if (groupCallback != null) {
                    try {
                        groupCallback.onCancelled(c9626b.f40579m, this.f40583d);
                    } catch (Throwable th) {
                        try {
                            C9626b c9626b2 = C9626b.this;
                            c9626b2.f40578l.onError(c9626b2.f40579m, th, true);
                        } catch (Throwable th2) {
                            LogUtil.m258e(th2.getMessage(), th2);
                        }
                    }
                }
            }
        }

        /* renamed from: org.xutils.common.task.TaskControllerImpl$b$c */
        /* loaded from: classes2-dex2jar.jar:org/xutils/common/task/TaskControllerImpl$b$c.class */
        class RunnableC9629c implements Runnable {

            /* renamed from: d */
            final /* synthetic */ Throwable f40585d;

            /* renamed from: e */
            final /* synthetic */ boolean f40586e;

            RunnableC9629c(Throwable th, boolean z) {
                C9626b.this = r4;
                this.f40585d = th;
                this.f40586e = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                C9626b c9626b = C9626b.this;
                Callback.GroupCallback groupCallback = c9626b.f40578l;
                if (groupCallback != null) {
                    try {
                        groupCallback.onError(c9626b.f40579m, this.f40585d, this.f40586e);
                    } catch (Throwable th) {
                        LogUtil.m258e(th.getMessage(), th);
                    }
                }
            }
        }

        /* renamed from: org.xutils.common.task.TaskControllerImpl$b$d */
        /* loaded from: classes2-dex2jar.jar:org/xutils/common/task/TaskControllerImpl$b$d.class */
        class RunnableC9630d implements Runnable {
            RunnableC9630d() {
                C9626b.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    C9626b c9626b = C9626b.this;
                    Callback.GroupCallback groupCallback = c9626b.f40578l;
                    if (groupCallback != null) {
                        groupCallback.onFinished(c9626b.f40579m);
                    }
                } finally {
                    try {
                    } finally {
                        try {
                        } finally {
                        }
                    }
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C9626b(AbsTask absTask, Callback.GroupCallback groupCallback, AbsTask absTask2, Runnable runnable) {
            super(absTask);
            TaskControllerImpl.this = r4;
            this.f40578l = groupCallback;
            this.f40579m = absTask2;
            this.f40580n = runnable;
        }

        @Override // org.xutils.common.task.C9633b, org.xutils.common.task.AbsTask
        public void onCancelled(Callback.CancelledException cancelledException) {
            super.onCancelled(cancelledException);
            TaskControllerImpl.this.post(new RunnableC9628b(cancelledException));
        }

        @Override // org.xutils.common.task.C9633b, org.xutils.common.task.AbsTask
        public void onError(Throwable th, boolean z) {
            super.onError(th, z);
            TaskControllerImpl.this.post(new RunnableC9629c(th, z));
        }

        @Override // org.xutils.common.task.C9633b, org.xutils.common.task.AbsTask
        public void onFinished() {
            super.onFinished();
            TaskControllerImpl.this.post(new RunnableC9630d());
        }

        @Override // org.xutils.common.task.C9633b, org.xutils.common.task.AbsTask
        public void onSuccess(Object obj) {
            super.onSuccess(obj);
            TaskControllerImpl.this.post(new RunnableC9627a());
        }
    }

    /* renamed from: org.xutils.common.task.TaskControllerImpl$c */
    /* loaded from: classes2-dex2jar.jar:org/xutils/common/task/TaskControllerImpl$c.class */
    class C9631c implements Callback.Cancelable {

        /* renamed from: a */
        final /* synthetic */ AbsTask[] f40589a;

        C9631c(AbsTask[] absTaskArr) {
            TaskControllerImpl.this = r4;
            this.f40589a = absTaskArr;
        }

        @Override // org.xutils.common.Callback.Cancelable
        public void cancel() {
            for (AbsTask absTask : this.f40589a) {
                absTask.cancel();
            }
        }

        @Override // org.xutils.common.Callback.Cancelable
        public boolean isCancelled() {
            boolean z = true;
            for (AbsTask absTask : this.f40589a) {
                if (!absTask.isCancelled()) {
                    z = false;
                }
            }
            return z;
        }
    }

    private TaskControllerImpl() {
    }

    public static void registerInstance() {
        if (f40572a == null) {
            synchronized (TaskController.class) {
                try {
                    if (f40572a == null) {
                        f40572a = new TaskControllerImpl();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        C9682x.Ext.setTaskController(f40572a);
    }

    @Override // org.xutils.common.TaskController
    public void autoPost(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            C9633b.f40594f.post(runnable);
        }
    }

    @Override // org.xutils.common.TaskController
    public void post(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        C9633b.f40594f.post(runnable);
    }

    @Override // org.xutils.common.TaskController
    public void postDelayed(Runnable runnable, long j) {
        if (runnable == null) {
            return;
        }
        C9633b.f40594f.postDelayed(runnable, j);
    }

    @Override // org.xutils.common.TaskController
    public void removeCallbacks(Runnable runnable) {
        C9633b.f40594f.removeCallbacks(runnable);
    }

    @Override // org.xutils.common.TaskController
    public void run(Runnable runnable) {
        PriorityExecutor priorityExecutor = C9633b.f40595g;
        if (!priorityExecutor.isBusy()) {
            priorityExecutor.execute(runnable);
        } else {
            new Thread(runnable).start();
        }
    }

    @Override // org.xutils.common.TaskController
    public <T> AbsTask<T> start(AbsTask<T> absTask) {
        C9633b c9633b = absTask instanceof C9633b ? (C9633b) absTask : new C9633b(absTask);
        try {
            c9633b.doBackground();
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
        return c9633b;
    }

    /* JADX WARN: Finally extract failed */
    @Override // org.xutils.common.TaskController
    public <T> T startSync(AbsTask<T> absTask) {
        T t = null;
        try {
            try {
                absTask.onWaiting();
                absTask.onStarted();
                T doBackground = absTask.doBackground();
                t = doBackground;
                absTask.onSuccess(doBackground);
                t = doBackground;
            } catch (Throwable th) {
                absTask.onFinished();
                throw th;
            }
        } catch (Callback.CancelledException e) {
            absTask.onCancelled(e);
        } catch (Throwable th2) {
            absTask.onError(th2, false);
            throw th2;
        }
        absTask.onFinished();
        return t;
    }

    @Override // org.xutils.common.TaskController
    public <T extends AbsTask<?>> Callback.Cancelable startTasks(Callback.GroupCallback<T> groupCallback, T... tArr) {
        if (tArr != null) {
            RunnableC9625a runnableC9625a = new RunnableC9625a(tArr, groupCallback);
            for (T t : tArr) {
                start(new C9626b(t, groupCallback, t, runnableC9625a));
            }
            return new C9631c(tArr);
        }
        throw new IllegalArgumentException("task must not be null");
    }
}
