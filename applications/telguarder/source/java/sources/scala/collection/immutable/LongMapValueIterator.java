package scala.collection.immutable;

import scala.collection.immutable.LongMap;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001E2Q!\u0001\u0002\u0001\u0005!\u0011A\u0003T8oO6\u000b\u0007OV1mk\u0016LE/\u001a:bi>\u0014(BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006,\"!\u0003\t\u0014\u0005\u0001Q\u0001\u0003B\u0006\r\u001d9i\u0011AA\u0005\u0003\u001b\t\u0011q\u0002T8oO6\u000b\u0007/\u0013;fe\u0006$xN\u001d\t\u0003\u001fAa\u0001\u0001B\u0003\u0012\u0001\t\u00071CA\u0001W\u0007\u0001\t\"\u0001\u0006\r\u0011\u0005U1R\"\u0001\u0004\n\u0005]1!a\u0002(pi\"Lgn\u001a\t\u0003+eI!A\u0007\u0004\u0003\u0007\u0005s\u0017\u0010\u0003\u0005\u001d\u0001\t\u0005\t\u0015!\u0003\u001e\u0003\tIG\u000fE\u0002\f=9I!a\b\u0002\u0003\u000f1{gnZ'ba\")\u0011\u0005\u0001C\u0001E\u00051A(\u001b8jiz\"\"a\t\u0013\u0011\u0007-\u0001a\u0002C\u0003\u001dA\u0001\u0007Q\u0004C\u0003'\u0001\u0011\u0005q%A\u0004wC2,Xm\u00144\u0015\u00059A\u0003\"B\u0015&\u0001\u0004Q\u0013a\u0001;jaB\u00191F\f\b\u000f\u0005-a\u0013BA\u0017\u0003\u0003\u001dauN\\4NCBL!a\f\u0019\u0003\u0007QK\u0007O\u0003\u0002.\u0005\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LongMapValueIterator.class */
public class LongMapValueIterator<V> extends LongMapIterator<V, V> {
    public LongMapValueIterator(LongMap<V> longMap) {
        super(longMap);
    }

    @Override // scala.collection.immutable.LongMapIterator
    public V valueOf(LongMap.Tip<V> tip) {
        return tip.value();
    }
}
