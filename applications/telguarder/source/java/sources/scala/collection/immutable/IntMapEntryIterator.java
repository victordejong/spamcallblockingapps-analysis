package scala.collection.immutable;

import scala.Tuple2;
import scala.collection.immutable.IntMap;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001}2Q!\u0001\u0002\u0001\u0005!\u00111#\u00138u\u001b\u0006\u0004XI\u001c;ss&#XM]1u_JT!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mCV\u0011\u0011\u0002E\n\u0003\u0001)\u0001Ba\u0003\u0007\u000f75\t!!\u0003\u0002\u000e\u0005\tq\u0011J\u001c;NCBLE/\u001a:bi>\u0014\bCA\b\u0011\u0019\u0001!Q!\u0005\u0001C\u0002M\u0011\u0011AV\u0002\u0001#\t!\u0002\u0004\u0005\u0002\u0016-5\ta!\u0003\u0002\u0018\r\t9aj\u001c;iS:<\u0007CA\u000b\u001a\u0013\tQbAA\u0002B]f\u0004B!\u0006\u000f\u001f\u001d%\u0011QD\u0002\u0002\u0007)V\u0004H.\u001a\u001a\u0011\u0005}\u0011cBA\u0006!\u0013\t\t#!A\u0006J]Rl\u0015\r]+uS2\u001c\u0018BA\u0012%\u0005\rIe\u000e^\u0005\u0003G\u0015R!AJ\u0014\u0002\u001b\tKGo\u00149fe\u0006$\u0018n\u001c8t\u0015\tAC!A\u0004hK:,'/[2\t\u0011)\u0002!\u0011!Q\u0001\n-\n!!\u001b;\u0011\u0007-ac\"\u0003\u0002.\u0005\t1\u0011J\u001c;NCBDQa\f\u0001\u0005\u0002A\na\u0001P5oSRtDCA\u00193!\rY\u0001A\u0004\u0005\u0006U9\u0002\ra\u000b\u0005\u0006i\u0001!\t!N\u0001\bm\u0006dW/Z(g)\tYb\u0007C\u00038g\u0001\u0007\u0001(A\u0002uSB\u00042!\u000f\u001f\u000f\u001d\tY!(\u0003\u0002<\u0005\u00051\u0011J\u001c;NCBL!!\u0010 \u0003\u0007QK\u0007O\u0003\u0002<\u0005\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IntMapEntryIterator.class */
public class IntMapEntryIterator<V> extends IntMapIterator<V, Tuple2<Object, V>> {
    public IntMapEntryIterator(IntMap<V> intMap) {
        super(intMap);
    }

    @Override // scala.collection.immutable.IntMapIterator
    public Tuple2<Object, V> valueOf(IntMap.Tip<V> tip) {
        return new Tuple2<>(BoxesRunTime.boxToInteger(tip.key()), tip.value());
    }
}
