package scala.concurrent;

import java.util.concurrent.atomic.AtomicInteger;
import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$2.class */
public final class Future$$anonfun$2 extends AbstractFunction1<Try<T>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 p$11;
    private final AtomicInteger ref$1;
    private final Promise result$1;

    public Future$$anonfun$2(Function1 function1, Promise promise, AtomicInteger atomicInteger) {
        this.p$11 = function1;
        this.result$1 = promise;
        this.ref$1 = atomicInteger;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Try) obj);
        return BoxedUnit.UNIT;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void apply(scala.util.Try<T> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof scala.util.Success     // Catch: java.lang.Throwable -> L6e
            if (r0 == 0) goto L4b
            r0 = r6
            scala.util.Success r0 = (scala.util.Success) r0     // Catch: java.lang.Throwable -> L6e
            r7 = r0
            r0 = r5
            scala.Function1 r0 = r0.p$11     // Catch: java.lang.Throwable -> L6e
            r1 = r7
            java.lang.Object r1 = r1.value()     // Catch: java.lang.Throwable -> L6e
            java.lang.Object r0 = r0.apply(r1)     // Catch: java.lang.Throwable -> L6e
            boolean r0 = scala.runtime.BoxesRunTime.unboxToBoolean(r0)     // Catch: java.lang.Throwable -> L6e
            if (r0 == 0) goto L4b
            r0 = r5
            scala.concurrent.Promise r0 = r0.result$1     // Catch: java.lang.Throwable -> L6e
            r6 = r0
            scala.util.Success r0 = new scala.util.Success     // Catch: java.lang.Throwable -> L6e
            r8 = r0
            scala.Some r0 = new scala.Some     // Catch: java.lang.Throwable -> L6e
            r9 = r0
            r0 = r9
            r1 = r7
            java.lang.Object r1 = r1.value()     // Catch: java.lang.Throwable -> L6e
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L6e
            r0 = r8
            r1 = r9
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L6e
            r0 = r6
            r1 = r8
            boolean r0 = r0.tryComplete(r1)     // Catch: java.lang.Throwable -> L6e
            scala.runtime.BoxedUnit r0 = scala.runtime.BoxedUnit.UNIT     // Catch: java.lang.Throwable -> L6e
            r6 = r0
            goto L4f
        L4b:
            scala.runtime.BoxedUnit r0 = scala.runtime.BoxedUnit.UNIT     // Catch: java.lang.Throwable -> L6e
            r6 = r0
        L4f:
            r0 = r5
            java.util.concurrent.atomic.AtomicInteger r0 = r0.ref$1
            int r0 = r0.decrementAndGet()
            if (r0 != 0) goto L6d
            r0 = r5
            scala.concurrent.Promise r0 = r0.result$1
            scala.util.Success r1 = new scala.util.Success
            r2 = r1
            scala.None$ r3 = scala.None$.MODULE$
            r2.<init>(r3)
            boolean r0 = r0.tryComplete(r1)
        L6d:
            return
        L6e:
            r6 = move-exception
            r0 = r5
            java.util.concurrent.atomic.AtomicInteger r0 = r0.ref$1
            int r0 = r0.decrementAndGet()
            if (r0 != 0) goto L8d
            r0 = r5
            scala.concurrent.Promise r0 = r0.result$1
            scala.util.Success r1 = new scala.util.Success
            r2 = r1
            scala.None$ r3 = scala.None$.MODULE$
            r2.<init>(r3)
            boolean r0 = r0.tryComplete(r1)
        L8d:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.Future$$anonfun$2.apply(scala.util.Try):void");
    }
}
