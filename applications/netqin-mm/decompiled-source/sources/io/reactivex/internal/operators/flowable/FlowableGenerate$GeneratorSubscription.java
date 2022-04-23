package io.reactivex.internal.operators.flowable;

import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9811d;
import p530d.p541c.p542a0.AbstractC9640c;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription.class */
public final class FlowableGenerate$GeneratorSubscription<T, S> extends AtomicLong implements AbstractC9811d<T>, AbstractC10434d {
    public static final long serialVersionUID = 7565982551505011832L;
    public final AbstractC10433c<? super T> actual;
    public volatile boolean cancelled;
    public final AbstractC9644g<? super S> disposeState;
    public final AbstractC9640c<S, ? super AbstractC9811d<T>, S> generator;
    public boolean hasNext;
    public S state;
    public boolean terminate;

    public FlowableGenerate$GeneratorSubscription(AbstractC10433c<? super T> cVar, AbstractC9640c<S, ? super AbstractC9811d<T>, S> cVar2, AbstractC9644g<? super S> gVar, S s) {
        this.actual = cVar;
        this.generator = cVar2;
        this.disposeState = gVar;
        this.state = s;
    }

    private void dispose(S s) {
        try {
            this.disposeState.accept(s);
        } catch (Throwable th) {
            C9863a.m1822b(th);
            C9815a.m1923b(th);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (!this.cancelled) {
            this.cancelled = true;
            if (C9800b.m2012a(this, 1L) == 0) {
                S s = this.state;
                this.state = null;
                dispose(s);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9811d
    public void onComplete() {
        if (!this.terminate) {
            this.terminate = true;
            this.actual.onComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9811d
    public void onError(Throwable th) {
        if (this.terminate) {
            C9815a.m1923b(th);
            return;
        }
        Throwable th2 = th;
        if (th == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        this.terminate = true;
        this.actual.onError(th2);
    }

    @Override // p530d.p541c.AbstractC9811d
    public void onNext(T t) {
        if (this.terminate) {
            return;
        }
        if (this.hasNext) {
            onError(new IllegalStateException("onNext already called in this generate turn"));
        } else if (t == null) {
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
        } else {
            this.hasNext = true;
            this.actual.onNext(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.concurrent.atomic.AtomicLong, io.reactivex.internal.operators.flowable.FlowableGenerate$GeneratorSubscription, java.lang.Object, io.reactivex.internal.operators.flowable.FlowableGenerate$GeneratorSubscription<T, S>] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // p611j.p612a.AbstractC10434d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void request(long r6) {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableGenerate$GeneratorSubscription.request(long):void");
    }
}
