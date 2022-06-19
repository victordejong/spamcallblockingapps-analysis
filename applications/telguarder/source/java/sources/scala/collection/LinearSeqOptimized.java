package scala.collection;

import java.util.NoSuchElementException;
import scala.Function1;
import scala.Function2;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Some;
import scala.Tuple2;
import scala.collection.LinearSeqOptimized;
import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001\u0005mf\u0001C\u0001\u0003!\u0003\r\ta\u0002\u000f\u0003%1Kg.Z1s'\u0016\fx\n\u001d;j[&TX\r\u001a\u0006\u0003\u0007\u0011\t!bY8mY\u0016\u001cG/[8o\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0004\u0011Mi2c\u0001\u0001\n\u001bA\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\t9y\u0011\u0003H\u0007\u0002\u0005%\u0011\u0001C\u0001\u0002\u000e\u0019&tW-\u0019:TKFd\u0015n[3\u0011\u0005I\u0019B\u0002\u0001\u0003\u0007)\u0001!)\u0019A\u000b\u0003\u0003\u0005\u000b\"AF\r\u0011\u0005)9\u0012B\u0001\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"A\u0003\u000e\n\u0005m!!aA!osB\u0011!#\b\u0003\u0007=\u0001!)\u0019A\u0010\u0003\tI+\u0007O]\t\u0003-\u0001\u0002BA\u0004\u0001\u00129!)!\u0005\u0001C\u0001G\u00051A%\u001b8ji\u0012\"\u0012\u0001\n\t\u0003\u0015\u0015J!A\n\u0003\u0003\tUs\u0017\u000e\u001e\u0005\u0006Q\u00011\t!K\u0001\bSN,U\u000e\u001d;z+\u0005Q\u0003C\u0001\u0006,\u0013\taCAA\u0004C_>dW-\u00198\t\u000b9\u0002a\u0011A\u0018\u0002\t!,\u0017\rZ\u000b\u0002#!)\u0011\u0007\u0001D\u0001e\u0005!A/Y5m+\u0005a\u0002\"\u0002\u001b\u0001\t\u0003)\u0014A\u00027f]\u001e$\b.F\u00017!\tQq'\u0003\u00029\t\t\u0019\u0011J\u001c;\t\u000bi\u0002A\u0011A\u001e\u0002\u000b\u0005\u0004\b\u000f\\=\u0015\u0005Ea\u0004\"B\u001f:\u0001\u00041\u0014!\u00018\t\u000b}\u0002A\u0011\t!\u0002\u000f\u0019|'/Z1dQV\u0011\u0011\t\u0013\u000b\u0003I\tCQa\u0011 A\u0002\u0011\u000b\u0011A\u001a\t\u0005\u0015\u0015\u000br)\u0003\u0002G\t\tIa)\u001e8di&|g.\r\t\u0003%!#Q!\u0013 C\u0002U\u0011\u0011A\u0011\u0005\u0006\u0017\u0002!\t\u0005T\u0001\u0007M>\u0014\u0018\r\u001c7\u0015\u0005)j\u0005\"\u0002(K\u0001\u0004y\u0015!\u00019\u0011\t))\u0015C\u000b\u0005\u0006#\u0002!\tEU\u0001\u0007KbL7\u000f^:\u0015\u0005)\u001a\u0006\"\u0002(Q\u0001\u0004y\u0005\"B+\u0001\t\u00032\u0016\u0001C2p]R\f\u0017N\\:\u0016\u0005][FC\u0001\u0016Y\u0011\u0015IF\u000b1\u0001[\u0003\u0011)G.Z7\u0011\u0005IYF!\u0002/U\u0005\u0004i&AA!2#\t\t\u0012\u0004C\u0003`\u0001\u0011\u0005\u0003-\u0001\u0003gS:$GCA1e!\rQ!-E\u0005\u0003G\u0012\u0011aa\u00149uS>t\u0007\"\u0002(_\u0001\u0004y\u0005\"\u00024\u0001\t\u0003:\u0017\u0001\u00034pY\u0012dUM\u001a;\u0016\u0005!\\GCA5q)\tQG\u000e\u0005\u0002\u0013W\u0012)\u0011*\u001ab\u0001+!)1)\u001aa\u0001[B)!B\u001c6\u0012U&\u0011q\u000e\u0002\u0002\n\rVt7\r^5p]JBQ!]3A\u0002)\f\u0011A\u001f\u0005\u0006g\u0002!\t\u0005^\u0001\nM>dGMU5hQR,\"!\u001e=\u0015\u0005Y\\HCA<z!\t\u0011\u0002\u0010B\u0003Je\n\u0007Q\u0003C\u0003De\u0002\u0007!\u0010E\u0003\u000b]F9x\u000fC\u0003re\u0002\u0007q\u000fC\u0003~\u0001\u0011\u0005c0\u0001\u0006sK\u0012,8-\u001a'fMR,2a`A\u0002)\u0011\t\t!!\u0002\u0011\u0007I\t\u0019\u0001B\u0003Jy\n\u0007Q\f\u0003\u0004Dy\u0002\u0007\u0011q\u0001\t\b\u00159\f\t!EA\u0001\u0011\u001d\tY\u0001\u0001C!\u0003\u001b\t1B]3ek\u000e,'+[4iiV!\u0011qBA\n)\u0011\t\t\"!\u0006\u0011\u0007I\t\u0019\u0002\u0002\u0004J\u0003\u0013\u0011\r!\u0018\u0005\t\u0003/\tI\u00011\u0001\u0002\u001a\u0005\u0011q\u000e\u001d\t\b\u00159\f\u0012\u0011CA\t\u0011\u0019\ti\u0002\u0001C!_\u0005!A.Y:u\u0011\u001d\t\t\u0003\u0001C!\u0003G\tA\u0001^1lKR\u0019A$!\n\t\ru\ny\u00021\u00017\u0011\u001d\tI\u0003\u0001C!\u0003W\tA\u0001\u001a:paR\u0019A$!\f\t\ru\n9\u00031\u00017\u0011\u001d\t\t\u0004\u0001C!\u0003g\t\u0011\u0002\u001a:paJKw\r\u001b;\u0015\u0007q\t)\u0004\u0003\u0004>\u0003_\u0001\rA\u000e\u0005\b\u0003s\u0001A\u0011IA\u001e\u0003\u0015\u0019H.[2f)\u0015a\u0012QHA!\u0011\u001d\ty$a\u000eA\u0002Y\nAA\u001a:p[\"9\u00111IA\u001c\u0001\u00041\u0014!B;oi&d\u0007bBA$\u0001\u0011\u0005\u0013\u0011J\u0001\ni\u0006\\Wm\u00165jY\u0016$2\u0001HA&\u0011\u0019q\u0015Q\ta\u0001\u001f\"9\u0011q\n\u0001\u0005B\u0005E\u0013\u0001B:qC:$B!a\u0015\u0002ZA)!\"!\u0016\u001d9%\u0019\u0011q\u000b\u0003\u0003\rQ+\b\u000f\\33\u0011\u0019q\u0015Q\na\u0001\u001f\"9\u0011Q\f\u0001\u0005B\u0005}\u0013\u0001D:b[\u0016,E.Z7f]R\u001cX\u0003BA1\u0003_\"2AKA2\u0011!\t)'a\u0017A\u0002\u0005\u001d\u0014\u0001\u0002;iCR\u0004RADA5\u0003[J1!a\u001b\u0003\u0005-9UM\\%uKJ\f'\r\\3\u0011\u0007I\ty\u0007\u0002\u0004J\u00037\u0012\r!\u0018\u0005\b\u0003g\u0002A\u0011IA;\u00035aWM\\4uQ\u000e{W\u000e]1sKR\u0019a'a\u001e\t\u000f\u0005e\u0014\u0011\u000fa\u0001m\u0005\u0019A.\u001a8\t\u000f\u0005u\u0004\u0001\"\u0011\u0002��\u0005Y\u0011n\u001d#fM&tW\rZ!u)\rQ\u0013\u0011\u0011\u0005\b\u0003\u0007\u000bY\b1\u00017\u0003\u0005A\bbBAD\u0001\u0011\u0005\u0013\u0011R\u0001\u000eg\u0016<W.\u001a8u\u0019\u0016tw\r\u001e5\u0015\u000bY\nY)!$\t\r9\u000b)\t1\u0001P\u0011\u001d\ty$!\"A\u0002YBq!!%\u0001\t\u0003\n\u0019*\u0001\u0006j]\u0012,\u0007p\u00165fe\u0016$RANAK\u0003/CaATAH\u0001\u0004y\u0005bBA \u0003\u001f\u0003\rA\u000e\u0005\b\u00037\u0003A\u0011IAO\u00039a\u0017m\u001d;J]\u0012,\u0007p\u00165fe\u0016$RANAP\u0003CCaATAM\u0001\u0004y\u0005bBAR\u00033\u0003\rAN\u0001\u0004K:$\u0007BDAT\u0001A\u0005\u0019\u0011!A\u0005\n\u0005%\u0016QW\u0001\u0013gV\u0004XM\u001d\u0013tC6,W\t\\3nK:$8/\u0006\u0003\u0002,\u0006MFc\u0001\u0016\u0002.\"A\u0011QMAS\u0001\u0004\ty\u000bE\u0003\u000f\u0003S\n\t\fE\u0002\u0013\u0003g#a!SAS\u0005\u0004i\u0016\u0002BA/\u0003oK1!!/\u0003\u00051IE/\u001a:bE2,G*[6f\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/LinearSeqOptimized.class */
public interface LinearSeqOptimized<A, Repr extends LinearSeqOptimized<A, Repr>> extends LinearSeqLike<A, Repr> {

