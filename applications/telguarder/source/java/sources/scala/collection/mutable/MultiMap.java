package scala.collection.mutable;

import scala.Function1;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Some;
import scala.collection.IterableLike;
import scala.collection.SetLike;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001\u00193q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\u0005Nk2$\u0018.T1q\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007))\"eE\u0002\u0001\u0017=\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\u0011\u0001\u0012c\u0005\u0010\u000e\u0003\tI!A\u0005\u0002\u0003\u00075\u000b\u0007\u000f\u0005\u0002\u0015+1\u0001A!\u0002\f\u0001\u0005\u00049\"!A!\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0004!}\t\u0013B\u0001\u0011\u0003\u0005\r\u0019V\r\u001e\t\u0003)\t\"Qa\t\u0001C\u0002]\u0011\u0011A\u0011\u0005\u0006K\u0001!\tAJ\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003\u001d\u0002\"\u0001\u0004\u0015\n\u0005%2!\u0001B+oSRDQa\u000b\u0001\u0005\u00121\nq!\\1lKN+G/F\u0001\u001f\u0011\u0015q\u0003\u0001\"\u00010\u0003)\tG\r\u001a\"j]\u0012Lgn\u001a\u000b\u0004aE\u001aT\"\u0001\u0001\t\u000bIj\u0003\u0019A\n\u0002\u0007-,\u0017\u0010C\u00035[\u0001\u0007\u0011%A\u0003wC2,X\rC\u00037\u0001\u0011\u0005q'A\u0007sK6|g/\u001a\"j]\u0012Lgn\u001a\u000b\u0004aaJ\u0004\"\u0002\u001a6\u0001\u0004\u0019\u0002\"\u0002\u001b6\u0001\u0004\t\u0003\"B\u001e\u0001\t\u0003a\u0014aC3oiJLX\t_5tiN$2!\u0010!B!\taa(\u0003\u0002@\r\t9!i\\8mK\u0006t\u0007\"\u0002\u001a;\u0001\u0004\u0019\u0002\"\u0002\";\u0001\u0004\u0019\u0015!\u00019\u0011\t1!\u0015%P\u0005\u0003\u000b\u001a\u0011\u0011BR;oGRLwN\\\u0019")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/MultiMap.class */
public interface MultiMap<A, B> extends Map<A, Set<B>> {

    /* renamed from: scala.collection.mutable.MultiMap$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/MultiMap$class.class */
    public abstract class Cclass {
        public static void $init$(MultiMap multiMap) {
        }

        public static MultiMap addBinding(MultiMap multiMap, Object obj, Object obj2) {
            Option option = multiMap.get(obj);
            if (None$.MODULE$.equals(option)) {
                Set<B> makeSet = multiMap.makeSet();
                makeSet.$plus$eq((Set<B>) obj2);
                multiMap.update(obj, makeSet);
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            } else if (!(option instanceof Some)) {
                throw new MatchError(option);
            } else {
                ((SetLike) ((Some) option).m362x()).$plus$eq((SetLike) obj2);
            }
            return multiMap;
        }

        public static boolean entryExists(MultiMap multiMap, Object obj, Function1 function1) {
            boolean z;
            Option<Set<B>> option = multiMap.get(obj);
            if (None$.MODULE$.equals(option)) {
                z = false;
            } else if (!(option instanceof Some)) {
                throw new MatchError(option);
            } else {
                z = ((IterableLike) ((Some) option).m362x()).exists(function1);
            }
            return z;
        }

        public static Set makeSet(MultiMap multiMap) {
            return new HashSet();
        }

        public static MultiMap removeBinding(MultiMap multiMap, Object obj, Object obj2) {
            Option<Set<B>> option = multiMap.get(obj);
            if (None$.MODULE$.equals(option)) {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            } else if (!(option instanceof Some)) {
                throw new MatchError(option);
            } else {
                Some some = (Some) option;
                ((SetLike) some.m362x()).$minus$eq((SetLike) obj2);
                if (((SetLike) some.m362x()).isEmpty()) {
                    multiMap.$minus$eq((MultiMap) obj);
                } else {
                    BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                }
            }
            return multiMap;
        }
    }

    MultiMap<A, B> addBinding(A a, B b);

    boolean entryExists(A a, Function1<B, Object> function1);

    Set<B> makeSet();

    MultiMap<A, B> removeBinding(A a, B b);
}
