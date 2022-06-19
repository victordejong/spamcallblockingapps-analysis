package scala.collection.parallel.mutable;

import scala.Array$;
import scala.collection.generic.Sizing;
import scala.collection.mutable.ArrayBuffer;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\t3Q!\u0001\u0002\u0001\u0005)\u0011!#\u0012=q_N,G-\u0011:sCf\u0014UO\u001a4fe*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0005qCJ\fG\u000e\\3m\u0015\t9\u0001\"\u0001\u0006d_2dWm\u0019;j_:T\u0011!C\u0001\u0006g\u000e\fG.Y\u000b\u0003\u0017M\u00192\u0001\u0001\u0007\u001f!\riq\"E\u0007\u0002\u001d)\u00111AB\u0005\u0003!9\u00111\"\u0011:sCf\u0014UO\u001a4feB\u0011!c\u0005\u0007\u0001\t\u0015!\u0002A1\u0001\u0017\u0005\u0005!6\u0001A\t\u0003/m\u0001\"\u0001G\r\u000e\u0003!I!A\u0007\u0005\u0003\u000f9{G\u000f[5oOB\u0011\u0001\u0004H\u0005\u0003;!\u00111!\u00118z!\ty\"%D\u0001!\u0015\t\tc!A\u0004hK:,'/[2\n\u0005\r\u0002#AB*ju&tw\rC\u0003&\u0001\u0011\u0005a%\u0001\u0004=S:LGO\u0010\u000b\u0002OA\u0019\u0001\u0006A\t\u000e\u0003\tAQA\u000b\u0001\u0005\u0002-\nQ\"\u001b8uKJt\u0017\r\\!se\u0006LX#\u0001\u0017\u0011\u0007ais&\u0003\u0002/\u0011\t)\u0011I\u001d:bsB\u0011\u0001\u0004M\u0005\u0003c!\u0011a!\u00118z%\u00164\u0007\"B\u001a\u0001\t\u0003!\u0014aD:fi&sG/\u001a:oC2\u001c\u0016N_3\u0015\u0005UB\u0004C\u0001\r7\u0013\t9\u0004B\u0001\u0003V]&$\b\"B\u001d3\u0001\u0004Q\u0014!A:\u0011\u0005aY\u0014B\u0001\u001f\t\u0005\rIe\u000e\u001e\u0005\u0006}\u0001!\teP\u0001\tg&TX\rS5oiR\u0011Q\u0007\u0011\u0005\u0006\u0003v\u0002\rAO\u0001\u0004Y\u0016t\u0007")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ExposedArrayBuffer.class */
public class ExposedArrayBuffer<T> extends ArrayBuffer<T> implements Sizing {
    public Object[] internalArray() {
        return array();
    }

    public void setInternalSize(int i) {
        size0_$eq(i);
    }

    @Override // scala.collection.mutable.ArrayBuffer, scala.collection.mutable.Builder
    public void sizeHint(int i) {
        if (i <= size() || i < 1) {
            return;
        }
        Object[] objArr = new Object[i];
        Array$.MODULE$.copy(array(), 0, objArr, 0, size0());
        array_$eq(objArr);
    }
}
