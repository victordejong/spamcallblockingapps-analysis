package io.reactivex.internal.operators.observable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer.class */
public final class ObservableReplay$SizeBoundReplayBuffer<T> extends ObservableReplay$BoundedReplayBuffer<T> {
    public static final long serialVersionUID = -5898283885385201806L;
    public final int limit;

    public ObservableReplay$SizeBoundReplayBuffer(int i) {
        this.limit = i;
    }

    @Override // io.reactivex.internal.operators.observable.ObservableReplay$BoundedReplayBuffer
    public void truncate() {
        if (this.size > this.limit) {
            removeFirst();
        }
    }
}
