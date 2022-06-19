package scala.concurrent.duration;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/Duration$$anonfun$3.class */
public final class Duration$$anonfun$3 extends AbstractFunction1<String, String> implements Serializable {
    public static final long serialVersionUID = 0;

    public final String apply(String str) {
        return Duration$.MODULE$.scala$concurrent$duration$Duration$$words(str).last();
    }
}
