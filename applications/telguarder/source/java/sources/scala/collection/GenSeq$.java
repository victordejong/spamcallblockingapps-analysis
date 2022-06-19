package scala.collection;

import scala.collection.generic.GenTraversableFactory;
import scala.collection.mutable.Builder;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/GenSeq$.class */
public final class GenSeq$ extends GenTraversableFactory<GenSeq> {
    public static final GenSeq$ MODULE$ = null;

    static {
        new GenSeq$();
    }

    private GenSeq$() {
        MODULE$ = this;
    }

    public <A> GenTraversableFactory<GenSeq>.GenericCanBuildFrom<A> canBuildFrom() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, Seq<A>> newBuilder() {
        return Seq$.MODULE$.newBuilder();
    }
}
