package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$startsWith$2.class */
public final class ParSeqLike$$anonfun$startsWith$2 extends AbstractFunction1<ParSeq<S>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParSeqLike $outer;
    private final int offset$1;

    /* JADX WARN: Multi-variable type inference failed */
    public ParSeqLike$$anonfun$startsWith$2(ParSeqLike parSeqLike, ParSeqLike<T, Repr, Sequential> parSeqLike2) {
        Objects.requireNonNull(parSeqLike);
        this.$outer = parSeqLike;
        this.offset$1 = parSeqLike2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((ParSeq) obj));
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00d8, code lost:
        if (r13.length() == 0) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean apply(scala.collection.parallel.ParSeq<S> r13) {
        /*
            r12 = this;
            r0 = r12
            int r0 = r0.offset$1
            r14 = r0
            r0 = 0
            r15 = r0
            r0 = r14
            if (r0 < 0) goto Lbc
            r0 = r14
            r1 = r12
            scala.collection.parallel.ParSeqLike r1 = r1.$outer
            int r1 = r1.length()
            if (r0 < r1) goto L1b
            goto Lbc
        L1b:
            r0 = r13
            int r0 = r0.length()
            if (r0 != 0) goto L27
            goto Ldb
        L27:
            r0 = r13
            int r0 = r0.length()
            r1 = r12
            scala.collection.parallel.ParSeqLike r1 = r1.$outer
            int r1 = r1.length()
            r2 = r12
            int r2 = r2.offset$1
            int r1 = r1 - r2
            if (r0 <= r1) goto L44
            r0 = r15
            r16 = r0
            goto Lde
        L44:
            scala.collection.parallel.ParSeqLike$$anonfun$startsWith$2$$anon$6 r0 = new scala.collection.parallel.ParSeqLike$$anonfun$startsWith$2$$anon$6
            r1 = r0
            r2 = r12
            r1.<init>(r2)
            r17 = r0
            r0 = r12
            scala.collection.parallel.ParSeqLike r0 = r0.$outer
            scala.collection.parallel.TaskSupport r0 = r0.tasksupport()
            r18 = r0
            r0 = r12
            scala.collection.parallel.ParSeqLike r0 = r0.$outer
            r19 = r0
            r0 = r18
            scala.collection.parallel.ParSeqLike$SameElements r1 = new scala.collection.parallel.ParSeqLike$SameElements
            r2 = r1
            r3 = r19
            r4 = r19
            r5 = r19
            scala.collection.parallel.SeqSplitter r5 = r5.splitter()
            scala.Predef$ r6 = scala.Predef$.MODULE$
            r7 = 2
            int[] r7 = new int[r7]
            r8 = r7
            r9 = 0
            r10 = r12
            int r10 = r10.offset$1
            r8[r9] = r10
            r8 = r7
            r9 = 1
            r10 = r13
            int r10 = r10.length()
            r8[r9] = r10
            scala.collection.mutable.WrappedArray r6 = r6.wrapIntArray(r7)
            scala.collection.Seq r5 = r5.psplitWithSignalling(r6)
            r6 = 1
            java.lang.Object r5 = r5.apply(r6)
            scala.collection.generic.DelegatedSignalling r5 = (scala.collection.generic.DelegatedSignalling) r5
            scala.collection.parallel.ParIterableLike$SignallingOps r4 = r4.delegatedSignalling2ops(r5)
            r5 = r17
            scala.collection.generic.DelegatedSignalling r4 = r4.assign(r5)
            scala.collection.parallel.SeqSplitter r4 = (scala.collection.parallel.SeqSplitter) r4
            r5 = r13
            scala.collection.parallel.SeqSplitter r5 = r5.splitter()
            r2.<init>(r3, r4, r5)
            java.lang.Object r0 = r0.executeAndWaitResult(r1)
            boolean r0 = scala.runtime.BoxesRunTime.unboxToBoolean(r0)
            r16 = r0
            goto Lde
        Lbc:
            r0 = r15
            r16 = r0
            r0 = r12
            int r0 = r0.offset$1
            r1 = r12
            scala.collection.parallel.ParSeqLike r1 = r1.$outer
            int r1 = r1.length()
            if (r0 != r1) goto Lde
            r0 = r15
            r16 = r0
            r0 = r13
            int r0 = r0.length()
            if (r0 != 0) goto Lde
        Ldb:
            r0 = 1
            r16 = r0
        Lde:
            r0 = r16
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.parallel.ParSeqLike$$anonfun$startsWith$2.apply(scala.collection.parallel.ParSeq):boolean");
    }
}