    /* renamed from: scala.collection.LinearSeqOptimized$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/LinearSeqOptimized$class.class */
    public abstract class Cclass {
        public static void $init$(LinearSeqOptimized linearSeqOptimized) {
        }

        public static Object apply(LinearSeqOptimized linearSeqOptimized, int i) {
            LinearSeqOptimized drop = linearSeqOptimized.drop(i);
            if (i < 0 || drop.isEmpty()) {
                throw new IndexOutOfBoundsException(String.valueOf(BoxesRunTime.boxToInteger(i)));
            }
            return drop.head();
        }

        public static boolean contains(LinearSeqOptimized linearSeqOptimized, Object obj) {
            while (true) {
                boolean z = false;
                if (linearSeqOptimized.isEmpty()) {
                    return false;
                }
                Object head = linearSeqOptimized.head();
                if (head == obj) {
                    z = true;
                } else if (head != null) {
                    z = head instanceof Number ? BoxesRunTime.equalsNumObject((Number) head, obj) : head instanceof Character ? BoxesRunTime.equalsCharObject((Character) head, obj) : head.equals(obj);
                }
                if (z) {
                    return true;
                }
                linearSeqOptimized = (LinearSeqOptimized) linearSeqOptimized.tail();
            }
        }

        public static LinearSeqOptimized drop(LinearSeqOptimized linearSeqOptimized, int i) {
            LinearSeqOptimized linearSeqOptimized2 = (LinearSeqOptimized) linearSeqOptimized.repr();
            while (!linearSeqOptimized2.isEmpty() && i > 0) {
                linearSeqOptimized2 = (LinearSeqOptimized) linearSeqOptimized2.tail();
                i--;
            }
            return linearSeqOptimized2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static LinearSeqOptimized dropRight(LinearSeqOptimized linearSeqOptimized, int i) {
            Builder<A, Repr> newBuilder = linearSeqOptimized.newBuilder();
            LinearSeqOptimized drop = linearSeqOptimized.drop(i);
            while (true) {
                LinearSeqOptimized linearSeqOptimized2 = drop;
                if (linearSeqOptimized2.isEmpty()) {
                    return (LinearSeqOptimized) newBuilder.result();
                }
                newBuilder.$plus$eq((Builder<A, Repr>) linearSeqOptimized.head());
                linearSeqOptimized = (LinearSeqOptimized) linearSeqOptimized.tail();
                drop = (LinearSeqOptimized) linearSeqOptimized2.tail();
            }
        }

        public static boolean exists(LinearSeqOptimized linearSeqOptimized, Function1 function1) {
            while (!linearSeqOptimized.isEmpty()) {
                if (BoxesRunTime.unboxToBoolean(function1.apply(linearSeqOptimized.head()))) {
                    return true;
                }
                linearSeqOptimized = (LinearSeqOptimized) linearSeqOptimized.tail();
            }
            return false;
        }

        public static Option find(LinearSeqOptimized linearSeqOptimized, Function1 function1) {
            while (!linearSeqOptimized.isEmpty()) {
                if (BoxesRunTime.unboxToBoolean(function1.apply(linearSeqOptimized.head()))) {
                    return new Some(linearSeqOptimized.head());
                }
                linearSeqOptimized = (LinearSeqOptimized) linearSeqOptimized.tail();
            }
            return None$.MODULE$;
        }

        public static Object foldLeft(LinearSeqOptimized linearSeqOptimized, Object obj, Function2 function2) {
            while (!linearSeqOptimized.isEmpty()) {
                obj = function2.apply(obj, linearSeqOptimized.head());
                linearSeqOptimized = (LinearSeqOptimized) linearSeqOptimized.tail();
            }
            return obj;
        }

        public static Object foldRight(LinearSeqOptimized linearSeqOptimized, Object obj, Function2 function2) {
            if (!linearSeqOptimized.isEmpty()) {
                obj = function2.apply(linearSeqOptimized.head(), ((LinearSeqOptimized) linearSeqOptimized.tail()).foldRight(obj, function2));
            }
            return obj;
        }

        public static boolean forall(LinearSeqOptimized linearSeqOptimized, Function1 function1) {
            while (!linearSeqOptimized.isEmpty()) {
                if (!BoxesRunTime.unboxToBoolean(function1.apply(linearSeqOptimized.head()))) {
                    return false;
                }
                linearSeqOptimized = (LinearSeqOptimized) linearSeqOptimized.tail();
            }
            return true;
        }

        public static void foreach(LinearSeqOptimized linearSeqOptimized, Function1 function1) {
            while (!linearSeqOptimized.isEmpty()) {
                function1.apply(linearSeqOptimized.head());
                linearSeqOptimized = (LinearSeqOptimized) linearSeqOptimized.tail();
            }
        }

        public static int indexWhere(LinearSeqOptimized linearSeqOptimized, Function1 function1, int i) {
            LinearSeqOptimized drop = linearSeqOptimized.drop(i);
            while (true) {
                LinearSeqOptimized linearSeqOptimized2 = drop;
                if (linearSeqOptimized2.nonEmpty()) {
                    if (BoxesRunTime.unboxToBoolean(function1.apply(linearSeqOptimized2.head()))) {
                        return i;
                    }
                    i++;
                    drop = (LinearSeqOptimized) linearSeqOptimized2.tail();
                } else {
                    return -1;
                }
            }
        }

        public static boolean isDefinedAt(LinearSeqOptimized linearSeqOptimized, int i) {
            return i >= 0 && linearSeqOptimized.lengthCompare(i) > 0;
        }

        public static Object last(LinearSeqOptimized linearSeqOptimized) {
            if (!linearSeqOptimized.isEmpty()) {
                LinearSeqOptimized linearSeqOptimized2 = linearSeqOptimized;
                LinearSeqOptimized linearSeqOptimized3 = (LinearSeqOptimized) linearSeqOptimized.tail();
                while (true) {
                    LinearSeqOptimized linearSeqOptimized4 = linearSeqOptimized3;
                    LinearSeqOptimized linearSeqOptimized5 = linearSeqOptimized2;
                    linearSeqOptimized2 = linearSeqOptimized4;
                    if (linearSeqOptimized2.isEmpty()) {
                        return linearSeqOptimized5.head();
                    }
                    linearSeqOptimized3 = (LinearSeqOptimized) linearSeqOptimized2.tail();
                }
            } else {
                throw new NoSuchElementException();
            }
        }

        public static int lastIndexWhere(LinearSeqOptimized linearSeqOptimized, Function1 function1, int i) {
            int i2 = -1;
            for (int i3 = 0; !linearSeqOptimized.isEmpty() && i3 <= i; i3++) {
                if (BoxesRunTime.unboxToBoolean(function1.apply(linearSeqOptimized.head()))) {
                    i2 = i3;
                }
                linearSeqOptimized = (LinearSeqOptimized) linearSeqOptimized.tail();
            }
            return i2;
        }

        public static int length(LinearSeqOptimized linearSeqOptimized) {
            int i = 0;
            while (!linearSeqOptimized.isEmpty()) {
                i++;
                linearSeqOptimized = (LinearSeqOptimized) linearSeqOptimized.tail();
            }
            return i;
        }

        public static int lengthCompare(LinearSeqOptimized linearSeqOptimized, int i) {
            return i < 0 ? 1 : loop$1(linearSeqOptimized, 0, linearSeqOptimized, i);
        }

        private static final int loop$1(LinearSeqOptimized linearSeqOptimized, int i, LinearSeqOptimized linearSeqOptimized2, int i2) {
            int i3;
            while (true) {
                if (i == i2) {
                    i3 = linearSeqOptimized2.isEmpty() ? 0 : 1;
                } else if (linearSeqOptimized2.isEmpty()) {
                    i3 = -1;
                    break;
                } else {
                    i++;
                    linearSeqOptimized2 = (LinearSeqOptimized) linearSeqOptimized2.tail();
                }
            }
            return i3;
        }

        public static Object reduceLeft(LinearSeqOptimized linearSeqOptimized, Function2 function2) {
            if (!linearSeqOptimized.isEmpty()) {
                return ((LinearSeqOptimized) linearSeqOptimized.tail()).foldLeft(linearSeqOptimized.head(), function2);
            }
            throw new UnsupportedOperationException("empty.reduceLeft");
        }

        public static Object reduceRight(LinearSeqOptimized linearSeqOptimized, Function2 function2) {
            if (!linearSeqOptimized.isEmpty()) {
                return ((SeqLike) linearSeqOptimized.tail()).isEmpty() ? linearSeqOptimized.head() : function2.apply(linearSeqOptimized.head(), ((LinearSeqOptimized) linearSeqOptimized.tail()).reduceRight(function2));
            }
            throw new UnsupportedOperationException("Nil.reduceRight");
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x00b8, code lost:
            if ((r3.isEmpty() && r4.isEmpty()) != false) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean sameElements(scala.collection.LinearSeqOptimized r3, scala.collection.GenIterable r4) {
            /*
                r0 = r4
                boolean r0 = r0 instanceof scala.collection.LinearSeq
                if (r0 == 0) goto Lc1
                r0 = r4
                scala.collection.LinearSeq r0 = (scala.collection.LinearSeq) r0
                r4 = r0
                r0 = 0
                r5 = r0
                r0 = r3
                r1 = r4
                if (r0 == r1) goto Lbb
            L13:
                r0 = r3
                boolean r0 = r0.isEmpty()
                if (r0 != 0) goto L98
                r0 = r4
                boolean r0 = r0.isEmpty()
                if (r0 != 0) goto L98
                r0 = r3
                java.lang.Object r0 = r0.head()
                r6 = r0
                r0 = r4
                java.lang.Object r0 = r0.head()
                r7 = r0
                r0 = r6
                r1 = r7
                if (r0 != r1) goto L40
                r0 = 1
                r8 = r0
                goto L7c
            L40:
                r0 = r6
                if (r0 != 0) goto L4a
                r0 = 0
                r8 = r0
                goto L7c
            L4a:
                r0 = r6
                boolean r0 = r0 instanceof java.lang.Number
                if (r0 == 0) goto L5f
                r0 = r6
                java.lang.Number r0 = (java.lang.Number) r0
                r1 = r7
                boolean r0 = scala.runtime.BoxesRunTime.equalsNumObject(r0, r1)
                r8 = r0
                goto L7c
            L5f:
                r0 = r6
                boolean r0 = r0 instanceof java.lang.Character
                if (r0 == 0) goto L74
                r0 = r6
                java.lang.Character r0 = (java.lang.Character) r0
                r1 = r7
                boolean r0 = scala.runtime.BoxesRunTime.equalsCharObject(r0, r1)
                r8 = r0
                goto L7c
            L74:
                r0 = r6
                r1 = r7
                boolean r0 = r0.equals(r1)
                r8 = r0
            L7c:
                r0 = r8
                if (r0 == 0) goto L98
                r0 = r3
                java.lang.Object r0 = r0.tail()
                scala.collection.LinearSeqOptimized r0 = (scala.collection.LinearSeqOptimized) r0
                r3 = r0
                r0 = r4
                java.lang.Object r0 = r0.tail()
                scala.collection.LinearSeq r0 = (scala.collection.LinearSeq) r0
                r4 = r0
                goto L13
            L98:
                r0 = r3
                boolean r0 = r0.isEmpty()
                if (r0 == 0) goto Lb0
                r0 = r4
                boolean r0 = r0.isEmpty()
                if (r0 == 0) goto Lb0
                r0 = 1
                r9 = r0
                goto Lb3
            Lb0:
                r0 = 0
                r9 = r0
            Lb3:
                r0 = r5
                r8 = r0
                r0 = r9
                if (r0 == 0) goto Lca
            Lbb:
                r0 = 1
                r8 = r0
                goto Lca
            Lc1:
                r0 = r3
                r1 = r4
                boolean r0 = r0.scala$collection$LinearSeqOptimized$$super$sameElements(r1)
                r8 = r0
            Lca:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.LinearSeqOptimized.Cclass.sameElements(scala.collection.LinearSeqOptimized, scala.collection.GenIterable):boolean");
        }

        public static int segmentLength(LinearSeqOptimized linearSeqOptimized, Function1 function1, int i) {
            int i2 = 0;
            for (LinearSeqOptimized drop = linearSeqOptimized.drop(i); !drop.isEmpty() && BoxesRunTime.unboxToBoolean(function1.apply(drop.head())); drop = (LinearSeqOptimized) drop.tail()) {
                i2++;
            }
            return i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static LinearSeqOptimized slice(LinearSeqOptimized linearSeqOptimized, int i, int i2) {
            LinearSeqOptimized linearSeqOptimized2;
            int i3;
            LinearSeqOptimized linearSeqOptimized3 = (LinearSeqOptimized) linearSeqOptimized.repr();
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            int max$extension = richInt$.max$extension(i, 0);
            if (i2 <= max$extension) {
                return (LinearSeqOptimized) linearSeqOptimized.newBuilder().result();
            }
            Builder<A, Repr> newBuilder = linearSeqOptimized.newBuilder();
            int i4 = i2 - max$extension;
            LinearSeqOptimized linearSeqOptimized4 = linearSeqOptimized3;
            while (true) {
                linearSeqOptimized2 = linearSeqOptimized4;
                i3 = i4;
                if (!linearSeqOptimized4.nonEmpty()) {
                    break;
                }
                linearSeqOptimized2 = linearSeqOptimized4;
                i3 = i4;
                if (max$extension <= 0) {
                    break;
                }
                linearSeqOptimized4 = (LinearSeqOptimized) linearSeqOptimized4.tail();
                max$extension--;
            }
            while (linearSeqOptimized2.nonEmpty() && i3 > 0) {
                i3--;
                newBuilder.$plus$eq((Builder<A, Repr>) linearSeqOptimized2.head());
                linearSeqOptimized2 = (LinearSeqOptimized) linearSeqOptimized2.tail();
            }
            return (LinearSeqOptimized) newBuilder.result();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Tuple2 span(LinearSeqOptimized linearSeqOptimized, Function1 function1) {
            LinearSeqOptimized linearSeqOptimized2;
            LinearSeqOptimized linearSeqOptimized3 = (LinearSeqOptimized) linearSeqOptimized.repr();
            Builder<A, Repr> newBuilder = linearSeqOptimized.newBuilder();
            LinearSeqOptimized linearSeqOptimized4 = linearSeqOptimized3;
            while (true) {
                linearSeqOptimized2 = linearSeqOptimized4;
                if (linearSeqOptimized2.isEmpty() || !BoxesRunTime.unboxToBoolean(function1.apply(linearSeqOptimized2.head()))) {
                    break;
                }
                newBuilder.$plus$eq((Builder<A, Repr>) linearSeqOptimized2.head());
                linearSeqOptimized4 = (LinearSeqOptimized) linearSeqOptimized2.tail();
            }
            return new Tuple2(newBuilder.result(), linearSeqOptimized2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static LinearSeqOptimized take(LinearSeqOptimized linearSeqOptimized, int i) {
            Builder<A, Repr> newBuilder = linearSeqOptimized.newBuilder();
            int i2 = 0;
            for (LinearSeqOptimized linearSeqOptimized2 = (LinearSeqOptimized) linearSeqOptimized.repr(); !linearSeqOptimized2.isEmpty() && i2 < i; linearSeqOptimized2 = (LinearSeqOptimized) linearSeqOptimized2.tail()) {
                i2++;
                newBuilder.$plus$eq((Builder<A, Repr>) linearSeqOptimized2.head());
            }
            return (LinearSeqOptimized) newBuilder.result();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static LinearSeqOptimized takeWhile(LinearSeqOptimized linearSeqOptimized, Function1 function1) {
            Builder<A, Repr> newBuilder = linearSeqOptimized.newBuilder();
            while (!linearSeqOptimized.isEmpty() && BoxesRunTime.unboxToBoolean(function1.apply(linearSeqOptimized.head()))) {
                newBuilder.$plus$eq((Builder<A, Repr>) linearSeqOptimized.head());
                linearSeqOptimized = (LinearSeqOptimized) linearSeqOptimized.tail();
            }
            return (LinearSeqOptimized) newBuilder.result();
        }
    }

    @Override // scala.collection.SeqLike, scala.collection.GenSeqLike
    A apply(int i);

    @Override // scala.collection.SeqLike
    <A1> boolean contains(A1 a1);

    @Override // scala.collection.IterableLike
    Repr drop(int i);

    @Override // scala.collection.IterableLike
    Repr dropRight(int i);

    @Override // scala.collection.IterableLike
    boolean exists(Function1<A, Object> function1);

    @Override // scala.collection.IterableLike
    Option<A> find(Function1<A, Object> function1);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> B foldLeft(B b, Function2<B, A, B> function2);

    @Override // scala.collection.IterableLike
    <B> B foldRight(B b, Function2<A, B, B> function2);

    @Override // scala.collection.IterableLike
    boolean forall(Function1<A, Object> function1);

    @Override // scala.collection.IterableLike
    <B> void foreach(Function1<A, B> function1);

    @Override // scala.collection.IterableLike
    A head();

    @Override // scala.collection.SeqLike
    int indexWhere(Function1<A, Object> function1, int i);

    @Override // scala.collection.GenSeqLike
    boolean isDefinedAt(int i);

    @Override // scala.collection.SeqLike, scala.collection.IterableLike
    boolean isEmpty();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    A last();

    @Override // scala.collection.SeqLike
    int lastIndexWhere(Function1<A, Object> function1, int i);

    @Override // scala.collection.SeqLike, scala.collection.GenSeqLike
    int length();

    @Override // scala.collection.SeqLike
    int lengthCompare(int i);

    @Override // scala.collection.TraversableOnce
    <B> B reduceLeft(Function2<B, A, B> function2);

    @Override // scala.collection.IterableLike
    <B> B reduceRight(Function2<A, B, B> function2);

    @Override // scala.collection.IterableLike
    <B> boolean sameElements(GenIterable<B> genIterable);

    /* synthetic */ boolean scala$collection$LinearSeqOptimized$$super$sameElements(GenIterable genIterable);

    @Override // scala.collection.SeqLike
    int segmentLength(Function1<A, Object> function1, int i);

    @Override // scala.collection.IterableLike
    Repr slice(int i, int i2);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    Tuple2<Repr, Repr> span(Function1<A, Object> function1);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    Repr tail();

    @Override // scala.collection.IterableLike
    Repr take(int i);

    @Override // scala.collection.IterableLike
    Repr takeWhile(Function1<A, Object> function1);
}
