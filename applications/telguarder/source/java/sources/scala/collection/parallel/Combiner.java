package scala.collection.parallel;

import scala.collection.Parallel;
import scala.collection.generic.Sizing;
import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001!4q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\u0005D_6\u0014\u0017N\\3s\u0015\t\u0019A!\u0001\u0005qCJ\fG\u000e\\3m\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\rQq#I\n\u0006\u0001-y1%\u000b\t\u0003\u00195i\u0011AB\u0005\u0003\u001d\u0019\u0011a!\u00118z%\u00164\u0007\u0003\u0002\t\u0014+\u0001j\u0011!\u0005\u0006\u0003%\u0011\tq!\\;uC\ndW-\u0003\u0002\u0015#\t9!)^5mI\u0016\u0014\bC\u0001\f\u0018\u0019\u0001!a\u0001\u0007\u0001\t\u0006\u0004I\"\u0001B#mK6\f\"AG\u000f\u0011\u00051Y\u0012B\u0001\u000f\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u0010\n\u0005}1!aA!osB\u0011a#\t\u0003\u0007E\u0001!)\u0019A\r\u0003\u0005Q{\u0007C\u0001\u0013(\u001b\u0005)#B\u0001\u0014\u0005\u0003\u001d9WM\\3sS\u000eL!\u0001K\u0013\u0003\rMK'0\u001b8h!\tQ3&D\u0001\u0005\u0013\taCA\u0001\u0005QCJ\fG\u000e\\3m\u0011\u0015q\u0003\u0001\"\u00010\u0003\u0019!\u0013N\\5uIQ\t\u0001\u0007\u0005\u0002\rc%\u0011!G\u0002\u0002\u0005+:LG\u000fC\u00045\u0001\u0001\u0007I\u0011A\u001b\u0002)}\u001bw.\u001c2j]\u0016\u0014H+Y:l'V\u0004\bo\u001c:u+\u00051\u0004CA\u001c9\u001b\u0005\u0011\u0011BA\u001d\u0003\u0005-!\u0016m]6TkB\u0004xN\u001d;\t\u000fm\u0002\u0001\u0019!C\u0001y\u0005ArlY8nE&tWM\u001d+bg.\u001cV\u000f\u001d9peR|F%Z9\u0015\u0005Aj\u0004b\u0002 ;\u0003\u0003\u0005\rAN\u0001\u0004q\u0012\n\u0004B\u0002!\u0001A\u0003&a'A\u000b`G>l'-\u001b8feR\u000b7o[*vaB|'\u000f\u001e\u0011)\u0005}\u0012\u0005C\u0001\u0007D\u0013\t!eA\u0001\u0005w_2\fG/\u001b7fQ\tyd\t\u0005\u0002\r\u000f&\u0011\u0001J\u0002\u0002\niJ\fgn]5f]RDQA\u0013\u0001\u0005\u0002U\n1cY8nE&tWM\u001d+bg.\u001cV\u000f\u001d9peRDQ\u0001\u0014\u0001\u0005\u00025\u000bqcY8nE&tWM\u001d+bg.\u001cV\u000f\u001d9peR|F%Z9\u0015\u0005Ar\u0005\"B(L\u0001\u00041\u0014aA2ug\")\u0011\u000b\u0001D\u0001%\u000691m\\7cS:,WcA*W5R\u0011A+\u0018\t\u0005o\u0001)\u0016\f\u0005\u0002\u0017-\u0012)q\u000b\u0015b\u00011\n\ta*\u0005\u0002\u001b+A\u0011aC\u0017\u0003\u00067B\u0013\r\u0001\u0018\u0002\u0006\u001d\u0016<Hk\\\t\u0003AuAQA\u0018)A\u0002Q\u000bQa\u001c;iKJDQ\u0001\u0019\u0001\u0005\u0002\u0005\f1bY1o\u0005\u0016\u001c\u0006.\u0019:fIV\t!\r\u0005\u0002\rG&\u0011AM\u0002\u0002\b\u0005>|G.Z1o\u0011\u00151\u0007\u0001\"\u0001h\u0003U\u0011Xm];mi^KG\u000f\u001b+bg.\u001cV\u000f\u001d9peR,\u0012\u0001\t")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/Combiner.class */
public interface Combiner<Elem, To> extends Builder<Elem, To>, Sizing, Parallel {

    /* renamed from: scala.collection.parallel.Combiner$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/Combiner$class.class */
    public abstract class Cclass {
        public static void $init$(Combiner combiner) {
            combiner._combinerTaskSupport_$eq(package$.MODULE$.defaultTaskSupport());
        }

        public static boolean canBeShared(Combiner combiner) {
            return false;
        }

        public static TaskSupport combinerTaskSupport(Combiner combiner) {
            TaskSupport _combinerTaskSupport = combiner._combinerTaskSupport();
            TaskSupport taskSupport = _combinerTaskSupport;
            if (_combinerTaskSupport == null) {
                combiner._combinerTaskSupport_$eq(package$.MODULE$.defaultTaskSupport());
                taskSupport = package$.MODULE$.defaultTaskSupport();
            }
            return taskSupport;
        }

        public static void combinerTaskSupport_$eq(Combiner combiner, TaskSupport taskSupport) {
            combiner._combinerTaskSupport_$eq(taskSupport);
        }

        public static Object resultWithTaskSupport(Combiner combiner) {
            return package$.MODULE$.setTaskSupport(combiner.result(), combiner.combinerTaskSupport());
        }
    }

    TaskSupport _combinerTaskSupport();

    @TraitSetter
    void _combinerTaskSupport_$eq(TaskSupport taskSupport);

    boolean canBeShared();

    <N extends Elem, NewTo> Combiner<N, NewTo> combine(Combiner<N, NewTo> combiner);

    TaskSupport combinerTaskSupport();

    void combinerTaskSupport_$eq(TaskSupport taskSupport);

    To resultWithTaskSupport();
}
