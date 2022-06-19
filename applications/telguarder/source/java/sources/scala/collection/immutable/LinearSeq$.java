package scala.collection.immutable;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
import scala.collection.mutable.Builder;
import scala.collection.mutable.ListBuffer;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LinearSeq$.class */
public final class LinearSeq$ extends SeqFactory<LinearSeq> {
    public static final LinearSeq$ MODULE$ = null;

    static {
        new LinearSeq$();
    }

    private LinearSeq$() {
        MODULE$ = this;
    }

    public <A> CanBuildFrom<LinearSeq<?>, A, LinearSeq<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, LinearSeq<A>> newBuilder() {
        return new ListBuffer();
    }
}
