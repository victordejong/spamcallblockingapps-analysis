package scala.runtime;

import scala.Proxy;
import scala.collection.immutable.IndexedSeq;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001i2q!\u0001\u0002\u0011\u0002G\u0005qAA\u0006SC:<W\r\u001a)s_bL(BA\u0002\u0005\u0003\u001d\u0011XO\u001c;j[\u0016T\u0011!B\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tAacE\u0002\u0001\u00135\u0001\"AC\u0006\u000e\u0003\u0011I!\u0001\u0004\u0003\u0003\u0007\u0005s\u0017\u0010E\u0002\u000f#Qq!AC\b\n\u0005A!\u0011!\u0002)s_bL\u0018B\u0001\n\u0014\u0005\u0015!\u0016\u0010]3e\u0015\t\u0001B\u0001\u0005\u0002\u0016-1\u0001A!B\f\u0001\u0005\u0004A\"!\u0001+\u0012\u0005eI\u0001C\u0001\u0006\u001b\u0013\tYBAA\u0004O_RD\u0017N\\4\u0005\u000bu\u0001!\u0011\u0001\r\u0003#I+7/\u001e7u/&$\bn\\;u'R,\u0007\u000fC\u0003 \u0001\u0019\u0005\u0001%A\u0003v]RLG\u000e\u0006\u0002\"GA\u0011!\u0005H\u0007\u0002\u0001!)AE\ba\u0001)\u0005\u0019QM\u001c3\t\u000b}\u0001a\u0011\u0001\u0014\u0015\u0007\u001dz\u0003\u0007E\u0002)[Qi\u0011!\u000b\u0006\u0003U-\n\u0011\"[7nkR\f'\r\\3\u000b\u00051\"\u0011AC2pY2,7\r^5p]&\u0011a&\u000b\u0002\u000b\u0013:$W\r_3e'\u0016\f\b\"\u0002\u0013&\u0001\u0004!\u0002\"B\u0019&\u0001\u0004!\u0012\u0001B:uKBDQa\r\u0001\u0007\u0002Q\n!\u0001^8\u0015\u0005\u0005*\u0004\"\u0002\u00133\u0001\u0004!\u0002\"B\u001a\u0001\r\u00039DcA\u00149s!)AE\u000ea\u0001)!)\u0011G\u000ea\u0001)\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/RangedProxy.class */
public interface RangedProxy<T> extends Proxy.Typed<T> {
    /* renamed from: to */
    Object mo21to(T t);

    /* renamed from: to */
    IndexedSeq<T> mo20to(T t, T t2);

    Object until(T t);

    IndexedSeq<T> until(T t, T t2);
}
