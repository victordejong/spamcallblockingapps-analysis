package scala.collection;

import java.util.Objects;
import scala.Predef$;
import scala.Serializable;
import scala.collection.SeqLike;
import scala.collection.immutable.Range;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1$mcVI$sp;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichInt$;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$CombinationsItr$$anonfun$next$1.class */
public final class SeqLike$CombinationsItr$$anonfun$next$1 extends AbstractFunction1$mcVI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ SeqLike.CombinationsItr $outer;
    public final Builder buf$1;

    /* JADX WARN: Multi-variable type inference failed */
    public SeqLike$CombinationsItr$$anonfun$next$1(SeqLike.CombinationsItr combinationsItr, SeqLike<A, Repr>.CombinationsItr combinationsItr2) {
        Objects.requireNonNull(combinationsItr);
        this.$outer = combinationsItr;
        this.buf$1 = combinationsItr2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ BoxedUnit apply(Object obj) {
        apply(BoxesRunTime.unboxToInt(obj));
        return BoxedUnit.UNIT;
    }

    @Override // scala.Function1$mcVI$sp
    public final void apply(int i) {
        apply$mcVI$sp(i);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public void apply$mcVI$sp(int i) {
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        Range until$extension0 = richInt$.until$extension0(0, this.$outer.scala$collection$SeqLike$CombinationsItr$$nums()[i]);
        SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1 seqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1 = new SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1(this, i);
        until$extension0.scala$collection$immutable$Range$$validateMaxLength();
        boolean z = (until$extension0.start() == Integer.MIN_VALUE && until$extension0.end() == Integer.MIN_VALUE) ? false : true;
        int start = until$extension0.start();
        int terminalElement = until$extension0.terminalElement();
        int step = until$extension0.step();
        int i2 = 0;
        while (true) {
            if (!z ? i2 < until$extension0.numRangeElements() : start != terminalElement) {
                seqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1.apply(start);
                i2++;
                start += step;
            } else {
                return;
            }
        }
    }

    public /* synthetic */ SeqLike.CombinationsItr scala$collection$SeqLike$CombinationsItr$$anonfun$$$outer() {
        return this.$outer;
    }
}
