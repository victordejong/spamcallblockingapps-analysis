package scala.concurrent.duration;

import scala.Predef$;
import scala.Serializable;
import scala.collection.Seq;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.mutable.StringBuilder;
import scala.runtime.AbstractFunction1;
/* renamed from: scala.concurrent.duration.Duration$$anonfun$scala$concurrent$duration$Duration$$expandLabels$1 */
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/Duration$$anonfun$scala$concurrent$duration$Duration$$expandLabels$1.class */
public final class C2591x271d3d00 extends AbstractFunction1<String, List<String>> implements Serializable {
    public static final long serialVersionUID = 0;

    public final List<String> apply(String str) {
        return List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new String[]{str, new StringBuilder().append((Object) str).append((Object) "s").toString()}));
    }
}
