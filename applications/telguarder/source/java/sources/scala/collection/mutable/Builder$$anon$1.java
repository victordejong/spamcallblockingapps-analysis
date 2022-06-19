package scala.collection.mutable;

import scala.Function1;
import scala.Proxy;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Builder$$anon$1.class */
public final class Builder$$anon$1 implements Builder<Elem, NewTo>, Proxy {
    private final Function1 f$1;
    private final Builder<Elem, To> self;

    /* JADX WARN: Multi-variable type inference failed */
    public Builder$$anon$1(Builder builder, Builder<Elem, To> builder2) {
        this.f$1 = builder2;
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
        Proxy.Cclass.$init$(this);
        this.self = builder;
    }

    @Override // scala.collection.generic.Growable
    public Growable<Elem> $plus$eq(Elem elem, Elem elem2, Seq<Elem> seq) {
        Growable<Elem> $plus$plus$eq;
        $plus$plus$eq = $plus$eq((Builder$$anon$1) elem).$plus$eq(elem2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
    public Builder$$anon$1 $plus$eq(Object obj) {
        self().$plus$eq((Builder) obj);
        return this;
    }

    @Override // scala.collection.generic.Growable
    public Builder$$anon$1 $plus$plus$eq(TraversableOnce traversableOnce) {
        self().$plus$plus$eq(traversableOnce);
        return this;
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        self().clear();
    }

    @Override // scala.Proxy
    public boolean equals(Object obj) {
        return Proxy.Cclass.equals(this, obj);
    }

    @Override // scala.Proxy
    public int hashCode() {
        return Proxy.Cclass.hashCode(this);
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<Elem, NewTo> mapResult(Function1<NewTo, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [NewTo, java.lang.Object] */
    @Override // scala.collection.mutable.Builder
    public NewTo result() {
        return this.f$1.apply(self().result());
    }

    @Override // scala.Proxy
    public Builder<Elem, To> self() {
        return this.self;
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(int i) {
        self().sizeHint(i);
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
        self().sizeHintBounded(i, traversableLike);
    }

    @Override // scala.Proxy
    public String toString() {
        return Proxy.Cclass.toString(this);
    }
}
