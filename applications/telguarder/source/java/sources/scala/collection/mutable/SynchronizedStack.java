package scala.collection.mutable;

import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.SeqLike;
import scala.collection.TraversableOnce;
import scala.collection.immutable.List;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u000154A!\u0001\u0002\u0001\u0013\t\t2+\u001f8dQJ|g.\u001b>fIN#\u0018mY6\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0003\u0015E\u0019\"\u0001A\u0006\u0011\u00071iq\"D\u0001\u0003\u0013\tq!AA\u0003Ti\u0006\u001c7\u000e\u0005\u0002\u0011#1\u0001A!\u0002\n\u0001\u0005\u0004\u0019\"!A!\u0012\u0005QA\u0002CA\u000b\u0017\u001b\u00051\u0011BA\f\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"!F\r\n\u0005i1!aA!os\")A\u0004\u0001C\u0001;\u00051A(\u001b8jiz\"\u0012A\b\t\u0004\u0019\u0001y\u0001\"\u0002\u0011\u0001\t\u0003\n\u0013aB5t\u000b6\u0004H/_\u000b\u0002EA\u0011QcI\u0005\u0003I\u0019\u0011qAQ8pY\u0016\fg\u000eC\u0003'\u0001\u0011\u0005s%\u0001\u0003qkNDGC\u0001\u0015*\u001b\u0005\u0001\u0001\"\u0002\u0016&\u0001\u0004y\u0011\u0001B3mK6DQA\n\u0001\u0005B1\"B\u0001K\u00170c!)af\u000ba\u0001\u001f\u0005)Q\r\\3nc!)\u0001g\u000ba\u0001\u001f\u0005)Q\r\\3ne!)!g\u000ba\u0001g\u0005)Q\r\\3ngB\u0019Q\u0003N\b\n\u0005U2!A\u0003\u001fsKB,\u0017\r^3e}!)q\u0007\u0001C!q\u00059\u0001/^:i\u00032dGC\u0001\u0015:\u0011\u0015Qd\u00071\u0001<\u0003\tA8\u000fE\u0002={=i\u0011\u0001B\u0005\u0003}\u0011\u0011q\u0002\u0016:bm\u0016\u00148/\u00192mK>s7-\u001a\u0005\u0006\u0001\u0002!\t%Q\u0001\u0004i>\u0004X#A\b\t\u000b\r\u0003A\u0011\t#\u0002\u0007A|\u0007\u000fF\u0001\u0010\u0011\u00151\u0005\u0001\"\u0011H\u0003\u0015\u0019G.Z1s)\u0005A\u0005CA\u000bJ\u0013\tQeA\u0001\u0003V]&$\b\"\u0002'\u0001\t\u0003j\u0015\u0001C5uKJ\fGo\u001c:\u0016\u00039\u00032\u0001P(\u0010\u0013\t\u0001FA\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u0015\u0011\u0006\u0001\"\u0011T\u0003\u0019!x\u000eT5tiV\tA\u000bE\u0002V1>q!!\u0006,\n\u0005]3\u0011a\u00029bG.\fw-Z\u0005\u00033j\u0013A\u0001T5ti*\u0011qK\u0002\u0005\u00069\u0002!\t%X\u0001\ti>\u001cFO]5oOR\ta\f\u0005\u0002`E:\u0011Q\u0003Y\u0005\u0003C\u001a\ta\u0001\u0015:fI\u00164\u0017BA2e\u0005\u0019\u0019FO]5oO*\u0011\u0011M\u0002\u0015\u0005\u0001\u0019L7\u000e\u0005\u0002\u0016O&\u0011\u0001N\u0002\u0002\u000bI\u0016\u0004(/Z2bi\u0016$\u0017%\u00016\u0002\u0003/\u0019\u0016P\\2ie>t\u0017N_1uS>t\u0007E^5bAM,G.Z2uSZ,\u0007e\u001c<feJLG-\u001b8hA=4\u0007%\\3uQ>$7\u000fI5tA%t\u0007.\u001a:f]Rd\u0017\u0010I;oe\u0016d\u0017.\u00192mK:\u0002\u0003eQ8og&$WM\u001d\u0011kCZ\fg&\u001e;jY:\u001awN\\2veJ,g\u000e\u001e\u0018MS:\\W\r\u001a\"m_\u000e\\\u0017N\\4EKF,X-^3!S:\u001cH/Z1e]\u0005\nA.\u0001\u00043]E\nd\u0006\r")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SynchronizedStack.class */
public class SynchronizedStack<A> extends Stack<A> {
    @Override // scala.collection.mutable.Stack, scala.collection.mutable.StackProxy
    public void clear() {
        synchronized (this) {
            super.clear();
        }
    }

    @Override // scala.collection.mutable.Stack, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = super.isEmpty();
        }
        return isEmpty;
    }

    @Override // scala.collection.mutable.Stack, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        Iterator<A> it;
        synchronized (this) {
            it = super.iterator();
        }
        return it;
    }

    @Override // scala.collection.mutable.Stack, scala.collection.mutable.StackProxy
    public A pop() {
        A a;
        synchronized (this) {
            a = (A) super.pop();
        }
        return a;
    }

    @Override // scala.collection.mutable.Stack, scala.collection.mutable.StackProxy
    public SynchronizedStack<A> push(A a) {
        SynchronizedStack<A> synchronizedStack;
        synchronized (this) {
            synchronizedStack = (SynchronizedStack) super.push((SynchronizedStack<A>) a);
        }
        return synchronizedStack;
    }

    @Override // scala.collection.mutable.Stack, scala.collection.mutable.StackProxy
    public SynchronizedStack<A> push(A a, A a2, Seq<A> seq) {
        SynchronizedStack<A> synchronizedStack;
        synchronized (this) {
            synchronizedStack = (SynchronizedStack) super.push((Object) a, (Object) a2, (Seq) seq);
        }
        return synchronizedStack;
    }

    @Override // scala.collection.mutable.Stack, scala.collection.mutable.StackProxy
    public SynchronizedStack<A> pushAll(TraversableOnce<A> traversableOnce) {
        SynchronizedStack<A> synchronizedStack;
        synchronized (this) {
            synchronizedStack = (SynchronizedStack) super.pushAll((TraversableOnce) elems());
        }
        return synchronizedStack;
    }

    @Override // scala.collection.mutable.Stack, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<A> toList() {
        List<A> list;
        synchronized (this) {
            list = super.toList();
        }
        return list;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        String cclass;
        synchronized (this) {
            cclass = SeqLike.Cclass.toString(this);
        }
        return cclass;
    }

    @Override // scala.collection.mutable.Stack, scala.collection.mutable.StackProxy
    public A top() {
        A a;
        synchronized (this) {
            a = (A) super.top();
        }
        return a;
    }
}
