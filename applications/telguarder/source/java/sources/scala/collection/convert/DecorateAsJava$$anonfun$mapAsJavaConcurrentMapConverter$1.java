package scala.collection.convert;

import java.util.concurrent.ConcurrentMap;
import scala.Serializable;
import scala.collection.concurrent.Map;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsJava$$anonfun$mapAsJavaConcurrentMapConverter$1.class */
public final class DecorateAsJava$$anonfun$mapAsJavaConcurrentMapConverter$1 extends AbstractFunction0<ConcurrentMap<A, B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Map m$3;

    public DecorateAsJava$$anonfun$mapAsJavaConcurrentMapConverter$1(DecorateAsJava decorateAsJava, Map map) {
        this.m$3 = map;
    }

    @Override // scala.Function0
    public final ConcurrentMap<A, B> apply() {
        return WrapAsJava$.MODULE$.mapAsJavaConcurrentMap(this.m$3);
    }
}
