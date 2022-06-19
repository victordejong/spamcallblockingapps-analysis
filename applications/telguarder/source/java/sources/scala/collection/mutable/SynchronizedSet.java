package scala.collection.mutable;

import scala.Function1;
import scala.collection.GenSet;
import scala.collection.TraversableOnce;
import scala.collection.immutable.List;
import scala.collection.script.Message;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001\t\rbaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u0010'ft7\r\u001b:p]&TX\rZ*fi*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tQQcE\u0002\u0001\u0017=\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\r\u0001\u0012cE\u0007\u0002\u0005%\u0011!C\u0001\u0002\u0004'\u0016$\bC\u0001\u000b\u0016\u0019\u0001!QA\u0006\u0001C\u0002]\u0011\u0011!Q\t\u00031m\u0001\"\u0001D\r\n\u0005i1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019qI!!\b\u0004\u0003\u0007\u0005s\u0017\u0010C\u0003 \u0001\u0011\u0005\u0001%\u0001\u0004%S:LG\u000f\n\u000b\u0002CA\u0011ABI\u0005\u0003G\u0019\u0011A!\u00168ji\"1Q\u0005\u0001I\u0005\u0002\u0019\nAa]5{KV\tq\u0005\u0005\u0002\rQ%\u0011\u0011F\u0002\u0002\u0004\u0013:$\b\"B\u0016\u0001\t\u0003b\u0013aB5t\u000b6\u0004H/_\u000b\u0002[A\u0011ABL\u0005\u0003_\u0019\u0011qAQ8pY\u0016\fg\u000e\u0003\u00042\u0001A%\tAM\u0001\tG>tG/Y5ogR\u0011Qf\r\u0005\u0006iA\u0002\raE\u0001\u0005K2,W\u000e\u0003\u00047\u0001A%\taN\u0001\tIAdWo\u001d\u0013fcR\u0011\u0001(O\u0007\u0002\u0001!)A'\u000ea\u0001'!)1\b\u0001C!y\u0005iA\u0005\u001d7vg\u0012\u0002H.^:%KF$\"\u0001O\u001f\t\u000byR\u0004\u0019A \u0002\u0005a\u001c\bc\u0001!B'5\tA!\u0003\u0002C\t\tyAK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cW\r\u0003\u0004E\u0001A%\t!R\u0001\nI5Lg.^:%KF$\"\u0001\u000f$\t\u000bQ\u001a\u0005\u0019A\n\t\u000b!\u0003A\u0011I%\u0002\u001f\u0011j\u0017N\\;tI5Lg.^:%KF$\"\u0001\u000f&\t\u000by:\u0005\u0019A \t\u000b1\u0003A\u0011I'\u0002\rU\u0004H-\u0019;f)\r\tcj\u0014\u0005\u0006i-\u0003\ra\u0005\u0005\u0006!.\u0003\r!L\u0001\tS:\u001cG.\u001e3fI\")!\u000b\u0001C!'\u0006\u0019\u0011\r\u001a3\u0015\u00055\"\u0006\"\u0002\u001bR\u0001\u0004\u0019\u0002\"\u0002,\u0001\t\u0003:\u0016A\u0002:f[>4X\r\u0006\u0002.1\")A'\u0016a\u0001'!)!\f\u0001C!7\u0006I\u0011N\u001c;feN,7\r\u001e\u000b\u0003\u001fqCQ!X-A\u0002y\u000bA\u0001\u001e5biB\u0019\u0001iX\n\n\u0005\u0001$!AB$f]N+G\u000f\u0003\u0004c\u0001A%\t\u0001I\u0001\u0006G2,\u0017M\u001d\u0005\u0006I\u0002!\t%Z\u0001\tgV\u00147/\u001a;PMR\u0011QF\u001a\u0005\u0006;\u000e\u0004\rA\u0018\u0005\u0006Q\u0002!\t%[\u0001\bM>\u0014X-Y2i+\tQ\u0017\u000f\u0006\u0002\"W\")An\u001aa\u0001[\u0006\ta\r\u0005\u0003\r]N\u0001\u0018BA8\u0007\u0005%1UO\\2uS>t\u0017\u0007\u0005\u0002\u0015c\u0012)!o\u001ab\u0001/\t\tQ\u000bC\u0003u\u0001\u0011\u0005S/\u0001\u0004sKR\f\u0017N\u001c\u000b\u0003CYDQa^:A\u0002a\f\u0011\u0001\u001d\t\u0005\u00199\u001cR\u0006C\u0003{\u0001\u0011\u000530\u0001\u0004u_2K7\u000f^\u000b\u0002yB!Q0!\u0001\u0014\u001d\taa0\u0003\u0002��\r\u00059\u0001/Y2lC\u001e,\u0017\u0002BA\u0002\u0003\u000b\u0011A\u0001T5ti*\u0011qP\u0002\u0005\b\u0003\u0013\u0001A\u0011IA\u0006\u0003!!xn\u0015;sS:<GCAA\u0007!\u0011\ty!!\u0006\u000f\u00071\t\t\"C\u0002\u0002\u0014\u0019\ta\u0001\u0015:fI\u00164\u0017\u0002BA\f\u00033\u0011aa\u0015;sS:<'bAA\n\r!9\u0011Q\u0004\u0001\u0005B\u0005}\u0011A\u0003\u0013mKN\u001cH\u0005\\3tgR\u0019\u0011%!\t\t\u0011\u0005\r\u00121\u0004a\u0001\u0003K\t1aY7e!\u0015\t9#!\f\u0014\u001b\t\tICC\u0002\u0002,\u0011\taa]2sSB$\u0018\u0002BA\u0018\u0003S\u0011q!T3tg\u0006<W\r\u000b\u0005\u0002\u001c\u0005M\u0012\u0011HA\u001f!\ra\u0011QG\u0005\u0004\u0003o1!A\u00033faJ,7-\u0019;fI\u0006\u0012\u00111H\u0001\u0019'\u000e\u0014\u0018\u000e\u001d;j]\u001e\u0004\u0013n\u001d\u0011eKB\u0014XmY1uK\u0012t\u0013EAA \u0003\u0019\u0011d&M\u0019/a!9\u00111\t\u0001\u0005B\u0005\u0015\u0013!B2m_:,GCAA$!\rA\u0014\u0011J\u0005\u0005\u0003\u0017\niE\u0001\u0003TK24\u0017bAA(\t\tyAK]1wKJ\u001c\u0018M\u00197f\u0019&\\W\rC\u0007\u0002T\u0001\u0001\n1!A\u0001\n\u00131\u0013QK\u0001\u000bgV\u0004XM\u001d\u0013tSj,\u0017BA\u0013B\u00115\tI\u0006\u0001I\u0001\u0004\u0003\u0005I\u0011\u0002\u0017\u0002\\\u0005i1/\u001e9fe\u0012J7/R7qifL1aKA/\u0013\r\ty\u0006\u0002\u0002\b'\u0016$H*[6f\u00119\t\u0019\u0007\u0001I\u0001\u0004\u0003\u0005I\u0011BA3\u0003S\nab];qKJ$3m\u001c8uC&t7\u000fF\u0002.\u0003OBa\u0001NA1\u0001\u0004\u0019\u0012bA\u0019\u0002^!q\u0011Q\u000e\u0001\u0011\u0002\u0007\u0005\t\u0011\"\u0003\u0002p\u0005M\u0014AD:va\u0016\u0014H\u0005\n9mkN$S-\u001d\u000b\u0004q\u0005E\u0004B\u0002\u001b\u0002l\u0001\u00071#C\u00027\u0003kJ1!a\u0018\u0003\u00119\tI\b\u0001I\u0001\u0004\u0003\u0005I\u0011BA>\u0003\u007f\n1c];qKJ$C\u0005\u001d7vg\u0012\u0002H.^:%KF$2\u0001OA?\u0011\u0019q\u0014q\u000fa\u0001\u007f%\u00191(!!\n\t\u0005\r\u0015Q\u0011\u0002\t\u000fJ|w/\u00192mK*\u0019\u0011q\u0011\u0003\u0002\u000f\u001d,g.\u001a:jG\"q\u00111\u0012\u0001\u0011\u0002\u0007\u0005\t\u0011\"\u0003\u0002\u000e\u0006E\u0015aD:va\u0016\u0014H\u0005J7j]V\u001cH%Z9\u0015\u0007a\ny\t\u0003\u00045\u0003\u0013\u0003\raE\u0005\u0004\t\u0006U\u0004BDAK\u0001A\u0005\u0019\u0011!A\u0005\n\u0005]\u00151T\u0001\u0016gV\u0004XM\u001d\u0013%[&tWo\u001d\u0013nS:,8\u000fJ3r)\rA\u0014\u0011\u0014\u0005\u0007}\u0005M\u0005\u0019A \n\u0007!\u000bi*\u0003\u0003\u0002 \u0006\u0015%AC*ie&t7.\u00192mK\"q\u00111\u0015\u0001\u0011\u0002\u0007\u0005\t\u0011\"\u0003\u0002&\u0006-\u0016\u0001D:va\u0016\u0014H%\u001e9eCR,G#B\u0011\u0002(\u0006%\u0006B\u0002\u001b\u0002\"\u0002\u00071\u0003\u0003\u0004Q\u0003C\u0003\r!L\u0005\u0004\u0019\u0006U\u0004BDAX\u0001A\u0005\u0019\u0011!A\u0005\n\u0005E\u0016QW\u0001\ngV\u0004XM\u001d\u0013bI\u0012$2!LAZ\u0011\u0019!\u0014Q\u0016a\u0001'%\u0019!+!\u001e\t\u001d\u0005e\u0006\u0001%A\u0002\u0002\u0003%I!a/\u0002@\u0006a1/\u001e9fe\u0012\u0012X-\\8wKR\u0019Q&!0\t\rQ\n9\f1\u0001\u0014\u0013\r1\u0016Q\u000f\u0005\u000f\u0003\u0007\u0004\u0001\u0013aA\u0001\u0002\u0013%\u0011QYAe\u0003=\u0019X\u000f]3sI%tG/\u001a:tK\u000e$HcA\b\u0002H\"1Q,!1A\u0002yK1AWAf\u0013\r\ti\r\u0002\u0002\u000b\u000f\u0016t7+\u001a;MS.,\u0007\"DAi\u0001A\u0005\u0019\u0011!A\u0005\n\u0001\n\u0019.A\u0006tkB,'\u000fJ2mK\u0006\u0014\u0018b\u00012\u0002v!q\u0011q\u001b\u0001\u0011\u0002\u0007\u0005\t\u0011\"\u0003\u0002Z\u0006u\u0017AD:va\u0016\u0014He];cg\u0016$xJ\u001a\u000b\u0004[\u0005m\u0007BB/\u0002V\u0002\u0007a,C\u0002e\u0003\u0017Da\"!9\u0001!\u0003\r\t\u0011!C\u0005\u0003G\fy/A\u0007tkB,'\u000f\n4pe\u0016\f7\r[\u000b\u0005\u0003K\fi\u000fF\u0002\"\u0003ODq\u0001\\Ap\u0001\u0004\tI\u000fE\u0003\r]N\tY\u000fE\u0002\u0015\u0003[$aA]Ap\u0005\u00049\u0012b\u00015\u0002r&\u0019\u00111\u001f\u0003\u0003\u0019%#XM]1cY\u0016d\u0015n[3\t\u001d\u0005]\b\u0001%A\u0002\u0002\u0003%I!!?\u0002~\u0006a1/\u001e9fe\u0012\u0012X\r^1j]R\u0019\u0011%a?\t\r]\f)\u00101\u0001y\u0013\r!\u0018Q\u000f\u0005\u000e\u0005\u0003\u0001\u0001\u0013aA\u0001\u0002\u0013%1Pa\u0001\u0002\u0019M,\b/\u001a:%i>d\u0015n\u001d;\n\u0005i\f\u0005B\u0004B\u0004\u0001A\u0005\u0019\u0011!A\u0005\n\u0005-!\u0011B\u0001\u000fgV\u0004XM\u001d\u0013u_N#(/\u001b8h\u0013\u0011\tI!!\u0018\t\u001d\t5\u0001\u0001%A\u0002\u0002\u0003%IAa\u0004\u0003\u0014\u0005\u00012/\u001e9fe\u0012\"C.Z:tI1,7o\u001d\u000b\u0004C\tE\u0001\u0002CA\u0012\u0005\u0017\u0001\r!!\n\n\t\u0005u\u0011Q\u000f\u0005\u000f\u0005/\u0001\u0001\u0013aA\u0001\u0002\u0013%!\u0011\u0004B\u000e\u0003-\u0019X\u000f]3sI\rdwN\\3\u0015\u0003=IA!a\u0011\u0002v!:\u0001!a\r\u0003 \u0005u\u0012E\u0001B\u0011\u0003\u0005%2+\u001f8dQJ|g.\u001b>bi&|g\u000e\t<jC\u0002\"(/Y5ug\u0002J7\u000f\t3faJ,7-\u0019;fI\u0002\n7\u000fI5uA%\u001c\b%\u001b8iKJ,g\u000e\u001e7zAUt'/\u001a7jC\ndWM\f\u0011!\u0007>t7/\u001b3fe\u0002R\u0017M^1/kRLGNL2p]\u000e,(O]3oi:\u001auN\\2veJ,g\u000e\u001e%bg\"l\u0015\r].BYUs\u0017\u000e^/!CN\u0004\u0013M\u001c\u0011bYR,'O\\1uSZ,g\u0006")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SynchronizedSet.class */
public interface SynchronizedSet<A> extends Set<A> {

