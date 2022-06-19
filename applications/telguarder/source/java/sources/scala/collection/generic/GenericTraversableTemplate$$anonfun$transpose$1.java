package scala.collection.generic;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.GenTraversableOnce;
import scala.collection.IndexedSeq;
import scala.collection.generic.GenericTraversableTemplate;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1.class */
public final class GenericTraversableTemplate$$anonfun$transpose$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ GenericTraversableTemplate $outer;
    private final Function1 asTraversable$2;
    public final IndexedSeq bs$1;
    public final int headSize$1;

    public GenericTraversableTemplate$$anonfun$transpose$1(GenericTraversableTemplate genericTraversableTemplate, int i, IndexedSeq indexedSeq, Function1 function1) {
        Objects.requireNonNull(genericTraversableTemplate);
        this.$outer = genericTraversableTemplate;
        this.headSize$1 = i;
        this.bs$1 = indexedSeq;
        this.asTraversable$2 = function1;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        IntRef create = IntRef.create(0);
        ((GenTraversableOnce) this.asTraversable$2.apply(a)).seq().foreach(new GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1(this, create));
        if (create.elem == this.headSize$1) {
            return;
        }
        throw GenericTraversableTemplate.Cclass.fail$1(this.$outer);
    }

    /* renamed from: scala$collection$generic$GenericTraversableTemplate$$anonfun$$$outer */
    public /* synthetic */ GenericTraversableTemplate m167x768cf045() {
        return this.$outer;
    }
}
