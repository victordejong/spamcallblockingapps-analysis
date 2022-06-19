package scala.collection.convert;

import java.util.concurrent.ConcurrentMap;
import scala.Serializable;
import scala.collection.concurrent.Map;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsScala$$anonfun$mapAsScalaConcurrentMapConverter$1.class */
public final class DecorateAsScala$$anonfun$mapAsScalaConcurrentMapConverter$1 extends AbstractFunction0<Map<A, B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ConcurrentMap m$2;

    public DecorateAsScala$$anonfun$mapAsScalaConcurrentMapConverter$1(DecorateAsScala decorateAsScala, ConcurrentMap concurrentMap) {
        this.m$2 = concurrentMap;
    }

    @Override // scala.Function0
    public final Map<A, B> apply() {
        return WrapAsScala$.MODULE$.mapAsScalaConcurrentMap(this.m$2);
    }
}
