package scala.collection.mutable;

import scala.Array$;
import scala.Serializable;
import scala.collection.Seq;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
import scala.collection.package$;
import scala.reflect.ClassTag;
import scala.reflect.ClassTag$;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayStack$.class */
public final class ArrayStack$ extends SeqFactory<ArrayStack> implements Serializable {
    public static final ArrayStack$ MODULE$ = null;

    static {
        new ArrayStack$();
    }

    private ArrayStack$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> ArrayStack<A> apply(Seq<A> seq, ClassTag<A> classTag) {
        Object[] objArr = (Object[]) seq.reverseMap(new ArrayStack$$anonfun$1(), package$.MODULE$.breakOut(Array$.MODULE$.canBuildFrom(ClassTag$.MODULE$.AnyRef())));
        return objArr.length == 0 ? new ArrayStack<>() : new ArrayStack<>(objArr, objArr.length);
    }

    public <A> CanBuildFrom<ArrayStack<?>, A, ArrayStack<A>> canBuildFrom() {
        return ReusableCBF();
    }

    public Object[] clone(Object[] objArr) {
        Object[] objArr2 = new Object[objArr.length];
        Array$.MODULE$.copy(objArr, 0, objArr2, 0, objArr.length);
        return objArr2;
    }

    @Override // scala.collection.generic.GenericCompanion
    public ArrayStack<Nothing$> empty() {
        return new ArrayStack<>();
    }

    public Object[] growArray(Object[] objArr) {
        Object[] objArr2 = new Object[scala.math.package$.MODULE$.max(objArr.length * 2, 1)];
        Array$.MODULE$.copy(objArr, 0, objArr2, 0, objArr.length);
        return objArr2;
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, ArrayStack<A>> newBuilder() {
        return new ArrayStack();
    }
}
