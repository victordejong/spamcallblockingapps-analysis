package scala.collection.immutable;

import scala.MatchError;
import scala.collection.AbstractIterator;
import scala.collection.immutable.IntMap;
import scala.reflect.ScalaSignature;
import scala.sys.package$;
@ScalaSignature(bytes = "\u0006\u0001\u00154a!\u0001\u0002\u0002\u0002\tA!AD%oi6\u000b\u0007/\u0013;fe\u0006$xN\u001d\u0006\u0003\u0007\u0011\t\u0011\"[7nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017-F\u0002\nEA\u0019\"\u0001\u0001\u0006\u0011\u0007-aa\"D\u0001\u0005\u0013\tiAA\u0001\tBEN$(/Y2u\u0013R,'/\u0019;peB\u0011q\u0002\u0005\u0007\u0001\t\u0015\t\u0002A1\u0001\u0014\u0005\u0005!6\u0001A\t\u0003)a\u0001\"!\u0006\f\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z\u0011!a\u0002A!A!\u0002\u0013i\u0012AA5u!\rqr$I\u0007\u0002\u0005%\u0011\u0001E\u0001\u0002\u0007\u0013:$X*\u00199\u0011\u0005=\u0011C!B\u0012\u0001\u0005\u0004\u0019\"!\u0001,\t\u000b\u0015\u0002A\u0011\u0001\u0014\u0002\rqJg.\u001b;?)\t9\u0003\u0006\u0005\u0003\u001f\u0001\u0005r\u0001\"\u0002\u000f%\u0001\u0004i\u0002b\u0002\u0016\u0001\u0001\u0004%\taK\u0001\u0006S:$W\r_\u000b\u0002YA\u0011Q#L\u0005\u0003]\u0019\u00111!\u00138u\u0011\u001d\u0001\u0004\u00011A\u0005\u0002E\n\u0011\"\u001b8eKb|F%Z9\u0015\u0005I*\u0004CA\u000b4\u0013\t!dA\u0001\u0003V]&$\bb\u0002\u001c0\u0003\u0003\u0005\r\u0001L\u0001\u0004q\u0012\n\u0004B\u0002\u001d\u0001A\u0003&A&\u0001\u0004j]\u0012,\u0007\u0010\t\u0005\bu\u0001\u0001\r\u0011\"\u0001<\u0003\u0019\u0011WO\u001a4feV\tA\bE\u0002\u0016{}J!A\u0010\u0004\u0003\u000b\u0005\u0013(/Y=\u0011\u0005U\u0001\u0015BA!\u0007\u0005\u0019\te.\u001f*fM\"91\t\u0001a\u0001\n\u0003!\u0015A\u00032vM\u001a,'o\u0018\u0013fcR\u0011!'\u0012\u0005\bm\t\u000b\t\u00111\u0001=\u0011\u00199\u0005\u0001)Q\u0005y\u00059!-\u001e4gKJ\u0004\u0003\"B%\u0001\t\u0003Q\u0015a\u00019paV\tQ\u0004C\u0003M\u0001\u0011\u0005Q*\u0001\u0003qkNDGC\u0001\u001aO\u0011\u0015y5\n1\u0001\u001e\u0003\u0005A\b\"B)\u0001\r\u0003\u0011\u0016a\u0002<bYV,wJ\u001a\u000b\u0003\u001dMCQ\u0001\u0016)A\u0002U\u000b1\u0001^5q!\r1\u0016,\t\b\u0003=]K!\u0001\u0017\u0002\u0002\r%sG/T1q\u0013\tQ6LA\u0002USBT!\u0001\u0017\u0002\t\u000bu\u0003A\u0011\u00010\u0002\u000f!\f7OT3yiV\tq\f\u0005\u0002\u0016A&\u0011\u0011M\u0002\u0002\b\u0005>|G.Z1o\u0011\u0015\u0019\u0007\u0001\"\u0002e\u0003\u0011qW\r\u001f;\u0015\u00039\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IntMapIterator.class */
public abstract class IntMapIterator<V, T> extends AbstractIterator<T> {
    private int index = 0;
    private Object[] buffer = new Object[33];

    public IntMapIterator(IntMap<V> intMap) {
        push(intMap);
    }

    public Object[] buffer() {
        return this.buffer;
    }

    public void buffer_$eq(Object[] objArr) {
        this.buffer = objArr;
    }

    @Override // scala.collection.Iterator
    public boolean hasNext() {
        return index() != 0;
    }

    public int index() {
        return this.index;
    }

    public void index_$eq(int i) {
        this.index = i;
    }

    @Override // scala.collection.Iterator
    public final T next() {
        T t;
        while (true) {
            boolean z = false;
            IntMap.Bin bin = null;
            IntMap<V> pop = pop();
            if (pop instanceof IntMap.Bin) {
                z = true;
                IntMap.Bin bin2 = (IntMap.Bin) pop;
                bin = bin2;
                if (bin2.left() instanceof IntMap.Tip) {
                    push(bin2.right());
                    t = valueOf((IntMap.Tip) bin2.left());
                    break;
                }
            }
            if (z) {
                push(bin.right());
                push(bin.left());
            } else if (!(pop instanceof IntMap.Tip)) {
                if (!IntMap$Nil$.MODULE$.equals(pop)) {
                    throw new MatchError(pop);
                }
                throw package$.MODULE$.error("Empty maps not allowed as subtrees");
            } else {
                t = valueOf((IntMap.Tip) pop);
            }
        }
        return t;
    }

    public IntMap<V> pop() {
        index_$eq(index() - 1);
        return (IntMap) buffer()[index()];
    }

    public void push(IntMap<V> intMap) {
        buffer()[index()] = intMap;
        index_$eq(index() + 1);
    }

    public abstract T valueOf(IntMap.Tip<V> tip);
}
