package scala.collection.immutable;

import scala.Serializable;
import scala.math.BigDecimal;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Range$Double$$anonfun$inclusive$1.class */
public final class Range$Double$$anonfun$inclusive$1 extends AbstractFunction1<BigDecimal, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public final double apply(BigDecimal bigDecimal) {
        return bigDecimal.doubleValue();
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToDouble(apply((BigDecimal) obj));
    }
}
