package scala;

import java.util.Objects;
import scala.Enumeration;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.Growable;
import scala.collection.immutable.BitSet$;
import scala.collection.mutable.BitSet;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/Enumeration$ValueSet$.class */
public class Enumeration$ValueSet$ implements Serializable {
    private final /* synthetic */ Enumeration $outer;
    private final Enumeration.ValueSet empty;

    public Enumeration$ValueSet$(Enumeration enumeration) {
        Objects.requireNonNull(enumeration);
        this.$outer = enumeration;
        this.empty = new Enumeration.ValueSet(enumeration, BitSet$.MODULE$.empty());
    }

    private Object readResolve() {
        return this.$outer.ValueSet();
    }

    public Enumeration.ValueSet apply(Seq<Enumeration.Value> seq) {
        return (Enumeration.ValueSet) ((Builder) newBuilder().$plus$plus$eq(seq)).result();
    }

    public CanBuildFrom<Enumeration.ValueSet, Enumeration.Value, Enumeration.ValueSet> canBuildFrom() {
        return new CanBuildFrom<Enumeration.ValueSet, Enumeration.Value, Enumeration.ValueSet>(this) { // from class: scala.Enumeration$ValueSet$$anon$2
            private final /* synthetic */ Enumeration$ValueSet$ $outer;

            {
                Objects.requireNonNull(this);
                this.$outer = this;
            }

            @Override // scala.collection.generic.CanBuildFrom
            public Builder<Enumeration.Value, Enumeration.ValueSet> apply() {
                return this.$outer.newBuilder();
            }

            public Builder<Enumeration.Value, Enumeration.ValueSet> apply(Enumeration.ValueSet valueSet) {
                return this.$outer.newBuilder();
            }
        };
    }

    public Enumeration.ValueSet empty() {
        return this.empty;
    }

    public Enumeration.ValueSet fromBitMask(long[] jArr) {
        return new Enumeration.ValueSet(this.$outer, BitSet$.MODULE$.fromBitMask(jArr));
    }

    public Builder<Enumeration.Value, Enumeration.ValueSet> newBuilder() {
        return new Builder<Enumeration.Value, Enumeration.ValueSet>(this) { // from class: scala.Enumeration$ValueSet$$anon$1
            private final /* synthetic */ Enumeration$ValueSet$ $outer;

            /* renamed from: b */
            private final BitSet f1338b = new BitSet();

            {
                Objects.requireNonNull(this);
                this.$outer = this;
                Growable.Cclass.$init$(this);
                Builder.Cclass.$init$(this);
            }

            public Enumeration$ValueSet$$anon$1 $plus$eq(Enumeration.Value value) {
                this.f1338b.$plus$eq(value.mo365id() - this.$outer.scala$Enumeration$ValueSet$$$outer().scala$Enumeration$$bottomId());
                return this;
            }

            @Override // scala.collection.generic.Growable
            public Growable $plus$eq(Object obj, Object obj2, Seq seq) {
                Growable $plus$plus$eq;
                $plus$plus$eq = $plus$eq((Enumeration$ValueSet$$anon$1) obj).$plus$eq(obj2).$plus$plus$eq(seq);
                return $plus$plus$eq;
            }

            @Override // scala.collection.generic.Growable
            public Growable<Enumeration.Value> $plus$plus$eq(TraversableOnce<Enumeration.Value> traversableOnce) {
                return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
            }

            @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
            public void clear() {
                this.f1338b.clear();
            }

            @Override // scala.collection.mutable.Builder
            public <NewTo> Builder<Enumeration.Value, NewTo> mapResult(Function1<Enumeration.ValueSet, NewTo> function1) {
                return Builder.Cclass.mapResult(this, function1);
            }

            @Override // scala.collection.mutable.Builder
            public Enumeration.ValueSet result() {
                return new Enumeration.ValueSet(this.$outer.scala$Enumeration$ValueSet$$$outer(), this.f1338b.toImmutable());
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
        };
    }

    public /* synthetic */ Enumeration scala$Enumeration$ValueSet$$$outer() {
        return this.$outer;
    }
}
