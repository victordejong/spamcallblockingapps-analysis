package scala.collection.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/MapLike$$anonfun$clear$1.class */
public final class MapLike$$anonfun$clear$1 extends AbstractFunction1<A, MapLike<A, B, This>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ MapLike $outer;

    public MapLike$$anonfun$clear$1(MapLike<A, B, This> mapLike) {
        Objects.requireNonNull(mapLike);
        this.$outer = mapLike;
    }

    @Override // scala.Function1
    public final MapLike<A, B, This> apply(A a) {
        return this.$outer.$minus$eq((MapLike) a);
    }
}
