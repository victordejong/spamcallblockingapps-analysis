package scala.collection.generic;

import scala.collection.Seq;
import scala.collection.TraversableOnce;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001i2q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\u0006TQJLgn[1cY\u0016T!a\u0001\u0003\u0002\u000f\u001d,g.\u001a:jG*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"H\n\u0003\u0001-\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g\u0011\u0015\u0001\u0002\u0001\"\u0001\u0012\u0003\u0019!\u0013N\\5uIQ\t!\u0003\u0005\u0002\r'%\u0011AC\u0002\u0002\u0005+:LG\u000fC\u0003\u0017\u0001\u0019\u0005q#A\u0005%[&tWo\u001d\u0013fcR\u0011\u0001$G\u0007\u0002\u0001!)!$\u0006a\u00017\u0005!Q\r\\3n!\taR\u0004\u0004\u0001\u0005\ry\u0001\u0001R1\u0001 \u0005\u0005\t\u0015C\u0001\u0011$!\ta\u0011%\u0003\u0002#\r\t9aj\u001c;iS:<\u0007C\u0001\u0007%\u0013\t)cAA\u0002B]fDQA\u0006\u0001\u0005\u0002\u001d\"B\u0001\u0007\u0015+Y!)\u0011F\na\u00017\u0005)Q\r\\3nc!)1F\na\u00017\u0005)Q\r\\3ne!)QF\na\u0001]\u0005)Q\r\\3ngB\u0019AbL\u000e\n\u0005A2!A\u0003\u001fsKB,\u0017\r^3e}!)!\u0007\u0001C\u0001g\u0005yA%\\5okN$S.\u001b8vg\u0012*\u0017\u000f\u0006\u0002\u0019i!)Q'\ra\u0001m\u0005\u0011\u0001p\u001d\t\u0004oaZR\"\u0001\u0003\n\u0005e\"!a\u0004+sCZ,'o]1cY\u0016|enY3")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/Shrinkable.class */
public interface Shrinkable<A> {

    /* renamed from: scala.collection.generic.Shrinkable$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/Shrinkable$class.class */
    public abstract class Cclass {
        public static void $init$(Shrinkable shrinkable) {
        }

        public static Shrinkable $minus$eq(Shrinkable shrinkable, Object obj, Object obj2, Seq seq) {
            shrinkable.$minus$eq(obj);
            shrinkable.$minus$eq(obj2);
            return shrinkable.$minus$minus$eq(seq);
        }

        public static Shrinkable $minus$minus$eq(Shrinkable shrinkable, TraversableOnce traversableOnce) {
            traversableOnce.foreach(new Shrinkable$$anonfun$$minus$minus$eq$1(shrinkable));
            return shrinkable;
        }
    }

    Shrinkable<A> $minus$eq(A a);

    Shrinkable<A> $minus$eq(A a, A a2, Seq<A> seq);

    Shrinkable<A> $minus$minus$eq(TraversableOnce<A> traversableOnce);
}
