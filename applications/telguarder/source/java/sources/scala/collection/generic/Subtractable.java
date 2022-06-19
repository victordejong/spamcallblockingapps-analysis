package scala.collection.generic;

import scala.collection.GenTraversableOnce;
import scala.collection.Seq;
import scala.collection.generic.Subtractable;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\t3\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005\u0011\u0002\t\u0002\r'V\u0014GO]1di\u0006\u0014G.\u001a\u0006\u0003\u0007\u0011\tqaZ3oKJL7M\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!F\u0002\u000bGi\u0019\"\u0001A\u0006\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\rC\u0003\u0011\u0001\u0011\u0005\u0011#\u0001\u0004%S:LG\u000f\n\u000b\u0002%A\u0011AbE\u0005\u0003)\u0019\u0011A!\u00168ji\")a\u0003\u0001D\t/\u0005!!/\u001a9s+\u0005A\u0002CA\r\u001b\u0019\u0001!aa\u0007\u0001\u0005\u0006\u0004a\"\u0001\u0002*faJ\f\"!\b\u0011\u0011\u00051q\u0012BA\u0010\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004B!\t\u0001#15\t!\u0001\u0005\u0002\u001aG\u0011)A\u0005\u0001b\u0001K\t\t\u0011)\u0005\u0002\u001eMA\u0011AbJ\u0005\u0003Q\u0019\u00111!\u00118z\u0011\u0015Q\u0003A\"\u0001,\u0003\u0019!S.\u001b8vgR\u0011\u0001\u0004\f\u0005\u0006[%\u0002\rAI\u0001\u0005K2,W\u000eC\u0003+\u0001\u0011\u0005q\u0006\u0006\u0003\u0019aI\"\u0004\"B\u0019/\u0001\u0004\u0011\u0013!B3mK6\f\u0004\"B\u001a/\u0001\u0004\u0011\u0013!B3mK6\u0014\u0004\"B\u001b/\u0001\u00041\u0014!B3mK6\u001c\bc\u0001\u00078E%\u0011\u0001H\u0002\u0002\u000byI,\u0007/Z1uK\u0012t\u0004\"\u0002\u001e\u0001\t\u0003Y\u0014\u0001\u0004\u0013nS:,8\u000fJ7j]V\u001cHC\u0001\r=\u0011\u0015i\u0014\b1\u0001?\u0003\tA8\u000fE\u0002@\u0001\nj\u0011\u0001B\u0005\u0003\u0003\u0012\u0011!cR3o)J\fg/\u001a:tC\ndWm\u00148dK\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/Subtractable.class */
public interface Subtractable<A, Repr extends Subtractable<A, Repr>> {

    /* renamed from: scala.collection.generic.Subtractable$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/Subtractable$class.class */
    public abstract class Cclass {
        public static void $init$(Subtractable subtractable) {
        }

        public static Subtractable $minus(Subtractable subtractable, Object obj, Object obj2, Seq seq) {
            return subtractable.$minus(obj).$minus(obj2).$minus$minus(seq);
        }

        public static Subtractable $minus$minus(Subtractable subtractable, GenTraversableOnce genTraversableOnce) {
            return (Subtractable) genTraversableOnce.seq().$div$colon(subtractable.repr(), new Subtractable$$anonfun$$minus$minus$1(subtractable));
        }
    }

    Repr $minus(A a);

    Repr $minus(A a, A a2, Seq<A> seq);

    Repr $minus$minus(GenTraversableOnce<A> genTraversableOnce);

    Repr repr();
}
