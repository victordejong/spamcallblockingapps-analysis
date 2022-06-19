package scala.collection.mutable;

import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Some;
import scala.Tuple2;
import scala.collection.script.Message;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001\u00054q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0007PEN,'O^1cY\u0016l\u0015\r\u001d\u0006\u0003\u0007\u0011\tq!\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!F\u0002\u000b+}\u0019B\u0001A\u0006\u0010CA\u0011A\"D\u0007\u0002\r%\u0011aB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\tA\t2CH\u0007\u0002\u0005%\u0011!C\u0001\u0002\u0004\u001b\u0006\u0004\bC\u0001\u000b\u0016\u0019\u0001!QA\u0006\u0001C\u0002]\u0011\u0011!Q\t\u00031m\u0001\"\u0001D\r\n\u0005i1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019qI!!\b\u0004\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u0015?\u0011)\u0001\u0005\u0001b\u0001/\t\t!\tE\u0002\u0011E\u0011J!a\t\u0002\u0003\u0013A+(\r\\5tQ\u0016\u0014(cA\u0013(a\u0019!a\u0005\u0001\u0001%\u00051a$/\u001a4j]\u0016lWM\u001c;?!\rA3&L\u0007\u0002S)\u0011!\u0006B\u0001\u0007g\u000e\u0014\u0018\u000e\u001d;\n\u00051J#aB'fgN\fw-\u001a\t\u0005\u00199\u001ab$\u0003\u00020\r\t1A+\u001e9mKJ\u0002\"\u0001E\u0019\n\u0005I\u0012!\u0001C+oI>\f'\r\\3\t\u000bQ\u0002A\u0011A\u001b\u0002\r\u0011Jg.\u001b;%)\u00051\u0004C\u0001\u00078\u0013\tAdA\u0001\u0003V]&$H!\u0002\u001e\u0001\u0005\u0003Y$a\u0001)vEF\u0011\u0001\u0004\u0010\t\u0005!\u0001\u0019b\u0004\u0003\u0004?\u0001A%\taP\u0001\tIAdWo\u001d\u0013fcR\u0011\u0001)Q\u0007\u0002\u0001!)!)\u0010a\u0001[\u0005\u00111N\u001e\u0005\u0007\t\u0002\u0001J\u0011A#\u0002\u0013\u0011j\u0017N\\;tI\u0015\fHC\u0001!G\u0011\u001595\t1\u0001\u0014\u0003\rYW-\u001f\u0005\u0007\u0013\u0002\u0001J\u0011A\u001b\u0002\u000b\rdW-\u0019:\t\u0017-\u0003\u0001\u0013aA\u0001\u0002\u0013%AJT\u0001\u000fgV\u0004XM\u001d\u0013%a2,8\u000fJ3r)\t\u0001U\nC\u0003C\u0015\u0002\u0007Q&\u0003\u0002?\u001f&\u0011\u0001K\u0001\u0002\b\u001b\u0006\u0004H*[6f\u0011-\u0011\u0006\u0001%A\u0002\u0002\u0003%IaU+\u0002\u001fM,\b/\u001a:%I5Lg.^:%KF$\"\u0001\u0011+\t\u000b\u001d\u000b\u0006\u0019A\n\n\u0005\u0011{\u0005bC,\u0001!\u0003\r\t\u0011!C\u0005ka\u000b1b];qKJ$3\r\\3be&\u0011\u0011j\u0014\u0015\u0005\u0001ikv\f\u0005\u0002\r7&\u0011AL\u0002\u0002\u000bI\u0016\u0004(/Z2bi\u0016$\u0017%\u00010\u0002w=\u00137/\u001a:wC\ndWm\u001d\u0011be\u0016\u0004C-\u001a9sK\u000e\fG/\u001a3!E\u0016\u001c\u0017-^:fAM\u001c'/\u001b9uS:<\u0007%[:!I\u0016\u0004(/Z2bi\u0016$g&I\u0001a\u0003\u0019\u0011d&M\u0019/a\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableMap.class */
public interface ObservableMap<A, B> extends Map<A, B>, Publisher<Message<Tuple2<A, B>>> {

    /* renamed from: scala.collection.mutable.ObservableMap$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableMap$class.class */
    public abstract class Cclass {
        public static void $init$(ObservableMap observableMap) {
        }

        public static ObservableMap $minus$eq(ObservableMap observableMap, Object obj) {
            Option<B> option = observableMap.get(obj);
            if (None$.MODULE$.equals(option)) {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            } else if (!(option instanceof Some)) {
                throw new MatchError(option);
            } else {
                observableMap.scala$collection$mutable$ObservableMap$$super$$minus$eq(obj);
                observableMap.publish(new ObservableMap$$anon$3(observableMap, (Some) option, obj));
                BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
            }
            return observableMap;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ObservableMap $plus$eq(ObservableMap observableMap, Tuple2 tuple2) {
            if (tuple2 != null) {
                Tuple2 tuple22 = new Tuple2(tuple2.mo269_1(), tuple2.mo268_2());
                Object mo269_1 = tuple22.mo269_1();
                Object mo268_2 = tuple22.mo268_2();
                Option option = observableMap.get(mo269_1);
                if (None$.MODULE$.equals(option)) {
                    observableMap.scala$collection$mutable$ObservableMap$$super$$plus$eq(tuple2);
                    observableMap.publish(new ObservableMap$$anon$1(observableMap, mo269_1, mo268_2));
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                } else if (!(option instanceof Some)) {
                    throw new MatchError(option);
                } else {
                    observableMap.scala$collection$mutable$ObservableMap$$super$$plus$eq(tuple2);
                    observableMap.publish(new ObservableMap$$anon$2(observableMap, mo269_1, mo268_2, (Some) option));
                    BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                }
                return observableMap;
            }
            throw new MatchError(tuple2);
        }

        public static void clear(ObservableMap observableMap) {
            observableMap.scala$collection$mutable$ObservableMap$$super$clear();
            observableMap.publish(new ObservableMap$$anon$4(observableMap));
        }
    }

    @Override // scala.collection.mutable.MapLike, scala.collection.generic.Shrinkable
    ObservableMap<A, B> $minus$eq(A a);

    @Override // scala.collection.mutable.MapLike
    ObservableMap<A, B> $plus$eq(Tuple2<A, B> tuple2);

    @Override // scala.collection.mutable.MapLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    void clear();

    /* synthetic */ ObservableMap scala$collection$mutable$ObservableMap$$super$$minus$eq(Object obj);

    /* synthetic */ ObservableMap scala$collection$mutable$ObservableMap$$super$$plus$eq(Tuple2 tuple2);

    /* synthetic */ void scala$collection$mutable$ObservableMap$$super$clear();
}
