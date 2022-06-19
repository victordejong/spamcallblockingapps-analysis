package scala.collection.immutable;

import scala.Function1;
import scala.Serializable;
import scala.collection.Seq;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
import scala.collection.mutable.Builder;
import scala.collection.mutable.ListBuffer;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/List$.class */
public final class List$ extends SeqFactory<List> implements Serializable {
    public static final List$ MODULE$ = null;
    private final Object partialNotApplied = new Function1<Object, Object>() { // from class: scala.collection.immutable.List$$anon$1
        {
            Function1.Cclass.$init$(this);
        }

        @Override // scala.Function1
        public <A> Function1<Object, A> andThen(Function1<Object, A> function1) {
            return Function1.Cclass.andThen(this, function1);
        }

        @Override // scala.Function1
        public Object apply(Object obj) {
            return this;
        }

        @Override // scala.Function1
        public double apply$mcDD$sp(double d) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToDouble(d)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public double apply$mcDF$sp(float f) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToFloat(f)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public double apply$mcDI$sp(int i) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToInteger(i)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public double apply$mcDJ$sp(long j) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToLong(j)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public float apply$mcFD$sp(double d) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToDouble(d)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public float apply$mcFF$sp(float f) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToFloat(f)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public float apply$mcFI$sp(int i) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToInteger(i)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public float apply$mcFJ$sp(long j) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToLong(j)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public int apply$mcID$sp(double d) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToDouble(d)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public int apply$mcIF$sp(float f) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToFloat(f)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public int apply$mcII$sp(int i) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToInteger(i)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public int apply$mcIJ$sp(long j) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToLong(j)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public long apply$mcJD$sp(double d) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToDouble(d)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public long apply$mcJF$sp(float f) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToFloat(f)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public long apply$mcJI$sp(int i) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToInteger(i)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public long apply$mcJJ$sp(long j) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToLong(j)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public void apply$mcVD$sp(double d) {
            apply(BoxesRunTime.boxToDouble(d));
        }

        @Override // scala.Function1
        public void apply$mcVF$sp(float f) {
            apply(BoxesRunTime.boxToFloat(f));
        }

        @Override // scala.Function1
        public void apply$mcVI$sp(int i) {
            apply(BoxesRunTime.boxToInteger(i));
        }

        @Override // scala.Function1
        public void apply$mcVJ$sp(long j) {
            apply(BoxesRunTime.boxToLong(j));
        }

        @Override // scala.Function1
        public boolean apply$mcZD$sp(double d) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToDouble(d)));
            return unboxToBoolean;
        }

        @Override // scala.Function1
        public boolean apply$mcZF$sp(float f) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToFloat(f)));
            return unboxToBoolean;
        }

        @Override // scala.Function1
        public boolean apply$mcZI$sp(int i) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToInteger(i)));
            return unboxToBoolean;
        }

        @Override // scala.Function1
        public boolean apply$mcZJ$sp(long j) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToLong(j)));
            return unboxToBoolean;
        }

        @Override // scala.Function1
        public <A> Function1<A, Object> compose(Function1<A, Object> function1) {
            return Function1.Cclass.compose(this, function1);
        }

        @Override // scala.Function1
        public String toString() {
            return Function1.Cclass.toString(this);
        }
    };

    static {
        new List$();
    }

    private List$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> List<A> apply(Seq<A> seq) {
        return seq.toList();
    }

    public <A> CanBuildFrom<List<?>, A, List<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> List<A> empty() {
        return Nil$.MODULE$;
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, List<A>> newBuilder() {
        return new ListBuffer();
    }

    public Object partialNotApplied() {
        return this.partialNotApplied;
    }
}
