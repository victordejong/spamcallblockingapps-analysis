package scala.collection.parallel;

import scala.Function1;
import scala.Function2;
import scala.collection.Iterator;
import scala.collection.immutable.List;
import scala.collection.immutable.Nil$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001}4\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005A\u0001\u0003\u0002\u0015\u0003V<W.\u001a8uK\u0012\u001cV-]%uKJ\fGo\u001c:\u000b\u0005\r!\u0011\u0001\u00039be\u0006dG.\u001a7\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017-\u0006\u0002\n)M\u0019\u0001A\u0003\b\u0011\u0005-aQ\"\u0001\u0004\n\u000551!AB!osJ+g\rE\u0002\u0010!Ii\u0011AA\u0005\u0003#\t\u0011\u0011$Q;h[\u0016tG/\u001a3Ji\u0016\u0014\u0018M\u00197f\u0013R,'/\u0019;peB\u00111\u0003\u0006\u0007\u0001\t\u0019)\u0002\u0001\"b\u0001/\t\tAk\u0001\u0001\u0012\u0005aY\u0002CA\u0006\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u0005-a\u0012BA\u000f\u0007\u0005\r\te.\u001f\u0005\u0006?\u0001!\t\u0001I\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003\u0005\u0002\"a\u0003\u0012\n\u0005\r2!\u0001B+oSRDQ!\n\u0001\u0007\u0002\u0019\n\u0011B]3nC&t\u0017N\\4\u0016\u0003\u001d\u0002\"a\u0003\u0015\n\u0005%2!aA%oi\")1\u0006\u0001C\u0001Y\u0005a\u0001O]3gSbdUM\\4uQR\u0011q%\f\u0005\u0006])\u0002\raL\u0001\u0005aJ,G\r\u0005\u0003\faI\u0011\u0014BA\u0019\u0007\u0005%1UO\\2uS>t\u0017\u0007\u0005\u0002\fg%\u0011AG\u0002\u0002\b\u0005>|G.Z1o\u0011\u00151\u0004\u0001\"\u00118\u0003)Ig\u000eZ3y/\",'/\u001a\u000b\u0003OaBQAL\u001bA\u0002=BQA\u000f\u0001\u0005\u0002m\na\u0002\\1ti&sG-\u001a=XQ\u0016\u0014X\r\u0006\u0002(y!)a&\u000fa\u0001_!)a\b\u0001C\u0001\u007f\u0005Y1m\u001c:sKN\u0004xN\u001c3t+\t\u0001E\n\u0006\u0002B\u001dR\u0011!G\u0011\u0005\u0006\u0007v\u0002\r\u0001R\u0001\u0005i\"\fG\u000fE\u0002F\u0011.s!a\u0003$\n\u0005\u001d3\u0011a\u00029bG.\fw-Z\u0005\u0003\u0013*\u0013\u0001\"\u0013;fe\u0006$xN\u001d\u0006\u0003\u000f\u001a\u0001\"a\u0005'\u0005\u000b5k$\u0019A\f\u0003\u0003MCQaT\u001fA\u0002A\u000bAaY8seB)1\"\u0015\nLe%\u0011!K\u0002\u0002\n\rVt7\r^5p]JBQ\u0001\u0016\u0001\u0005\u0002U\u000b\u0001C]3wKJ\u001cXMM2p[\nLg.\u001a:\u0016\u0007Y[v\f\u0006\u0002XCB!q\u0002\u0017._\u0013\tI&A\u0001\u0005D_6\u0014\u0017N\\3s!\t\u00192\fB\u0003]'\n\u0007QLA\u0001V#\t\u00112\u0004\u0005\u0002\u0014?\u0012)\u0001m\u0015b\u0001/\t!A\u000b[5t\u0011\u0015\u00117\u000b1\u0001X\u0003\t\u0019'\rC\u0003e\u0001\u0011\u0005Q-A\nsKZ,'o]3NCB\u00144m\\7cS:,'/F\u0002gS.$2aZ7q!\u0011y\u0001\f\u001b6\u0011\u0005MIG!B'd\u0005\u00049\u0002CA\nl\t\u0015a7M1\u0001\u0018\u0005\u0011!\u0006.\u0019;\t\u000b9\u001c\u0007\u0019A8\u0002\u0003\u0019\u0004Ba\u0003\u0019\u0013Q\")!m\u0019a\u0001O\")!\u000f\u0001C\u0001g\u0006\u0001R\u000f\u001d3bi\u0016$'gY8nE&tWM]\u000b\u0004i^LH\u0003B;{yz\u0004Ba\u0004-wqB\u00111c\u001e\u0003\u00069F\u0014\r!\u0018\t\u0003'e$Q\u0001\\9C\u0002]AQa_9A\u0002\u001d\nQ!\u001b8eKbDQ!`9A\u0002Y\fA!\u001a7f[\")!-\u001da\u0001k\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/AugmentedSeqIterator.class */
public interface AugmentedSeqIterator<T> extends AugmentedIterableIterator<T> {

