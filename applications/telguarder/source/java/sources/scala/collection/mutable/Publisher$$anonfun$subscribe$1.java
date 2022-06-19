package scala.collection.mutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Publisher$$anonfun$subscribe$1.class */
public final class Publisher$$anonfun$subscribe$1 extends AbstractFunction1<Evt, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public Publisher$$anonfun$subscribe$1(Publisher<Evt> publisher) {
    }

    @Override // scala.Function1
    public final boolean apply(Evt evt) {
        return true;
    }
}
