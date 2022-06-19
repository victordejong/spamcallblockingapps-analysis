package scala.collection.immutable;

import scala.collection.immutable.LongMap;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001q2Q!\u0001\u0002\u0001\u0005!\u0011!\u0003T8oO6\u000b\u0007oS3z\u0013R,'/\u0019;pe*\u00111\u0001B\u0001\nS6lW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b+\tI\u0001c\u0005\u0002\u0001\u0015A!1\u0002\u0004\b\u001c\u001b\u0005\u0011\u0011BA\u0007\u0003\u0005=auN\\4NCBLE/\u001a:bi>\u0014\bCA\b\u0011\u0019\u0001!Q!\u0005\u0001C\u0002M\u0011\u0011AV\u0002\u0001#\t!\u0002\u0004\u0005\u0002\u0016-5\ta!\u0003\u0002\u0018\r\t9aj\u001c;iS:<\u0007CA\u000b\u001a\u0013\tQbAA\u0002B]f\u0004\"\u0001H\u0010\u000f\u0005-i\u0012B\u0001\u0010\u0003\u00031auN\\4NCB,F/\u001b7t\u0013\t\u0001\u0013E\u0001\u0003M_:<\u0017B\u0001\u0011#\u0015\t\u0019C%A\u0007CSR|\u0005/\u001a:bi&|gn\u001d\u0006\u0003K\u0011\tqaZ3oKJL7\r\u0003\u0005(\u0001\t\u0005\t\u0015!\u0003)\u0003\tIG\u000fE\u0002\fS9I!A\u000b\u0002\u0003\u000f1{gnZ'ba\")A\u0006\u0001C\u0001[\u00051A(\u001b8jiz\"\"AL\u0018\u0011\u0007-\u0001a\u0002C\u0003(W\u0001\u0007\u0001\u0006C\u00032\u0001\u0011\u0005!'A\u0004wC2,Xm\u00144\u0015\u0005m\u0019\u0004\"\u0002\u001b1\u0001\u0004)\u0014a\u0001;jaB\u0019a'\u000f\b\u000f\u0005-9\u0014B\u0001\u001d\u0003\u0003\u001dauN\\4NCBL!AO\u001e\u0003\u0007QK\u0007O\u0003\u00029\u0005\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LongMapKeyIterator.class */
public class LongMapKeyIterator<V> extends LongMapIterator<V, Object> {
    public LongMapKeyIterator(LongMap<V> longMap) {
        super(longMap);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long, java.lang.Object] */
    @Override // scala.collection.immutable.LongMapIterator
    public Object valueOf(LongMap.Tip<V> tip) {
        return tip.key();
    }
}
