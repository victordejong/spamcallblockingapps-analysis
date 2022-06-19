package scala.math;

import java.util.Comparator;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.Tuple3;
import scala.Tuple4;
import scala.Tuple5;
import scala.Tuple6;
import scala.Tuple7;
import scala.Tuple8;
import scala.Tuple9;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.math.LowPriorityOrderingImplicits;
import scala.math.Ordering;
import scala.math.PartialOrdering;
/* loaded from: classes3-dex2jar.jar:scala/math/Ordering$.class */
public final class Ordering$ implements LowPriorityOrderingImplicits, Serializable {
    public static final Ordering$ MODULE$ = null;

    static {
        new Ordering$();
    }

    private Ordering$() {
        MODULE$ = this;
        LowPriorityOrderingImplicits.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T> Ordering<Iterable<T>> Iterable(Ordering<T> ordering) {
        return new Ordering<Iterable<T>>(ordering) { // from class: scala.math.Ordering$$anon$10
            private final Ordering ord$1;

            {
                this.ord$1 = ordering;
                PartialOrdering.Cclass.$init$(this);
                Ordering.Cclass.$init$(this);
            }

            public int compare(Iterable<T> iterable, Iterable<T> iterable2) {
                Iterator it = iterable.iterator();
                Iterator it2 = iterable2.iterator();
                while (it.hasNext() && it2.hasNext()) {
                    int compare = this.ord$1.compare(it.next(), it2.next());
                    if (compare != 0) {
                        return compare;
                    }
                }
                return Ordering$Boolean$.MODULE$.compare(it.hasNext(), it2.hasNext());
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
            public boolean equiv(Object obj, Object obj2) {
                return Ordering.Cclass.equiv(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: gt */
            public boolean mo37gt(Object obj, Object obj2) {
                return Ordering.Cclass.m40gt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean gteq(Object obj, Object obj2) {
                return Ordering.Cclass.gteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: lt */
            public boolean mo36lt(Object obj, Object obj2) {
                return Ordering.Cclass.m39lt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean lteq(Object obj, Object obj2) {
                return Ordering.Cclass.lteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object max(Object obj, Object obj2) {
                return Ordering.Cclass.max(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object min(Object obj, Object obj2) {
                return Ordering.Cclass.min(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Ordering.Ops mkOrderingOps(Object obj) {
                return Ordering.Cclass.mkOrderingOps(this, obj);
            }

            @Override // scala.math.Ordering
            /* renamed from: on */
            public <U> Ordering<U> mo49on(Function1<U, Iterable<T>> function1) {
                return Ordering.Cclass.m38on(this, function1);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Ordering<Iterable<T>> reverse() {
                return Ordering.Cclass.reverse(this);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Some tryCompare(Object obj, Object obj2) {
                return Ordering.Cclass.tryCompare(this, obj, obj2);
            }
        };
    }

    public <T> Ordering<Option<T>> Option(Ordering<T> ordering) {
        return new Ordering.OptionOrdering<T>(ordering) { // from class: scala.math.Ordering$$anon$3
            private final Ordering<T> optionOrdering;

            {
                PartialOrdering.Cclass.$init$(this);
                Ordering.Cclass.$init$(this);
                Ordering.OptionOrdering.Cclass.$init$(this);
                this.optionOrdering = ordering;
            }

            @Override // scala.math.Ordering.OptionOrdering
            public int compare(Option<T> option, Option<T> option2) {
                return Ordering.OptionOrdering.Cclass.compare(this, option, option2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
            public boolean equiv(Object obj, Object obj2) {
                return Ordering.Cclass.equiv(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: gt */
            public boolean mo37gt(Object obj, Object obj2) {
                return Ordering.Cclass.m40gt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean gteq(Object obj, Object obj2) {
                return Ordering.Cclass.gteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: lt */
            public boolean mo36lt(Object obj, Object obj2) {
                return Ordering.Cclass.m39lt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean lteq(Object obj, Object obj2) {
                return Ordering.Cclass.lteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object max(Object obj, Object obj2) {
                return Ordering.Cclass.max(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object min(Object obj, Object obj2) {
                return Ordering.Cclass.min(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Ordering.Ops mkOrderingOps(Object obj) {
                return Ordering.Cclass.mkOrderingOps(this, obj);
            }

            @Override // scala.math.Ordering
            /* renamed from: on */
            public <U> Ordering<U> mo49on(Function1<U, Option<T>> function1) {
                return Ordering.Cclass.m38on(this, function1);
            }

            @Override // scala.math.Ordering.OptionOrdering
            public Ordering<T> optionOrdering() {
                return this.optionOrdering;
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Ordering<Option<T>> reverse() {
                return Ordering.Cclass.reverse(this);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Some tryCompare(Object obj, Object obj2) {
                return Ordering.Cclass.tryCompare(this, obj, obj2);
            }
        };
    }

    public <T1, T2> Ordering<Tuple2<T1, T2>> Tuple2(Ordering<T1> ordering, Ordering<T2> ordering2) {
        return new Ordering<Tuple2<T1, T2>>(ordering, ordering2) { // from class: scala.math.Ordering$$anon$11
            private final Ordering ord1$8;
            private final Ordering ord2$8;

            {
                this.ord1$8 = ordering;
                this.ord2$8 = ordering2;
                PartialOrdering.Cclass.$init$(this);
                Ordering.Cclass.$init$(this);
            }

            public int compare(Tuple2<T1, T2> tuple2, Tuple2<T1, T2> tuple22) {
                int compare = this.ord1$8.compare(tuple2.mo269_1(), tuple22.mo269_1());
                if (compare != 0) {
                    return compare;
                }
                int compare2 = this.ord2$8.compare(tuple2.mo268_2(), tuple22.mo268_2());
                if (compare2 == 0) {
                    return 0;
                }
                return compare2;
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
            public boolean equiv(Object obj, Object obj2) {
                return Ordering.Cclass.equiv(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: gt */
            public boolean mo37gt(Object obj, Object obj2) {
                return Ordering.Cclass.m40gt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean gteq(Object obj, Object obj2) {
                return Ordering.Cclass.gteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: lt */
            public boolean mo36lt(Object obj, Object obj2) {
                return Ordering.Cclass.m39lt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean lteq(Object obj, Object obj2) {
                return Ordering.Cclass.lteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object max(Object obj, Object obj2) {
                return Ordering.Cclass.max(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object min(Object obj, Object obj2) {
                return Ordering.Cclass.min(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Ordering.Ops mkOrderingOps(Object obj) {
                return Ordering.Cclass.mkOrderingOps(this, obj);
            }

            @Override // scala.math.Ordering
            /* renamed from: on */
            public <U> Ordering<U> mo49on(Function1<U, Tuple2<T1, T2>> function1) {
                return Ordering.Cclass.m38on(this, function1);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Ordering<Tuple2<T1, T2>> reverse() {
                return Ordering.Cclass.reverse(this);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Some tryCompare(Object obj, Object obj2) {
                return Ordering.Cclass.tryCompare(this, obj, obj2);
            }
        };
    }

    public <T1, T2, T3> Ordering<Tuple3<T1, T2, T3>> Tuple3(Ordering<T1> ordering, Ordering<T2> ordering2, Ordering<T3> ordering3) {
        return new Ordering<Tuple3<T1, T2, T3>>(ordering, ordering2, ordering3) { // from class: scala.math.Ordering$$anon$12
            private final Ordering ord1$7;
            private final Ordering ord2$7;
            private final Ordering ord3$7;

            {
                this.ord1$7 = ordering;
                this.ord2$7 = ordering2;
                this.ord3$7 = ordering3;
                PartialOrdering.Cclass.$init$(this);
                Ordering.Cclass.$init$(this);
            }

            public int compare(Tuple3<T1, T2, T3> tuple3, Tuple3<T1, T2, T3> tuple32) {
                int compare = this.ord1$7.compare(tuple3.mo240_1(), tuple32.mo240_1());
                if (compare != 0) {
                    return compare;
                }
                int compare2 = this.ord2$7.compare(tuple3.mo239_2(), tuple32.mo239_2());
                if (compare2 != 0) {
                    return compare2;
                }
                int compare3 = this.ord3$7.compare(tuple3.mo238_3(), tuple32.mo238_3());
                if (compare3 == 0) {
                    return 0;
                }
                return compare3;
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
            public boolean equiv(Object obj, Object obj2) {
                return Ordering.Cclass.equiv(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: gt */
            public boolean mo37gt(Object obj, Object obj2) {
                return Ordering.Cclass.m40gt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean gteq(Object obj, Object obj2) {
                return Ordering.Cclass.gteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: lt */
            public boolean mo36lt(Object obj, Object obj2) {
                return Ordering.Cclass.m39lt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean lteq(Object obj, Object obj2) {
                return Ordering.Cclass.lteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object max(Object obj, Object obj2) {
                return Ordering.Cclass.max(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object min(Object obj, Object obj2) {
                return Ordering.Cclass.min(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Ordering.Ops mkOrderingOps(Object obj) {
                return Ordering.Cclass.mkOrderingOps(this, obj);
            }

            @Override // scala.math.Ordering
            /* renamed from: on */
            public <U> Ordering<U> mo49on(Function1<U, Tuple3<T1, T2, T3>> function1) {
                return Ordering.Cclass.m38on(this, function1);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Ordering<Tuple3<T1, T2, T3>> reverse() {
                return Ordering.Cclass.reverse(this);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Some tryCompare(Object obj, Object obj2) {
                return Ordering.Cclass.tryCompare(this, obj, obj2);
            }
        };
    }

    public <T1, T2, T3, T4> Ordering<Tuple4<T1, T2, T3, T4>> Tuple4(Ordering<T1> ordering, Ordering<T2> ordering2, Ordering<T3> ordering3, Ordering<T4> ordering4) {
        return new Ordering<Tuple4<T1, T2, T3, T4>>(ordering, ordering2, ordering3, ordering4) { // from class: scala.math.Ordering$$anon$13
            private final Ordering ord1$6;
            private final Ordering ord2$6;
            private final Ordering ord3$6;
            private final Ordering ord4$6;

            {
                this.ord1$6 = ordering;
                this.ord2$6 = ordering2;
                this.ord3$6 = ordering3;
                this.ord4$6 = ordering4;
                PartialOrdering.Cclass.$init$(this);
                Ordering.Cclass.$init$(this);
            }

            public int compare(Tuple4<T1, T2, T3, T4> tuple4, Tuple4<T1, T2, T3, T4> tuple42) {
                int compare = this.ord1$6.compare(tuple4.mo237_1(), tuple42.mo237_1());
                if (compare != 0) {
                    return compare;
                }
                int compare2 = this.ord2$6.compare(tuple4.mo236_2(), tuple42.mo236_2());
                if (compare2 != 0) {
                    return compare2;
                }
                int compare3 = this.ord3$6.compare(tuple4.mo235_3(), tuple42.mo235_3());
                if (compare3 != 0) {
                    return compare3;
                }
                int compare4 = this.ord4$6.compare(tuple4.mo234_4(), tuple42.mo234_4());
                if (compare4 == 0) {
                    return 0;
                }
                return compare4;
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
            public boolean equiv(Object obj, Object obj2) {
                return Ordering.Cclass.equiv(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: gt */
            public boolean mo37gt(Object obj, Object obj2) {
                return Ordering.Cclass.m40gt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean gteq(Object obj, Object obj2) {
                return Ordering.Cclass.gteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: lt */
            public boolean mo36lt(Object obj, Object obj2) {
                return Ordering.Cclass.m39lt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean lteq(Object obj, Object obj2) {
                return Ordering.Cclass.lteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object max(Object obj, Object obj2) {
                return Ordering.Cclass.max(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object min(Object obj, Object obj2) {
                return Ordering.Cclass.min(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Ordering.Ops mkOrderingOps(Object obj) {
                return Ordering.Cclass.mkOrderingOps(this, obj);
            }

            @Override // scala.math.Ordering
            /* renamed from: on */
            public <U> Ordering<U> mo49on(Function1<U, Tuple4<T1, T2, T3, T4>> function1) {
                return Ordering.Cclass.m38on(this, function1);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Ordering<Tuple4<T1, T2, T3, T4>> reverse() {
                return Ordering.Cclass.reverse(this);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Some tryCompare(Object obj, Object obj2) {
                return Ordering.Cclass.tryCompare(this, obj, obj2);
            }
        };
    }

    public <T1, T2, T3, T4, T5> Ordering<Tuple5<T1, T2, T3, T4, T5>> Tuple5(Ordering<T1> ordering, Ordering<T2> ordering2, Ordering<T3> ordering3, Ordering<T4> ordering4, Ordering<T5> ordering5) {
        return new Ordering<Tuple5<T1, T2, T3, T4, T5>>(ordering, ordering2, ordering3, ordering4, ordering5) { // from class: scala.math.Ordering$$anon$14
            private final Ordering ord1$5;
            private final Ordering ord2$5;
            private final Ordering ord3$5;
            private final Ordering ord4$5;
            private final Ordering ord5$5;

            {
                this.ord1$5 = ordering;
                this.ord2$5 = ordering2;
                this.ord3$5 = ordering3;
                this.ord4$5 = ordering4;
                this.ord5$5 = ordering5;
                PartialOrdering.Cclass.$init$(this);
                Ordering.Cclass.$init$(this);
            }

            public int compare(Tuple5<T1, T2, T3, T4, T5> tuple5, Tuple5<T1, T2, T3, T4, T5> tuple52) {
                int compare = this.ord1$5.compare(tuple5.mo233_1(), tuple52.mo233_1());
                if (compare != 0) {
                    return compare;
                }
                int compare2 = this.ord2$5.compare(tuple5.mo232_2(), tuple52.mo232_2());
                if (compare2 != 0) {
                    return compare2;
                }
                int compare3 = this.ord3$5.compare(tuple5.mo231_3(), tuple52.mo231_3());
                if (compare3 != 0) {
                    return compare3;
                }
                int compare4 = this.ord4$5.compare(tuple5.mo230_4(), tuple52.mo230_4());
                if (compare4 != 0) {
                    return compare4;
                }
                int compare5 = this.ord5$5.compare(tuple5.mo229_5(), tuple52.mo229_5());
                if (compare5 == 0) {
                    return 0;
                }
                return compare5;
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
            public boolean equiv(Object obj, Object obj2) {
                return Ordering.Cclass.equiv(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: gt */
            public boolean mo37gt(Object obj, Object obj2) {
                return Ordering.Cclass.m40gt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean gteq(Object obj, Object obj2) {
                return Ordering.Cclass.gteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: lt */
            public boolean mo36lt(Object obj, Object obj2) {
                return Ordering.Cclass.m39lt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean lteq(Object obj, Object obj2) {
                return Ordering.Cclass.lteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object max(Object obj, Object obj2) {
                return Ordering.Cclass.max(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object min(Object obj, Object obj2) {
                return Ordering.Cclass.min(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Ordering.Ops mkOrderingOps(Object obj) {
                return Ordering.Cclass.mkOrderingOps(this, obj);
            }

            @Override // scala.math.Ordering
            /* renamed from: on */
            public <U> Ordering<U> mo49on(Function1<U, Tuple5<T1, T2, T3, T4, T5>> function1) {
                return Ordering.Cclass.m38on(this, function1);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Ordering<Tuple5<T1, T2, T3, T4, T5>> reverse() {
                return Ordering.Cclass.reverse(this);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Some tryCompare(Object obj, Object obj2) {
                return Ordering.Cclass.tryCompare(this, obj, obj2);
            }
        };
    }

    public <T1, T2, T3, T4, T5, T6> Ordering<Tuple6<T1, T2, T3, T4, T5, T6>> Tuple6(Ordering<T1> ordering, Ordering<T2> ordering2, Ordering<T3> ordering3, Ordering<T4> ordering4, Ordering<T5> ordering5, Ordering<T6> ordering6) {
        return new Ordering<Tuple6<T1, T2, T3, T4, T5, T6>>(ordering, ordering2, ordering3, ordering4, ordering5, ordering6) { // from class: scala.math.Ordering$$anon$15
            private final Ordering ord1$4;
            private final Ordering ord2$4;
            private final Ordering ord3$4;
            private final Ordering ord4$4;
            private final Ordering ord5$4;
            private final Ordering ord6$4;

            {
                this.ord1$4 = ordering;
                this.ord2$4 = ordering2;
                this.ord3$4 = ordering3;
                this.ord4$4 = ordering4;
                this.ord5$4 = ordering5;
                this.ord6$4 = ordering6;
                PartialOrdering.Cclass.$init$(this);
                Ordering.Cclass.$init$(this);
            }

            public int compare(Tuple6<T1, T2, T3, T4, T5, T6> tuple6, Tuple6<T1, T2, T3, T4, T5, T6> tuple62) {
                int compare = this.ord1$4.compare(tuple6.mo228_1(), tuple62.mo228_1());
                if (compare != 0) {
                    return compare;
                }
                int compare2 = this.ord2$4.compare(tuple6.mo227_2(), tuple62.mo227_2());
                if (compare2 != 0) {
                    return compare2;
                }
                int compare3 = this.ord3$4.compare(tuple6.mo226_3(), tuple62.mo226_3());
                if (compare3 != 0) {
                    return compare3;
                }
                int compare4 = this.ord4$4.compare(tuple6.mo225_4(), tuple62.mo225_4());
                if (compare4 != 0) {
                    return compare4;
                }
                int compare5 = this.ord5$4.compare(tuple6.mo224_5(), tuple62.mo224_5());
                if (compare5 != 0) {
                    return compare5;
                }
                int compare6 = this.ord6$4.compare(tuple6.mo223_6(), tuple62.mo223_6());
                if (compare6 == 0) {
                    return 0;
                }
                return compare6;
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
            public boolean equiv(Object obj, Object obj2) {
                return Ordering.Cclass.equiv(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: gt */
            public boolean mo37gt(Object obj, Object obj2) {
                return Ordering.Cclass.m40gt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean gteq(Object obj, Object obj2) {
                return Ordering.Cclass.gteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: lt */
            public boolean mo36lt(Object obj, Object obj2) {
                return Ordering.Cclass.m39lt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean lteq(Object obj, Object obj2) {
                return Ordering.Cclass.lteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object max(Object obj, Object obj2) {
                return Ordering.Cclass.max(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object min(Object obj, Object obj2) {
                return Ordering.Cclass.min(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Ordering.Ops mkOrderingOps(Object obj) {
                return Ordering.Cclass.mkOrderingOps(this, obj);
            }

            @Override // scala.math.Ordering
            /* renamed from: on */
            public <U> Ordering<U> mo49on(Function1<U, Tuple6<T1, T2, T3, T4, T5, T6>> function1) {
                return Ordering.Cclass.m38on(this, function1);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Ordering<Tuple6<T1, T2, T3, T4, T5, T6>> reverse() {
                return Ordering.Cclass.reverse(this);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Some tryCompare(Object obj, Object obj2) {
                return Ordering.Cclass.tryCompare(this, obj, obj2);
            }
        };
    }

    public <T1, T2, T3, T4, T5, T6, T7> Ordering<Tuple7<T1, T2, T3, T4, T5, T6, T7>> Tuple7(Ordering<T1> ordering, Ordering<T2> ordering2, Ordering<T3> ordering3, Ordering<T4> ordering4, Ordering<T5> ordering5, Ordering<T6> ordering6, Ordering<T7> ordering7) {
        return new Ordering<Tuple7<T1, T2, T3, T4, T5, T6, T7>>(ordering, ordering2, ordering3, ordering4, ordering5, ordering6, ordering7) { // from class: scala.math.Ordering$$anon$16
            private final Ordering ord1$3;
            private final Ordering ord2$3;
            private final Ordering ord3$3;
            private final Ordering ord4$3;
            private final Ordering ord5$3;
            private final Ordering ord6$3;
            private final Ordering ord7$3;

            {
                this.ord1$3 = ordering;
                this.ord2$3 = ordering2;
                this.ord3$3 = ordering3;
                this.ord4$3 = ordering4;
                this.ord5$3 = ordering5;
                this.ord6$3 = ordering6;
                this.ord7$3 = ordering7;
                PartialOrdering.Cclass.$init$(this);
                Ordering.Cclass.$init$(this);
            }

            public int compare(Tuple7<T1, T2, T3, T4, T5, T6, T7> tuple7, Tuple7<T1, T2, T3, T4, T5, T6, T7> tuple72) {
                int compare = this.ord1$3.compare(tuple7.mo222_1(), tuple72.mo222_1());
                if (compare != 0) {
                    return compare;
                }
                int compare2 = this.ord2$3.compare(tuple7.mo221_2(), tuple72.mo221_2());
                if (compare2 != 0) {
                    return compare2;
                }
                int compare3 = this.ord3$3.compare(tuple7.mo220_3(), tuple72.mo220_3());
                if (compare3 != 0) {
                    return compare3;
                }
                int compare4 = this.ord4$3.compare(tuple7.mo219_4(), tuple72.mo219_4());
                if (compare4 != 0) {
                    return compare4;
                }
                int compare5 = this.ord5$3.compare(tuple7.mo218_5(), tuple72.mo218_5());
                if (compare5 != 0) {
                    return compare5;
                }
                int compare6 = this.ord6$3.compare(tuple7.mo217_6(), tuple72.mo217_6());
                if (compare6 != 0) {
                    return compare6;
                }
                int compare7 = this.ord7$3.compare(tuple7.mo216_7(), tuple72.mo216_7());
                if (compare7 == 0) {
                    return 0;
                }
                return compare7;
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
            public boolean equiv(Object obj, Object obj2) {
                return Ordering.Cclass.equiv(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: gt */
            public boolean mo37gt(Object obj, Object obj2) {
                return Ordering.Cclass.m40gt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean gteq(Object obj, Object obj2) {
                return Ordering.Cclass.gteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: lt */
            public boolean mo36lt(Object obj, Object obj2) {
                return Ordering.Cclass.m39lt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean lteq(Object obj, Object obj2) {
                return Ordering.Cclass.lteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object max(Object obj, Object obj2) {
                return Ordering.Cclass.max(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object min(Object obj, Object obj2) {
                return Ordering.Cclass.min(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Ordering.Ops mkOrderingOps(Object obj) {
                return Ordering.Cclass.mkOrderingOps(this, obj);
            }

            @Override // scala.math.Ordering
            /* renamed from: on */
            public <U> Ordering<U> mo49on(Function1<U, Tuple7<T1, T2, T3, T4, T5, T6, T7>> function1) {
                return Ordering.Cclass.m38on(this, function1);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Ordering<Tuple7<T1, T2, T3, T4, T5, T6, T7>> reverse() {
                return Ordering.Cclass.reverse(this);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Some tryCompare(Object obj, Object obj2) {
                return Ordering.Cclass.tryCompare(this, obj, obj2);
            }
        };
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8> Ordering<Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>> Tuple8(Ordering<T1> ordering, Ordering<T2> ordering2, Ordering<T3> ordering3, Ordering<T4> ordering4, Ordering<T5> ordering5, Ordering<T6> ordering6, Ordering<T7> ordering7, Ordering<T8> ordering8) {
        return new Ordering<Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>>(ordering, ordering2, ordering3, ordering4, ordering5, ordering6, ordering7, ordering8) { // from class: scala.math.Ordering$$anon$17
            private final Ordering ord1$2;
            private final Ordering ord2$2;
            private final Ordering ord3$2;
            private final Ordering ord4$2;
            private final Ordering ord5$2;
            private final Ordering ord6$2;
            private final Ordering ord7$2;
            private final Ordering ord8$2;

            {
                this.ord1$2 = ordering;
                this.ord2$2 = ordering2;
                this.ord3$2 = ordering3;
                this.ord4$2 = ordering4;
                this.ord5$2 = ordering5;
                this.ord6$2 = ordering6;
                this.ord7$2 = ordering7;
                this.ord8$2 = ordering8;
                PartialOrdering.Cclass.$init$(this);
                Ordering.Cclass.$init$(this);
            }

            public int compare(Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> tuple8, Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> tuple82) {
                int compare = this.ord1$2.compare(tuple8.mo215_1(), tuple82.mo215_1());
                if (compare != 0) {
                    return compare;
                }
                int compare2 = this.ord2$2.compare(tuple8.mo214_2(), tuple82.mo214_2());
                if (compare2 != 0) {
                    return compare2;
                }
                int compare3 = this.ord3$2.compare(tuple8.mo213_3(), tuple82.mo213_3());
                if (compare3 != 0) {
                    return compare3;
                }
                int compare4 = this.ord4$2.compare(tuple8.mo212_4(), tuple82.mo212_4());
                if (compare4 != 0) {
                    return compare4;
                }
                int compare5 = this.ord5$2.compare(tuple8.mo211_5(), tuple82.mo211_5());
                if (compare5 != 0) {
                    return compare5;
                }
                int compare6 = this.ord6$2.compare(tuple8.mo210_6(), tuple82.mo210_6());
                if (compare6 != 0) {
                    return compare6;
                }
                int compare7 = this.ord7$2.compare(tuple8.mo209_7(), tuple82.mo209_7());
                if (compare7 != 0) {
                    return compare7;
                }
                int compare8 = this.ord8$2.compare(tuple8.mo208_8(), tuple82.mo208_8());
                if (compare8 == 0) {
                    return 0;
                }
                return compare8;
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
            public boolean equiv(Object obj, Object obj2) {
                return Ordering.Cclass.equiv(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: gt */
            public boolean mo37gt(Object obj, Object obj2) {
                return Ordering.Cclass.m40gt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean gteq(Object obj, Object obj2) {
                return Ordering.Cclass.gteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: lt */
            public boolean mo36lt(Object obj, Object obj2) {
                return Ordering.Cclass.m39lt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean lteq(Object obj, Object obj2) {
                return Ordering.Cclass.lteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object max(Object obj, Object obj2) {
                return Ordering.Cclass.max(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object min(Object obj, Object obj2) {
                return Ordering.Cclass.min(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Ordering.Ops mkOrderingOps(Object obj) {
                return Ordering.Cclass.mkOrderingOps(this, obj);
            }

            @Override // scala.math.Ordering
            /* renamed from: on */
            public <U> Ordering<U> mo49on(Function1<U, Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>> function1) {
                return Ordering.Cclass.m38on(this, function1);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Ordering<Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>> reverse() {
                return Ordering.Cclass.reverse(this);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Some tryCompare(Object obj, Object obj2) {
                return Ordering.Cclass.tryCompare(this, obj, obj2);
            }
        };
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9> Ordering<Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>> Tuple9(Ordering<T1> ordering, Ordering<T2> ordering2, Ordering<T3> ordering3, Ordering<T4> ordering4, Ordering<T5> ordering5, Ordering<T6> ordering6, Ordering<T7> ordering7, Ordering<T8> ordering8, Ordering<T9> ordering9) {
        return new Ordering<Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>>(ordering, ordering2, ordering3, ordering4, ordering5, ordering6, ordering7, ordering8, ordering9) { // from class: scala.math.Ordering$$anon$18
            private final Ordering ord1$1;
            private final Ordering ord2$1;
            private final Ordering ord3$1;
            private final Ordering ord4$1;
            private final Ordering ord5$1;
            private final Ordering ord6$1;
            private final Ordering ord7$1;
            private final Ordering ord8$1;
            private final Ordering ord9$1;

            {
                this.ord1$1 = ordering;
                this.ord2$1 = ordering2;
                this.ord3$1 = ordering3;
                this.ord4$1 = ordering4;
                this.ord5$1 = ordering5;
                this.ord6$1 = ordering6;
                this.ord7$1 = ordering7;
                this.ord8$1 = ordering8;
                this.ord9$1 = ordering9;
                PartialOrdering.Cclass.$init$(this);
                Ordering.Cclass.$init$(this);
            }

            public int compare(Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> tuple9, Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> tuple92) {
                int compare = this.ord1$1.compare(tuple9.mo207_1(), tuple92.mo207_1());
                if (compare != 0) {
                    return compare;
                }
                int compare2 = this.ord2$1.compare(tuple9.mo206_2(), tuple92.mo206_2());
                if (compare2 != 0) {
                    return compare2;
                }
                int compare3 = this.ord3$1.compare(tuple9.mo205_3(), tuple92.mo205_3());
                if (compare3 != 0) {
                    return compare3;
                }
                int compare4 = this.ord4$1.compare(tuple9.mo204_4(), tuple92.mo204_4());
                if (compare4 != 0) {
                    return compare4;
                }
                int compare5 = this.ord5$1.compare(tuple9.mo203_5(), tuple92.mo203_5());
                if (compare5 != 0) {
                    return compare5;
                }
                int compare6 = this.ord6$1.compare(tuple9.mo202_6(), tuple92.mo202_6());
                if (compare6 != 0) {
                    return compare6;
                }
                int compare7 = this.ord7$1.compare(tuple9.mo201_7(), tuple92.mo201_7());
                if (compare7 != 0) {
                    return compare7;
                }
                int compare8 = this.ord8$1.compare(tuple9.mo200_8(), tuple92.mo200_8());
                if (compare8 != 0) {
                    return compare8;
                }
                int compare9 = this.ord9$1.compare(tuple9.mo199_9(), tuple92.mo199_9());
                if (compare9 == 0) {
                    return 0;
                }
                return compare9;
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
            public boolean equiv(Object obj, Object obj2) {
                return Ordering.Cclass.equiv(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: gt */
            public boolean mo37gt(Object obj, Object obj2) {
                return Ordering.Cclass.m40gt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean gteq(Object obj, Object obj2) {
                return Ordering.Cclass.gteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: lt */
            public boolean mo36lt(Object obj, Object obj2) {
                return Ordering.Cclass.m39lt(this, obj, obj2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean lteq(Object obj, Object obj2) {
                return Ordering.Cclass.lteq(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object max(Object obj, Object obj2) {
                return Ordering.Cclass.max(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Object min(Object obj, Object obj2) {
                return Ordering.Cclass.min(this, obj, obj2);
            }

            @Override // scala.math.Ordering
            public Ordering.Ops mkOrderingOps(Object obj) {
                return Ordering.Cclass.mkOrderingOps(this, obj);
            }

            @Override // scala.math.Ordering
            /* renamed from: on */
            public <U> Ordering<U> mo49on(Function1<U, Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>> function1) {
                return Ordering.Cclass.m38on(this, function1);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Ordering<Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>> reverse() {
                return Ordering.Cclass.reverse(this);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Some tryCompare(Object obj, Object obj2) {
                return Ordering.Cclass.tryCompare(this, obj, obj2);
            }
        };
    }

    public <T> Ordering<T> apply(Ordering<T> ordering) {
        return ordering;
    }

    /* renamed from: by */
    public <T, S> Ordering<T> m50by(Function1<T, S> function1, Ordering<S> ordering) {
        return new Ordering$$anon$9(new Ordering$$anonfun$by$1(function1, ordering));
    }

    @Override // scala.math.LowPriorityOrderingImplicits
    public <A> Ordering<A> comparatorToOrdering(Comparator<A> comparator) {
        return LowPriorityOrderingImplicits.Cclass.comparatorToOrdering(this, comparator);
    }

    public <T> Ordering<T> fromLessThan(Function2<T, T, Object> function2) {
        return new Ordering$$anon$9(function2);
    }

    @Override // scala.math.LowPriorityOrderingImplicits
    public <A> Ordering<A> ordered(Function1<A, Comparable<A>> function1) {
        return LowPriorityOrderingImplicits.Cclass.ordered(this, function1);
    }
}
