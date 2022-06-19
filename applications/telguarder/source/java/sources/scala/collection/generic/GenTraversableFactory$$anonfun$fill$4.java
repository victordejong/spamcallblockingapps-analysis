package scala.collection.generic;

import java.util.Objects;
import scala.Function0;
import scala.Serializable;
import scala.collection.GenTraversable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenTraversableFactory$$anonfun$fill$4.class */
public final class GenTraversableFactory$$anonfun$fill$4 extends AbstractFunction1<Object, CC> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ GenTraversableFactory $outer;
    private final Function0 elem$1;
    private final int n2$1;
    private final int n3$1;
    private final int n4$1;
    private final int n5$1;

    public GenTraversableFactory$$anonfun$fill$4(GenTraversableFactory genTraversableFactory, int i, int i2, int i3, int i4, Function0 function0) {
        Objects.requireNonNull(genTraversableFactory);
        this.$outer = genTraversableFactory;
        this.n2$1 = i;
        this.n3$1 = i2;
        this.n4$1 = i3;
        this.n5$1 = i4;
        this.elem$1 = function0;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final GenTraversable apply(int i) {
        return this.$outer.fill(this.n2$1, this.n3$1, this.n4$1, this.n5$1, this.elem$1);
    }
}
