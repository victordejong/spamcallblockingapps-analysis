package scala.collection.generic;

import scala.collection.immutable.Set;
import scala.collection.mutable.Builder;
import scala.collection.mutable.SetBuilder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001-3Q!\u0001\u0002\u0002\u0002%\u00111#S7nkR\f'\r\\3TKR4\u0015m\u0019;pefT!a\u0001\u0003\u0002\u000f\u001d,g.\u001a:jG*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"E\n\u0003\u0001-\u00012\u0001D\u0007\u0010\u001b\u0005\u0011\u0011B\u0001\b\u0003\u0005)\u0019V\r\u001e$bGR|'/\u001f\t\u0003!Ea\u0001\u0001B\u0003\u0013\u0001\t\u00071C\u0001\u0002D\u0007V\u0011AcI\t\u0003+e\u0001\"AF\f\u000e\u0003\u0019I!\u0001\u0007\u0004\u0003\u000f9{G\u000f[5oOJ\u0019!\u0004H\u0015\u0007\tm\u0001\u0001!\u0007\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0004;\u0001\u0012S\"\u0001\u0010\u000b\u0005}!\u0011!C5n[V$\u0018M\u00197f\u0013\t\tcDA\u0002TKR\u0004\"\u0001E\u0012\u0005\u000b\u0011\n\"\u0019A\u0013\u0003\u0003a\u000b\"!\u0006\u0014\u0011\u0005Y9\u0013B\u0001\u0015\u0007\u0005\r\te.\u001f\t\u0005U-\u0012S&D\u0001\u0005\u0013\taCAA\u0004TKRd\u0015n[3\u0011\u0007A\t\"\u0005C\u00030\u0001\u0011\u0005\u0001'\u0001\u0004=S:LGO\u0010\u000b\u0002cA\u0019A\u0002A\b\t\rM\u0002a\u0011\u0001\u00035\u00035)W\u000e\u001d;z\u0013:\u001cH/\u00198dKV\tQ\u0007E\u0002\u0011#\u0019BQa\u000e\u0001\u0005Ba\nQ!Z7qif,\"!\u000f\u001f\u0016\u0003i\u00022\u0001E\t<!\t\u0001B\bB\u0003>m\t\u0007QEA\u0001B\u0011\u0015y\u0004\u0001\"\u0001A\u0003)qWm\u001e\"vS2$WM]\u000b\u0003\u0003&+\u0012A\u0011\t\u0005\u0007\u001aC%*D\u0001E\u0015\t)E!A\u0004nkR\f'\r\\3\n\u0005\u001d#%a\u0002\"vS2$WM\u001d\t\u0003!%#Q!\u0010 C\u0002\u0015\u00022\u0001E\tI\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/ImmutableSetFactory.class */
public abstract class ImmutableSetFactory<CC extends Set<Object>> extends SetFactory<CC> {
    @Override // scala.collection.generic.GenericCompanion
    public <A> CC empty() {
        return emptyInstance();
    }

    public abstract CC emptyInstance();

    @Override // scala.collection.generic.GenSetFactory, scala.collection.generic.GenericCompanion
    public <A> Builder<A, CC> newBuilder() {
        return new SetBuilder(empty());
    }
}
