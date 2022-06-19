package scala.collection.immutable;

import scala.collection.generic.GenericCompanion;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParIterable;
import scala.collection.parallel.immutable.ParIterable$;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001U4q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\u0005Ji\u0016\u0014\u0018M\u00197f\u0015\t\u0019A!A\u0005j[6,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"F\n\b\u0001-ya$\t\u0015-!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\t\u0004!E\u0019R\"\u0001\u0002\n\u0005I\u0011!a\u0003+sCZ,'o]1cY\u0016\u0004\"\u0001F\u000b\r\u0001\u00111a\u0003\u0001CC\u0002]\u0011\u0011!Q\t\u00031m\u0001\"\u0001D\r\n\u0005i1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019qI!!\b\u0004\u0003\u0007\u0005s\u0017\u0010E\u0002 AMi\u0011\u0001B\u0005\u0003\u0003\u0011\u0001BAI\u0013\u0014O5\t1E\u0003\u0002%\t\u00059q-\u001a8fe&\u001c\u0017B\u0001\u0014$\u0005i9UM\\3sS\u000e$&/\u0019<feN\f'\r\\3UK6\u0004H.\u0019;f!\t\u0001\u0002\u0001\u0005\u0003 SMY\u0013B\u0001\u0016\u0005\u00051IE/\u001a:bE2,G*[6f!\r\u0001\u0002a\u0005\t\u0005?5\u001ar&\u0003\u0002/\t\tq\u0001+\u0019:bY2,G.\u001b>bE2,\u0007c\u0001\u00195'5\t\u0011G\u0003\u0002\u0004e)\u00111\u0007B\u0001\ta\u0006\u0014\u0018\r\u001c7fY&\u0011Q'\r\u0002\f!\u0006\u0014\u0018\n^3sC\ndW\rC\u00038\u0001\u0011\u0005\u0001(\u0001\u0004%S:LG\u000f\n\u000b\u0002sA\u0011ABO\u0005\u0003w\u0019\u0011A!\u00168ji\")Q\b\u0001C!}\u0005I1m\\7qC:LwN\\\u000b\u0002\u007fA\u0019!\u0005Q\u0014\n\u0005\u0005\u001b#\u0001E$f]\u0016\u0014\u0018nY\"p[B\fg.[8o\u0011\u0019\u0019\u0005\u0001)C)\t\u0006Y\u0001/\u0019:D_6\u0014\u0017N\\3s+\u0005)\u0005\u0003\u0002$H'=j\u0011AM\u0005\u0003\u0011J\u0012\u0001bQ8nE&tWM\u001d\u0005\u0006\u0015\u0002!\teS\u0001\u0004g\u0016\fX#A\u0016\b\u000b5\u0013\u0001\u0012\u0001(\u0002\u0011%#XM]1cY\u0016\u0004\"\u0001E(\u0007\u000b\u0005\u0011\u0001\u0012\u0001)\u0014\u0007=\u000bF\u000bE\u0002#%\u001eJ!aU\u0012\u0003+\u001d+g\u000e\u0016:bm\u0016\u00148/\u00192mK\u001a\u000b7\r^8ssB\u0019!%V\u0014\n\u0005Y\u001b#A\u0005+sCZ,'o]1cY\u00164\u0015m\u0019;pefDQ\u0001W(\u0005\u0002e\u000ba\u0001P5oSRtD#\u0001(\t\u000bm{E1\u0001/\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\u0005u3W#\u00010\u0011\u000b\tz\u0016-Z4\n\u0005\u0001\u001c#\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007C\u00012d\u001b\u0005y\u0015B\u00013A\u0005\u0011\u0019u\u000e\u001c7\u0011\u0005Q1G!\u0002\f[\u0005\u00049\u0002c\u0001\t\u0001K\")\u0011n\u0014C\u0001U\u0006Qa.Z<Ck&dG-\u001a:\u0016\u0005-\u001cX#\u00017\u0011\t5\u0004(\u000f^\u0007\u0002]*\u0011q\u000eB\u0001\b[V$\u0018M\u00197f\u0013\t\thNA\u0004Ck&dG-\u001a:\u0011\u0005Q\u0019H!\u0002\fi\u0005\u00049\u0002c\u0001\t\u0001e\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Iterable.class */
public interface Iterable<A> extends Traversable<A>, scala.collection.Iterable<A> {

    /* renamed from: scala.collection.immutable.Iterable$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Iterable$class.class */
    public abstract class Cclass {
        public static void $init$(Iterable iterable) {
        }

        public static GenericCompanion companion(Iterable iterable) {
            return Iterable$.MODULE$;
        }

        public static Combiner parCombiner(Iterable iterable) {
            return ParIterable$.MODULE$.newCombiner();
        }

        public static Iterable seq(Iterable iterable) {
            return iterable;
        }
    }

    @Override // scala.collection.immutable.Traversable
    GenericCompanion<Iterable> companion();

    @Override // 
    Combiner<A, ParIterable<A>> parCombiner();

    @Override // scala.collection.immutable.Traversable
    Iterable<A> seq();
}
