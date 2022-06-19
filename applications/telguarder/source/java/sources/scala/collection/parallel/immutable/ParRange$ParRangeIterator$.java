package scala.collection.parallel.immutable;

import java.util.Objects;
import scala.collection.immutable.Range;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParRange$ParRangeIterator$.class */
public class ParRange$ParRangeIterator$ {
    private final /* synthetic */ ParRange $outer;

    public ParRange$ParRangeIterator$(ParRange parRange) {
        Objects.requireNonNull(parRange);
        this.$outer = parRange;
    }

    public Range $lessinit$greater$default$1() {
        return this.$outer.range();
    }
}
