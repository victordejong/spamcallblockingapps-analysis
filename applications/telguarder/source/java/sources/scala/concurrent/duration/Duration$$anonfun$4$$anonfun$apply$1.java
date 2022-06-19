package scala.concurrent.duration;

import java.util.concurrent.TimeUnit;
import scala.Predef$;
import scala.Predef$ArrowAssoc$;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/Duration$$anonfun$4$$anonfun$apply$1.class */
public final class Duration$$anonfun$4$$anonfun$apply$1 extends AbstractFunction1<String, Tuple2<String, TimeUnit>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Tuple2 x1$1;

    public Duration$$anonfun$4$$anonfun$apply$1(Duration$$anonfun$4 duration$$anonfun$4, Tuple2 tuple2) {
        this.x1$1 = tuple2;
    }

    public final Tuple2<String, TimeUnit> apply(String str) {
        Predef$ArrowAssoc$ predef$ArrowAssoc$ = Predef$ArrowAssoc$.MODULE$;
        return new Tuple2<>(Predef$.MODULE$.ArrowAssoc(str), this.x1$1.mo269_1());
    }
}
