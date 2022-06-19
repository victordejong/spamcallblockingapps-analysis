package scala.collection.mutable;

import scala.MatchError;
import scala.Tuple2;
import scala.collection.immutable.List;
import scala.collection.mutable.Undoable;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001=2A!\u0001\u0002\u0001\u0013\t\t\"+\u001a<feRL'\r\\3ISN$xN]=\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0004\u0015Ea2\u0003\u0002\u0001\f1\t\u0002B\u0001D\u0007\u001075\t!!\u0003\u0002\u000f\u0005\t9\u0001*[:u_JL\bC\u0001\t\u0012\u0019\u0001!QA\u0005\u0001C\u0002M\u00111!\u0012<u#\t!\u0002\u0004\u0005\u0002\u0016-5\ta!\u0003\u0002\u0018\r\t9aj\u001c;iS:<\u0007C\u0001\u0007\u001a\u0013\tQ\"A\u0001\u0005V]\u0012|\u0017M\u00197f!\t\u0001B\u0004B\u0003\u001e\u0001\t\u0007aDA\u0002Qk\n\f\"\u0001F\u0010\u0011\u0005U\u0001\u0013BA\u0011\u0007\u0005\r\te.\u001f\t\u0003+\rJ!\u0001\n\u0004\u0003\u0019M+'/[1mSj\f'\r\\3\t\u000b\u0019\u0002A\u0011A\u0014\u0002\rqJg.\u001b;?)\u0005A\u0003\u0003\u0002\u0007\u0001\u001fmAQA\u000b\u0001\u0005\u0002-\nA!\u001e8e_R\tA\u0006\u0005\u0002\u0016[%\u0011aF\u0002\u0002\u0005+:LG\u000f")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/RevertibleHistory.class */
public class RevertibleHistory<Evt extends Undoable, Pub> extends History<Evt, Pub> implements Undoable {
    @Override // scala.collection.mutable.Undoable
    public void undo() {
        clear();
        for (List reverse = log().toList().reverse(); !reverse.isEmpty(); reverse = (List) reverse.tail()) {
            Tuple2 tuple2 = (Tuple2) reverse.head();
            if (tuple2 == null) {
                throw new MatchError(tuple2);
            }
            ((Undoable) tuple2.mo268_2()).undo();
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
    }
}
