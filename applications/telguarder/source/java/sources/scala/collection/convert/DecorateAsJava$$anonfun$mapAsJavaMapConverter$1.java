package scala.collection.convert;

import java.util.Map;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsJava$$anonfun$mapAsJavaMapConverter$1.class */
public final class DecorateAsJava$$anonfun$mapAsJavaMapConverter$1 extends AbstractFunction0<Map<A, B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final scala.collection.Map m$2;

    public DecorateAsJava$$anonfun$mapAsJavaMapConverter$1(DecorateAsJava decorateAsJava, scala.collection.Map map) {
        this.m$2 = map;
    }

    @Override // scala.Function0
    public final Map<A, B> apply() {
        return WrapAsJava$.MODULE$.mapAsJavaMap(this.m$2);
    }
}
