package scala.collection.mutable;

import scala.MatchError;
import scala.collection.generic.CanBuildFrom;
import scala.collection.mutable.WrappedArray;
import scala.reflect.ClassTag;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WrappedArray$.class */
public final class WrappedArray$ {
    public static final WrappedArray$ MODULE$ = null;
    private final WrappedArray.ofRef<Object> EmptyWrappedArray = new WrappedArray.ofRef<>(new Object[0]);

    static {
        new WrappedArray$();
    }

    private WrappedArray$() {
        MODULE$ = this;
    }

    private WrappedArray.ofRef<Object> EmptyWrappedArray() {
        return this.EmptyWrappedArray;
    }

    public <T> CanBuildFrom<WrappedArray<?>, T, WrappedArray<T>> canBuildFrom(ClassTag<T> classTag) {
        return new CanBuildFrom<WrappedArray<?>, T, WrappedArray<T>>(classTag) { // from class: scala.collection.mutable.WrappedArray$$anon$1
            private final ClassTag m$1;

            {
                this.m$1 = classTag;
            }

            @Override // scala.collection.generic.CanBuildFrom
            public Builder<T, WrappedArray<T>> apply() {
                return ArrayBuilder$.MODULE$.make(this.m$1).mapResult(new WrappedArray$$anon$1$$anonfun$apply$2(this));
            }

            public Builder<T, WrappedArray<T>> apply(WrappedArray<?> wrappedArray) {
                return ArrayBuilder$.MODULE$.make(this.m$1).mapResult(new WrappedArray$$anon$1$$anonfun$apply$1(this));
            }
        };
    }

    public <T> WrappedArray<T> empty() {
        return EmptyWrappedArray();
    }

    public <T> WrappedArray<T> make(Object obj) {
        WrappedArray.ofRef ofref;
        if (obj == null) {
            ofref = null;
        } else if (obj instanceof Object[]) {
            ofref = new WrappedArray.ofRef((Object[]) obj);
        } else if (obj instanceof int[]) {
            ofref = new WrappedArray.ofInt((int[]) obj);
        } else if (obj instanceof double[]) {
            ofref = new WrappedArray.ofDouble((double[]) obj);
        } else if (obj instanceof long[]) {
            ofref = new WrappedArray.ofLong((long[]) obj);
        } else if (obj instanceof float[]) {
            ofref = new WrappedArray.ofFloat((float[]) obj);
        } else if (obj instanceof char[]) {
            ofref = new WrappedArray.ofChar((char[]) obj);
        } else if (obj instanceof byte[]) {
            ofref = new WrappedArray.ofByte((byte[]) obj);
        } else if (obj instanceof short[]) {
            ofref = new WrappedArray.ofShort((short[]) obj);
        } else if (obj instanceof boolean[]) {
            ofref = new WrappedArray.ofBoolean((boolean[]) obj);
        } else if (!(obj instanceof BoxedUnit[])) {
            throw new MatchError(obj);
        } else {
            ofref = new WrappedArray.ofUnit((BoxedUnit[]) obj);
        }
        return ofref;
    }

    public <A> Builder<A, IndexedSeq<A>> newBuilder() {
        return new ArrayBuffer();
    }
}
