package scala.collection.immutable;

import com.facebook.internal.ServerProtocol;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.regex.PatternSyntaxException;
import scala.Array$;
import scala.Predef$;
import scala.collection.AbstractIterator;
import scala.collection.IndexedSeqOptimized;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.TraversableOnce;
import scala.collection.immutable.StringLike;
import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.math.Ordered;
import scala.math.ScalaNumber;
import scala.reflect.ClassTag;
import scala.reflect.ClassTag$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.RichChar$;
import scala.runtime.RichInt$;
import scala.util.matching.Regex;
import scala.util.matching.Regex$;
@ScalaSignature(bytes = "\u0006\u0001\tet!B\u0001\u0003\u0011\u0003I\u0011AC*ue&tw\rT5lK*\u00111\u0001B\u0001\nS6lW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001\u0001\"AC\u0006\u000e\u0003\t1Q\u0001\u0004\u0002\t\u00025\u0011!b\u0015;sS:<G*[6f'\tYa\u0002\u0005\u0002\u0010!5\ta!\u0003\u0002\u0012\r\t1\u0011I\\=SK\u001aDQaE\u0006\u0005\u0002Q\ta\u0001P5oSRtD#A\u0005\t\u000fYY!\u0019!C\u0007/\u0005\u0011AJR\u000b\u00021=\t\u0011$H\u0001\u000b\u0011\u0019Y2\u0002)A\u00071\u0005\u0019AJ\u0012\u0011\t\u000fuY!\u0019!C\u0007=\u0005\u0011aIR\u000b\u0002?=\t\u0001%H\u0001\r\u0011\u0019\u00113\u0002)A\u0007?\u0005\u0019aI\u0012\u0011\t\u000f\u0011Z!\u0019!C\u0007K\u0005\u00111IU\u000b\u0002M=\tq%H\u0001\u000e\u0011\u0019I3\u0002)A\u0007M\u0005\u00191I\u0015\u0011\t\u000f-Z!\u0019!C\u0007Y\u0005\u00111+V\u000b\u0002[=\ta&H\u0001\u001b\u0011\u0019\u00014\u0002)A\u0007[\u0005\u00191+\u0016\u0011\u0007\u00131\u0011\u0001\u0013aA\u0001e\t]TCA\u001aA'\u0011\tDg\u000e$\u0011\u0005=)\u0014B\u0001\u001c\u0007\u0005\r\te.\u001f\t\u0005qeZd(D\u0001\u0005\u0013\tQDAA\nJ]\u0012,\u00070\u001a3TKF|\u0005\u000f^5nSj,G\r\u0005\u0002\u0010y%\u0011QH\u0002\u0002\u0005\u0007\"\f'\u000f\u0005\u0002@\u00012\u0001AAB!2\t\u000b\u0007!I\u0001\u0003SKB\u0014\u0018CA\"5!\tyA)\u0003\u0002F\r\t9aj\u001c;iS:<\u0007cA$K\u001b:\u0011q\u0002S\u0005\u0003\u0013\u001a\tq\u0001]1dW\u0006<W-\u0003\u0002L\u0019\n9qJ\u001d3fe\u0016$'BA%\u0007!\tq\u0015K\u0004\u0002\u0010\u001f&\u0011\u0001KB\u0001\u0007!J,G-\u001a4\n\u0005I\u001b&AB*ue&twM\u0003\u0002Q\r!)Q+\rC\u0001-\u00061A%\u001b8ji\u0012\"\u0012a\u0016\t\u0003\u001faK!!\u0017\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u00077F\u0002k\u0011\u0003/\u0002\u00159,wOQ;jY\u0012,'/F\u0001^!\u0011q\u0016m\u000f \u000e\u0003}S!\u0001\u0019\u0003\u0002\u000f5,H/\u00192mK&\u0011!m\u0018\u0002\b\u0005VLG\u000eZ3s\u0011\u0015!\u0017\u0007\"\u0001f\u0003\u0015\t\u0007\u000f\u001d7z)\tYd\rC\u0003hG\u0002\u0007\u0001.A\u0001o!\ty\u0011.\u0003\u0002k\r\t\u0019\u0011J\u001c;\t\u000b1\fD\u0011A7\u0002\r1,gn\u001a;i+\u0005A\u0007\"B82\t\u0003\u0002\u0018\u0001C7l'R\u0014\u0018N\\4\u0016\u00035CQA]\u0019\u0005BM\fQa\u001d7jG\u0016$2A\u0010;w\u0011\u0015)\u0018\u000f1\u0001i\u0003\u00111'o\\7\t\u000b]\f\b\u0019\u00015\u0002\u000bUtG/\u001b7\t\u000be\fD\u0011\u0001>\u0002\r\u0011\"\u0018.\\3t)\ti5\u0010C\u0003hq\u0002\u0007\u0001\u000eC\u0003~c\u0011\u0005c0A\u0004d_6\u0004\u0018M]3\u0015\u0005!|\bBBA\u0001y\u0002\u0007Q*A\u0003pi\",'\u000fC\u0004\u0002\u0006E\"I!a\u0002\u0002\u0017%\u001cH*\u001b8f\u0005J,\u0017m\u001b\u000b\u0005\u0003\u0013\ty\u0001E\u0002\u0010\u0003\u0017I1!!\u0004\u0007\u0005\u001d\u0011un\u001c7fC:Dq!!\u0005\u0002\u0004\u0001\u00071(A\u0001d\u0011\u0019\t)\"\rC\u0001a\u0006a1\u000f\u001e:ja2Kg.Z#oI\"9\u0011\u0011D\u0019\u0005\u0002\u0005m\u0011a\u00057j]\u0016\u001cx+\u001b;i'\u0016\u0004\u0018M]1u_J\u001cXCAA\u000f!\u0011A\u0014qD'\n\u0007\u0005\u0005BA\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u001d\t)#\rC\u0001\u00037\tQ\u0001\\5oKNDq!!\u000b2\t\u0003\tY\"A\u0007mS:,7/\u0013;fe\u0006$xN\u001d\u0015\t\u0003O\ti#a\r\u00028A\u0019q\"a\f\n\u0007\u0005EbA\u0001\u0006eKB\u0014XmY1uK\u0012\f#!!\u000e\u0002)U\u001bX\r\t1mS:,7\u000f\u0019\u0011j]N$X-\u00193/C\t\tI$\u0001\u00043]E\nd\u0006\r\u0005\u0007\u0003{\tD\u0011\u00019\u0002\u0015\r\f\u0007/\u001b;bY&TX\rC\u0004\u0002BE\"\t!a\u0011\u0002\u0017M$(/\u001b9Qe\u00164\u0017\u000e\u001f\u000b\u0005\u0003\u000b\n\u0019\u0006\u0005\u0003\u0002H\u0005ESBAA%\u0015\u0011\tY%!\u0014\u0002\t1\fgn\u001a\u0006\u0003\u0003\u001f\nAA[1wC&\u0019!+!\u0013\t\u000f\u0005U\u0013q\ba\u0001\u001b\u00061\u0001O]3gSbDq!!\u00172\t\u0003\tY&A\u0006tiJL\u0007oU;gM&DH\u0003BA#\u0003;Bq!a\u0018\u0002X\u0001\u0007Q*\u0001\u0004tk\u001a4\u0017\u000e\u001f\u0005\b\u0003G\nD\u0011AA3\u0003M\u0011X\r\u001d7bG\u0016\fE\u000e\u001c'ji\u0016\u0014\u0018\r\u001c7z)\u0015i\u0015qMA6\u0011\u001d\tI'!\u0019A\u00025\u000bq\u0001\\5uKJ\fG\u000eC\u0004\u0002n\u0005\u0005\u0004\u0019A'\u0002\u0017I,\u0007\u000f\\1dK6,g\u000e\u001e\u0005\b\u0003c\nD\u0011AA:\u0003-\u0019HO]5q\u001b\u0006\u0014x-\u001b8\u0015\u00075\u000b)\bC\u0004\u0002x\u0005=\u0004\u0019A\u001e\u0002\u00155\f'oZ5o\u0007\"\f'\u000f\u0003\u0004\u0002rE\"\t\u0001\u001d\u0005\b\u0003{\nD\u0011BA@\u0003\u0019)7oY1qKR\u0019Q*!!\t\u000f\u0005\r\u00151\u0010a\u0001w\u0005\u00111\r\u001b\u0005\b\u0003\u000f\u000bD\u0011AAE\u0003\u0015\u0019\b\u000f\\5u)\u0011\tY)!%\u0011\t=\ti)T\u0005\u0004\u0003\u001f3!!B!se\u0006L\bbBAJ\u0003\u000b\u0003\raO\u0001\ng\u0016\u0004\u0018M]1u_JDq!a\"2\t\u0003\t9\n\u0006\u0003\u0002\f\u0006e\u0005\u0002CAN\u0003+\u0003\r!!(\u0002\u0015M,\u0007/\u0019:bi>\u00148\u000f\u0005\u0003\u0010\u0003\u001b[\u0004FBAK\u0003C\u000b9\fE\u0003\u0010\u0003G\u000b9+C\u0002\u0002&\u001a\u0011a\u0001\u001e5s_^\u001c\b\u0003BAU\u0003gk!!a+\u000b\t\u00055\u0016qV\u0001\u0006e\u0016<W\r\u001f\u0006\u0005\u0003c\u000bi%\u0001\u0003vi&d\u0017\u0002BA[\u0003W\u0013a\u0003U1ui\u0016\u0014hnU=oi\u0006DX\t_2faRLwN\\\u0012\u0003\u0003OCq!a/2\t\u0003\ti,A\u0001s+\t\ty\f\u0005\u0003\u0002B\u0006%WBAAb\u0015\u0011\t)-a2\u0002\u00115\fGo\u00195j]\u001eT1!!-\u0007\u0013\u0011\tY-a1\u0003\u000bI+w-\u001a=\t\u000f\u0005m\u0016\u0007\"\u0001\u0002PR!\u0011qXAi\u0011!\t\u0019.!4A\u0002\u0005U\u0017AC4s_V\u0004h*Y7fgB!q\"a6N\u0013\r\tIN\u0002\u0002\u000byI,\u0007/Z1uK\u0012t\u0004bBAoc\u0011\u0005\u0011q\\\u0001\ni>\u0014un\u001c7fC:,\"!!\u0003\t\u000f\u0005\r\u0018\u0007\"\u0001\u0002f\u00061Ao\u001c\"zi\u0016,\"!a:\u0011\u0007=\tI/C\u0002\u0002l\u001a\u0011AAQ=uK\"9\u0011q^\u0019\u0005\u0002\u0005E\u0018a\u0002;p'\"|'\u000f^\u000b\u0003\u0003g\u00042aDA{\u0013\r\t9P\u0002\u0002\u0006'\"|'\u000f\u001e\u0005\u0007\u0003w\fD\u0011A7\u0002\u000bQ|\u0017J\u001c;\t\u000f\u0005}\u0018\u0007\"\u0001\u0003\u0002\u00051Ao\u001c'p]\u001e,\"Aa\u0001\u0011\u0007=\u0011)!C\u0002\u0003\b\u0019\u0011A\u0001T8oO\"9!1B\u0019\u0005\u0002\t5\u0011a\u0002;p\r2|\u0017\r^\u000b\u0003\u0005\u001f\u00012a\u0004B\t\u0013\r\u0011\u0019B\u0002\u0002\u0006\r2|\u0017\r\u001e\u0005\b\u0005/\tD\u0011\u0001B\r\u0003!!x\u000eR8vE2,WC\u0001B\u000e!\ry!QD\u0005\u0004\u0005?1!A\u0002#pk\ndW\rC\u0004\u0003$E\"IA!\n\u0002\u0019A\f'o]3C_>dW-\u00198\u0015\t\u0005%!q\u0005\u0005\b\u0005S\u0011\t\u00031\u0001N\u0003\u0005\u0019\bb\u0002B\u0017c\u0011\u0005#qF\u0001\bi>\f%O]1z+\u0011\u0011\tDa\u000e\u0015\t\tM\"Q\b\t\u0006\u001f\u00055%Q\u0007\t\u0004\u007f\t]B\u0001\u0003B\u001d\u0005W\u0011\rAa\u000f\u0003\u0003\t\u000b\"a\u000f\u001b\t\u0015\t}\"1FA\u0001\u0002\b\u0011\t%\u0001\u0006fm&$WM\\2fIE\u0002bAa\u0011\u0003J\tURB\u0001B#\u0015\r\u00119EB\u0001\be\u00164G.Z2u\u0013\u0011\u0011YE!\u0012\u0003\u0011\rc\u0017m]:UC\u001eDqAa\u00142\t\u0013\u0011\t&A\u0005v]^\u0014\u0018\r]!sOR\u0019aBa\u0015\t\u000f\tU#Q\na\u0001i\u0005\u0019\u0011M]4\t\u000f\te\u0013\u0007\"\u0001\u0003\\\u00051am\u001c:nCR$2!\u0014B/\u0011!\u0011yFa\u0016A\u0002\t\u0005\u0014\u0001B1sON\u0004BaDAli!9!QM\u0019\u0005\u0002\t\u001d\u0014a\u00034pe6\fG\u000fT8dC2$R!\u0014B5\u0005kB\u0001Ba\u001b\u0003d\u0001\u0007!QN\u0001\u0002YB!!q\u000eB9\u001b\t\ty+\u0003\u0003\u0003t\u0005=&A\u0002'pG\u0006dW\r\u0003\u0005\u0003`\t\r\u0004\u0019\u0001B1!\rQ\u0011G\u0010")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StringLike.class */
public interface StringLike<Repr> extends IndexedSeqOptimized<Object, Repr>, Ordered<String> {

