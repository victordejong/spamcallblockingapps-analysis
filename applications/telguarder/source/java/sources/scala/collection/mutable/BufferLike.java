package scala.collection.mutable;

import scala.Predef$;
import scala.collection.GenTraversableOnce;
import scala.collection.Seq;
import scala.collection.Traversable;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.collection.generic.Shrinkable;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.Range;
import scala.collection.immutable.Range$;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.BufferLike;
import scala.collection.script.End$;
import scala.collection.script.Include;
import scala.collection.script.Index;
import scala.collection.script.Message;
import scala.collection.script.NoLo$;
import scala.collection.script.Remove;
import scala.collection.script.Reset;
import scala.collection.script.Script;
import scala.collection.script.Scriptable;
import scala.collection.script.Start$;
import scala.collection.script.Update;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001\u0005}g\u0001C\u0001\u0003!\u0003\r\t!\u0003\u0017\u0003\u0015\t+hMZ3s\u0019&\\WM\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001Qc\u0001\u0006\u0018[MA\u0001aC\b!G%B4\b\u0005\u0002\r\u001b5\ta!\u0003\u0002\u000f\r\t1\u0011I\\=SK\u001a\u00042\u0001E\n\u0016\u001b\u0005\t\"B\u0001\n\u0005\u0003\u001d9WM\\3sS\u000eL!\u0001F\t\u0003\u0011\u001d\u0013xn^1cY\u0016\u0004\"AF\f\r\u0001\u0011)\u0001\u0004\u0001b\u00013\t\t\u0011)\u0005\u0002\u001b;A\u0011AbG\u0005\u00039\u0019\u0011qAT8uQ&tw\r\u0005\u0002\r=%\u0011qD\u0002\u0002\u0004\u0003:L\bc\u0001\t\"+%\u0011!%\u0005\u0002\u000b'\"\u0014\u0018N\\6bE2,\u0007c\u0001\u0013(+5\tQE\u0003\u0002'\t\u000511o\u0019:jaRL!\u0001K\u0013\u0003\u0015M\u001b'/\u001b9uC\ndW\r\u0005\u0003\u0011UUa\u0013BA\u0016\u0012\u00051\u0019VO\u0019;sC\u000e$\u0018M\u00197f!\t1R\u0006\u0002\u0004/\u0001\u0011\u0015\ra\f\u0002\u0005)\"L7/\u0005\u0002\u001baI\u0019\u0011gM\u001b\u0007\tI\u0002\u0001\u0001\r\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0005i\u0001)B&D\u0001\u0003!\r!d'F\u0005\u0003o\t\u0011aAQ;gM\u0016\u0014\b\u0003\u0002\u001b:+1J!A\u000f\u0002\u0003\u000fM+\u0017\u000fT5lKB\u0011A\u0002P\u0005\u0003{\u0019\u0011\u0011b\u00117p]\u0016\f'\r\\3\t\u000b}\u0002A\u0011\u0001!\u0002\r\u0011Jg.\u001b;%)\u0005\t\u0005C\u0001\u0007C\u0013\t\u0019eA\u0001\u0003V]&$\b\"B#\u0001\r\u00031\u0015!B1qa2LHCA\u000bH\u0011\u0015AE\t1\u0001J\u0003\u0005q\u0007C\u0001\u0007K\u0013\tYeAA\u0002J]RDQ!\u0014\u0001\u0007\u00029\u000ba!\u001e9eCR,GcA!P!\")\u0001\n\u0014a\u0001\u0013\")\u0011\u000b\u0014a\u0001+\u00059a.Z<fY\u0016l\u0007\"B*\u0001\r\u0003!\u0016A\u00027f]\u001e$\b.F\u0001J\u0011\u00151\u0006A\"\u0001X\u0003!!\u0003\u000f\\;tI\u0015\fHC\u0001-Z\u001b\u0005\u0001\u0001\"\u0002.V\u0001\u0004)\u0012\u0001B3mK6DQ\u0001\u0018\u0001\u0007\u0002\u0001\u000bQa\u00197fCJDQA\u0018\u0001\u0007\u0002}\u000ba\u0002\n9mkN$S-\u001d\u0013d_2|g\u000e\u0006\u0002YA\")!,\u0018a\u0001+!)!\r\u0001D\u0001G\u0006I\u0011N\\:feR\fE\u000e\u001c\u000b\u0004\u0003\u0012,\u0007\"\u0002%b\u0001\u0004I\u0005\"\u00024b\u0001\u00049\u0017!B3mK6\u001c\bc\u00015j+5\tA!\u0003\u0002k\t\tYAK]1wKJ\u001c\u0018M\u00197f\u0011\u0015a\u0007A\"\u0001n\u0003\u0019\u0011X-\\8wKR\u0011QC\u001c\u0005\u0006\u0011.\u0004\r!\u0013\u0005\u0006Y\u0002!\t\u0001\u001d\u000b\u0004\u0003F\u0014\b\"\u0002%p\u0001\u0004I\u0005\"B:p\u0001\u0004I\u0015!B2pk:$\b\"B;\u0001\t\u00031\u0018!\u0003\u0013nS:,8\u000fJ3r)\tAv\u000fC\u0003yi\u0002\u0007Q#A\u0001y\u0011\u0015Q\b\u0001\"\u0001|\u0003M!\u0003\u000f\\;tIAdWo\u001d\u0013fc\u0012\u001aw\u000e\\8o)\tAF\u0010C\u0003~s\u0002\u0007a0\u0001\u0002ygB\u0019\u0001n`\u000b\n\u0007\u0005\u0005AAA\bUe\u00064XM]:bE2,wJ\\2f\u0011\u001d\t)\u0001\u0001C\u0001\u0003\u000f\ta!\u00199qK:$GcA!\u0002\n!9a-a\u0001A\u0002\u0005-\u0001\u0003\u0002\u0007\u0002\u000eUI1!a\u0004\u0007\u0005)a$/\u001a9fCR,GM\u0010\u0005\b\u0003'\u0001A\u0011AA\u000b\u0003%\t\u0007\u000f]3oI\u0006cG\u000eF\u0002B\u0003/Aa!`A\t\u0001\u0004q\bbBA\u000e\u0001\u0011\u0005\u0011QD\u0001\baJ,\u0007/\u001a8e)\r\t\u0015q\u0004\u0005\bM\u0006e\u0001\u0019AA\u0006\u0011\u001d\t\u0019\u0003\u0001C\u0001\u0003K\t!\u0002\u001d:fa\u0016tG-\u00117m)\r\t\u0015q\u0005\u0005\u0007{\u0006\u0005\u0002\u0019\u0001@\t\u000f\u0005-\u0002\u0001\"\u0001\u0002.\u00051\u0011N\\:feR$R!QA\u0018\u0003cAa\u0001SA\u0015\u0001\u0004I\u0005b\u00024\u0002*\u0001\u0007\u00111\u0002\u0005\b\u0003k\u0001A\u0011AA\u001c\u0003%!(/[7Ti\u0006\u0014H\u000fF\u0002B\u0003sAa\u0001SA\u001a\u0001\u0004I\u0005bBA\u001f\u0001\u0011\u0005\u0011qH\u0001\biJLW.\u00128e)\r\t\u0015\u0011\t\u0005\u0007\u0011\u0006m\u0002\u0019A%\t\u000f\u0005\u0015\u0003\u0001\"\u0001\u0002H\u0005QA\u0005\\3tg\u0012bWm]:\u0015\u0007\u0005\u000bI\u0005\u0003\u0005\u0002L\u0005\r\u0003\u0019AA'\u0003\r\u0019W\u000e\u001a\t\u0005I\u0005=S#C\u0002\u0002R\u0015\u0012q!T3tg\u0006<W\r\u000b\u0005\u0002D\u0005U\u00131LA0!\ra\u0011qK\u0005\u0004\u000332!A\u00033faJ,7-\u0019;fI\u0006\u0012\u0011QL\u0001\u0019'\u000e\u0014\u0018\u000e\u001d;j]\u001e\u0004\u0013n\u001d\u0011eKB\u0014XmY1uK\u0012t\u0013EAA1\u0003\u0019\u0011d&M\u0019/a!9\u0011Q\r\u0001\u0005B\u0005\u001d\u0014\u0001D:ue&tw\r\u0015:fM&DXCAA5!\u0011\tY'!\u001d\u000f\u00071\ti'C\u0002\u0002p\u0019\ta\u0001\u0015:fI\u00164\u0017\u0002BA:\u0003k\u0012aa\u0015;sS:<'bAA8\r!9\u0011\u0011\u0010\u0001\u0005\u0002\u0005m\u0014\u0001\u0003:fC\u0012|e\u000e\\=\u0016\u0005\u0005u\u0004\u0003\u00025\u0002��UI1!!!\u0005\u0005\r\u0019V-\u001d\u0015\t\u0003o\n)&!\"\u0002`\u0005\u0012\u0011qQ\u0001c)\",\u0007E]3ukJtW\r\u001a\u0011tKF,XM\\2fA\rD\u0017M\\4fg\u0002\n7\u000f\t;iSN\u0004#-\u001e4gKJ\u0004\u0013n\u001d\u0011nkR\fG/\u001a3/A\u0019{'\u000fI1oA%lW.\u001e;bE2,\u0007eY8qs2\u0002So]3-A\u0015tsM\f\u0017!i>d\u0015n\u001d;/\u0011\u001d\tY\t\u0001C\u0001\u0003\u001b\u000b!\u0002\n9mkN$\u0003\u000f\\;t)\ra\u0013q\u0012\u0005\b{\u0006%\u0005\u0019AAI!\u0011A\u00171S\u000b\n\u0007\u0005UEA\u0001\nHK:$&/\u0019<feN\f'\r\\3P]\u000e,\u0007\u0006CAE\u00033\u000b)+!+\u0011\t\u0005m\u0015\u0011U\u0007\u0003\u0003;S1!a(\u0007\u0003)\tgN\\8uCRLwN\\\u0005\u0005\u0003G\u000biJA\u0005nS\u001e\u0014\u0018\r^5p]\u0006\u0012\u0011qU\u0001gA.Z\u0003\rI2sK\u0006$Xm\u001d\u0011bA9,w\u000f\t2vM\u001a,'O\f\u0011Vg\u0016\u0004\u0003mK\u0016>A\u0002\"x\u000eI1eI\u0002\ng\u000eI3mK6,g\u000e\u001e\u0011ge>l\u0007\u0005\u001e5jg\u0002\u0012WO\u001a4fe\u0002\ng\u000e\u001a\u0011sKR,(O\u001c\u0011uQ\u0006$\bEY;gM\u0016\u0014\b%\u001b;tK24g&\t\u0002\u0002,\u0006)!G\f\u001d/a!9\u0011q\u0016\u0001\u0005B\u0005E\u0016A\u0002\u0013nS:,8\u000fF\u0002-\u0003gCaAWAW\u0001\u0004)\u0002\u0006CAW\u00033\u000b9,!+\"\u0005\u0005e\u0016a\u001a1.A\u0002\u001a'/Z1uKN\u0004\u0013\r\t8fo\u0002\u0012WO\u001a4fe:\u0002Sk]3!A6j\u0004\r\t;pAI,Wn\u001c<fA\u0005t\u0007%\u001a7f[\u0016tG\u000f\t4s_6\u0004C\u000f[5tA\t,hMZ3sA\u0005tG\r\t:fiV\u0014h\u000e\t;iCR\u0004#-\u001e4gKJ\u0004\u0013\u000e^:fY\u001at\u0003bBAX\u0001\u0011\u0005\u0013Q\u0018\u000b\bY\u0005}\u00161YAd\u0011\u001d\t\t-a/A\u0002U\tQ!\u001a7f[FBq!!2\u0002<\u0002\u0007Q#A\u0003fY\u0016l'\u0007C\u0004g\u0003w\u0003\r!a\u0003)\u0011\u0005m\u0016\u0011TA\\\u0003SCq!!4\u0001\t\u0003\ny-\u0001\u0007%[&tWo\u001d\u0013nS:,8\u000fF\u0002-\u0003#Dq!`Af\u0001\u0004\t\t\n\u000b\u0005\u0002L\u0006e\u0015Q[AUC\t\t9.A5a[5\u0002\u0007e\u0019:fCR,7\u000fI1!]\u0016<\bEY;gM\u0016\u0014h\u0006I+tK\u0002\u0002W&L\u001faAQ|\u0007E]3n_Z,\u0007%\u00198!K2,W.\u001a8uA\u0019\u0014x.\u001c\u0011uQ&\u001c\bEY;gM\u0016\u0014\b%\u00198eAI,G/\u001e:oAQD\u0017\r\u001e\u0011ck\u001a4WM\u001d\u0011jiN,GN\u001a\u0018\t\u000f\u0005m\u0007\u0001\"\u0011\u0002^\u0006)1\r\\8oKR\tA\u0006")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/BufferLike.class */
public interface BufferLike<A, This extends BufferLike<A, This> & Buffer<A>> extends Growable<A>, Shrinkable<A>, Scriptable<A>, Subtractable<A, This>, SeqLike<A, This> {