    /* renamed from: scala.collection.parallel.AugmentedSeqIterator$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/AugmentedSeqIterator$class.class */
    public abstract class Cclass {
        public static void $init$(AugmentedSeqIterator augmentedSeqIterator) {
        }

        public static boolean corresponds(AugmentedSeqIterator augmentedSeqIterator, Function2 function2, Iterator iterator) {
            do {
                boolean z = false;
                if (!augmentedSeqIterator.hasNext() || !iterator.hasNext()) {
                    if (augmentedSeqIterator.hasNext() == iterator.hasNext()) {
                        z = true;
                    }
                    return z;
                }
            } while (BoxesRunTime.unboxToBoolean(function2.apply(augmentedSeqIterator.next(), iterator.next())));
            return false;
        }

        public static int indexWhere(AugmentedSeqIterator augmentedSeqIterator, Function1 function1) {
            boolean z = true;
            int i = 0;
            while (augmentedSeqIterator.hasNext() && z) {
                if (BoxesRunTime.unboxToBoolean(function1.apply(augmentedSeqIterator.next()))) {
                    z = false;
                } else {
                    i++;
                }
            }
            if (z) {
                i = -1;
            }
            return i;
        }

        public static int lastIndexWhere(AugmentedSeqIterator augmentedSeqIterator, Function1 function1) {
            int i = -1;
            int i2 = 0;
            while (augmentedSeqIterator.hasNext()) {
                if (BoxesRunTime.unboxToBoolean(function1.apply(augmentedSeqIterator.next()))) {
                    i = i2;
                }
                i2++;
            }
            return i;
        }

        public static int prefixLength(AugmentedSeqIterator augmentedSeqIterator, Function1 function1) {
            boolean z = true;
            int i = 0;
            while (augmentedSeqIterator.hasNext() && z) {
                if (BoxesRunTime.unboxToBoolean(function1.apply(augmentedSeqIterator.next()))) {
                    i++;
                } else {
                    z = false;
                }
            }
            return i;
        }

        public static Combiner reverse2combiner(AugmentedSeqIterator augmentedSeqIterator, Combiner combiner) {
            List list;
            if (augmentedSeqIterator.isRemainingCheap()) {
                combiner.sizeHint(augmentedSeqIterator.remaining());
            }
            List list2 = Nil$.MODULE$;
            while (true) {
                List list3 = list2;
                list = list3;
                if (augmentedSeqIterator.hasNext()) {
                    list2 = list3.$colon$colon(augmentedSeqIterator.next());
                }
            }
            while (true) {
                Nil$ nil$ = Nil$.MODULE$;
                if (list != null && list.equals(nil$)) {
                    return combiner;
                }
                combiner.$plus$eq((Combiner) list.head());
                list = (List) list.tail();
            }
        }

        public static Combiner reverseMap2combiner(AugmentedSeqIterator augmentedSeqIterator, Function1 function1, Combiner combiner) {
            List list;
            if (augmentedSeqIterator.isRemainingCheap()) {
                combiner.sizeHint(augmentedSeqIterator.remaining());
            }
            List list2 = Nil$.MODULE$;
            while (true) {
                List list3 = list2;
                list = list3;
                if (augmentedSeqIterator.hasNext()) {
                    list2 = list3.$colon$colon(function1.apply(augmentedSeqIterator.next()));
                }
            }
            while (true) {
                Nil$ nil$ = Nil$.MODULE$;
                if (list != null && list.equals(nil$)) {
                    return combiner;
                }
                combiner.$plus$eq((Combiner) list.head());
                list = (List) list.tail();
            }
        }

        public static Combiner updated2combiner(AugmentedSeqIterator augmentedSeqIterator, int i, Object obj, Combiner combiner) {
            if (augmentedSeqIterator.isRemainingCheap()) {
                combiner.sizeHint(augmentedSeqIterator.remaining());
            }
            int i2 = 0;
            while (augmentedSeqIterator.hasNext()) {
                if (i2 == i) {
                    combiner.$plus$eq((Combiner) obj);
                    augmentedSeqIterator.next();
                } else {
                    combiner.$plus$eq((Combiner) augmentedSeqIterator.next());
                }
                i2++;
            }
            return combiner;
        }
    }

    <S> boolean corresponds(Function2<T, S, Object> function2, Iterator<S> iterator);

    @Override // scala.collection.Iterator
    int indexWhere(Function1<T, Object> function1);

    int lastIndexWhere(Function1<T, Object> function1);

    int prefixLength(Function1<T, Object> function1);

    @Override // scala.collection.parallel.RemainsIterator
    int remaining();

    <U, This> Combiner<U, This> reverse2combiner(Combiner<U, This> combiner);

    <S, That> Combiner<S, That> reverseMap2combiner(Function1<T, S> function1, Combiner<S, That> combiner);

    <U, That> Combiner<U, That> updated2combiner(int i, U u, Combiner<U, That> combiner);
}
