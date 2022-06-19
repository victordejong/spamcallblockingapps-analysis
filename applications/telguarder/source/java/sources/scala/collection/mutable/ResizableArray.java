package scala.collection.mutable;

import scala.Array$;
import scala.Function1;
import scala.Predef$;
import scala.collection.generic.GenericCompanion;
import scala.compat.Platform$;
import scala.math.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichInt$;
import scala.runtime.ScalaRunTime$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u001ddaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u000f%\u0016\u001c\u0018N_1cY\u0016\f%O]1z\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005))2#\u0002\u0001\f\u001fy)\u0003C\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\b\u0007\u0005\u0019\te.\u001f*fMB\u0019\u0001#E\n\u000e\u0003\tI!A\u0005\u0002\u0003\u0015%sG-\u001a=fIN+\u0017\u000f\u0005\u0002\u0015+1\u0001A!\u0002\f\u0001\u0005\u00049\"!A!\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0005?\t\u001aB%D\u0001!\u0015\t\tC!A\u0004hK:,'/[2\n\u0005\r\u0002#AG$f]\u0016\u0014\u0018n\u0019+sCZ,'o]1cY\u0016$V-\u001c9mCR,\u0007C\u0001\t\u0001!\u0011\u0001be\u0005\u0015\n\u0005\u001d\u0012!aE%oI\u0016DX\rZ*fc>\u0003H/[7ju\u0016$\u0007c\u0001\t\u0001'!)!\u0006\u0001C\u0001W\u00051A%\u001b8ji\u0012\"\u0012\u0001\f\t\u0003\u00195J!A\f\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0006a\u0001!\t%M\u0001\nG>l\u0007/\u00198j_:,\u0012A\r\t\u0004?M\"\u0013B\u0001\u001b!\u0005A9UM\\3sS\u000e\u001cu.\u001c9b]&|g\u000eC\u00037\u0001\u0011Eq'A\u0006j]&$\u0018.\u00197TSj,W#\u0001\u001d\u0011\u00051I\u0014B\u0001\u001e\u0007\u0005\rIe\u000e\u001e\u0005\by\u0001\u0001\r\u0011\"\u0005>\u0003\u0015\t'O]1z+\u0005q\u0004c\u0001\u0007@\u0017%\u0011\u0001I\u0002\u0002\u0006\u0003J\u0014\u0018-\u001f\u0005\b\u0005\u0002\u0001\r\u0011\"\u0005D\u0003%\t'O]1z?\u0012*\u0017\u000f\u0006\u0002-\t\"9Q)QA\u0001\u0002\u0004q\u0014a\u0001=%c!1q\t\u0001Q!\ny\na!\u0019:sCf\u0004\u0003bB%\u0001\u0001\u0004%\tbN\u0001\u0006g&TX\r\r\u0005\b\u0017\u0002\u0001\r\u0011\"\u0005M\u0003%\u0019\u0018N_31?\u0012*\u0017\u000f\u0006\u0002-\u001b\"9QISA\u0001\u0002\u0004A\u0004BB(\u0001A\u0003&\u0001(\u0001\u0004tSj,\u0007\u0007\t\u0005\u0006#\u0002!\taN\u0001\u0007Y\u0016tw\r\u001e5\t\u000bM\u0003A\u0011\u0001+\u0002\u000b\u0005\u0004\b\u000f\\=\u0015\u0005M)\u0006\"\u0002,S\u0001\u0004A\u0014aA5eq\")\u0001\f\u0001C\u00013\u00061Q\u000f\u001d3bi\u0016$2\u0001\f.\\\u0011\u00151v\u000b1\u00019\u0011\u0015av\u000b1\u0001\u0014\u0003\u0011)G.Z7\t\u000by\u0003A\u0011I0\u0002\u000f\u0019|'/Z1dQV\u0011\u0001m\u001a\u000b\u0003Y\u0005DQAY/A\u0002\r\f\u0011A\u001a\t\u0005\u0019\u0011\u001cb-\u0003\u0002f\r\tIa)\u001e8di&|g.\r\t\u0003)\u001d$Q\u0001[/C\u0002]\u0011\u0011!\u0016\u0005\u0006U\u0002!\te[\u0001\fG>\u0004\u0018\u0010V8BeJ\f\u00170\u0006\u0002mcR!A&\u001c;w\u0011\u0015q\u0017\u000e1\u0001p\u0003\tA8\u000fE\u0002\r\u007fA\u0004\"\u0001F9\u0005\u000bIL'\u0019A:\u0003\u0003\t\u000b\"aE\u000e\t\u000bUL\u0007\u0019\u0001\u001d\u0002\u000bM$\u0018M\u001d;\t\u000b]L\u0007\u0019\u0001\u001d\u0002\u00071,g\u000eC\u0003z\u0001\u0011\u0005!0\u0001\u0007sK\u0012,8-\u001a+p'&TX\r\u0006\u0002-w\")A\u0010\u001fa\u0001q\u0005\u00111O\u001f\u0005\u0006}\u0002!\tb`\u0001\u000bK:\u001cXO]3TSj,Gc\u0001\u0017\u0002\u0002!1\u00111A?A\u0002a\n\u0011A\u001c\u0005\b\u0003\u000f\u0001A\u0011CA\u0005\u0003\u0011\u0019x/\u00199\u0015\u000b1\nY!a\u0004\t\u000f\u00055\u0011Q\u0001a\u0001q\u0005\t\u0011\rC\u0004\u0002\u0012\u0005\u0015\u0001\u0019\u0001\u001d\u0002\u0003\tDq!!\u0006\u0001\t#\t9\"\u0001\u0003d_BLHc\u0002\u0017\u0002\u001a\u0005u\u0011q\u0004\u0005\b\u00037\t\u0019\u00021\u00019\u0003\u0005i\u0007bBA\u0002\u0003'\u0001\r\u0001\u000f\u0005\u0007o\u0006M\u0001\u0019\u0001\u001d\b\u000f\u0005\r\"\u0001#\u0001\u0002&\u0005q!+Z:ju\u0006\u0014G.Z!se\u0006L\bc\u0001\t\u0002(\u00191\u0011A\u0001E\u0001\u0003S\u0019B!a\n\u0002,A!q$!\f%\u0013\r\ty\u0003\t\u0002\u000b'\u0016\fh)Y2u_JL\b\u0002CA\u001a\u0003O!\t!!\u000e\u0002\rqJg.\u001b;?)\t\t)\u0003\u0003\u0005\u0002:\u0005\u001dB1AA\u001e\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\u0011\ti$a\u0014\u0016\u0005\u0005}\u0002#C\u0010\u0002B\u0005\u0015\u0013QJA)\u0013\r\t\u0019\u0005\t\u0002\r\u0007\u0006t')^5mI\u001a\u0013x.\u001c\t\u0005\u0003\u000f\nI%\u0004\u0002\u0002(%\u0019\u00111J\u001a\u0003\t\r{G\u000e\u001c\t\u0004)\u0005=CA\u0002\f\u00028\t\u0007q\u0003\u0005\u0003\u0011\u0001\u00055\u0003\u0002CA+\u0003O!\t!a\u0016\u0002\u00159,wOQ;jY\u0012,'/\u0006\u0003\u0002Z\u0005\rTCAA.!\u001d\u0001\u0012QLA1\u0003KJ1!a\u0018\u0003\u0005\u001d\u0011U/\u001b7eKJ\u00042\u0001FA2\t\u00191\u00121\u000bb\u0001/A!\u0001\u0003AA1\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ResizableArray.class */
public interface ResizableArray<A> extends IndexedSeq<A>, IndexedSeqOptimized<A, ResizableArray<A>> {

