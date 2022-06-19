package scala.collection.generic;

import java.util.Objects;
import scala.Function0;
import scala.Serializable;
import scala.collection.GenTraversable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenTraversableFactory$$anonfun$fill$3.class */
public final class GenTraversableFactory$$anonfun$fill$3 extends AbstractFunction1<Object, CC> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ GenTraversableFactory $outer;
    private final Function0 elem$2;
    private final int n2$2;
    private final int n3$2;
    private final int n4$2;

    public GenTraversableFactory$$anonfun$fill$3(GenTraversableFactory genTraversableFactory, int i, int i2, int i3, Function0 function0) {
        Objects.requireNonNull(genTraversableFactory);
        this.$outer = genTraversableFactory;
        this.n2$2 = i;
        this.n3$2 = i2;
        this.n4$2 = i3;
        this.elem$2 = function0;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final GenTraversable apply(int i) {
        return this.$outer.fill(this.n2$2, this.n3$2, this.n4$2, this.elem$2);
    }
}
