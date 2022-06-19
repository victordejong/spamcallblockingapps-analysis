package scala.collection;

import scala.Predef$;
import scala.Serializable;
import scala.collection.SeqLike;
import scala.runtime.AbstractFunction1$mcVI$sp;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
import scala.runtime.RichInt$;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$CombinationsItr$$anonfun$init$2.class */
public final class SeqLike$CombinationsItr$$anonfun$init$2 extends AbstractFunction1$mcVI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final int[] cs$1;
    public final int[] ns$1;
    public final IntRef r$1;

    public SeqLike$CombinationsItr$$anonfun$init$2(SeqLike.CombinationsItr combinationsItr, int[] iArr, int[] iArr2, IntRef intRef) {
        this.cs$1 = iArr;
        this.ns$1 = iArr2;
        this.r$1 = intRef;
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
        int[] iArr = this.ns$1;
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        iArr[i] = richInt$.min$extension(this.r$1.elem, this.cs$1[i]);
        this.r$1.elem -= this.ns$1[i];
    }
}
