package scala.collection.convert;

import scala.Serializable;
import scala.collection.mutable.Map;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsScala$$anonfun$mapAsScalaMapConverter$1.class */
public final class DecorateAsScala$$anonfun$mapAsScalaMapConverter$1 extends AbstractFunction0<Map<A, B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final java.util.Map m$1;

    public DecorateAsScala$$anonfun$mapAsScalaMapConverter$1(DecorateAsScala decorateAsScala, java.util.Map map) {
        this.m$1 = map;
    }

    @Override // scala.Function0
    public final Map<A, B> apply() {
        return WrapAsScala$.MODULE$.mapAsScalaMap(this.m$1);
    }
}
