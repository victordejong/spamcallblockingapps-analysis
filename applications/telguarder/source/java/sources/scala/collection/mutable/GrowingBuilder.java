package scala.collection.mutable;

import scala.Function1;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001!3A!\u0001\u0002\u0001\u0013\tqqI]8xS:<')^5mI\u0016\u0014(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)2AC\u000b '\r\u00011b\u0004\t\u0003\u00195i\u0011AB\u0005\u0003\u001d\u0019\u0011a!\u00118z%\u00164\u0007\u0003\u0002\t\u0012'yi\u0011AA\u0005\u0003%\t\u0011qAQ;jY\u0012,'\u000f\u0005\u0002\u0015+1\u0001A!\u0002\f\u0001\u0005\u00049\"\u0001B#mK6\f\"\u0001G\u000e\u0011\u00051I\u0012B\u0001\u000e\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u000f\n\u0005u1!aA!osB\u0011Ac\b\u0003\u0006A\u0001\u0011\r!\t\u0002\u0003)>\f\"\u0001\u0007\u0012\u0011\u0007\r23#D\u0001%\u0015\t)C!A\u0004hK:,'/[2\n\u0005\u001d\"#\u0001C$s_^\f'\r\\3\t\u0011%\u0002!\u0011!Q\u0001\ny\tQ!Z7qifDQa\u000b\u0001\u0005\u00021\na\u0001P5oSRtDCA\u0017/!\u0011\u0001\u0002a\u0005\u0010\t\u000b%R\u0003\u0019\u0001\u0010\t\u000fA\u0002\u0001\u0019!C\tc\u0005)Q\r\\3ngV\ta\u0004C\u00044\u0001\u0001\u0007I\u0011\u0003\u001b\u0002\u0013\u0015dW-\\:`I\u0015\fHCA\u001b9!\taa'\u0003\u00028\r\t!QK\\5u\u0011\u001dI$'!AA\u0002y\t1\u0001\u001f\u00132\u0011\u0019Y\u0004\u0001)Q\u0005=\u00051Q\r\\3ng\u0002BQ!\u0010\u0001\u0005\u0002y\n\u0001\u0002\n9mkN$S-\u001d\u000b\u0003\u007f\u0001k\u0011\u0001\u0001\u0005\u0006\u0003r\u0002\raE\u0001\u0002q\")1\t\u0001C\u0001\t\u0006)1\r\\3beR\tQ\u0007C\u0003G\u0001\u0011\u0005q)\u0001\u0004sKN,H\u000e\u001e\u000b\u0002=\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/GrowingBuilder.class */
public class GrowingBuilder<Elem, To extends Growable<Elem>> implements Builder<Elem, To> {
    private To elems;
    private final To empty;

    public GrowingBuilder(To to) {
        this.empty = to;
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
        this.elems = to;
    }

    @Override // scala.collection.generic.Growable
    public Growable<Elem> $plus$eq(Elem elem, Elem elem2, Seq<Elem> seq) {
        Growable<Elem> $plus$plus$eq;
        $plus$plus$eq = $plus$eq((GrowingBuilder<Elem, To>) elem).$plus$eq(elem2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
    public GrowingBuilder<Elem, To> $plus$eq(Elem elem) {
        elems().$plus$eq(elem);
        return this;
    }

    @Override // scala.collection.generic.Growable
    public Growable<Elem> $plus$plus$eq(TraversableOnce<Elem> traversableOnce) {
        return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        elems_$eq(this.empty);
    }

    public To elems() {
        return this.elems;
    }

    public void elems_$eq(To to) {
        this.elems = to;
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<Elem, NewTo> mapResult(Function1<To, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.mutable.Builder
    public To result() {
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
