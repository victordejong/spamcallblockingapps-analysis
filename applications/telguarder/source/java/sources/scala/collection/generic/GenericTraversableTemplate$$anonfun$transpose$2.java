package scala.collection.generic;

import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$2.class */
public final class GenericTraversableTemplate$$anonfun$transpose$2 extends AbstractFunction1<Builder<B, CC>, Builder<CC, CC>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder bb$1;

    /* JADX WARN: Multi-variable type inference failed */
    public GenericTraversableTemplate$$anonfun$transpose$2(GenericTraversableTemplate genericTraversableTemplate, GenericTraversableTemplate<A, CC> genericTraversableTemplate2) {
        this.bb$1 = genericTraversableTemplate2;
    }

    public final Builder<CC, CC> apply(Builder<B, CC> builder) {
        return this.bb$1.$plus$eq((Builder) builder.result());
    }
}
