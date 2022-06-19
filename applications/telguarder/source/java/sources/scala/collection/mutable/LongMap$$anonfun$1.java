package scala.collection.mutable;

import java.util.NoSuchElementException;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LongMap$$anonfun$1.class */
public final class LongMap$$anonfun$1 extends AbstractFunction1<Object, Nothing$> implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        throw apply(BoxesRunTime.unboxToLong(obj));
    }

    public final Nothing$ apply(long j) {
        throw new NoSuchElementException(BoxesRunTime.boxToLong(j).toString());
    }
}
