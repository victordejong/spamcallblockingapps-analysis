package scala.collection.generic;

import java.util.Objects;
import scala.Serializable;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1.class */
public final class GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1 extends AbstractFunction1<B, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ GenericTraversableTemplate$$anonfun$transpose$1 $outer;
    private final IntRef i$1;

    public GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1(GenericTraversableTemplate$$anonfun$transpose$1 genericTraversableTemplate$$anonfun$transpose$1, IntRef intRef) {
        Objects.requireNonNull(genericTraversableTemplate$$anonfun$transpose$1);
        this.$outer = genericTraversableTemplate$$anonfun$transpose$1;
        this.i$1 = intRef;
    }

    @Override // scala.Function1
    public final void apply(B b) {
        if (this.i$1.elem < this.$outer.headSize$1) {
            ((Builder) this.$outer.bs$1.apply(this.i$1.elem)).$plus$eq((Builder) b);
            this.i$1.elem++;
            return;
        }
        throw GenericTraversableTemplate.Cclass.fail$1(this.$outer.$outer);
    }
}
