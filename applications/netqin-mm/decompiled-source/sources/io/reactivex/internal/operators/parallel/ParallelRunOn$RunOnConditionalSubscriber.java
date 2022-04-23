package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p546c.AbstractC9652a;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber.class */
public final class ParallelRunOn$RunOnConditionalSubscriber<T> extends ParallelRunOn$BaseRunOnSubscriber<T> {
    public static final long serialVersionUID = 1075119423897941642L;
    public final AbstractC9652a<? super T> actual;

    public ParallelRunOn$RunOnConditionalSubscriber(AbstractC9652a<? super T> aVar, int i, SpscArrayQueue<T> spscArrayQueue, AbstractC9845s.AbstractC9848c cVar) {
        super(i, spscArrayQueue, cVar);
        this.actual = aVar;
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38542s, dVar)) {
            this.f38542s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(this.prefetch);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelRunOn$RunOnConditionalSubscriber.run():void");
    }
}
