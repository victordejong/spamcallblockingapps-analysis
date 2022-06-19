package scala.collection.mutable;

import scala.collection.generic.GenericCompanion;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001y3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0005MS:,\u0017M]*fc*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tQQc\u0005\u0004\u0001\u0017=q\u0012\u0005\u000b\t\u0003\u00195i\u0011AB\u0005\u0003\u001d\u0019\u0011a!\u00118z%\u00164\u0007c\u0001\t\u0012'5\t!!\u0003\u0002\u0013\u0005\t\u00191+Z9\u0011\u0005Q)B\u0002\u0001\u0003\u0006-\u0001\u0011\ra\u0006\u0002\u0002\u0003F\u0011\u0001d\u0007\t\u0003\u0019eI!A\u0007\u0004\u0003\u000f9{G\u000f[5oOB\u0011A\u0002H\u0005\u0003;\u0019\u00111!\u00118z!\ry\u0002eE\u0007\u0002\t%\u0011\u0011\u0001\u0002\t\u0005E\u0015\u001ar%D\u0001$\u0015\t!C!A\u0004hK:,'/[2\n\u0005\u0019\u001a#AG$f]\u0016\u0014\u0018n\u0019+sCZ,'o]1cY\u0016$V-\u001c9mCR,\u0007C\u0001\t\u0001!\u0011y\u0012fE\u0016\n\u0005)\"!!\u0004'j]\u0016\f'oU3r\u0019&\\W\rE\u0002\u0011\u0001MAQ!\f\u0001\u0005\u00029\na\u0001J5oSR$C#A\u0018\u0011\u00051\u0001\u0014BA\u0019\u0007\u0005\u0011)f.\u001b;\t\u000bM\u0002A\u0011\t\u001b\u0002\u0013\r|W\u000e]1oS>tW#A\u001b\u0011\u0007\t2t%\u0003\u00028G\t\u0001r)\u001a8fe&\u001c7i\\7qC:LwN\u001c\u0005\u0006s\u0001!\tEO\u0001\u0004g\u0016\fX#A\u0016\b\u000bq\u0012\u0001\u0012A\u001f\u0002\u00131Kg.Z1s'\u0016\f\bC\u0001\t?\r\u0015\t!\u0001#\u0001@'\tq\u0004\tE\u0002#\u0003\u001eJ!AQ\u0012\u0003\u0015M+\u0017OR1di>\u0014\u0018\u0010C\u0003E}\u0011\u0005Q)\u0001\u0004=S:LGO\u0010\u000b\u0002{!)qI\u0010C\u0002\u0011\u0006a1-\u00198Ck&dGM\u0012:p[V\u0011\u0011JU\u000b\u0002\u0015B)!eS'R'&\u0011Aj\t\u0002\r\u0007\u0006t')^5mI\u001a\u0013x.\u001c\t\u0003\u001d>k\u0011AP\u0005\u0003!Z\u0012AaQ8mYB\u0011AC\u0015\u0003\u0006-\u0019\u0013\ra\u0006\t\u0004!\u0001\t\u0006\"B+?\t\u00031\u0016A\u00038fo\n+\u0018\u000e\u001c3feV\u0011q\u000bX\u000b\u00021B!\u0001#W.^\u0013\tQ&AA\u0004Ck&dG-\u001a:\u0011\u0005QaF!\u0002\fU\u0005\u00049\u0002c\u0001\t\u00017\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinearSeq.class */
public interface LinearSeq<A> extends Seq<A>, scala.collection.LinearSeq<A> {

    /* renamed from: scala.collection.mutable.LinearSeq$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinearSeq$class.class */
    public abstract class Cclass {
        public static void $init$(LinearSeq linearSeq) {
        }

        public static GenericCompanion companion(LinearSeq linearSeq) {
            return LinearSeq$.MODULE$;
        }

        public static LinearSeq seq(LinearSeq linearSeq) {
            return linearSeq;
        }
    }

    @Override // scala.collection.mutable.Seq, scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<LinearSeq> companion();

    @Override // scala.collection.mutable.Seq, scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    LinearSeq<A> seq();
}