    /* renamed from: scala.collection.mutable.SynchronizedSet$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SynchronizedSet$class.class */
    public abstract class Cclass {
        public static void $init$(SynchronizedSet synchronizedSet) {
        }

        public static void $less$less(SynchronizedSet synchronizedSet, Message message) {
            synchronized (synchronizedSet) {
                synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$$less$less(message);
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
        }

        public static SynchronizedSet $minus$eq(SynchronizedSet synchronizedSet, Object obj) {
            SynchronizedSet scala$collection$mutable$SynchronizedSet$$super$$minus$eq;
            synchronized (synchronizedSet) {
                scala$collection$mutable$SynchronizedSet$$super$$minus$eq = synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$$minus$eq(obj);
            }
            return scala$collection$mutable$SynchronizedSet$$super$$minus$eq;
        }

        public static SynchronizedSet $minus$minus$eq(SynchronizedSet synchronizedSet, TraversableOnce traversableOnce) {
            SynchronizedSet scala$collection$mutable$SynchronizedSet$$super$$minus$minus$eq;
            synchronized (synchronizedSet) {
                scala$collection$mutable$SynchronizedSet$$super$$minus$minus$eq = synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$$minus$minus$eq(traversableOnce);
            }
            return scala$collection$mutable$SynchronizedSet$$super$$minus$minus$eq;
        }

        public static SynchronizedSet $plus$eq(SynchronizedSet synchronizedSet, Object obj) {
            SynchronizedSet scala$collection$mutable$SynchronizedSet$$super$$plus$eq;
            synchronized (synchronizedSet) {
                scala$collection$mutable$SynchronizedSet$$super$$plus$eq = synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$$plus$eq(obj);
            }
            return scala$collection$mutable$SynchronizedSet$$super$$plus$eq;
        }

        public static SynchronizedSet $plus$plus$eq(SynchronizedSet synchronizedSet, TraversableOnce traversableOnce) {
            SynchronizedSet scala$collection$mutable$SynchronizedSet$$super$$plus$plus$eq;
            synchronized (synchronizedSet) {
                scala$collection$mutable$SynchronizedSet$$super$$plus$plus$eq = synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$$plus$plus$eq(traversableOnce);
            }
            return scala$collection$mutable$SynchronizedSet$$super$$plus$plus$eq;
        }

        public static boolean add(SynchronizedSet synchronizedSet, Object obj) {
            boolean scala$collection$mutable$SynchronizedSet$$super$add;
            synchronized (synchronizedSet) {
                scala$collection$mutable$SynchronizedSet$$super$add = synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$add(obj);
            }
            return scala$collection$mutable$SynchronizedSet$$super$add;
        }

        public static void clear(SynchronizedSet synchronizedSet) {
            synchronized (synchronizedSet) {
                synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$clear();
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
        }

        public static Set clone(SynchronizedSet synchronizedSet) {
            Set scala$collection$mutable$SynchronizedSet$$super$clone;
            synchronized (synchronizedSet) {
                scala$collection$mutable$SynchronizedSet$$super$clone = synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$clone();
            }
            return scala$collection$mutable$SynchronizedSet$$super$clone;
        }

        public static boolean contains(SynchronizedSet synchronizedSet, Object obj) {
            boolean scala$collection$mutable$SynchronizedSet$$super$contains;
            synchronized (synchronizedSet) {
                scala$collection$mutable$SynchronizedSet$$super$contains = synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$contains(obj);
            }
            return scala$collection$mutable$SynchronizedSet$$super$contains;
        }

        public static void foreach(SynchronizedSet synchronizedSet, Function1 function1) {
            synchronized (synchronizedSet) {
                synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$foreach(function1);
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
        }

        public static Set intersect(SynchronizedSet synchronizedSet, GenSet genSet) {
            Set scala$collection$mutable$SynchronizedSet$$super$intersect;
            synchronized (synchronizedSet) {
                scala$collection$mutable$SynchronizedSet$$super$intersect = synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$intersect(genSet);
            }
            return scala$collection$mutable$SynchronizedSet$$super$intersect;
        }

        public static boolean isEmpty(SynchronizedSet synchronizedSet) {
            boolean scala$collection$mutable$SynchronizedSet$$super$isEmpty;
            synchronized (synchronizedSet) {
                scala$collection$mutable$SynchronizedSet$$super$isEmpty = synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$isEmpty();
            }
            return scala$collection$mutable$SynchronizedSet$$super$isEmpty;
        }

        public static boolean remove(SynchronizedSet synchronizedSet, Object obj) {
            boolean scala$collection$mutable$SynchronizedSet$$super$remove;
            synchronized (synchronizedSet) {
                scala$collection$mutable$SynchronizedSet$$super$remove = synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$remove(obj);
            }
            return scala$collection$mutable$SynchronizedSet$$super$remove;
        }

        public static void retain(SynchronizedSet synchronizedSet, Function1 function1) {
            synchronized (synchronizedSet) {
                synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$retain(function1);
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
        }

        public static int size(SynchronizedSet synchronizedSet) {
            int scala$collection$mutable$SynchronizedSet$$super$size;
            synchronized (synchronizedSet) {
                scala$collection$mutable$SynchronizedSet$$super$size = synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$size();
            }
            return scala$collection$mutable$SynchronizedSet$$super$size;
        }

        public static boolean subsetOf(SynchronizedSet synchronizedSet, GenSet genSet) {
            boolean scala$collection$mutable$SynchronizedSet$$super$subsetOf;
            synchronized (synchronizedSet) {
                scala$collection$mutable$SynchronizedSet$$super$subsetOf = synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$subsetOf(genSet);
            }
            return scala$collection$mutable$SynchronizedSet$$super$subsetOf;
        }

        public static List toList(SynchronizedSet synchronizedSet) {
            List scala$collection$mutable$SynchronizedSet$$super$toList;
            synchronized (synchronizedSet) {
                scala$collection$mutable$SynchronizedSet$$super$toList = synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$toList();
            }
            return scala$collection$mutable$SynchronizedSet$$super$toList;
        }

        public static String toString(SynchronizedSet synchronizedSet) {
            String scala$collection$mutable$SynchronizedSet$$super$toString;
            synchronized (synchronizedSet) {
                scala$collection$mutable$SynchronizedSet$$super$toString = synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$toString();
            }
            return scala$collection$mutable$SynchronizedSet$$super$toString;
        }

        public static void update(SynchronizedSet synchronizedSet, Object obj, boolean z) {
            synchronized (synchronizedSet) {
                synchronizedSet.scala$collection$mutable$SynchronizedSet$$super$update(obj, z);
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
        }
    }

    @Override // scala.collection.mutable.SetLike, scala.collection.script.Scriptable
    void $less$less(Message<A> message);

    @Override // scala.collection.mutable.SetLike, scala.collection.generic.Shrinkable
    SynchronizedSet<A> $minus$eq(A a);

    @Override // scala.collection.generic.Shrinkable
    SynchronizedSet<A> $minus$minus$eq(TraversableOnce<A> traversableOnce);

    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable
    SynchronizedSet<A> $plus$eq(A a);

    @Override // scala.collection.generic.Growable
    SynchronizedSet<A> $plus$plus$eq(TraversableOnce<A> traversableOnce);

    @Override // scala.collection.mutable.SetLike
    boolean add(A a);

    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    void clear();

    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Cloneable
    Set<A> clone();

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    boolean contains(A a);

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    <U> void foreach(Function1<A, U> function1);

    @Override // scala.collection.GenSetLike
    Set<A> intersect(GenSet<A> genSet);

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    boolean isEmpty();

    @Override // scala.collection.mutable.SetLike
    boolean remove(A a);

    @Override // scala.collection.mutable.SetLike
    void retain(Function1<A, Object> function1);

    /* synthetic */ void scala$collection$mutable$SynchronizedSet$$super$$less$less(Message message);

    /* synthetic */ SynchronizedSet scala$collection$mutable$SynchronizedSet$$super$$minus$eq(Object obj);

    /* synthetic */ SynchronizedSet scala$collection$mutable$SynchronizedSet$$super$$minus$minus$eq(TraversableOnce traversableOnce);

    /* synthetic */ SynchronizedSet scala$collection$mutable$SynchronizedSet$$super$$plus$eq(Object obj);

    /* synthetic */ SynchronizedSet scala$collection$mutable$SynchronizedSet$$super$$plus$plus$eq(TraversableOnce traversableOnce);

    /* synthetic */ boolean scala$collection$mutable$SynchronizedSet$$super$add(Object obj);

    /* synthetic */ void scala$collection$mutable$SynchronizedSet$$super$clear();

    /* synthetic */ Set scala$collection$mutable$SynchronizedSet$$super$clone();

    /* synthetic */ boolean scala$collection$mutable$SynchronizedSet$$super$contains(Object obj);

    /* synthetic */ void scala$collection$mutable$SynchronizedSet$$super$foreach(Function1 function1);

    /* synthetic */ Set scala$collection$mutable$SynchronizedSet$$super$intersect(GenSet genSet);

    /* synthetic */ boolean scala$collection$mutable$SynchronizedSet$$super$isEmpty();

    /* synthetic */ boolean scala$collection$mutable$SynchronizedSet$$super$remove(Object obj);

    /* synthetic */ void scala$collection$mutable$SynchronizedSet$$super$retain(Function1 function1);

    /* synthetic */ int scala$collection$mutable$SynchronizedSet$$super$size();

    /* synthetic */ boolean scala$collection$mutable$SynchronizedSet$$super$subsetOf(GenSet genSet);

    /* synthetic */ List scala$collection$mutable$SynchronizedSet$$super$toList();

    /* synthetic */ String scala$collection$mutable$SynchronizedSet$$super$toString();

    /* synthetic */ void scala$collection$mutable$SynchronizedSet$$super$update(Object obj, boolean z);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    int size();

    @Override // scala.collection.GenSetLike, scala.collection.SortedSetLike
    boolean subsetOf(GenSet<A> genSet);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    List<A> toList();

    @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    String toString();

    @Override // scala.collection.mutable.SetLike
    void update(A a, boolean z);
}