    /* renamed from: scala.collection.mutable.ResizableArray$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ResizableArray$class.class */
    public abstract class Cclass {
        public static void $init$(ResizableArray resizableArray) {
            resizableArray.array_$eq(new Object[package$.MODULE$.max(resizableArray.initialSize(), 1)]);
            resizableArray.size0_$eq(0);
        }

        public static Object apply(ResizableArray resizableArray, int i) {
            if (i < resizableArray.size0()) {
                return resizableArray.array()[i];
            }
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }

        public static GenericCompanion companion(ResizableArray resizableArray) {
            return ResizableArray$.MODULE$;
        }

        public static void copy(ResizableArray resizableArray, int i, int i2, int i3) {
            Platform$ platform$ = Platform$.MODULE$;
            System.arraycopy(resizableArray.array(), i, resizableArray.array(), i2, i3);
        }

        public static void copyToArray(ResizableArray resizableArray, Object obj, int i, int i2) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            RichInt$ richInt$2 = RichInt$.MODULE$;
            Predef$ predef$2 = Predef$.MODULE$;
            Array$.MODULE$.copy(resizableArray.array(), 0, obj, i, richInt$.min$extension(richInt$2.min$extension(i2, ScalaRunTime$.MODULE$.array_length(obj) - i), resizableArray.length()));
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [long] */
        /* JADX WARN: Type inference failed for: r0v9, types: [long] */
        public static void ensureSize(ResizableArray resizableArray, int i) {
            char length = resizableArray.array().length;
            long j = i;
            if (j > length) {
                do {
                    length *= 2;
                } while (j > length);
                char c = length;
                if (length > 2147483647L) {
                    c = 65535;
                }
                Object[] objArr = new Object[c];
                Platform$ platform$ = Platform$.MODULE$;
                System.arraycopy(resizableArray.array(), 0, objArr, 0, resizableArray.size0());
                resizableArray.array_$eq(objArr);
            }
        }

        public static void foreach(ResizableArray resizableArray, Function1 function1) {
            int size = resizableArray.size();
            for (int i = 0; i < size; i++) {
                function1.apply(resizableArray.array()[i]);
            }
        }

        public static int initialSize(ResizableArray resizableArray) {
            return 16;
        }

        public static int length(ResizableArray resizableArray) {
            return resizableArray.size0();
        }

        public static void reduceToSize(ResizableArray resizableArray, int i) {
            Predef$.MODULE$.require(i <= resizableArray.size0());
            while (resizableArray.size0() > i) {
                resizableArray.size0_$eq(resizableArray.size0() - 1);
                resizableArray.array()[resizableArray.size0()] = null;
            }
        }

        public static void swap(ResizableArray resizableArray, int i, int i2) {
            Object obj = resizableArray.array()[i];
            resizableArray.array()[i] = resizableArray.array()[i2];
            resizableArray.array()[i2] = obj;
        }

        public static void update(ResizableArray resizableArray, int i, Object obj) {
            if (i < resizableArray.size0()) {
                resizableArray.array()[i] = obj;
                return;
            }
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }
    }

    @Override // scala.collection.GenSeqLike
    A apply(int i);

    Object[] array();

    @TraitSetter
    void array_$eq(Object[] objArr);

    @Override // scala.collection.mutable.IndexedSeq, scala.collection.mutable.Seq, scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<ResizableArray> companion();

    void copy(int i, int i2, int i3);

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    <B> void copyToArray(Object obj, int i, int i2);

    void ensureSize(int i);

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    <U> void foreach(Function1<A, U> function1);

    int initialSize();

    @Override // scala.collection.GenSeqLike
    int length();

    void reduceToSize(int i);

    int size0();

    @TraitSetter
    void size0_$eq(int i);

    void swap(int i, int i2);

    @Override // scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    void update(int i, A a);
}
