package scala;

import scala.collection.generic.CanBuildFrom;
import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.ArrayBuilder$;
import scala.reflect.ClassTag;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anon$2.class */
public final class Array$$anon$2 implements CanBuildFrom<Object, T, Object> {
    private final ClassTag t$1;

    public Array$$anon$2(ClassTag classTag) {
        this.t$1 = classTag;
    }

    @Override // scala.collection.generic.CanBuildFrom
    public ArrayBuilder<T> apply() {
        return ArrayBuilder$.MODULE$.make(this.t$1);
    }

    @Override // scala.collection.generic.CanBuildFrom
    public ArrayBuilder<T> apply(Object obj) {
        return ArrayBuilder$.MODULE$.make(this.t$1);
    }
}
