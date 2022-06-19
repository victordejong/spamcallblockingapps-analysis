package scala.collection.generic;

import scala.Tuple2;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParMap;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001Y2q!\u0001\u0002\u0011\u0002G\u0005\u0011B\u0001\fHK:,'/[2QCJl\u0015\r]\"p[B\fg.[8o\u0015\t\u0019A!A\u0004hK:,'/[2\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)Y3C\u0001\u0001\f!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006!\u00011\t!E\u0001\f]\u0016<8i\\7cS:,'/F\u0002\u0013=!*\u0012a\u0005\t\u0005)]I\"&D\u0001\u0016\u0015\t1B!\u0001\u0005qCJ\fG\u000e\\3m\u0013\tARC\u0001\u0005D_6\u0014\u0017N\\3s!\u0011a!\u0004H\u0014\n\u0005m1!A\u0002+va2,'\u0007\u0005\u0002\u001e=1\u0001A!B\u0010\u0010\u0005\u0004\u0001#!\u0001)\u0012\u0005\u0005\"\u0003C\u0001\u0007#\u0013\t\u0019cAA\u0004O_RD\u0017N\\4\u0011\u00051)\u0013B\u0001\u0014\u0007\u0005\r\te.\u001f\t\u0003;!\"Q!K\bC\u0002\u0001\u0012\u0011!\u0015\t\u0005;-br\u0005\u0002\u0004-\u0001\u0011\u0015\r!\f\u0002\u0003\u0007\u000e+2AL\u001a6#\t\ts\u0006\u0005\u0003\u0015aI\"\u0014BA\u0019\u0016\u0005\u0019\u0001\u0016M]'baB\u0011Qd\r\u0003\u0006?-\u0012\r\u0001\t\t\u0003;U\"Q!K\u0016C\u0002\u0001\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericParMapCompanion.class */
public interface GenericParMapCompanion<CC extends ParMap<Object, Object>> {
    <P, Q> Combiner<Tuple2<P, Q>, CC> newCombiner();
}