    /* renamed from: scala.collection.immutable.StringLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StringLike$class.class */
    public abstract class Cclass {
        public static void $init$(StringLike stringLike) {
        }

        public static String $times(StringLike stringLike, int i) {
            StringBuilder stringBuilder = new StringBuilder();
            Predef$ predef$ = Predef$.MODULE$;
            Range$ range$ = Range$.MODULE$;
            Range range = new Range(0, i, 1);
            range.scala$collection$immutable$Range$$validateMaxLength();
            boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
            int start = range.start();
            int terminalElement = range.terminalElement();
            int step = range.step();
            int i2 = 0;
            while (true) {
                if (!z ? i2 < range.numRangeElements() : start != terminalElement) {
                    stringBuilder.append(stringLike.toString());
                    i2++;
                    start += step;
                } else {
                    return stringBuilder.toString();
                }
            }
        }

        public static char apply(StringLike stringLike, int i) {
            return stringLike.toString().charAt(i);
        }

        public static String capitalize(StringLike stringLike) {
            String str;
            if (stringLike.toString() == null) {
                str = null;
            } else if (stringLike.toString().length() == 0) {
                str = "";
            } else {
                RichChar$ richChar$ = RichChar$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                if (richChar$.isUpper$extension(stringLike.toString().charAt(0))) {
                    str = stringLike.toString();
                } else {
                    char[] charArray = stringLike.toString().toCharArray();
                    RichChar$ richChar$2 = RichChar$.MODULE$;
                    Predef$ predef$2 = Predef$.MODULE$;
                    charArray[0] = richChar$2.toUpper$extension(charArray[0]);
                    str = new String(charArray);
                }
            }
            return str;
        }

