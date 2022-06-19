package scala.collection.mutable;

import scala.Mutable;
import scala.collection.generic.GenericCompanion;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00054q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0006Ue\u00064XM]:bE2,'BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)\"A\u0003\u000b\u0014\r\u0001Yq\"H\u0013*!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\t\u0004!E\u0011R\"\u0001\u0003\n\u0005\u0005!\u0001CA\n\u0015\u0019\u0001!Q!\u0006\u0001C\u0002Y\u0011\u0011!Q\t\u0003/i\u0001\"\u0001\u0004\r\n\u0005e1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019mI!\u0001\b\u0004\u0003\u0007\u0005s\u0017\u0010\u0005\u0003\u001fCI\u0019S\"A\u0010\u000b\u0005\u0001\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003E}\u0011!dR3oKJL7\r\u0016:bm\u0016\u00148/\u00192mKR+W\u000e\u001d7bi\u0016\u0004\"\u0001\n\u0001\u000e\u0003\t\u0001B\u0001\u0005\u0014\u0013Q%\u0011q\u0005\u0002\u0002\u0010)J\fg/\u001a:tC\ndW\rT5lKB\u0019A\u0005\u0001\n\u0011\u00051Q\u0013BA\u0016\u0007\u0005\u001diU\u000f^1cY\u0016DQ!\f\u0001\u0005\u00029\na\u0001J5oSR$C#A\u0018\u0011\u00051\u0001\u0014BA\u0019\u0007\u0005\u0011)f.\u001b;\t\u000bM\u0002A\u0011\t\u001b\u0002\u0013\r|W\u000e]1oS>tW#A\u001b\u0011\u0007y14%\u0003\u00028?\t\u0001r)\u001a8fe&\u001c7i\\7qC:LwN\u001c\u0005\u0006s\u0001!\tEO\u0001\u0004g\u0016\fX#\u0001\u0015\b\u000bq\u0012\u0001\u0012A\u001f\u0002\u0017Q\u0013\u0018M^3sg\u0006\u0014G.\u001a\t\u0003Iy2Q!\u0001\u0002\t\u0002}\u001a2A\u0010!D!\rq\u0012iI\u0005\u0003\u0005~\u0011QcR3o)J\fg/\u001a:tC\ndWMR1di>\u0014\u0018\u0010E\u0002\u001f\t\u000eJ!!R\u0010\u0003%Q\u0013\u0018M^3sg\u0006\u0014G.\u001a$bGR|'/\u001f\u0005\u0006\u000fz\"\t\u0001S\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003uBQA\u0013 \u0005\u0004-\u000bAbY1o\u0005VLG\u000e\u001a$s_6,\"\u0001T+\u0016\u00035\u0003RA\b(Q)ZK!aT\u0010\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\u0005E\u0013V\"\u0001 \n\u0005M3$\u0001B\"pY2\u0004\"aE+\u0005\u000bUI%\u0019\u0001\f\u0011\u0007\u0011\u0002A\u000bC\u0003Y}\u0011\u0005\u0011,\u0001\u0006oK^\u0014U/\u001b7eKJ,\"AW0\u0016\u0003m\u0003B\u0001\n/_A&\u0011QL\u0001\u0002\b\u0005VLG\u000eZ3s!\t\u0019r\fB\u0003\u0016/\n\u0007a\u0003E\u0002%\u0001y\u0003")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Traversable.class */
public interface Traversable<A> extends scala.collection.Traversable<A>, Mutable {

    /* renamed from: scala.collection.mutable.Traversable$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Traversable$class.class */
    public abstract class Cclass {
        public static void $init$(Traversable traversable) {
        }

        public static GenericCompanion companion(Traversable traversable) {
            return Traversable$.MODULE$;
        }

        public static Traversable seq(Traversable traversable) {
            return traversable;
        }
    }

    @Override // scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<Traversable> companion();

    @Override // scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Traversable<A> seq();
}
