package scala.collection.mutable;

import scala.collection.script.Message;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001i3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0007PEN,'O^1cY\u0016\u001cV\r\u001e\u0006\u0003\u0007\u0011\tq!\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b+M!\u0001aC\b\u001f!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\t\u0004!E\u0019R\"\u0001\u0002\n\u0005I\u0011!aA*fiB\u0011A#\u0006\u0007\u0001\t\u00151\u0002A1\u0001\u0018\u0005\u0005\t\u0015C\u0001\r\u001c!\ta\u0011$\u0003\u0002\u001b\r\t9aj\u001c;iS:<\u0007C\u0001\u0007\u001d\u0013\tibAA\u0002B]f\u00042\u0001E\u0010\"\u0013\t\u0001#AA\u0005Qk\nd\u0017n\u001d5feJ\u0019!\u0005\n\u0016\u0007\t\r\u0002\u0001!\t\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0004K!\u001aR\"\u0001\u0014\u000b\u0005\u001d\"\u0011AB:de&\u0004H/\u0003\u0002*M\t9Q*Z:tC\u001e,\u0007C\u0001\t,\u0013\ta#A\u0001\u0005V]\u0012|\u0017M\u00197f\u0011\u0015q\u0003\u0001\"\u00010\u0003\u0019!\u0013N\\5uIQ\t\u0001\u0007\u0005\u0002\rc%\u0011!G\u0002\u0002\u0005+:LG\u000fB\u00035\u0001\t\u0005QGA\u0002Qk\n\f\"\u0001\u0007\u001c\u0011\u0007A\u00011\u0003\u0003\u00049\u0001A%\t!O\u0001\tIAdWo\u001d\u0013fcR\u0011!hO\u0007\u0002\u0001!)Ah\u000ea\u0001'\u0005!Q\r\\3n\u0011\u0019q\u0004\u0001%C\u0001\u007f\u0005IA%\\5okN$S-\u001d\u000b\u0003u\u0001CQ\u0001P\u001fA\u0002MAaA\u0011\u0001\u0011\n\u0003y\u0013!B2mK\u0006\u0014\bb\u0003#\u0001!\u0003\r\t\u0011!C\u0005\u000b\u001e\u000bab];qKJ$C\u0005\u001d7vg\u0012*\u0017\u000f\u0006\u0002;\r\")Ah\u0011a\u0001'%\u0011\u0001\bS\u0005\u0003\u0013\n\u0011qaU3u\u0019&\\W\rC\u0006L\u0001A\u0005\u0019\u0011!A\u0005\n1s\u0015aD:va\u0016\u0014H\u0005J7j]V\u001cH%Z9\u0015\u0005ij\u0005\"\u0002\u001fK\u0001\u0004\u0019\u0012B\u0001 I\u0011-\u0001\u0006\u0001%A\u0002\u0002\u0003%IaL)\u0002\u0017M,\b/\u001a:%G2,\u0017M]\u0005\u0003\u0005\"CC\u0001A*W1B\u0011A\u0002V\u0005\u0003+\u001a\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u00059\u0016aO(cg\u0016\u0014h/\u00192mKN\u0004\u0013M]3!I\u0016\u0004(/Z2bi\u0016$\u0007EY3dCV\u001cX\rI:de&\u0004H/\u001b8hA%\u001c\b\u0005Z3qe\u0016\u001c\u0017\r^3e]\u0005\n\u0011,\u0001\u00043]E\nd\u0006\r")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableSet.class */
public interface ObservableSet<A> extends Set<A>, Publisher<Message<A>> {

    /* renamed from: scala.collection.mutable.ObservableSet$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableSet$class.class */
    public abstract class Cclass {
        public static void $init$(ObservableSet observableSet) {
        }

        public static ObservableSet $minus$eq(ObservableSet observableSet, Object obj) {
            if (observableSet.contains(obj)) {
                observableSet.scala$collection$mutable$ObservableSet$$super$$minus$eq(obj);
                observableSet.publish(new ObservableSet$$anon$2(observableSet, obj));
            }
            return observableSet;
        }

        public static ObservableSet $plus$eq(ObservableSet observableSet, Object obj) {
            if (!observableSet.contains(obj)) {
                observableSet.scala$collection$mutable$ObservableSet$$super$$plus$eq(obj);
                observableSet.publish(new ObservableSet$$anon$1(observableSet, obj));
            }
            return observableSet;
        }

        public static void clear(ObservableSet observableSet) {
            observableSet.scala$collection$mutable$ObservableSet$$super$clear();
            observableSet.publish(new ObservableSet$$anon$3(observableSet));
        }
    }

    @Override // scala.collection.mutable.SetLike, scala.collection.generic.Shrinkable
    ObservableSet<A> $minus$eq(A a);

    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable
    ObservableSet<A> $plus$eq(A a);

    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    void clear();

    /* synthetic */ ObservableSet scala$collection$mutable$ObservableSet$$super$$minus$eq(Object obj);

    /* synthetic */ ObservableSet scala$collection$mutable$ObservableSet$$super$$plus$eq(Object obj);

    /* synthetic */ void scala$collection$mutable$ObservableSet$$super$clear();
}