        public static int compare(StringLike stringLike, String str) {
            return stringLike.toString().compareTo(str);
        }

        public static String format(StringLike stringLike, Seq seq) {
            return String.format(stringLike.toString(), (Object[]) ((TraversableOnce) seq.map(new StringLike$$anonfun$format$1(stringLike), Seq$.MODULE$.canBuildFrom())).toArray(ClassTag$.MODULE$.AnyRef()));
        }

        public static String formatLocal(StringLike stringLike, Locale locale, Seq seq) {
            return String.format(locale, stringLike.toString(), (Object[]) ((TraversableOnce) seq.map(new StringLike$$anonfun$formatLocal$1(stringLike), Seq$.MODULE$.canBuildFrom())).toArray(ClassTag$.MODULE$.AnyRef()));
        }

        public static int length(StringLike stringLike) {
            return stringLike.toString().length();
        }

        public static Iterator lines(StringLike stringLike) {
            return stringLike.linesWithSeparators().map(new StringLike$$anonfun$lines$1(stringLike));
        }

        public static Iterator linesIterator(StringLike stringLike) {
            return stringLike.linesWithSeparators().map(new StringLike$$anonfun$linesIterator$1(stringLike));
        }

        public static Iterator linesWithSeparators(StringLike stringLike) {
            return new AbstractIterator<String>(stringLike) { // from class: scala.collection.immutable.StringLike$$anon$1
                private final /* synthetic */ StringLike $outer;
                private final String str;
                private final int len = str().length();
                private int index = 0;

                {
                    Objects.requireNonNull(stringLike);
                    this.$outer = stringLike;
                    this.str = stringLike.toString();
                }

                private int index() {
                    return this.index;
                }

                private void index_$eq(int i) {
                    this.index = i;
                }

                private int len() {
                    return this.len;
                }

                private String str() {
                    return this.str;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return index() < len();
                }

                @Override // scala.collection.Iterator
                public String next() {
                    if (index() < len()) {
                        int index = index();
                        while (index() < len()) {
                            StringLike stringLike2 = this.$outer;
                            if (StringLike.Cclass.scala$collection$immutable$StringLike$$isLineBreak(stringLike2, stringLike2.apply(index()))) {
                                break;
                            }
                            index_$eq(index() + 1);
                        }
                        index_$eq(index() + 1);
                        String str = str();
                        RichInt$ richInt$ = RichInt$.MODULE$;
                        Predef$ predef$ = Predef$.MODULE$;
                        return str.substring(index, richInt$.min$extension(index(), len()));
                    }
                    throw new NoSuchElementException("next on empty iterator");
                }
            };
        }

