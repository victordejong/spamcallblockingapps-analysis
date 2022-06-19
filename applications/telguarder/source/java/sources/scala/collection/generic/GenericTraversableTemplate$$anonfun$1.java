package scala.collection.generic;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericTraversableTemplate$$anonfun$1.class */
public final class GenericTraversableTemplate$$anonfun$1 extends AbstractFunction0<Builder<B, CC>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ GenericTraversableTemplate $outer;

    public GenericTraversableTemplate$$anonfun$1(GenericTraversableTemplate<A, CC> genericTraversableTemplate) {
        Objects.requireNonNull(genericTraversableTemplate);
        this.$outer = genericTraversableTemplate;
    }

    @Override // scala.Function0
    public final Builder<B, CC> apply() {
        return this.$outer.genericBuilder();
    }
}
