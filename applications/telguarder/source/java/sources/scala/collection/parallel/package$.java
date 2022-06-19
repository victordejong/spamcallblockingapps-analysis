package scala.collection.parallel;

import scala.Function1;
import scala.collection.GenTraversableOnce;
import scala.collection.parallel.Cpackage;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/package$.class */
public final class package$ {
    public static final package$ MODULE$ = null;
    private final int MIN_FOR_COPY = 512;
    private final int CHECK_RATE = 512;
    private final double SQRT2 = scala.math.package$.MODULE$.sqrt(2.0d);
    private final int availableProcessors = Runtime.getRuntime().availableProcessors();
    private final TaskSupport defaultTaskSupport = getTaskSupport();

    static {
        new package$();
    }

    private package$() {
        MODULE$ = this;
    }

    public int CHECK_RATE() {
        return this.CHECK_RATE;
    }

    public <C, T> Cpackage.CollectionsHaveToParArray<C, T> CollectionsHaveToParArray(C c, Function1<C, GenTraversableOnce<T>> function1) {
        return new Cpackage.CollectionsHaveToParArray<>(c, function1);
    }

    public int MIN_FOR_COPY() {
        return this.MIN_FOR_COPY;
    }

    public double SQRT2() {
        return this.SQRT2;
    }

    public int availableProcessors() {
        return this.availableProcessors;
    }

    public TaskSupport defaultTaskSupport() {
        return this.defaultTaskSupport;
    }

    public TaskSupport getTaskSupport() {
        return new ExecutionContextTaskSupport(ExecutionContextTaskSupport$.MODULE$.$lessinit$greater$default$1());
    }

    public Nothing$ outofbounds(int i) {
        throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
    }

    public <Coll> Coll setTaskSupport(Coll coll, TaskSupport taskSupport) {
        if (coll instanceof ParIterableLike) {
            ((ParIterableLike) coll).tasksupport_$eq(taskSupport);
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        } else {
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
        return coll;
    }

    public int thresholdFromSize(int i, int i2) {
        int i3 = i;
        if (i2 > 1) {
            i3 = (i / (i2 * 8)) + 1;
        }
        return i3;
    }

    public Nothing$ unsupported() {
        throw new UnsupportedOperationException();
    }

    public Nothing$ unsupportedop(String str) {
        throw new UnsupportedOperationException(str);
    }
}
