package scala.math;

import java.util.Comparator;
import scala.Function1;
import scala.Some;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00053q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\u000fM_^\u0004&/[8sSRLxJ\u001d3fe&tw-S7qY&\u001c\u0017\u000e^:\u000b\u0005\r!\u0011\u0001B7bi\"T\u0011!B\u0001\u0006g\u000e\fG.Y\u0002\u0001'\t\u0001\u0001\u0002\u0005\u0002\n\u00155\tA!\u0003\u0002\f\t\t1\u0011I\\=SK\u001aDQ!\u0004\u0001\u0005\u00029\ta\u0001J5oSR$C#A\b\u0011\u0005%\u0001\u0012BA\t\u0005\u0005\u0011)f.\u001b;\t\u000bM\u0001A1\u0001\u000b\u0002\u000f=\u0014H-\u001a:fIV\u0011Q\u0003\b\u000b\u0003-\u0015\u00022a\u0006\r\u001b\u001b\u0005\u0011\u0011BA\r\u0003\u0005!y%\u000fZ3sS:<\u0007CA\u000e\u001d\u0019\u0001!Q!\b\nC\u0002y\u0011\u0011!Q\t\u0003?\t\u0002\"!\u0003\u0011\n\u0005\u0005\"!a\u0002(pi\"Lgn\u001a\t\u0003\u0013\rJ!\u0001\n\u0003\u0003\u0007\u0005s\u0017\u0010C\u0004'%\u0005\u0005\t9A\u0014\u0002\u0015\u00154\u0018\u000eZ3oG\u0016$\u0013\u0007\u0005\u0003\nQiQ\u0013BA\u0015\u0005\u0005%1UO\\2uS>t\u0017\u0007E\u0002,aii\u0011\u0001\f\u0006\u0003[9\nA\u0001\\1oO*\tq&\u0001\u0003kCZ\f\u0017BA\u0019-\u0005)\u0019u.\u001c9be\u0006\u0014G.\u001a\u0005\u0006g\u0001!\u0019\u0001N\u0001\u0015G>l\u0007/\u0019:bi>\u0014Hk\\(sI\u0016\u0014\u0018N\\4\u0016\u0005UBDC\u0001\u001c:!\r9\u0002d\u000e\t\u00037a\"Q!\b\u001aC\u0002yAQA\u000f\u001aA\u0004m\n1aY7q!\rathN\u0007\u0002{)\u0011aHL\u0001\u0005kRLG.\u0003\u0002A{\tQ1i\\7qCJ\fGo\u001c:")
/* loaded from: classes3-dex2jar.jar:scala/math/LowPriorityOrderingImplicits.class */
public interface LowPriorityOrderingImplicits {

    /* renamed from: scala.math.LowPriorityOrderingImplicits$class */
    /* loaded from: classes3-dex2jar.jar:scala/math/LowPriorityOrderingImplicits$class.class */
    public abstract class Cclass {
        public static void $init$(LowPriorityOrderingImplicits lowPriorityOrderingImplicits) {
        }

        public static Ordering comparatorToOrdering(LowPriorityOrderingImplicits lowPriorityOrderingImplicits, Comparator comparator) {
            return new Ordering<A>(lowPriorityOrderingImplicits, comparator) { // from class: scala.math.LowPriorityOrderingImplicits$$anon$7
                private final Comparator cmp$2;

                {
                    this.cmp$2 = comparator;
                    PartialOrdering.Cclass.$init$(this);
                    Ordering.Cclass.$init$(this);
                }

                @Override // scala.math.Ordering, java.util.Comparator
                public int compare(A a, A a2) {
                    return this.cmp$2.compare(a, a2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
                public boolean equiv(A a, A a2) {
                    return Ordering.Cclass.equiv(this, a, a2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                /* renamed from: gt */
                public boolean mo37gt(A a, A a2) {
                    return Ordering.Cclass.m40gt(this, a, a2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public boolean gteq(A a, A a2) {
                    return Ordering.Cclass.gteq(this, a, a2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                /* renamed from: lt */
                public boolean mo36lt(A a, A a2) {
                    return Ordering.Cclass.m39lt(this, a, a2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public boolean lteq(A a, A a2) {
                    return Ordering.Cclass.lteq(this, a, a2);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.math.Ordering
                public A max(A a, A a2) {
                    return Ordering.Cclass.max(this, a, a2);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.math.Ordering
                public A min(A a, A a2) {
                    return Ordering.Cclass.min(this, a, a2);
                }

                @Override // scala.math.Ordering
                public Ordering<A>.Ops mkOrderingOps(A a) {
                    return Ordering.Cclass.mkOrderingOps(this, a);
                }

                @Override // scala.math.Ordering
                /* renamed from: on */
                public <U> Ordering<U> mo49on(Function1<U, A> function1) {
                    return Ordering.Cclass.m38on(this, function1);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public Ordering<A> reverse() {
                    return Ordering.Cclass.reverse(this);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public Some<Object> tryCompare(A a, A a2) {
                    return Ordering.Cclass.tryCompare(this, a, a2);
                }
            };
        }

        public static Ordering ordered(LowPriorityOrderingImplicits lowPriorityOrderingImplicits, Function1 function1) {
            return new Ordering<A>(lowPriorityOrderingImplicits, function1) { // from class: scala.math.LowPriorityOrderingImplicits$$anon$6
                private final Function1 evidence$1$1;

                {
                    this.evidence$1$1 = function1;
                    PartialOrdering.Cclass.$init$(this);
                    Ordering.Cclass.$init$(this);
                }

                @Override // scala.math.Ordering, java.util.Comparator
                public int compare(A a, A a2) {
                    return ((Comparable) this.evidence$1$1.apply(a)).compareTo(a2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
                public boolean equiv(A a, A a2) {
                    return Ordering.Cclass.equiv(this, a, a2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                /* renamed from: gt */
                public boolean mo37gt(A a, A a2) {
                    return Ordering.Cclass.m40gt(this, a, a2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public boolean gteq(A a, A a2) {
                    return Ordering.Cclass.gteq(this, a, a2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                /* renamed from: lt */
                public boolean mo36lt(A a, A a2) {
                    return Ordering.Cclass.m39lt(this, a, a2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public boolean lteq(A a, A a2) {
                    return Ordering.Cclass.lteq(this, a, a2);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.math.Ordering
                public A max(A a, A a2) {
                    return Ordering.Cclass.max(this, a, a2);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.math.Ordering
                public A min(A a, A a2) {
                    return Ordering.Cclass.min(this, a, a2);
                }

                @Override // scala.math.Ordering
                public Ordering<A>.Ops mkOrderingOps(A a) {
                    return Ordering.Cclass.mkOrderingOps(this, a);
                }

                @Override // scala.math.Ordering
                /* renamed from: on */
                public <U> Ordering<U> mo49on(Function1<U, A> function12) {
                    return Ordering.Cclass.m38on(this, function12);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public Ordering<A> reverse() {
                    return Ordering.Cclass.reverse(this);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public Some<Object> tryCompare(A a, A a2) {
                    return Ordering.Cclass.tryCompare(this, a, a2);
                }
            };
        }
    }

    <A> Ordering<A> comparatorToOrdering(Comparator<A> comparator);

    <A> Ordering<A> ordered(Function1<A, Comparable<A>> function1);
}
