package scala.collection.generic;

import scala.collection.LinearSeq;
import scala.collection.Seq;
import scala.collection.TraversableOnce;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001\u00013q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\u0005He><\u0018M\u00197f\u0015\t\u0019A!A\u0004hK:,'/[2\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t3c\u0001\u0001\f\u001fA\u0011A\"D\u0007\u0002\r%\u0011aB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0005A\tR\"\u0001\u0002\n\u0005I\u0011!!C\"mK\u0006\u0014\u0018M\u00197f\u0011\u0015!\u0002\u0001\"\u0001\u0016\u0003\u0019!\u0013N\\5uIQ\ta\u0003\u0005\u0002\r/%\u0011\u0001D\u0002\u0002\u0005+:LG\u000fC\u0003\u001b\u0001\u0019\u00051$\u0001\u0005%a2,8\u000fJ3r)\taR$D\u0001\u0001\u0011\u0015q\u0012\u00041\u0001 \u0003\u0011)G.Z7\u0011\u0005\u0001\nC\u0002\u0001\u0003\u0007E\u0001A)\u0019A\u0012\u0003\u0003\u0005\u000b\"\u0001J\u0014\u0011\u00051)\u0013B\u0001\u0014\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u0015\n\u0005%2!aA!os\")!\u0004\u0001C\u0001WQ!A\u0004\f\u00181\u0011\u0015i#\u00061\u0001 \u0003\u0015)G.Z72\u0011\u0015y#\u00061\u0001 \u0003\u0015)G.Z73\u0011\u0015\t$\u00061\u00013\u0003\u0015)G.Z7t!\ra1gH\u0005\u0003i\u0019\u0011!\u0002\u0010:fa\u0016\fG/\u001a3?\u0011\u00151\u0004\u0001\"\u00018\u00035!\u0003\u000f\\;tIAdWo\u001d\u0013fcR\u0011A\u0004\u000f\u0005\u0006sU\u0002\rAO\u0001\u0003qN\u00042a\u000f\u001f \u001b\u0005!\u0011BA\u001f\u0005\u0005=!&/\u0019<feN\f'\r\\3P]\u000e,\u0007\"B \u0001\r\u0003)\u0012!B2mK\u0006\u0014\b")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/Growable.class */
public interface Growable<A> extends Clearable {

    /* renamed from: scala.collection.generic.Growable$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/Growable$class.class */
    public abstract class Cclass {
        public static void $init$(Growable growable) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Growable $plus$eq(Growable growable, Object obj, Object obj2, Seq seq) {
            return growable.$plus$eq(obj).$plus$eq(obj2).$plus$plus$eq(seq);
        }

        public static Growable $plus$plus$eq(Growable growable, TraversableOnce traversableOnce) {
            if (traversableOnce instanceof LinearSeq) {
                loop$1(growable, (LinearSeq) traversableOnce);
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            } else {
                traversableOnce.foreach(new Growable$$anonfun$$plus$plus$eq$1(growable));
                BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
            }
            return growable;
        }

        private static final void loop$1(Growable growable, LinearSeq linearSeq) {
            while (linearSeq.nonEmpty()) {
                growable.$plus$eq(linearSeq.head());
                linearSeq = (LinearSeq) linearSeq.tail();
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
    }

    Growable<A> $plus$eq(A a);

    Growable<A> $plus$eq(A a, A a2, Seq<A> seq);

    Growable<A> $plus$plus$eq(TraversableOnce<A> traversableOnce);

    @Override // scala.collection.generic.Clearable
    void clear();
}
