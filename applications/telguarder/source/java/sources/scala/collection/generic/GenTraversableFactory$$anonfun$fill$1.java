package scala.collection.generic;

import java.util.Objects;
import scala.Function0;
import scala.Serializable;
import scala.collection.GenTraversable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenTraversableFactory$$anonfun$fill$1.class */
public final class GenTraversableFactory$$anonfun$fill$1 extends AbstractFunction1<Object, CC> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ GenTraversableFactory $outer;
    private final Function0 elem$4;
    private final int n2$4;

    public GenTraversableFactory$$anonfun$fill$1(GenTraversableFactory genTraversableFactory, int i, Function0 function0) {
        Objects.requireNonNull(genTraversableFactory);
        this.$outer = genTraversableFactory;
        this.n2$4 = i;
        this.elem$4 = function0;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final GenTraversable apply(int i) {
        return this.$outer.fill(this.n2$4, this.elem$4);
    }
}
