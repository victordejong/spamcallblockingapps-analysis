package scala.collection.parallel.mutable;

import scala.collection.generic.Growable;
import scala.collection.generic.Shrinkable;
import scala.collection.mutable.Cloneable;
import scala.collection.mutable.Set;
import scala.collection.mutable.SetLike;
import scala.collection.parallel.mutable.ParSet;
import scala.collection.parallel.mutable.ParSetLike;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u001d4\u0001\"\u0001\u0002\u0011\u0002\u0007\u00051b\n\u0002\u000b!\u0006\u00148+\u001a;MS.,'BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0011A\f'/\u00197mK2T!a\u0002\u0005\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\n\u0003\u0015\u00198-\u00197b\u0007\u0001)B\u0001D\f\"UMA\u0001!D\t;}\u00013\u0015\n\u0005\u0002\u000f\u001f5\t\u0001\"\u0003\u0002\u0011\u0011\t1\u0011I\\=SK\u001a\u0004BAE\n\u0016A5\ta!\u0003\u0002\u0015\r\tQq)\u001a8TKRd\u0015n[3\u0011\u0005Y9B\u0002\u0001\u0003\u00061\u0001\u0011\r!\u0007\u0002\u0002)F\u0011!$\b\t\u0003\u001dmI!\u0001\b\u0005\u0003\u000f9{G\u000f[5oOB\u0011aBH\u0005\u0003?!\u00111!\u00118z!\t1\u0012\u0005\u0002\u0004#\u0001\u0011\u0015\ra\t\u0002\u0005%\u0016\u0004(/\u0005\u0002\u001bII\u0019QeJ\u001c\u0007\t\u0019\u0002\u0001\u0001\n\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0006Q\u0001)\u0002%K\u0007\u0002\u0005A\u0011aC\u000b\u0003\u0007W\u0001!)\u0019\u0001\u0017\u0003\u0015M+\u0017/^3oi&\fG.\u0005\u0002\u001b[I\u0019af\f\u001b\u0007\t\u0019\u0002\u0001!\f\t\u0004aI*R\"A\u0019\u000b\u0005\r1\u0011BA\u001a2\u0005\r\u0019V\r\u001e\t\u0005aU*\u0012&\u0003\u00027c\t91+\u001a;MS.,\u0007c\u0001\u00159+%\u0011\u0011H\u0001\u0002\u0007!\u0006\u00148+\u001a;\u0011\u000bmbT\u0003I\u0015\u000e\u0003\u0011I!!\u0010\u0003\u0003\u001fA\u000b'/\u0013;fe\u0006\u0014G.\u001a'jW\u0016\u0004RaO \u0016A%J!!\u0001\u0003\u0011\u0007\u0005#U#D\u0001C\u0015\t\u0019e!A\u0004hK:,'/[2\n\u0005\u0015\u0013%\u0001C$s_^\f'\r\\3\u0011\u0007\u0005;U#\u0003\u0002I\u0005\nQ1\u000b\u001b:j].\f'\r\\3\u0011\u0007AR\u0005%\u0003\u0002Lc\tI1\t\\8oK\u0006\u0014G.\u001a\u0005\u0006\u001b\u0002!\tAT\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003=\u0003\"A\u0004)\n\u0005EC!\u0001B+oSRDQa\u0015\u0001\u0007BQ\u000bQ!Z7qif,\u0012\u0001\t\u0005\u0006-\u00021\taV\u0001\tIAdWo\u001d\u0013fcR\u0011\u0001,W\u0007\u0002\u0001!)!,\u0016a\u0001+\u0005!Q\r\\3n\u0011\u0015a\u0006A\"\u0001^\u0003%!S.\u001b8vg\u0012*\u0017\u000f\u0006\u0002Y=\")!l\u0017a\u0001+!)\u0001\r\u0001C\u0001C\u0006)A\u0005\u001d7vgR\u0011\u0001E\u0019\u0005\u00065~\u0003\r!\u0006\u0005\u0006I\u0002!\t!Z\u0001\u0007I5Lg.^:\u0015\u0005\u00012\u0007\"\u0002.d\u0001\u0004)\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParSetLike.class */
public interface ParSetLike<T, Repr extends ParSetLike<T, Repr, Sequential> & ParSet<T>, Sequential extends Set<T> & SetLike<T, Sequential>> extends scala.collection.parallel.ParSetLike<T, Repr, Sequential>, Growable<T>, Shrinkable<T>, Cloneable<Repr> {

    /* renamed from: scala.collection.parallel.mutable.ParSetLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParSetLike$class.class */
    public abstract class Cclass {
        public static void $init$(ParSetLike parSetLike) {
        }

        public static ParSet $minus(ParSetLike parSetLike, Object obj) {
            return (ParSet) ((ParSetLike) parSetLike.clone()).$minus$eq((ParSetLike) obj);
        }

        public static ParSet $plus(ParSetLike parSetLike, Object obj) {
            return (ParSet) ((ParSetLike) parSetLike.clone()).$plus$eq((ParSetLike) obj);
        }
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
    Repr $minus(T t);

    ParSetLike<T, Repr, Sequential> $minus$eq(T t);

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    Repr $plus(T t);

    ParSetLike<T, Repr, Sequential> $plus$eq(T t);

    @Override // scala.collection.parallel.ParSetLike
    Repr empty();
}
