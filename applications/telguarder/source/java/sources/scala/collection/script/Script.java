package scala.collection.script;

import scala.collection.Iterator;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001]2A!\u0001\u0002\u0001\u0013\t11k\u0019:jaRT!a\u0001\u0003\u0002\rM\u001c'/\u001b9u\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tQqcE\u0002\u0001\u0017E\u00012\u0001D\b\u0012\u001b\u0005i!B\u0001\b\u0005\u0003\u001diW\u000f^1cY\u0016L!\u0001E\u0007\u0003\u0017\u0005\u0013(/Y=Ck\u001a4WM\u001d\t\u0004%M)R\"\u0001\u0002\n\u0005Q\u0011!aB'fgN\fw-\u001a\t\u0003-]a\u0001\u0001B\u0003\u0019\u0001\t\u0007\u0011DA\u0001B#\tQb\u0004\u0005\u0002\u001c95\ta!\u0003\u0002\u001e\r\t9aj\u001c;iS:<\u0007CA\u000e \u0013\t\u0001cAA\u0002B]fDQA\t\u0001\u0005\u0002\r\na\u0001P5oSRtD#\u0001\u0013\u0011\u0007I\u0001Q\u0003C\u0003'\u0001\u0011\u0005s%\u0001\u0005u_N#(/\u001b8h)\u0005A\u0003CA\u0015-\u001d\tY\"&\u0003\u0002,\r\u00051\u0001K]3eK\u001aL!!\f\u0018\u0003\rM#(/\u001b8h\u0015\tYc\u0001\u000b\u0003\u0001aM*\u0004CA\u000e2\u0013\t\u0011dA\u0001\u0006eKB\u0014XmY1uK\u0012\f\u0013\u0001N\u0001\u0019'\u000e\u0014\u0018\u000e\u001d;j]\u001e\u0004\u0013n\u001d\u0011eKB\u0014XmY1uK\u0012t\u0013%\u0001\u001c\u0002\rIr\u0013'\r\u00181\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/script/Script.class */
public class Script<A> extends ArrayBuffer<Message<A>> implements Message<A> {
    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        Iterator<A> it = iterator();
        String str = "Script(";
        int i = 1;
        while (it.hasNext()) {
            String str2 = str;
            if (i > 1) {
                str2 = new StringBuilder().append((Object) str).append((Object) ", ").toString();
            }
            str = new StringBuilder().append((Object) str2).append((Object) "[").append(BoxesRunTime.boxToInteger(i)).append((Object) "] ").append(it.next()).toString();
            i++;
        }
        return new StringBuilder().append((Object) str).append((Object) ")").toString();
    }
}
