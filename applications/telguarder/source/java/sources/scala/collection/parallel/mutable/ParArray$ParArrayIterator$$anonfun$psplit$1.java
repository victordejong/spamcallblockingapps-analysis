package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Predef$;
import scala.Serializable;
import scala.collection.parallel.mutable.ParArray;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
import scala.runtime.RichInt$;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1.class */
public final class ParArray$ParArrayIterator$$anonfun$psplit$1 extends AbstractFunction1<Object, ParArray<T>.ParArrayIterator> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParArray.ParArrayIterator $outer;
    private final IntRef traversed$1;

    /* JADX WARN: Multi-variable type inference failed */
    public ParArray$ParArrayIterator$$anonfun$psplit$1(ParArray.ParArrayIterator parArrayIterator, ParArray<T>.ParArrayIterator parArrayIterator2) {
        Objects.requireNonNull(parArrayIterator);
        this.$outer = parArrayIterator;
        this.traversed$1 = parArrayIterator2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final ParArray<T>.ParArrayIterator apply(int i) {
        ParArray<T>.ParArrayIterator parArrayIterator;
        if (this.traversed$1.elem < this.$outer.until()) {
            int i2 = this.traversed$1.elem;
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            int min$extension = richInt$.min$extension(this.traversed$1.elem + i, this.$outer.until());
            this.traversed$1.elem = min$extension;
            parArrayIterator = new ParArray.ParArrayIterator(this.$outer.m90xefb94d96(), i2, min$extension, this.$outer.arr());
        } else {
            parArrayIterator = new ParArray.ParArrayIterator(this.$outer.m90xefb94d96(), this.traversed$1.elem, this.traversed$1.elem, this.$outer.arr());
        }
        return parArrayIterator;
    }
}
