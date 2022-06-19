package scala.collection;

import scala.Function2;
import scala.collection.LinearSeqLike;
import scala.collection.immutable.List;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.util.hashing.MurmurHash3$;
@ScalaSignature(bytes = "\u0006\u0001q3\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005q\u0001\b\u0002\u000e\u0019&tW-\u0019:TKFd\u0015n[3\u000b\u0005\r!\u0011AC2pY2,7\r^5p]*\tQ!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007!\u0019RdE\u0002\u0001\u00135\u0001\"AC\u0006\u000e\u0003\u0011I!\u0001\u0004\u0003\u0003\r\u0005s\u0017PU3g!\u0011qq\"\u0005\u000f\u000e\u0003\tI!\u0001\u0005\u0002\u0003\u000fM+\u0017\u000fT5lKB\u0011!c\u0005\u0007\u0001\t\u0019!\u0002\u0001\"b\u0001+\t\t\u0011)\u0005\u0002\u00173A\u0011!bF\u0005\u00031\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u000b5%\u00111\u0004\u0002\u0002\u0004\u0003:L\bC\u0001\n\u001e\t\u0019q\u0002\u0001\"b\u0001?\t!!+\u001a9s#\t1\u0002\u0005\u0005\u0003\u000f\u0001Ea\u0002\"\u0002\u0012\u0001\t\u0003\u0019\u0013A\u0002\u0013j]&$H\u0005F\u0001%!\tQQ%\u0003\u0002'\t\t!QK\\5u\u0011\u0019A\u0003\u0001)C)S\u0005qA\u000f[5t\u0007>dG.Z2uS>tW#\u0001\u0016\u0011\u00079Y\u0013#\u0003\u0002-\u0005\tIA*\u001b8fCJ\u001cV-\u001d\u0005\u0007]\u0001\u0001K\u0011K\u0018\u0002\u0019Q|7i\u001c7mK\u000e$\u0018n\u001c8\u0015\u0005)\u0002\u0004\"B\u0019.\u0001\u0004a\u0012\u0001\u0002:faJDQa\r\u0001\u0007\u0002%\n1a]3r\u0011\u0015)\u0004\u0001\"\u00117\u0003!A\u0017m\u001d5D_\u0012,G#A\u001c\u0011\u0005)A\u0014BA\u001d\u0005\u0005\rIe\u000e\u001e\u0005\u0006w\u0001!\t\u0005P\u0001\tSR,'/\u0019;peV\tQ\bE\u0002\u000f}EI!a\u0010\u0002\u0003\u0011%#XM]1u_JDQ!\u0011\u0001\u0005F\t\u000b1bY8se\u0016\u001c\bo\u001c8egV\u00111I\u0014\u000b\u0003\tB#\"!\u0012%\u0011\u0005)1\u0015BA$\u0005\u0005\u001d\u0011un\u001c7fC:DQ!\u0013!A\u0002)\u000b\u0011\u0001\u001d\t\u0006\u0015-\u000bR*R\u0005\u0003\u0019\u0012\u0011\u0011BR;oGRLwN\u001c\u001a\u0011\u0005IqE!B(A\u0005\u0004)\"!\u0001\"\t\u000bE\u0003\u0005\u0019\u0001*\u0002\tQD\u0017\r\u001e\t\u0004\u001dMk\u0015B\u0001+\u0003\u0005\u00199UM\\*fc\"\u0012\u0001I\u0016\t\u0003/jk\u0011\u0001\u0017\u0006\u00033\u0012\t!\"\u00198o_R\fG/[8o\u0013\tY\u0006LA\u0004uC&d'/Z2")
/* loaded from: classes3-dex2jar.jar:scala/collection/LinearSeqLike.class */
public interface LinearSeqLike<A, Repr extends LinearSeqLike<A, Repr>> extends SeqLike<A, Repr> {

    /* renamed from: scala.collection.LinearSeqLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/LinearSeqLike$class.class */
    public abstract class Cclass {
        public static void $init$(LinearSeqLike linearSeqLike) {
        }

        public static final boolean corresponds(LinearSeqLike linearSeqLike, GenSeq genSeq, Function2 function2) {
            boolean isEmpty;
            while (!linearSeqLike.isEmpty()) {
                if (!genSeq.nonEmpty() || !BoxesRunTime.unboxToBoolean(function2.apply(linearSeqLike.head(), genSeq.head()))) {
                    isEmpty = false;
                    break;
                }
                linearSeqLike = (LinearSeqLike) linearSeqLike.tail();
                genSeq = (GenSeq) genSeq.tail();
            }
            isEmpty = genSeq.isEmpty();
            return isEmpty;
        }

        public static int hashCode(LinearSeqLike linearSeqLike) {
            return MurmurHash3$.MODULE$.seqHash(linearSeqLike.seq());
        }

        public static Iterator iterator(LinearSeqLike linearSeqLike) {
            return new AbstractIterator<A>(linearSeqLike) { // from class: scala.collection.LinearSeqLike$$anon$1
                private LinearSeqLike these;

                /* JADX WARN: Incorrect types in method signature: (TRepr;)V */
                {
                    this.these = linearSeqLike;
                }

                /* JADX WARN: Incorrect return type in method signature: ()TRepr; */
                private LinearSeqLike these() {
                    return this.these;
                }

                /* JADX WARN: Incorrect types in method signature: (TRepr;)V */
                private void these_$eq(LinearSeqLike linearSeqLike2) {
                    this.these = linearSeqLike2;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return !these().isEmpty();
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v2, types: [A] */
                @Override // scala.collection.Iterator
                public A next() {
                    Object obj;
                    if (hasNext()) {
                        obj = these().head();
                        these_$eq((LinearSeqLike) these().tail());
                    } else {
                        obj = Iterator$.MODULE$.empty().next();
                    }
                    return obj;
                }

                @Override // scala.collection.AbstractIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public List<A> toList() {
                    List<A> list = these().toList();
                    these_$eq((LinearSeqLike) these().take(0));
                    return list;
                }
            };
        }

        public static LinearSeq thisCollection(LinearSeqLike linearSeqLike) {
            return (LinearSeq) linearSeqLike;
        }

        public static LinearSeq toCollection(LinearSeqLike linearSeqLike, LinearSeqLike linearSeqLike2) {
            return (LinearSeq) linearSeqLike2;
        }
    }

    @Override // scala.collection.SeqLike
    <B> boolean corresponds(GenSeq<B> genSeq, Function2<A, B, Object> function2);

    @Override // scala.collection.GenSeqLike
    int hashCode();

    @Override // scala.collection.IterableLike, scala.collection.GenSetLike
    Iterator<A> iterator();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    LinearSeq<A> seq();

    @Override // scala.collection.SeqLike, scala.collection.IterableLike
    LinearSeq<A> thisCollection();

    LinearSeq<A> toCollection(Repr repr);
}
