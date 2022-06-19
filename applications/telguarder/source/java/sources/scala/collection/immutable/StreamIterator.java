package scala.collection.immutable;

import java.util.Objects;
import scala.Function0;
import scala.collection.AbstractIterator;
import scala.collection.Iterator$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\u00054A!\u0001\u0002\u0003\u0013\tq1\u000b\u001e:fC6LE/\u001a:bi>\u0014(BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b#M\u0019\u0001aC\u000e\u0011\u00071iq\"D\u0001\u0005\u0013\tqAA\u0001\tBEN$(/Y2u\u0013R,'/\u0019;peB\u0011\u0001#\u0005\u0007\u0001\t\u0019\u0011\u0002\u0001\"b\u0001'\t\t\u0011)\u0005\u0002\u00151A\u0011QCF\u0007\u0002\r%\u0011qC\u0002\u0002\b\u001d>$\b.\u001b8h!\t)\u0012$\u0003\u0002\u001b\r\t\u0019\u0011I\\=\u0011\u00071ar\"\u0003\u0002\u001e\t\tA\u0011\n^3sCR|'\u000fC\u0003 \u0001\u0011%\u0001%\u0001\u0004=S:LGO\u0010\u000b\u0002CA\u0019!\u0005A\b\u000e\u0003\tAQa\b\u0001\u0005\u0002\u0011\"\"!I\u0013\t\u000b\u0019\u001a\u0003\u0019A\u0014\u0002\tM,GN\u001a\t\u0004E!z\u0011BA\u0015\u0003\u0005\u0019\u0019FO]3b[\u001a!1\u0006\u0001\u0001-\u0005!a\u0015M_=DK2d7C\u0001\u0016.!\t)b&\u0003\u00020\r\t1\u0011I\\=SK\u001aD\u0001\"\r\u0016\u0003\u0002\u0013\u0006IAM\u0001\u0003gR\u00042!F\u001a(\u0013\t!dA\u0001\u0005=Eft\u0017-\\3?\u0011\u0015y\"\u0006\"\u00017)\t9\u0014\b\u0005\u00029U5\t\u0001\u0001\u0003\u00042k\u0011\u0005\rA\r\u0005\tw)B)\u0019!C\u0001y\u0005\ta/F\u0001(\u0011!q$\u0006#A!B\u00139\u0013A\u0001<!\u0011%\u0001\u0005\u00011AA\u0002\u0013%\u0011)A\u0003uQ\u0016\u001cX-F\u00018\u0011%\u0019\u0005\u00011AA\u0002\u0013%A)A\u0005uQ\u0016\u001cXm\u0018\u0013fcR\u0011Q\t\u0013\t\u0003+\u0019K!a\u0012\u0004\u0003\tUs\u0017\u000e\u001e\u0005\b\u0013\n\u000b\t\u00111\u00018\u0003\rAH%\r\u0005\u0007\u0017\u0002\u0001\u000b\u0015B\u001c\u0002\rQDWm]3!\u0011\u0015i\u0005\u0001\"\u0001O\u0003\u001dA\u0017m\u001d(fqR,\u0012a\u0014\t\u0003+AK!!\u0015\u0004\u0003\u000f\t{w\u000e\\3b]\")1\u000b\u0001C\u0001)\u0006!a.\u001a=u)\u0005y\u0001\"\u0002,\u0001\t\u0003b\u0014\u0001\u0003;p'R\u0014X-Y7\t\u000ba\u0003A\u0011I-\u0002\rQ|G*[:u+\u0005Q\u0006cA._\u001f9\u0011Q\u0003X\u0005\u0003;\u001a\tq\u0001]1dW\u0006<W-\u0003\u0002`A\n!A*[:u\u0015\tif\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamIterator.class */
public final class StreamIterator<A> extends AbstractIterator<A> {
    private StreamIterator<A>.LazyCell these;

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamIterator$LazyCell.class */
    public class LazyCell {
        public final /* synthetic */ StreamIterator $outer;
        private volatile boolean bitmap$0;

        /* renamed from: st */
        private final Function0<Stream<A>> f1553st;

        /* renamed from: v */
        private Stream<A> f1554v;

        public LazyCell(StreamIterator<A> streamIterator, Function0<Stream<A>> function0) {
            this.f1553st = function0;
            Objects.requireNonNull(streamIterator);
            this.$outer = streamIterator;
        }

        private Stream v$lzycompute() {
            synchronized (this) {
                if (!this.bitmap$0) {
                    this.f1554v = this.f1553st.apply();
                    this.bitmap$0 = true;
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            this.f1553st = null;
            return this.f1554v;
        }

        public /* synthetic */ StreamIterator scala$collection$immutable$StreamIterator$LazyCell$$$outer() {
            return this.$outer;
        }

        /* renamed from: v */
        public Stream<A> m147v() {
            return this.bitmap$0 ? this.f1554v : v$lzycompute();
        }
    }

    private StreamIterator() {
    }

    public StreamIterator(Stream<A> stream) {
        this();
        these_$eq(new LazyCell(this, new StreamIterator$$anonfun$$lessinit$greater$1(this, stream)));
    }

    private StreamIterator<A>.LazyCell these() {
        return this.these;
    }

    private void these_$eq(StreamIterator<A>.LazyCell lazyCell) {
        this.these = lazyCell;
    }

    @Override // scala.collection.Iterator
    public boolean hasNext() {
        return these().m147v().nonEmpty();
    }

    @Override // scala.collection.Iterator
    public A next() {
        Nothing$ nothing$;
        if (isEmpty()) {
            nothing$ = Iterator$.MODULE$.empty().next();
        } else {
            Stream<A> m147v = these().m147v();
            nothing$ = m147v.head();
            these_$eq(new LazyCell(this, new StreamIterator$$anonfun$next$1(this, m147v)));
        }
        return nothing$;
    }

    @Override // scala.collection.AbstractIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<A> toList() {
        return toStream().toList();
    }

    @Override // scala.collection.AbstractIterator, scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<A> toStream() {
        Stream<A> m147v = these().m147v();
        these_$eq(new LazyCell(this, new StreamIterator$$anonfun$toStream$1(this)));
        return m147v;
    }
}
