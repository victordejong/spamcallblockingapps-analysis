package scala.collection.parallel;

import scala.MatchError;
import scala.Predef$;
import scala.Serializable;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.parallel.SeqSplitter;
import scala.runtime.AbstractFunction1;
import scala.runtime.BooleanRef;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter$Appended$$anonfun$7.class */
public final class SeqSplitter$Appended$$anonfun$7 extends AbstractFunction1<Tuple2<Object, Tuple2<Object, Object>>, Seq<Object>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final BooleanRef appendMiddle$1;
    private final int selfrem$1;

    public SeqSplitter$Appended$$anonfun$7(SeqSplitter.Appended appended, int i, BooleanRef booleanRef) {
        this.selfrem$1 = i;
        this.appendMiddle$1 = booleanRef;
    }

    public final Seq<Object> apply(Tuple2<Object, Tuple2<Object, Object>> tuple2) {
        Seq<Object> seq;
        if (tuple2 == null || tuple2.mo268_2() == null) {
            throw new MatchError(tuple2);
        }
        Tuple3 tuple3 = new Tuple3(BoxesRunTime.boxToInteger(tuple2._1$mcI$sp()), BoxesRunTime.boxToInteger(tuple2.mo268_2()._1$mcI$sp()), BoxesRunTime.boxToInteger(tuple2.mo268_2()._2$mcI$sp()));
        int unboxToInt = BoxesRunTime.unboxToInt(tuple3.mo240_1());
        int unboxToInt2 = BoxesRunTime.unboxToInt(tuple3.mo239_2());
        int unboxToInt3 = BoxesRunTime.unboxToInt(tuple3.mo238_3());
        int i = this.selfrem$1;
        if (unboxToInt2 >= i || unboxToInt3 <= i) {
            seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapIntArray(new int[]{unboxToInt}));
        } else {
            this.appendMiddle$1.elem = true;
            Seq$ seq$ = Seq$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            int i2 = this.selfrem$1;
            seq = (Seq) seq$.apply(predef$.wrapIntArray(new int[]{i2 - unboxToInt2, unboxToInt3 - i2}));
        }
        return seq;
    }
}