        public static String mkString(StringLike stringLike) {
            return stringLike.toString();
        }

        private static boolean parseBoolean(StringLike stringLike, String str) {
            boolean z;
            if (str != null) {
                String lowerCase = str.toLowerCase();
                if (ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(lowerCase)) {
                    z = true;
                } else if (!"false".equals(lowerCase)) {
                    throw new IllegalArgumentException(new StringBuilder().append((Object) "For input string: \"").append((Object) str).append((Object) "\"").toString());
                } else {
                    z = false;
                }
                return z;
            }
            throw new IllegalArgumentException("For input string: \"null\"");
        }

        /* renamed from: r */
        public static Regex m141r(StringLike stringLike) {
            return stringLike.mo127r(Nil$.MODULE$);
        }

        /* renamed from: r */
        public static Regex m140r(StringLike stringLike, Seq seq) {
            return new Regex(stringLike.toString(), seq);
        }

        public static String replaceAllLiterally(StringLike stringLike, String str, String str2) {
            return stringLike.toString().replaceAll(Regex$.MODULE$.quote(str), Regex$.MODULE$.quoteReplacement(str2));
        }

        public static boolean scala$collection$immutable$StringLike$$isLineBreak(StringLike stringLike, char c) {
            return c == '\n' || c == '\f';
        }