    /* renamed from: scala.collection.mutable.BufferLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/BufferLike$class.class */
    public abstract class Cclass {
        public static void $init$(Buffer buffer) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static void $less$less(Buffer buffer, Message message) {
            boolean z;
            Include include;
            boolean z2;
            Update update;
            boolean z3;
            Remove remove;
            boolean z4 = false;
            if (message instanceof Include) {
                include = (Include) message;
                if (Start$.MODULE$.equals(include.location())) {
                    buffer.prepend(Predef$.MODULE$.genericWrapArray(new Object[]{include.elem()}));
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                    return;
                }
                z = true;
            } else {
                include = null;
                z = false;
            }
            if (z && End$.MODULE$.equals(include.location())) {
                buffer.append(Predef$.MODULE$.genericWrapArray(new Object[]{include.elem()}));
                BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
            } else if (z && (include.location() instanceof Index)) {
                buffer.insert(((Index) include.location()).m64n(), Predef$.MODULE$.genericWrapArray(new Object[]{include.elem()}));
                BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
            } else if (z && NoLo$.MODULE$.equals(include.location())) {
                buffer.$plus$eq((Buffer) include.elem());
                BoxedUnit boxedUnit4 = BoxedUnit.UNIT;
            } else {
                if (message instanceof Update) {
                    update = (Update) message;
                    if (Start$.MODULE$.equals(update.location())) {
                        buffer.update(0, update.elem());
                        BoxedUnit boxedUnit5 = BoxedUnit.UNIT;
                        return;
                    }
                    z2 = true;
                } else {
                    update = null;
                    z2 = false;
                }
                if (z2 && End$.MODULE$.equals(update.location())) {
                    buffer.update(buffer.length() - 1, update.elem());
                    BoxedUnit boxedUnit6 = BoxedUnit.UNIT;
                } else if (z2 && (update.location() instanceof Index)) {
                    buffer.update(((Index) update.location()).m64n(), update.elem());
                    BoxedUnit boxedUnit7 = BoxedUnit.UNIT;
                } else {
                    if (message instanceof Remove) {
                        remove = (Remove) message;
                        if (Start$.MODULE$.equals(remove.location())) {
                            Object apply = buffer.apply((Buffer) BoxesRunTime.boxToInteger(0));
                            Object elem = remove.elem();
                            if (apply == elem ? true : apply == null ? false : apply instanceof Number ? BoxesRunTime.equalsNumObject((Number) apply, elem) : apply instanceof Character ? BoxesRunTime.equalsCharObject((Character) apply, elem) : apply.equals(elem)) {
                                buffer.remove(0);
                            }
                            BoxedUnit boxedUnit8 = BoxedUnit.UNIT;
                            return;
                        }
                        z3 = true;
                    } else {
                        z3 = false;
                        remove = null;
                    }
                    if (z3 && End$.MODULE$.equals(remove.location())) {
                        Object apply2 = buffer.apply((Buffer) BoxesRunTime.boxToInteger(buffer.length() - 1));
                        Object elem2 = remove.elem();
                        if (apply2 == elem2) {
                            z4 = true;
                        } else if (apply2 != null) {
                            z4 = apply2 instanceof Number ? BoxesRunTime.equalsNumObject((Number) apply2, elem2) : apply2 instanceof Character ? BoxesRunTime.equalsCharObject((Character) apply2, elem2) : apply2.equals(elem2);
                        }
                        if (z4) {
                            buffer.remove(buffer.length() - 1);
                        }
                        BoxedUnit boxedUnit9 = BoxedUnit.UNIT;
                    } else if (z3 && (remove.location() instanceof Index)) {
                        Index index = (Index) remove.location();
                        Object apply3 = buffer.apply((Buffer) BoxesRunTime.boxToInteger(index.m64n()));
                        Object elem3 = remove.elem();
                        if (apply3 == elem3 ? true : apply3 == null ? false : apply3 instanceof Number ? BoxesRunTime.equalsNumObject((Number) apply3, elem3) : apply3 instanceof Character ? BoxesRunTime.equalsCharObject((Character) apply3, elem3) : apply3.equals(elem3)) {
                            buffer.remove(index.m64n());
                        }
                        BoxedUnit boxedUnit10 = BoxedUnit.UNIT;
                    } else if (z3 && NoLo$.MODULE$.equals(remove.location())) {
                        buffer.$minus$eq((Buffer) remove.elem());
                        BoxedUnit boxedUnit11 = BoxedUnit.UNIT;
                    } else if (message instanceof Reset) {
                        buffer.clear();
                        BoxedUnit boxedUnit12 = BoxedUnit.UNIT;
                    } else if (!(message instanceof Script)) {
                        throw new UnsupportedOperationException(new StringBuilder().append((Object) "message ").append(message).append((Object) " not understood").toString());
                    } else {
                        ((Script) message).iterator().foreach(new BufferLike$$anonfun$$less$less$1(buffer));
                        BoxedUnit boxedUnit13 = BoxedUnit.UNIT;
                    }
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.mutable.Buffer] */
        public static Buffer $minus(Buffer buffer, Object obj, Object obj2, Seq seq) {
            return (Buffer) buffer.clone().$minus$eq(obj).$minus$eq((Buffer) obj2).$minus$minus$eq(seq);
        }

        public static Buffer $minus$eq(Buffer buffer, Object obj) {
            int indexOf = buffer.indexOf(obj);
            if (indexOf != -1) {
                buffer.remove(indexOf);
            } else {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return buffer;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.mutable.Buffer] */
        public static Buffer $minus$minus(Buffer buffer, GenTraversableOnce genTraversableOnce) {
            return (Buffer) buffer.clone().$minus$minus$eq(genTraversableOnce.seq());
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.mutable.Buffer] */
        public static Buffer $plus$plus(Buffer buffer, GenTraversableOnce genTraversableOnce) {
            return (Buffer) buffer.clone().$plus$plus$eq(genTraversableOnce.seq());
        }

        public static Buffer $plus$plus$eq$colon(Buffer buffer, TraversableOnce traversableOnce) {
            buffer.insertAll(0, traversableOnce.toTraversable());
            return buffer;
        }

        public static void append(Buffer buffer, Seq seq) {
            buffer.appendAll(seq);
        }

        public static void appendAll(Buffer buffer, TraversableOnce traversableOnce) {
            buffer.$plus$plus$eq(traversableOnce);
        }

        public static Buffer clone(Buffer buffer) {
            Builder<A, This> newBuilder = buffer.newBuilder();
            newBuilder.$plus$plus$eq(buffer);
            return (Buffer) newBuilder.result();
        }

        public static void insert(Buffer buffer, int i, Seq seq) {
            buffer.insertAll(i, seq);
        }

        public static void prepend(Buffer buffer, Seq seq) {
            buffer.prependAll(seq);
        }

        public static void prependAll(Buffer buffer, TraversableOnce traversableOnce) {
            buffer.$plus$plus$eq$colon(traversableOnce);
        }

        public static Seq readOnly(Buffer buffer) {
            return buffer.toSeq();
        }

        public static void remove(Buffer buffer, int i, int i2) {
            Predef$ predef$ = Predef$.MODULE$;
            Range$ range$ = Range$.MODULE$;
            Range range = new Range(0, i2, 1);
            range.scala$collection$immutable$Range$$validateMaxLength();
            boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
            int start = range.start();
            int terminalElement = range.terminalElement();
            int step = range.step();
            int i3 = 0;
            while (true) {
                if (!z ? i3 < range.numRangeElements() : start != terminalElement) {
                    buffer.remove(i);
                    i3++;
                    start += step;
                } else {
                    return;
                }
            }
        }

        public static String stringPrefix(Buffer buffer) {
            return "Buffer";
        }

        public static void trimEnd(Buffer buffer, int i) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            buffer.remove(richInt$.max$extension(buffer.length() - i, 0), i);
        }

        public static void trimStart(Buffer buffer, int i) {
            buffer.remove(0, i);
        }
    }

    void $less$less(Message<A> message);

    This $minus(A a);

    This $minus(A a, A a2, Seq<A> seq);

    This $minus$eq(A a);

    This $minus$minus(GenTraversableOnce<A> genTraversableOnce);

    @Override // scala.collection.generic.Growable
    This $plus$eq(A a);

    This $plus$eq$colon(A a);

    This $plus$plus(GenTraversableOnce<A> genTraversableOnce);

    This $plus$plus$eq$colon(TraversableOnce<A> traversableOnce);

    void append(Seq<A> seq);

    void appendAll(TraversableOnce<A> traversableOnce);

    @Override // scala.collection.SeqLike, scala.collection.GenSeqLike
    A apply(int i);

    @Override // scala.collection.generic.Growable, scala.collection.generic.Clearable
    void clear();

    @Override // scala.collection.mutable.Cloneable
    This clone();

    void insert(int i, Seq<A> seq);

    void insertAll(int i, Traversable<A> traversable);

    @Override // scala.collection.SeqLike, scala.collection.GenSeqLike
    int length();

    void prepend(Seq<A> seq);

    void prependAll(TraversableOnce<A> traversableOnce);

    Seq<A> readOnly();

    A remove(int i);

    void remove(int i, int i2);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    String stringPrefix();

    void trimEnd(int i);

    void trimStart(int i);

    void update(int i, A a);
}
