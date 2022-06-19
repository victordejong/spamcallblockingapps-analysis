package scala.collection;

import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.collection.mutable.HashSet;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$$anonfun$distinct$1.class */
public final class SeqLike$$anonfun$distinct$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$5;
    private final HashSet seen$1;

    public SeqLike$$anonfun$distinct$1(SeqLike seqLike, Builder builder, HashSet hashSet) {
        this.b$5 = builder;
        this.seen$1 = hashSet;
    }

    @Override // scala.Function1
    public final Object apply(A a) {
        BoxedUnit boxedUnit;
        if (this.seen$1.apply((Object) a)) {
            boxedUnit = BoxedUnit.UNIT;
        } else {
            this.b$5.$plus$eq((Builder) a);
            boxedUnit = this.seen$1.$plus$eq((HashSet) a);
        }
        return boxedUnit;
    }
}
