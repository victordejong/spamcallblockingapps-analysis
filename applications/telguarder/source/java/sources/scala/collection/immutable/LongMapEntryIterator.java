package scala.collection.immutable;

import scala.Tuple2;
import scala.collection.immutable.LongMap;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001}2Q!\u0001\u0002\u0001\u0005!\u0011A\u0003T8oO6\u000b\u0007/\u00128uefLE/\u001a:bi>\u0014(BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006,\"!\u0003\t\u0014\u0005\u0001Q\u0001\u0003B\u0006\r\u001dmi\u0011AA\u0005\u0003\u001b\t\u0011q\u0002T8oO6\u000b\u0007/\u0013;fe\u0006$xN\u001d\t\u0003\u001fAa\u0001\u0001B\u0003\u0012\u0001\t\u00071CA\u0001W\u0007\u0001\t\"\u0001\u0006\r\u0011\u0005U1R\"\u0001\u0004\n\u0005]1!a\u0002(pi\"Lgn\u001a\t\u0003+eI!A\u0007\u0004\u0003\u0007\u0005s\u0017\u0010\u0005\u0003\u00169yq\u0011BA\u000f\u0007\u0005\u0019!V\u000f\u001d7feA\u0011qD\t\b\u0003\u0017\u0001J!!\t\u0002\u0002\u00191{gnZ'baV#\u0018\u000e\\:\n\u0005\r\"#\u0001\u0002'p]\u001eL!aI\u0013\u000b\u0005\u0019:\u0013!\u0004\"ji>\u0003XM]1uS>t7O\u0003\u0002)\t\u00059q-\u001a8fe&\u001c\u0007\u0002\u0003\u0016\u0001\u0005\u0003\u0005\u000b\u0011B\u0016\u0002\u0005%$\bcA\u0006-\u001d%\u0011QF\u0001\u0002\b\u0019>tw-T1q\u0011\u0015y\u0003\u0001\"\u00011\u0003\u0019a\u0014N\\5u}Q\u0011\u0011G\r\t\u0004\u0017\u0001q\u0001\"\u0002\u0016/\u0001\u0004Y\u0003\"\u0002\u001b\u0001\t\u0003)\u0014a\u0002<bYV,wJ\u001a\u000b\u00037YBQaN\u001aA\u0002a\n1\u0001^5q!\rIDH\u0004\b\u0003\u0017iJ!a\u000f\u0002\u0002\u000f1{gnZ'ba&\u0011QH\u0010\u0002\u0004)&\u0004(BA\u001e\u0003\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LongMapEntryIterator.class */
public class LongMapEntryIterator<V> extends LongMapIterator<V, Tuple2<Object, V>> {
    public LongMapEntryIterator(LongMap<V> longMap) {
        super(longMap);
    }

    @Override // scala.collection.immutable.LongMapIterator
    public Tuple2<Object, V> valueOf(LongMap.Tip<V> tip) {
        return new Tuple2<>(BoxesRunTime.boxToLong(tip.key()), tip.value());
    }
}
