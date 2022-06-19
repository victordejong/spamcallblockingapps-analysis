package org.xutils.common.task;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.Executor;
import org.xutils.C9682x;
import org.xutils.common.Callback;
import org.xutils.common.task.AbsTask;
import org.xutils.common.util.LogUtil;
/* renamed from: org.xutils.common.task.b */
/* loaded from: classes2-dex2jar.jar:org/xutils/common/task/b.class */
public class C9633b<ResultType> extends AbsTask<ResultType> {

    /* renamed from: f */
    static final HandlerC9636c f40594f = new HandlerC9636c(null);

    /* renamed from: g */
    static final PriorityExecutor f40595g = new PriorityExecutor(true);

    /* renamed from: h */
    private final AbsTask<ResultType> f40596h;

    /* renamed from: i */
    private final Executor f40597i;

    /* renamed from: j */
    private volatile boolean f40598j = false;

    /* renamed from: k */
    private volatile boolean f40599k = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.xutils.common.task.b$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/common/task/b$a.class */
    public class RunnableC9634a implements Runnable {
        RunnableC9634a() {
            C9633b.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                } catch (Callback.CancelledException e) {
                    C9633b.this.onCancelled(e);
                }
                if (C9633b.this.f40598j || C9633b.this.isCancelled()) {
                    throw new Callback.CancelledException("");
                }
                C9633b.this.onStarted();
                if (C9633b.this.isCancelled()) {
                    throw new Callback.CancelledException("");
                }
                C9633b.this.f40596h.m272a(C9633b.this.f40596h.doBackground());
                C9633b c9633b = C9633b.this;
                c9633b.m272a(c9633b.f40596h.getResult());
                if (C9633b.this.isCancelled()) {
                    throw new Callback.CancelledException("");
                }
                C9633b c9633b2 = C9633b.this;
                c9633b2.onSuccess(c9633b2.f40596h.getResult());
                C9633b.this.onFinished();
            }
        }
    }

    /* renamed from: org.xutils.common.task.b$b */
    /* loaded from: classes2-dex2jar.jar:org/xutils/common/task/b$b.class */
    public static class C9635b {

        /* renamed from: a */
        final C9633b f40601a;

        /* renamed from: b */
        final Object[] f40602b;

        public C9635b(C9633b c9633b, Object... objArr) {
            this.f40601a = c9633b;
            this.f40602b = objArr;
        }
    }

    /* renamed from: org.xutils.common.task.b$c */
    /* loaded from: classes2-dex2jar.jar:org/xutils/common/task/b$c.class */
    public static final class HandlerC9636c extends Handler {
        private HandlerC9636c() {
            super(Looper.getMainLooper());
        }

        /* synthetic */ HandlerC9636c(RunnableC9634a runnableC9634a) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v54, types: [java.lang.Object[]] */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Callback.CancelledException[] cancelledExceptionArr;
            Object obj = message.obj;
            if (obj != null) {
                C9633b c9633b = null;
                if (obj instanceof C9633b) {
                    c9633b = (C9633b) obj;
                    cancelledExceptionArr = null;
                } else if (obj instanceof C9635b) {
                    C9635b c9635b = (C9635b) obj;
                    c9633b = c9635b.f40601a;
                    cancelledExceptionArr = c9635b.f40602b;
                } else {
                    cancelledExceptionArr = null;
                }
                if (c9633b == null) {
                    throw new RuntimeException("msg.obj not instanceof TaskProxy");
                }
                try {
                    switch (message.what) {
                        case 1000000001:
                            c9633b.f40596h.onWaiting();
                            break;
                        case 1000000002:
                            c9633b.f40596h.onStarted();
                            break;
                        case 1000000003:
                            c9633b.f40596h.onSuccess(c9633b.getResult());
                            break;
                        case 1000000004:
                            Callback.CancelledException cancelledException = cancelledExceptionArr[0];
                            LogUtil.m260d(cancelledException.getMessage(), cancelledException);
                            c9633b.f40596h.onError(cancelledException, false);
                            break;
                        case 1000000005:
                            c9633b.f40596h.onUpdate(message.arg1, cancelledExceptionArr);
                            break;
                        case 1000000006:
                            if (!c9633b.f40598j) {
                                c9633b.f40598j = true;
                                c9633b.f40596h.onCancelled(cancelledExceptionArr[0]);
                                break;
                            } else {
                                return;
                            }
                        case 1000000007:
                            if (!c9633b.f40599k) {
                                c9633b.f40599k = true;
                                c9633b.f40596h.onFinished();
                                break;
                            } else {
                                return;
                            }
                    }
                    return;
                } catch (Throwable th) {
                    c9633b.mo268b(AbsTask.State.ERROR);
                    if (message.what != 1000000004) {
                        c9633b.f40596h.onError(th, true);
                        return;
                    } else if (C9682x.isDebug()) {
                        throw new RuntimeException(th);
                    } else {
                        return;
                    }
                }
            }
            throw new IllegalArgumentException("msg must not be null");
        }
    }

    public C9633b(AbsTask<ResultType> absTask) {
        super(absTask);
        this.f40596h = absTask;
        absTask.m271c(this);
        m271c(null);
        Executor executor = absTask.getExecutor();
        this.f40597i = executor == null ? f40595g : executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.xutils.common.task.AbsTask
    /* renamed from: b */
    public final void mo268b(AbsTask.State state) {
        super.mo268b(state);
        this.f40596h.mo268b(state);
    }

    @Override // org.xutils.common.task.AbsTask
    public final ResultType doBackground() {
        onWaiting();
        this.f40597i.execute(new RunnableC9632a(this.f40596h.getPriority(), new RunnableC9634a()));
        return null;
    }

    @Override // org.xutils.common.task.AbsTask
    public final Executor getExecutor() {
        return this.f40597i;
    }

    @Override // org.xutils.common.task.AbsTask
    public final Priority getPriority() {
        return this.f40596h.getPriority();
    }

    @Override // org.xutils.common.task.AbsTask
    public void onCancelled(Callback.CancelledException cancelledException) {
        mo268b(AbsTask.State.CANCELLED);
        f40594f.obtainMessage(1000000006, new C9635b(this, cancelledException)).sendToTarget();
    }

    @Override // org.xutils.common.task.AbsTask
    public void onError(Throwable th, boolean z) {
        mo268b(AbsTask.State.ERROR);
        f40594f.obtainMessage(1000000004, new C9635b(this, th)).sendToTarget();
    }

    @Override // org.xutils.common.task.AbsTask
    public void onFinished() {
        f40594f.obtainMessage(1000000007, this).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.xutils.common.task.AbsTask
    public void onStarted() {
        mo268b(AbsTask.State.STARTED);
        f40594f.obtainMessage(1000000002, this).sendToTarget();
    }

    @Override // org.xutils.common.task.AbsTask
    public void onSuccess(ResultType resulttype) {
        mo268b(AbsTask.State.SUCCESS);
        f40594f.obtainMessage(1000000003, this).sendToTarget();
    }

    @Override // org.xutils.common.task.AbsTask
    public void onUpdate(int i, Object... objArr) {
        f40594f.obtainMessage(1000000005, i, i, new C9635b(this, objArr)).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.xutils.common.task.AbsTask
    public void onWaiting() {
        mo268b(AbsTask.State.WAITING);
        f40594f.obtainMessage(1000000001, this).sendToTarget();
    }
}
