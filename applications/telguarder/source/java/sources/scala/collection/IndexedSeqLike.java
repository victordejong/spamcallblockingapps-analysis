package scala.collection;

import java.util.Objects;
import scala.Predef$;
import scala.Serializable;
import scala.collection.BufferedIterator;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Buffer;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.RichInt$;
import scala.util.hashing.MurmurHash3$;
@ScalaSignature(bytes = "\u0006\u0001\u0005}a!C\u0001\u0003!\u0003\r\taBA\u000f\u00059Ie\u000eZ3yK\u0012\u001cV-\u001d'jW\u0016T!a\u0001\u0003\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001)2\u0001C\n\u001b'\r\u0001\u0011\"\u0004\t\u0003\u0015-i\u0011\u0001B\u0005\u0003\u0019\u0011\u00111!\u00118z!\u0011qq\"E\r\u000e\u0003\tI!\u0001\u0005\u0002\u0003\u000fM+\u0017\u000fT5lKB\u0011!c\u0005\u0007\u0001\t\u0019!\u0002\u0001\"b\u0001+\t\t\u0011)\u0005\u0002\u0017\u0013A\u0011!bF\u0005\u00031\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u00135\u001111\u0004\u0001CC\u0002U\u0011AAU3qe\")Q\u0004\u0001C\u0001=\u00051A%\u001b8ji\u0012\"\u0012a\b\t\u0003\u0015\u0001J!!\t\u0003\u0003\tUs\u0017\u000e\u001e\u0005\u0006G\u00011\t\u0001J\u0001\u0004g\u0016\fX#A\u0013\u0011\u000791\u0013#\u0003\u0002(\u0005\tQ\u0011J\u001c3fq\u0016$7+Z9\t\u000b%\u0002A\u0011\t\u0016\u0002\u0011!\f7\u000f[\"pI\u0016$\u0012a\u000b\t\u0003\u00151J!!\f\u0003\u0003\u0007%sG\u000f\u0003\u00040\u0001\u0001&\t\u0006J\u0001\u000fi\"L7oQ8mY\u0016\u001cG/[8o\u0011\u0019\t\u0004\u0001)C)e\u0005aAo\\\"pY2,7\r^5p]R\u0011Qe\r\u0005\u0006iA\u0002\r!G\u0001\u0005e\u0016\u0004(O\u0002\u00037\u0001!9$\u0001C#mK6,g\u000e^:\u0014\tUB4H\u0010\t\u0004\u001de\n\u0012B\u0001\u001e\u0003\u0005A\t%m\u001d;sC\u000e$\u0018\n^3sCR|'\u000fE\u0002\u000fyEI!!\u0010\u0002\u0003!\t+hMZ3sK\u0012LE/\u001a:bi>\u0014\bC\u0001\u0006@\u0013\t\u0001EA\u0001\u0007TKJL\u0017\r\\5{C\ndW\r\u0003\u0005Ck\t\u0005\t\u0015!\u0003,\u0003\u0015\u0019H/\u0019:u\u0011!!UG!A!\u0002\u0013Y\u0013aA3oI\")a)\u000eC\u0001\u000f\u00061A(\u001b8jiz\"2\u0001\u0013&L!\tIU'D\u0001\u0001\u0011\u0015\u0011U\t1\u0001,\u0011\u0015!U\t1\u0001,\u0011\u001diU\u00071A\u0005\n9\u000bQ!\u001b8eKb,\u0012a\u000b\u0005\b!V\u0002\r\u0011\"\u0003R\u0003%Ig\u000eZ3y?\u0012*\u0017\u000f\u0006\u0002 %\"91kTA\u0001\u0002\u0004Y\u0013a\u0001=%c!1Q+\u000eQ!\n-\na!\u001b8eKb\u0004\u0003\"B,6\t\u0013q\u0015!C1wC&d\u0017M\u00197f\u0011\u0015IV\u0007\"\u0001[\u0003\u001dA\u0017m\u001d(fqR,\u0012a\u0017\t\u0003\u0015qK!!\u0018\u0003\u0003\u000f\t{w\u000e\\3b]\")q,\u000eC\u0001A\u0006!a.\u001a=u)\u0005\t\u0002\"\u000226\t\u0003\u0019\u0017\u0001\u00025fC\u0012,\u0012!\u0005\u0005\u0006KV\"\tEZ\u0001\u0005IJ|\u0007\u000f\u0006\u0002hUB\u0019a\u0002[\t\n\u0005%\u0014!\u0001C%uKJ\fGo\u001c:\t\u000b-$\u0007\u0019A\u0016\u0002\u00039DQ!\\\u001b\u0005B9\fA\u0001^1lKR\u0011qm\u001c\u0005\u0006W2\u0004\ra\u000b\u0005\u0006cV\"\tE]\u0001\u0006g2L7-\u001a\u000b\u0004ON,\b\"\u0002;q\u0001\u0004Y\u0013\u0001\u00024s_6DQA\u001e9A\u0002-\nQ!\u001e8uS2DC!\u000e=|yB\u0011!\"_\u0005\u0003u\u0012\u0011\u0001cU3sS\u0006dg+\u001a:tS>tW+\u0013#\u0002\u000bY\fG.^3\u001f\u0011ayV\u0017\u001d\u000f'gvAQA \u0001\u0005B}\f\u0001\"\u001b;fe\u0006$xN]\u000b\u0002O\"9\u00111\u0001\u0001\u0005B\u0005\u0015\u0011\u0001\u0003;p\u0005V4g-\u001a:\u0016\t\u0005\u001d\u0011qC\u000b\u0003\u0003\u0013\u0001b!a\u0003\u0002\u0012\u0005UQBAA\u0007\u0015\r\tyAA\u0001\b[V$\u0018M\u00197f\u0013\u0011\t\u0019\"!\u0004\u0003\r\t+hMZ3s!\r\u0011\u0012q\u0003\u0003\t\u00033\t\tA1\u0001\u0002\u001c\t\u0011\u0011)M\t\u0003#%\u0001BA\u0004\u0001\u00123\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/IndexedSeqLike.class */
public interface IndexedSeqLike<A, Repr> extends SeqLike<A, Repr> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/IndexedSeqLike$Elements.class */
    public class Elements extends AbstractIterator<A> implements BufferedIterator<A>, Serializable {
        public static final long serialVersionUID = 1756321872811029277L;
        public final /* synthetic */ IndexedSeqLike $outer;
        private final int end;
        private int index;

        public Elements(IndexedSeqLike<A, Repr> indexedSeqLike, int i, int i2) {
            this.end = i2;
            Objects.requireNonNull(indexedSeqLike);
            this.$outer = indexedSeqLike;
            BufferedIterator.Cclass.$init$(this);
            this.index = i;
        }

        private int available() {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            return richInt$.max$extension(this.end - index(), 0);
        }

        private int index() {
            return this.index;
        }

        private void index_$eq(int i) {
            this.index = i;
        }

        @Override // scala.collection.AbstractIterator, scala.collection.Iterator
        public BufferedIterator<A> buffered() {
            return BufferedIterator.Cclass.buffered(this);
        }

        @Override // scala.collection.AbstractIterator, scala.collection.Iterator
        public Iterator<A> drop(int i) {
            Elements elements;
            if (i <= 0) {
                elements = new Elements(scala$collection$IndexedSeqLike$Elements$$$outer(), index(), this.end);
            } else if (index() + i >= this.end) {
                IndexedSeqLike scala$collection$IndexedSeqLike$Elements$$$outer = scala$collection$IndexedSeqLike$Elements$$$outer();
                int i2 = this.end;
                elements = new Elements(scala$collection$IndexedSeqLike$Elements$$$outer, i2, i2);
            } else {
                elements = new Elements(scala$collection$IndexedSeqLike$Elements$$$outer(), index() + i, this.end);
            }
            return elements;
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return index() < this.end;
        }

        @Override // scala.collection.BufferedIterator
        public A head() {
            if (index() >= this.end) {
                Iterator$.MODULE$.empty().next();
            } else {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return scala$collection$IndexedSeqLike$Elements$$$outer().apply(index());
        }

        @Override // scala.collection.Iterator
        public A next() {
            if (index() >= this.end) {
                Iterator$.MODULE$.empty().next();
            } else {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            A apply = scala$collection$IndexedSeqLike$Elements$$$outer().apply(index());
            index_$eq(index() + 1);
            return apply;
        }

        public /* synthetic */ IndexedSeqLike scala$collection$IndexedSeqLike$Elements$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.AbstractIterator, scala.collection.Iterator
        public Iterator<A> slice(int i, int i2) {
            return take(i2).drop(i);
        }

        @Override // scala.collection.AbstractIterator, scala.collection.Iterator
        public Iterator<A> take(int i) {
            return i <= 0 ? Iterator$.MODULE$.empty() : i <= available() ? new Elements(scala$collection$IndexedSeqLike$Elements$$$outer(), index(), index() + i) : new Elements(scala$collection$IndexedSeqLike$Elements$$$outer(), index(), this.end);
        }
    }

    /* renamed from: scala.collection.IndexedSeqLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/IndexedSeqLike$class.class */
    public abstract class Cclass {
        public static void $init$(IndexedSeqLike indexedSeqLike) {
        }

        public static int hashCode(IndexedSeqLike indexedSeqLike) {
            return MurmurHash3$.MODULE$.seqHash(indexedSeqLike.seq());
        }

        public static Iterator iterator(IndexedSeqLike indexedSeqLike) {
            return new Elements(indexedSeqLike, 0, indexedSeqLike.length());
        }

        public static IndexedSeq thisCollection(IndexedSeqLike indexedSeqLike) {
            return (IndexedSeq) indexedSeqLike;
        }

        public static Buffer toBuffer(IndexedSeqLike indexedSeqLike) {
            ArrayBuffer arrayBuffer = new ArrayBuffer(indexedSeqLike.size());
            indexedSeqLike.copyToBuffer(arrayBuffer);
            return arrayBuffer;
        }

        public static IndexedSeq toCollection(IndexedSeqLike indexedSeqLike, Object obj) {
            return (IndexedSeq) obj;
        }
    }

    @Override // scala.collection.GenSeqLike
    int hashCode();

    @Override // scala.collection.IterableLike, scala.collection.GenSetLike
    Iterator<A> iterator();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    IndexedSeq<A> seq();

    @Override // scala.collection.SeqLike, scala.collection.IterableLike
    IndexedSeq<A> thisCollection();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <A1> Buffer<A1> toBuffer();

    @Override // scala.collection.SeqLike, scala.collection.IterableLike
    IndexedSeq<A> toCollection(Repr repr);
}
