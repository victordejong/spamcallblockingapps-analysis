package org.xutils.common.task;

import java.util.concurrent.Executor;
import org.xutils.common.Callback;
/* loaded from: classes2-dex2jar.jar:org/xutils/common/task/AbsTask.class */
public abstract class AbsTask<ResultType> implements Callback.Cancelable {

    /* renamed from: a */
    private C9633b f40559a;

    /* renamed from: b */
    private final Callback.Cancelable f40560b;

    /* renamed from: c */
    private volatile boolean f40561c;

    /* renamed from: d */
    private volatile State f40562d;

    /* renamed from: e */
    private ResultType f40563e;

    /* loaded from: classes2-dex2jar.jar:org/xutils/common/task/AbsTask$State.class */
    public enum State {
        IDLE(0),
        WAITING(1),
        STARTED(2),
        SUCCESS(3),
        CANCELLED(4),
        ERROR(5);
        
        private final int value;

        State(int i) {
            this.value = i;
        }

        public int value() {
            return this.value;
        }
    }

    public AbsTask() {
        this(null);
    }

    public AbsTask(Callback.Cancelable cancelable) {
        this.f40559a = null;
        this.f40561c = false;
        this.f40562d = State.IDLE;
        this.f40560b = cancelable;
    }

    /* renamed from: a */
    public final void m272a(ResultType resulttype) {
        this.f40563e = resulttype;
    }

    /* renamed from: b */
    public void mo268b(State state) {
        this.f40562d = state;
    }

    /* renamed from: c */
    public final void m271c(C9633b c9633b) {
        this.f40559a = c9633b;
    }

    @Override // org.xutils.common.Callback.Cancelable
    public final void cancel() {
        if (this.f40561c) {
            return;
        }
        synchronized (this) {
            if (this.f40561c) {
                return;
            }
            this.f40561c = true;
            cancelWorks();
            Callback.Cancelable cancelable = this.f40560b;
            if (cancelable != null && !cancelable.isCancelled()) {
                this.f40560b.cancel();
            }
            if (this.f40562d == State.WAITING || (this.f40562d == State.STARTED && isCancelFast())) {
                C9633b c9633b = this.f40559a;
                if (c9633b != null) {
                    c9633b.onCancelled(new Callback.CancelledException("cancelled by user"));
                    this.f40559a.onFinished();
                } else if (this instanceof C9633b) {
                    onCancelled(new Callback.CancelledException("cancelled by user"));
                    onFinished();
                }
            }
        }
    }

    protected void cancelWorks() {
    }

    public abstract ResultType doBackground();

    public Executor getExecutor() {
        return null;
    }

    public Priority getPriority() {
        return null;
    }

    public final ResultType getResult() {
        return this.f40563e;
    }

    public final State getState() {
        return this.f40562d;
    }

    protected boolean isCancelFast() {
        return false;
    }

    @Override // org.xutils.common.Callback.Cancelable
    public final boolean isCancelled() {
        Callback.Cancelable cancelable;
        return this.f40561c || this.f40562d == State.CANCELLED || ((cancelable = this.f40560b) != null && cancelable.isCancelled());
    }

    public final boolean isFinished() {
        return this.f40562d.value() > State.STARTED.value();
    }

    public void onCancelled(Callback.CancelledException cancelledException) {
    }

    public abstract void onError(Throwable th, boolean z);

    public void onFinished() {
    }

    public void onStarted() {
    }

    public abstract void onSuccess(ResultType resulttype);

    public void onUpdate(int i, Object... objArr) {
    }

    public void onWaiting() {
    }

    public final void update(int i, Object... objArr) {
        C9633b c9633b = this.f40559a;
        if (c9633b != null) {
            c9633b.onUpdate(i, objArr);
        }
    }
}
