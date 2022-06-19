package scala.collection.mutable;

import java.util.NoSuchElementException;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/AnyRefMap$$anonfun$1.class */
public final class AnyRefMap$$anonfun$1 extends AbstractFunction1<Object, Nothing$> implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.Function1
    public final Nothing$ apply(Object obj) {
        throw new NoSuchElementException(obj == null ? "(null)" : obj.toString());
    }
}
