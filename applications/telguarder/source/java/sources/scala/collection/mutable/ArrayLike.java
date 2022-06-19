package scala.collection.mutable;

import scala.collection.IndexedSeq;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u000112\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005\u0011b\u000b\u0002\n\u0003J\u0014\u0018-\u001f'jW\u0016T!a\u0001\u0003\u0002\u000f5,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0019!\"\u0006\u000f\u0014\u0007\u0001Yq\u0002\u0005\u0002\r\u001b5\ta!\u0003\u0002\u000f\r\t\u0019\u0011I\\=\u0011\tA\t2cG\u0007\u0002\u0005%\u0011!C\u0001\u0002\u0014\u0013:$W\r_3e'\u0016\fx\n\u001d;j[&TX\r\u001a\t\u0003)Ua\u0001\u0001B\u0003\u0017\u0001\t\u0007qCA\u0001B#\tA2\u0002\u0005\u0002\r3%\u0011!D\u0002\u0002\b\u001d>$\b.\u001b8h!\t!B\u0004\u0002\u0004\u001e\u0001\u0011\u0015\ra\u0006\u0002\u0005%\u0016\u0004(\u000fC\u0003 \u0001\u0011\u0005\u0001%\u0001\u0004%S:LG\u000f\n\u000b\u0002CA\u0011ABI\u0005\u0003G\u0019\u0011A!\u00168ji\")Q\u0005\u0001C\u0001M\u0005!A-Z3q+\u00059\u0003c\u0001\u0015*\u00175\tA!\u0003\u0002+\t\tQ\u0011J\u001c3fq\u0016$7+Z9\u0011\tA\u00011c\u0007")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayLike.class */
public interface ArrayLike<A, Repr> extends IndexedSeqOptimized<A, Repr> {

    /* renamed from: scala.collection.mutable.ArrayLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayLike$class.class */
    public abstract class Cclass {
        public static void $init$(ArrayLike arrayLike) {
        }

        public static IndexedSeq deep(ArrayLike arrayLike) {
            return new ArrayLike$$anon$1(arrayLike);
        }
    }

    IndexedSeq<Object> deep();
}
