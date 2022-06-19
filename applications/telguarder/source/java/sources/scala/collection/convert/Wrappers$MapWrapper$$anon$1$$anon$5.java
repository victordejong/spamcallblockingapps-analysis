package scala.collection.convert;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Some;
import scala.Tuple2;
import scala.collection.Parallelizable;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
import scala.util.hashing.package$;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5.class */
public final class Wrappers$MapWrapper$$anon$1$$anon$5 implements Iterator<Map.Entry<A, B>> {
    private final /* synthetic */ Wrappers$MapWrapper$$anon$1 $outer;
    private Option<A> prev = None$.MODULE$;

    /* renamed from: ui */
    private final scala.collection.Iterator<Tuple2<A, B>> f1542ui;

    public Wrappers$MapWrapper$$anon$1$$anon$5(Wrappers$MapWrapper$$anon$1 wrappers$MapWrapper$$anon$1) {
        Objects.requireNonNull(wrappers$MapWrapper$$anon$1);
        this.$outer = wrappers$MapWrapper$$anon$1;
        this.f1542ui = wrappers$MapWrapper$$anon$1.scala$collection$convert$Wrappers$MapWrapper$$anon$$$outer().scala$collection$convert$Wrappers$MapWrapper$$underlying.iterator();
    }

    private Option<A> prev() {
        return this.prev;
    }

    private void prev_$eq(Option<A> option) {
        this.prev = option;
    }

    /* renamed from: ui */
    private scala.collection.Iterator<Tuple2<A, B>> m171ui() {
        return this.f1542ui;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return m171ui().hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        Tuple2 tuple2 = (Tuple2) m171ui().next();
        if (tuple2 != null) {
            Tuple2 tuple22 = new Tuple2(tuple2.mo269_1(), tuple2.mo268_2());
            Object mo269_1 = tuple22.mo269_1();
            Object mo268_2 = tuple22.mo268_2();
            prev_$eq(new Some(mo269_1));
            return new Map.Entry<A, B>(this, mo269_1, mo268_2) { // from class: scala.collection.convert.Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6
                private final /* synthetic */ Wrappers$MapWrapper$$anon$1$$anon$5 $outer;
                private final Object k$1;
                private final Object v$1;

                /* JADX WARN: Incorrect inner types in method signature: (Lscala/collection/convert/Wrappers$MapWrapper<TA;TB;>.$anon$1$$anon$5;)V */
                {
                    Objects.requireNonNull(this);
                    this.$outer = this;
                    this.k$1 = mo269_1;
                    this.v$1 = mo268_2;
                }

                @Override // java.util.Map.Entry
                public boolean equals(Object obj) {
                    boolean z = false;
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        Object obj2 = this.k$1;
                        Object key = entry.getKey();
                        z = false;
                        if (obj2 == key ? true : obj2 == null ? false : obj2 instanceof Number ? BoxesRunTime.equalsNumObject((Number) obj2, key) : obj2 instanceof Character ? BoxesRunTime.equalsCharObject((Character) obj2, key) : obj2.equals(key)) {
                            Object obj3 = this.v$1;
                            Object value = entry.getValue();
                            z = false;
                            if (obj3 == value ? true : obj3 == null ? false : obj3 instanceof Number ? BoxesRunTime.equalsNumObject((Number) obj3, value) : obj3 instanceof Character ? BoxesRunTime.equalsCharObject((Character) obj3, value) : obj3.equals(value)) {
                                z = true;
                            }
                        }
                    }
                    return z;
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // java.util.Map.Entry
                public A getKey() {
                    return this.k$1;
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [B, java.lang.Object] */
                @Override // java.util.Map.Entry
                public B getValue() {
                    return this.v$1;
                }

                @Override // java.util.Map.Entry
                public int hashCode() {
                    return package$.MODULE$.byteswap32(ScalaRunTime$.MODULE$.hash(this.k$1)) + (package$.MODULE$.byteswap32(ScalaRunTime$.MODULE$.hash(this.v$1)) << 16);
                }

                @Override // java.util.Map.Entry
                public B setValue(B b) {
                    return this.$outer.scala$collection$convert$Wrappers$MapWrapper$$anon$$anon$$$outer().scala$collection$convert$Wrappers$MapWrapper$$anon$$$outer().put(this.k$1, b);
                }
            };
        }
        throw new MatchError(tuple2);
    }

    @Override // java.util.Iterator
    public void remove() {
        Option prev = prev();
        if (prev instanceof Some) {
            Some some = (Some) prev;
            Parallelizable parallelizable = this.$outer.scala$collection$convert$Wrappers$MapWrapper$$anon$$$outer().scala$collection$convert$Wrappers$MapWrapper$$underlying;
            if (!(parallelizable instanceof scala.collection.mutable.Map)) {
                throw new UnsupportedOperationException("remove");
            }
            ((scala.collection.mutable.Map) parallelizable).remove(some.m362x());
            prev_$eq(None$.MODULE$);
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
            return;
        }
        throw new IllegalStateException("next must be called at least once before remove");
    }

    public /* synthetic */ Wrappers$MapWrapper$$anon$1 scala$collection$convert$Wrappers$MapWrapper$$anon$$anon$$$outer() {
        return this.$outer;
    }
}
