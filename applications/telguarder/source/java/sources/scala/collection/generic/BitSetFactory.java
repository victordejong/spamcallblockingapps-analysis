package scala.collection.generic;

import java.util.Objects;
import scala.collection.BitSet;
import scala.collection.BitSetLike;
import scala.collection.Seq;
import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u001d3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0007CSR\u001cV\r\u001e$bGR|'/\u001f\u0006\u0003\u0007\u0011\tqaZ3oKJL7M\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b5M\u0011\u0001a\u0003\t\u0003\u00195i\u0011AB\u0005\u0003\u001d\u0019\u0011a!\u00118z%\u00164\u0007\"\u0002\t\u0001\t\u0003\t\u0012A\u0002\u0013j]&$H\u0005F\u0001\u0013!\ta1#\u0003\u0002\u0015\r\t!QK\\5u\u0011\u00151\u0002A\"\u0001\u0018\u0003\u0015)W\u000e\u001d;z+\u0005A\u0002CA\r\u001b\u0019\u0001!Qa\u0007\u0001C\u0002q\u0011AaQ8mYF\u0011Q\u0004\t\t\u0003\u0019yI!a\b\u0004\u0003\u000f9{G\u000f[5oOJ\u0019\u0011eI\u0014\u0007\t\t\u0002\u0001\u0001\t\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0003I\u0015j\u0011\u0001B\u0005\u0003M\u0011\u0011aAQ5u'\u0016$\bc\u0001\u0013)1%\u0011\u0011\u0006\u0002\u0002\u000b\u0005&$8+\u001a;MS.,\u0007\"B\u0016\u0001\r\u0003a\u0013A\u00038fo\n+\u0018\u000e\u001c3feV\tQ\u0006\u0005\u0003/cMBR\"A\u0018\u000b\u0005A\"\u0011aB7vi\u0006\u0014G.Z\u0005\u0003e=\u0012qAQ;jY\u0012,'\u000f\u0005\u0002\ri%\u0011QG\u0002\u0002\u0004\u0013:$\b\"B\u001c\u0001\t\u0003A\u0014!B1qa2LHC\u0001\r:\u0011\u0015Qd\u00071\u0001<\u0003\u0015)G.Z7t!\raAhM\u0005\u0003{\u0019\u0011!\u0002\u0010:fa\u0016\fG/\u001a3?\u0011\u0015y\u0004\u0001\"\u0001A\u0003I\u0011\u0017\u000e^:fi\u000e\u000bgNQ;jY\u00124%o\\7\u0016\u0003\u0005\u00132AQ\u0006D\r\u0011\u0011c\bA!\u0011\u000b\u0011+\u0005d\r\r\u000e\u0003\tI!A\u0012\u0002\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/BitSetFactory.class */
public interface BitSetFactory<Coll extends BitSet & BitSetLike<Coll>> {

    /* renamed from: scala.collection.generic.BitSetFactory$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/BitSetFactory$class.class */
    public abstract class Cclass {
        public static void $init$(BitSetFactory bitSetFactory) {
        }

        public static BitSet apply(BitSetFactory bitSetFactory, Seq seq) {
            return (BitSet) seq.$div$colon(bitSetFactory.empty(), new BitSetFactory$$anonfun$apply$1(bitSetFactory));
        }

        public static CanBuildFrom bitsetCanBuildFrom(BitSetFactory bitSetFactory) {
            return new CanBuildFrom<Coll, Object, Coll>(bitSetFactory) { // from class: scala.collection.generic.BitSetFactory$$anon$1
                private final /* synthetic */ BitSetFactory $outer;

                {
                    Objects.requireNonNull(bitSetFactory);
                    this.$outer = bitSetFactory;
                }

                @Override // scala.collection.generic.CanBuildFrom
                public Builder<Object, Coll> apply() {
                    return this.$outer.newBuilder();
                }

                /* JADX WARN: Incorrect types in method signature: (TColl;)Lscala/collection/mutable/Builder<Ljava/lang/Object;TColl;>; */
                public Builder apply(BitSet bitSet) {
                    return this.$outer.newBuilder();
                }
            };
        }
    }

    Coll apply(Seq<Object> seq);

    Object bitsetCanBuildFrom();

    Coll empty();

    Builder<Object, Coll> newBuilder();
}