        public static Object scala$collection$immutable$StringLike$$unwrapArg(StringLike stringLike, Object obj) {
            Object obj2 = obj;
            if (obj instanceof ScalaNumber) {
                obj2 = ((ScalaNumber) obj).underlying();
            }
            return obj2;
        }

        public static Object slice(StringLike stringLike, int i, int i2) {
            Object obj;
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            int max$extension = richInt$.max$extension(i, 0);
            RichInt$ richInt$2 = RichInt$.MODULE$;
            Predef$ predef$2 = Predef$.MODULE$;
            int min$extension = richInt$2.min$extension(i2, stringLike.length());
            if (max$extension >= min$extension) {
                obj = stringLike.newBuilder().result();
            } else {
                Builder<Object, Repr> newBuilder = stringLike.newBuilder();
                Predef$ predef$3 = Predef$.MODULE$;
                obj = ((Builder) newBuilder.$plus$plus$eq(new StringOps(stringLike.toString().substring(max$extension, min$extension)))).result();
            }
            return obj;
        }

        public static String[] split(StringLike stringLike, char c) {
            String[] strArr;
            int i;
            int indexOf;
            int i2;
            String stringLike2 = stringLike.toString();
            int indexOf2 = stringLike2.indexOf(c);
            int i3 = 0;
            if (indexOf2 != -1) {
                ArrayBuilder.ofRef ofref = new ArrayBuilder.ofRef(ClassTag$.MODULE$.apply(String.class));
                do {
                    ofref.$plus$eq((ArrayBuilder.ofRef) stringLike2.substring(i3, indexOf2));
                    i = indexOf2 + 1;
                    indexOf = stringLike2.indexOf(c, i);
                    indexOf2 = indexOf;
                    i3 = i;
                } while (indexOf != -1);
                Predef$ predef$ = Predef$.MODULE$;
                if (i != new StringOps(stringLike2).size()) {
                    Predef$ predef$2 = Predef$.MODULE$;
                    ofref.$plus$eq((ArrayBuilder.ofRef) stringLike2.substring(i, new StringOps(stringLike2).size()));
                } else {
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                }
                String[] strArr2 = (String[]) ofref.result();
                int length = strArr2.length;
                do {
                    i2 = length;
                    if (i2 <= 0) {
                        break;
                    }
                    length = i2 - 1;
                } while (strArr2[length].isEmpty());
                strArr = strArr2;
                if (i2 != strArr2.length) {
                    strArr = new String[i2];
                    Array$.MODULE$.copy(strArr2, 0, strArr, 0, i2);
                }
            } else {
                strArr = new String[]{stringLike2};
            }
            return strArr;
        }

