package io.reactivex.internal.operators.flowable;

import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription.class */
public final class FlowableRangeLong$RangeSubscription extends FlowableRangeLong$BaseRangeSubscription {
    public static final long serialVersionUID = 2587302975077663557L;
    public final AbstractC10433c<? super Long> actual;

    public FlowableRangeLong$RangeSubscription(AbstractC10433c<? super Long> cVar, long j, long j2) {
        super(j, j2);
        this.actual = cVar;
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableRangeLong$BaseRangeSubscription
    public void fastPath() {
        long j = this.end;
        AbstractC10433c<? super Long> cVar = this.actual;
        for (long j2 = this.index; j2 != j; j2++) {
            if (!this.cancelled) {
                cVar.onNext(Long.valueOf(j2));
            } else {
                return;
            }
        }
        if (!this.cancelled) {
            cVar.onComplete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // io.reactivex.internal.operators.flowable.FlowableRangeLong$BaseRangeSubscription
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void slowPath(long r6) {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.end
            r8 = r0
            r0 = r5
            long r0 = r0.index
            r10 = r0
            r0 = r5
            j.a.c<? super java.lang.Long> r0 = r0.actual
            r12 = r0
        L_0x0011:
            r0 = 0
            r13 = r0
        L_0x0014:
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0045
            r0 = r10
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0045
            r0 = r5
            boolean r0 = r0.cancelled
            if (r0 == 0) goto L_0x002a
            return
        L_0x002a:
            r0 = r12
            r1 = r10
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            r0.onNext(r1)
            r0 = r13
            r1 = 1
            long r0 = r0 + r1
            r13 = r0
            r0 = r10
            r1 = 1
            long r0 = r0 + r1
            r10 = r0
            goto L_0x0014
        L_0x0045:
            r0 = r10
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x005b
            r0 = r5
            boolean r0 = r0.cancelled
            if (r0 != 0) goto L_0x005a
            r0 = r12
            r0.onComplete()
        L_0x005a:
            return
        L_0x005b:
            r0 = r5
            long r0 = r0.get()
            r15 = r0
            r0 = r15
            r6 = r0
            r0 = r13
            r1 = r15
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0014
            r0 = r5
            r1 = r10
            r0.index = r1
            r0 = r5
            r1 = r13
            long r1 = -r1
            long r0 = r0.addAndGet(r1)
            r13 = r0
            r0 = r13
            r6 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0011
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableRangeLong$RangeSubscription.slowPath(long):void");
    }
}
