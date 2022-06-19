package scala.collection.generic;

import java.util.Objects;
import scala.collection.GenSet;
import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u001d4Q!\u0001\u0002\u0002\u0002%\u0011QbR3o'\u0016$h)Y2u_JL(BA\u0002\u0005\u0003\u001d9WM\\3sS\u000eT!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)\"AC\t\u0014\u0005\u0001Y\u0001c\u0001\u0007\u000e\u001f5\t!!\u0003\u0002\u000f\u0005\t\u0001r)\u001a8fe&\u001c7i\\7qC:LwN\u001c\t\u0003!Ea\u0001\u0001B\u0003\u0013\u0001\t\u00071C\u0001\u0002D\u0007V\u0011A#I\t\u0003+e\u0001\"AF\f\u000e\u0003\u0019I!\u0001\u0007\u0004\u0003\u000f9{G\u000f[5oOJ\u0019!\u0004H\u0014\u0007\tm\u0001\u0001!\u0007\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0004;y\u0001S\"\u0001\u0003\n\u0005}!!AB$f]N+G\u000f\u0005\u0002\u0011C\u0011)!%\u0005b\u0001G\t\t\u0001,\u0005\u0002\u0016IA\u0011a#J\u0005\u0003M\u0019\u00111!\u00118z!\u0011i\u0002\u0006\t\u0016\n\u0005%\"!AC$f]N+G\u000fT5lKB\u0019\u0001#\u0005\u0011\t\u000b1\u0002A\u0011A\u0017\u0002\rqJg.\u001b;?)\u0005q\u0003c\u0001\u0007\u0001\u001f!)\u0001\u0007\u0001D\u0001c\u0005Qa.Z<Ck&dG-\u001a:\u0016\u0005IRT#A\u001a\u0011\tQ:\u0014\bP\u0007\u0002k)\u0011a\u0007B\u0001\b[V$\u0018M\u00197f\u0013\tATGA\u0004Ck&dG-\u001a:\u0011\u0005AQD!B\u001e0\u0005\u0004\u0019#!A!\u0011\u0007A\t\u0012\bC\u0003?\u0001\u0011\u0005q(A\btKR\u001c\u0015M\u001c\"vS2$gI]8n+\t\u00015+F\u0001B%\r\u00115I\u0012\u0004\u00057u\u0002\u0011\t\u0005\u0002\u0017\t&\u0011QI\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u000b19\u0015*\u001a4\n\u0005!\u0013!\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007G\u0001&M!\r\u0001\u0012c\u0013\t\u0003!1#\u0011\"\u0014(\u0002\u0002\u0003\u0005)\u0011A\u0012\u0003\u0007}#\u0013G\u0002\u0003P{\t\u0001&!\u0002\u0013b]>t7c\u0001(D#B)AbR%S)B\u0011\u0001c\u0015\u0003\u0006wu\u0012\ra\t\t\u0004!E\u0011\u0006\"\u0002\u0017O\t\u00031F#A,\u0011\u0005Aq\u0005\"B-O\t\u0003Q\u0016!B1qa2LHCA.]!\u0011!tG\u0015+\t\u000buC\u0006\u0019\u00010\u0002\t\u0019\u0014x.\u001c\u0019\u0003?\u0006\u00042\u0001E\ta!\t\u0001\u0012\rB\u0005c9\u0006\u0005\t\u0011!B\u0001G\t\u0019q\f\n\u001a\t\u000besE\u0011\u00013\u0015\u0003m\u0003\"\u0001E*\u0011\u0007A\tR\r")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenSetFactory.class */
public abstract class GenSetFactory<CC extends GenSet<Object>> extends GenericCompanion<CC> {
    @Override // scala.collection.generic.GenericCompanion
    public abstract <A> Builder<A, CC> newBuilder();

    public <A> Object setCanBuildFrom() {
        return new CanBuildFrom<CC, A, CC>(this) { // from class: scala.collection.generic.GenSetFactory$$anon$1
            private final /* synthetic */ GenSetFactory $outer;

            {
                Objects.requireNonNull(this);
                this.$outer = this;
            }

            @Override // scala.collection.generic.CanBuildFrom
            public Builder<A, CC> apply() {
                return this.$outer.newBuilder();
            }

            /* JADX WARN: Incorrect types in method signature: (TCC;)Lscala/collection/mutable/Builder<TA;TCC;>; */
            public Builder apply(GenSet genSet) {
                return this.$outer.newBuilder();
            }
        };
    }
}
