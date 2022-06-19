package scala;

import scala.collection.mutable.ArrayBuilder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$concat$2.class */
public final class Array$$anonfun$concat$2 extends AbstractFunction1<Object, ArrayBuilder<T>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ArrayBuilder b$1;

    public Array$$anonfun$concat$2(ArrayBuilder arrayBuilder) {
        this.b$1 = arrayBuilder;
    }

    @Override // scala.Function1
    public final ArrayBuilder<T> apply(Object obj) {
        return (ArrayBuilder) this.b$1.$plus$plus$eq(Predef$.MODULE$.genericArrayOps(obj));
    }
}
