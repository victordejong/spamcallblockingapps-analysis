package scala.collection.mutable;

import scala.Function1;
import scala.collection.Seq;
import scala.collection.Set;
import scala.collection.SetLike;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u000113A!\u0001\u0002\u0001\u0013\tQ1+\u001a;Ck&dG-\u001a:\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0004\u0015Uy2c\u0001\u0001\f\u001fA\u0011A\"D\u0007\u0002\r%\u0011aB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\tA\t2CH\u0007\u0002\u0005%\u0011!C\u0001\u0002\b\u0005VLG\u000eZ3s!\t!R\u0003\u0004\u0001\u0005\u000bY\u0001!\u0019A\f\u0003\u0003\u0005\u000b\"\u0001G\u000e\u0011\u00051I\u0012B\u0001\u000e\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u000f\n\u0005u1!aA!osB\u0011Ac\b\u0003\u0006A\u0001\u0011\r!\t\u0002\u0005\u0007>dG.\u0005\u0002\u0019EI\u00191%J\u0015\u0007\t\u0011\u0002\u0001A\t\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0004M\u001d\u001aR\"\u0001\u0003\n\u0005!\"!aA*fiB!aEK\n\u001f\u0013\tYCAA\u0004TKRd\u0015n[3\t\u00115\u0002!\u0011!Q\u0001\ny\tQ!Z7qifDQa\f\u0001\u0005\u0002A\na\u0001P5oSRtDCA\u00193!\u0011\u0001\u0002a\u0005\u0010\t\u000b5r\u0003\u0019\u0001\u0010\t\u000fQ\u0002\u0001\u0019!C\tk\u0005)Q\r\\3ngV\ta\u0004C\u00048\u0001\u0001\u0007I\u0011\u0003\u001d\u0002\u0013\u0015dW-\\:`I\u0015\fHCA\u001d=!\ta!(\u0003\u0002<\r\t!QK\\5u\u0011\u001did'!AA\u0002y\t1\u0001\u001f\u00132\u0011\u0019y\u0004\u0001)Q\u0005=\u00051Q\r\\3ng\u0002BQ!\u0011\u0001\u0005\u0002\t\u000b\u0001\u0002\n9mkN$S-\u001d\u000b\u0003\u0007\u0012k\u0011\u0001\u0001\u0005\u0006\u000b\u0002\u0003\raE\u0001\u0002q\")q\t\u0001C\u0001\u0011\u0006)1\r\\3beR\t\u0011\bC\u0003K\u0001\u0011\u00051*\u0001\u0004sKN,H\u000e\u001e\u000b\u0002=\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SetBuilder.class */
public class SetBuilder<A, Coll extends Set<A> & SetLike<A, Coll>> implements Builder<A, Coll> {
    private Coll elems;
    private final Coll empty;

    public SetBuilder(Coll coll) {
        this.empty = coll;
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
        this.elems = coll;
    }

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$eq(A a, A a2, Seq<A> seq) {
        Growable<A> $plus$plus$eq;
        $plus$plus$eq = $plus$eq((SetBuilder<A, Coll>) a).$plus$eq(a2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
    public SetBuilder<A, Coll> $plus$eq(A a) {
        elems_$eq(elems().$plus(a));
        return this;
    }

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
        return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        elems_$eq(this.empty);
    }

    public Coll elems() {
        return this.elems;
    }

    public void elems_$eq(Coll coll) {
        this.elems = coll;
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<A, NewTo> mapResult(Function1<Coll, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.mutable.Builder
    public Coll result() {
        return elems();
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(int i) {
        Builder.Cclass.sizeHint(this, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHint(this, traversableLike);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike, int i) {
        Builder.Cclass.sizeHint(this, traversableLike, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHintBounded(int i, TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHintBounded(this, i, traversableLike);
    }
}
