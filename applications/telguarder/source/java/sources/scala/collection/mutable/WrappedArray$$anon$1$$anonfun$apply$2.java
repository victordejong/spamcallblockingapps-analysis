package scala.collection.mutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WrappedArray$$anon$1$$anonfun$apply$2.class */
public final class WrappedArray$$anon$1$$anonfun$apply$2 extends AbstractFunction1<Object, WrappedArray<T>> implements Serializable {
    public static final long serialVersionUID = 0;

    public WrappedArray$$anon$1$$anonfun$apply$2(WrappedArray$$anon$1 wrappedArray$$anon$1) {
    }

    @Override // scala.Function1
    public final WrappedArray<T> apply(Object obj) {
        return WrappedArray$.MODULE$.make(obj);
    }
}