        public static String[] split(StringLike stringLike, char[] cArr) throws PatternSyntaxException {
            return stringLike.toString().split(new StringBuilder().append((Object) ((String) Predef$.MODULE$.charArrayOps(cArr).foldLeft("[", new StringLike$$anonfun$1(stringLike)))).append((Object) "]").toString());
        }

        public static String stripLineEnd(StringLike stringLike) {
            String str;
            int length = stringLike.toString().length();
            if (length == 0) {
                str = stringLike.toString();
            } else {
                int i = length - 1;
                char apply = stringLike.apply(i);
                if (scala$collection$immutable$StringLike$$isLineBreak(stringLike, apply)) {
                    String stringLike2 = stringLike.toString();
                    int i2 = i;
                    if (apply == '\n') {
                        i2 = i;
                        if (length >= 2) {
                            int i3 = length - 2;
                            i2 = i;
                            if (stringLike.apply(i3) == '\r') {
                                i2 = i3;
                            }
                        }
                    }
                    str = stringLike2.substring(0, i2);
                } else {
                    str = stringLike.toString();
                }
            }
            return str;
        }

        public static String stripMargin(StringLike stringLike) {
            return stringLike.stripMargin('|');
        }

        public static String stripMargin(StringLike stringLike, char c) {
            StringBuilder stringBuilder = new StringBuilder();
            stringLike.linesWithSeparators().foreach(new StringLike$$anonfun$stripMargin$1(stringLike, stringBuilder, c));
            return stringBuilder.toString();
        }

        public static String stripPrefix(StringLike stringLike, String str) {
            return stringLike.toString().startsWith(str) ? stringLike.toString().substring(str.length()) : stringLike.toString();
        }

        public static String stripSuffix(StringLike stringLike, String str) {
            return stringLike.toString().endsWith(str) ? stringLike.toString().substring(0, stringLike.toString().length() - str.length()) : stringLike.toString();
        }

        public static Object toArray(StringLike stringLike, ClassTag classTag) {
            return stringLike.toString().toCharArray();
        }

        public static boolean toBoolean(StringLike stringLike) {
            return parseBoolean(stringLike, stringLike.toString());
        }

        public static byte toByte(StringLike stringLike) {
            return Byte.parseByte(stringLike.toString());
        }

        public static double toDouble(StringLike stringLike) {
            return Double.parseDouble(stringLike.toString());
        }

        public static float toFloat(StringLike stringLike) {
            return Float.parseFloat(stringLike.toString());
        }

        public static int toInt(StringLike stringLike) {
            return Integer.parseInt(stringLike.toString());
        }

        public static long toLong(StringLike stringLike) {
            return Long.parseLong(stringLike.toString());
        }

        public static short toShort(StringLike stringLike) {
            return Short.parseShort(stringLike.toString());
        }
    }

    String $times(int i);

    @Override // scala.collection.SeqLike, scala.collection.GenSeqLike
    char apply(int i);

    String capitalize();

    int compare(String str);

    String format(Seq<Object> seq);

    String formatLocal(Locale locale, Seq<Object> seq);

    @Override // scala.collection.SeqLike, scala.collection.GenSeqLike
    int length();

    Iterator<String> lines();

    Iterator<String> linesIterator();

    Iterator<String> linesWithSeparators();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    String mkString();

    @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    Builder<Object, Repr> newBuilder();

    /* renamed from: r */
    Regex mo128r();

    /* renamed from: r */
    Regex mo127r(Seq<String> seq);

    String replaceAllLiterally(String str, String str2);

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    Repr slice(int i, int i2);

    String[] split(char c);

    String[] split(char[] cArr) throws PatternSyntaxException;

    String stripLineEnd();

    String stripMargin();

    String stripMargin(char c);

    String stripPrefix(String str);

    String stripSuffix(String str);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> Object toArray(ClassTag<B> classTag);

    boolean toBoolean();

    byte toByte();

    double toDouble();

    float toFloat();

    int toInt();

    long toLong();

    short toShort();
}
