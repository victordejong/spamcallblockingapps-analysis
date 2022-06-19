package scala.concurrent;

import java.util.NoSuchElementException;
import scala.Serializable;
import scala.collection.mutable.StringBuilder;
import scala.runtime.AbstractFunction1;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$collect$1$$anonfun$apply$4.class */
public final class Future$$anonfun$collect$1$$anonfun$apply$4 extends AbstractFunction1<T, Nothing$> implements Serializable {
    public static final long serialVersionUID = 0;

    public Future$$anonfun$collect$1$$anonfun$apply$4(Future$$anonfun$collect$1 future$$anonfun$collect$1) {
    }

    @Override // scala.Function1
    public final Nothing$ apply(T t) {
        throw new NoSuchElementException(new StringBuilder().append((Object) "Future.collect partial function is not defined at: ").append(t).toString());
    }
}
