package scala.concurrent.duration;

import java.util.concurrent.TimeUnit;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/Duration$$anonfun$4.class */
public final class Duration$$anonfun$4 extends AbstractFunction1<Tuple2<TimeUnit, String>, List<Tuple2<String, TimeUnit>>> implements Serializable {
    public static final long serialVersionUID = 0;

    public final List<Tuple2<String, TimeUnit>> apply(Tuple2<TimeUnit, String> tuple2) {
        if (tuple2 != null) {
            return (List) Duration$.MODULE$.scala$concurrent$duration$Duration$$expandLabels(tuple2.mo268_2()).map(new Duration$$anonfun$4$$anonfun$apply$1(this, tuple2), List$.MODULE$.canBuildFrom());
        }
        throw new MatchError(tuple2);
    }
}
