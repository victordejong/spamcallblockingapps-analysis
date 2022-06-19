package scala.collection.immutable;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
import scala.collection.mutable.Builder;
import scala.collection.mutable.ListBuffer;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Seq$.class */
public final class Seq$ extends SeqFactory<Seq> {
    public static final Seq$ MODULE$ = null;

    static {
        new Seq$();
    }

    private Seq$() {
        MODULE$ = this;
    }

    public <A> CanBuildFrom<Seq<?>, A, Seq<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, Seq<A>> newBuilder() {
        return new ListBuffer();
    }
}
