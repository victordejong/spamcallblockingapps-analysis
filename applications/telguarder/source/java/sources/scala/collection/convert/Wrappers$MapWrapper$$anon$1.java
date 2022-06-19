package scala.collection.convert;

import java.util.AbstractSet;
import java.util.Map;
import java.util.Objects;
import scala.collection.convert.Wrappers;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/Wrappers$MapWrapper$$anon$1.class */
public final class Wrappers$MapWrapper$$anon$1 extends AbstractSet<Map.Entry<A, B>> {
    private final /* synthetic */ Wrappers.MapWrapper $outer;

    public Wrappers$MapWrapper$$anon$1(Wrappers.MapWrapper<A, B> mapWrapper) {
        Objects.requireNonNull(mapWrapper);
        this.$outer = mapWrapper;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Object iterator() {
        return new Wrappers$MapWrapper$$anon$1$$anon$5(this);
    }

    public /* synthetic */ Wrappers.MapWrapper scala$collection$convert$Wrappers$MapWrapper$$anon$$$outer() {
        return this.$outer;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.$outer.size();
    }
}
