package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Function2;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Some;
import scala.Tuple2;
import scala.collection.generic.CanBuildFrom;
import scala.collection.mutable.Builder;
import scala.math.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichInt$;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\r5a!C\u0001\u0003!\u0003\r\taBB\u0006\u0005MIe\u000eZ3yK\u0012\u001cV-](qi&l\u0017N_3e\u0015\t\u0019A!\u0001\u0006d_2dWm\u0019;j_:T\u0011!B\u0001\u0006g\u000e\fG.Y\u0002\u0001+\rA1CG\n\u0004\u0001%i\u0001C\u0001\u0006\f\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\r\te.\u001f\t\u0005\u001d=\t\u0012$D\u0001\u0003\u0013\t\u0001\"A\u0001\bJ]\u0012,\u00070\u001a3TKFd\u0015n[3\u0011\u0005I\u0019B\u0002\u0001\u0003\u0007)\u0001!)\u0019A\u000b\u0003\u0003\u0005\u000b\"AF\u0005\u0011\u0005)9\u0012B\u0001\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"A\u0005\u000e\u0005\rm\u0001AQ1\u0001\u0016\u0005\u0011\u0011V\r\u001d:\t\u000bu\u0001A\u0011\u0001\u0010\u0002\r\u0011Jg.\u001b;%)\u0005y\u0002C\u0001\u0006!\u0013\t\tCA\u0001\u0003V]&$\b\"B\u0012\u0001\t\u0003\"\u0013aB5t\u000b6\u0004H/_\u000b\u0002KA\u0011!BJ\u0005\u0003O\u0011\u0011qAQ8pY\u0016\fg\u000eC\u0003*\u0001\u0011\u0005#&A\u0004g_J,\u0017m\u00195\u0016\u0005-\u0012DCA\u0010-\u0011\u0015i\u0003\u00061\u0001/\u0003\u00051\u0007\u0003\u0002\u00060#EJ!\u0001\r\u0003\u0003\u0013\u0019+hn\u0019;j_:\f\u0004C\u0001\n3\t\u0015\u0019\u0004F1\u0001\u0016\u0005\u0005)\u0006\"B\u001b\u0001\t\u00131\u0014\u0001\u00059sK\u001aL\u0007\u0010T3oORD\u0017*\u001c9m)\r9$(\u0010\t\u0003\u0015aJ!!\u000f\u0003\u0003\u0007%sG\u000fC\u0003<i\u0001\u0007A(A\u0001q!\u0011Qq&E\u0013\t\u000by\"\u0004\u0019A\u0013\u0002\u0015\u0015D\b/Z2u)J,X\rC\u0003A\u0001\u0011\u0005\u0013)\u0001\u0004g_J\fG\u000e\u001c\u000b\u0003K\tCQaO A\u0002qBQ\u0001\u0012\u0001\u0005B\u0015\u000ba!\u001a=jgR\u001cHCA\u0013G\u0011\u0015Y4\t1\u0001=\u0011\u0015A\u0005\u0001\"\u0011J\u0003\u00111\u0017N\u001c3\u0015\u0005)k\u0005c\u0001\u0006L#%\u0011A\n\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\u000bm:\u0005\u0019\u0001\u001f\t\u000b=\u0003A\u0011\u0002)\u0002\u000b\u0019|G\u000e\u001a7\u0016\u0005E\u001bF#\u0002*V/f[\u0006C\u0001\nT\t\u0015!fJ1\u0001\u0016\u0005\u0005\u0011\u0005\"\u0002,O\u0001\u00049\u0014!B:uCJ$\b\"\u0002-O\u0001\u00049\u0014aA3oI\")!L\u0014a\u0001%\u0006\t!\u0010C\u0003]\u001d\u0002\u0007Q,\u0001\u0002paB)!B\u0018*\u0012%&\u0011q\f\u0002\u0002\n\rVt7\r^5p]JB#AT1\u0011\u0005\t,W\"A2\u000b\u0005\u0011$\u0011AC1o]>$\u0018\r^5p]&\u0011am\u0019\u0002\bi\u0006LGN]3d\u0011\u0015A\u0007\u0001\"\u0003j\u0003\u00151w\u000e\u001c3s+\tQG\u000eF\u0003l[:|\u0007\u000f\u0005\u0002\u0013Y\u0012)Ak\u001ab\u0001+!)ak\u001aa\u0001o!)\u0001l\u001aa\u0001o!)!l\u001aa\u0001W\")Al\u001aa\u0001cB)!BX\tlW\"\u0012q-\u0019\u0005\u0006i\u0002!\t%^\u0001\tM>dG\rT3giV\u0011a/\u001f\u000b\u0003or$\"\u0001\u001f>\u0011\u0005IIH!\u0002+t\u0005\u0004)\u0002\"\u0002/t\u0001\u0004Y\b#\u0002\u0006_qFA\b\"\u0002.t\u0001\u0004A\b\"\u0002@\u0001\t\u0003z\u0018!\u00034pY\u0012\u0014\u0016n\u001a5u+\u0011\t\t!a\u0002\u0015\t\u0005\r\u0011Q\u0002\u000b\u0005\u0003\u000b\tI\u0001E\u0002\u0013\u0003\u000f!Q\u0001V?C\u0002UAa\u0001X?A\u0002\u0005-\u0001c\u0002\u0006_#\u0005\u0015\u0011Q\u0001\u0005\u00075v\u0004\r!!\u0002\t\u000f\u0005E\u0001\u0001\"\u0011\u0002\u0014\u0005Q!/\u001a3vG\u0016dUM\u001a;\u0016\t\u0005U\u0011\u0011\u0004\u000b\u0005\u0003/\ti\u0002E\u0002\u0013\u00033!q\u0001VA\b\u0005\u0004\tY\"\u0005\u0002\u0012\u0013!9A,a\u0004A\u0002\u0005}\u0001c\u0002\u0006_\u0003/\t\u0012q\u0003\u0005\b\u0003G\u0001A\u0011IA\u0013\u0003-\u0011X\rZ;dKJKw\r\u001b;\u0016\t\u0005\u001d\u00121\u0006\u000b\u0005\u0003S\ti\u0003E\u0002\u0013\u0003W!q\u0001VA\u0011\u0005\u0004\tY\u0002C\u0004]\u0003C\u0001\r!a\f\u0011\u000f)q\u0016#!\u000b\u0002*!9\u00111\u0007\u0001\u0005B\u0005U\u0012a\u0001>jaVA\u0011qGA-\u0003?\ni\u0004\u0006\u0003\u0002:\u0005\u0005D\u0003BA\u001e\u0003\u0003\u00022AEA\u001f\t\u001d\ty$!\rC\u0002U\u0011A\u0001\u00165bi\"A\u00111IA\u0019\u0001\b\t)%\u0001\u0002cMBI\u0011qIA'3\u0005E\u00131H\u0007\u0003\u0003\u0013R1!a\u0013\u0003\u0003\u001d9WM\\3sS\u000eLA!a\u0014\u0002J\ta1)\u00198Ck&dGM\u0012:p[B9!\"a\u0015\u0002X\u0005u\u0013bAA+\t\t1A+\u001e9mKJ\u00022AEA-\t!\tY&!\rC\u0002\u0005m!AA!2!\r\u0011\u0012q\f\u0003\u0007)\u0006E\"\u0019A\u000b\t\u0011\u0005\r\u0014\u0011\u0007a\u0001\u0003K\nA\u0001\u001e5biB)a\"a\u001a\u0002^%\u0019\u0011\u0011\u000e\u0002\u0003\u0017\u001d+g.\u0013;fe\u0006\u0014G.\u001a\u0005\b\u0003[\u0002A\u0011IA8\u00031Q\u0018\u000e],ji\"Le\u000eZ3y+\u0019\t\t(a \u0002vQ!\u00111OA<!\r\u0011\u0012Q\u000f\u0003\b\u0003\u007f\tYG1\u0001\u0016\u0011!\t\u0019%a\u001bA\u0004\u0005e\u0004#CA$\u0003\u001bJ\u00121PA:!\u0019Q\u00111KA?oA\u0019!#a \u0005\u0011\u0005m\u00131\u000eb\u0001\u00037Aq!a!\u0001\t\u0003\n))A\u0003tY&\u001cW\rF\u0003\u001a\u0003\u000f\u000bY\tC\u0004\u0002\n\u0006\u0005\u0005\u0019A\u001c\u0002\t\u0019\u0014x.\u001c\u0005\b\u0003\u001b\u000b\t\t1\u00018\u0003\u0015)h\u000e^5m\u0011\u001d\t\t\n\u0001C!\u0003'\u000bA\u0001[3bIV\t\u0011\u0003C\u0004\u0002\u0018\u0002!\t%!'\u0002\tQ\f\u0017\u000e\\\u000b\u00023!9\u0011Q\u0014\u0001\u0005B\u0005M\u0015\u0001\u00027bgRDq!!)\u0001\t\u0003\nI*\u0001\u0003j]&$\bbBAS\u0001\u0011\u0005\u0013qU\u0001\u0005i\u0006\\W\rF\u0002\u001a\u0003SCq!a+\u0002$\u0002\u0007q'A\u0001o\u0011\u001d\ty\u000b\u0001C!\u0003c\u000bA\u0001\u001a:paR\u0019\u0011$a-\t\u000f\u0005-\u0016Q\u0016a\u0001o!9\u0011q\u0017\u0001\u0005B\u0005e\u0016!\u0003;bW\u0016\u0014\u0016n\u001a5u)\rI\u00121\u0018\u0005\b\u0003W\u000b)\f1\u00018\u0011\u001d\ty\f\u0001C!\u0003\u0003\f\u0011\u0002\u001a:paJKw\r\u001b;\u0015\u0007e\t\u0019\rC\u0004\u0002,\u0006u\u0006\u0019A\u001c\t\u000f\u0005\u001d\u0007\u0001\"\u0011\u0002J\u000691\u000f\u001d7ji\u0006#H\u0003BAf\u0003\u001b\u0004RACA*3eAq!a+\u0002F\u0002\u0007q\u0007C\u0004\u0002R\u0002!\t%a5\u0002\u0013Q\f7.Z,iS2,GcA\r\u0002V\"11(a4A\u0002qBq!!7\u0001\t\u0003\nY.A\u0005ee>\u0004x\u000b[5mKR\u0019\u0011$!8\t\rm\n9\u000e1\u0001=\u0011\u001d\t\t\u000f\u0001C!\u0003G\fAa\u001d9b]R!\u00111ZAs\u0011\u0019Y\u0014q\u001ca\u0001y!9\u0011\u0011\u001e\u0001\u0005B\u0005-\u0018\u0001D:b[\u0016,E.Z7f]R\u001cX\u0003BAw\u0003k$2!JAx\u0011!\t\u0019'a:A\u0002\u0005E\b#\u0002\b\u0002h\u0005M\bc\u0001\n\u0002v\u00129A+a:C\u0002\u0005m\u0001bBA}\u0001\u0011\u0005\u00131`\u0001\fG>\u0004\u0018\u0010V8BeJ\f\u00170\u0006\u0003\u0002~\n-AcB\u0010\u0002��\n5!q\u0002\u0005\t\u0005\u0003\t9\u00101\u0001\u0003\u0004\u0005\u0011\u0001p\u001d\t\u0006\u0015\t\u0015!\u0011B\u0005\u0004\u0005\u000f!!!B!se\u0006L\bc\u0001\n\u0003\f\u00119A+a>C\u0002\u0005m\u0001B\u0002,\u0002x\u0002\u0007q\u0007C\u0004\u0003\u0012\u0005]\b\u0019A\u001c\u0002\u00071,g\u000eC\u0004\u0003\u0016\u0001!\tEa\u0006\u0002\u001b1,gn\u001a;i\u0007>l\u0007/\u0019:f)\r9$\u0011\u0004\u0005\b\u0005#\u0011\u0019\u00021\u00018\u0011\u001d\u0011i\u0002\u0001C!\u0005?\tQb]3h[\u0016tG\u000fT3oORDG#B\u001c\u0003\"\t\r\u0002BB\u001e\u0003\u001c\u0001\u0007A\bC\u0004\u0002\n\nm\u0001\u0019A\u001c\t\u000f\t\u001d\u0002\u0001\"\u0003\u0003*\u0005Ia.Z4MK:<G\u000f\u001b\u000b\u0004o\t-\u0002bBAV\u0005K\u0001\ra\u000e\u0005\b\u0005_\u0001A\u0011\tB\u0019\u0003)Ig\u000eZ3y/\",'/\u001a\u000b\u0006o\tM\"Q\u0007\u0005\u0007w\t5\u0002\u0019\u0001\u001f\t\u000f\u0005%%Q\u0006a\u0001o!9!\u0011\b\u0001\u0005B\tm\u0012A\u00047bgRLe\u000eZ3y/\",'/\u001a\u000b\u0006o\tu\"q\b\u0005\u0007w\t]\u0002\u0019\u0001\u001f\t\ra\u00139\u00041\u00018\u0011\u001d\u0011\u0019\u0005\u0001C!\u00033\u000bqA]3wKJ\u001cX\rC\u0004\u0003H\u0001!\tE!\u0013\u0002\u001fI,g/\u001a:tK&#XM]1u_J,\"Aa\u0013\u0011\t9\u0011i%E\u0005\u0004\u0005\u001f\u0012!\u0001C%uKJ\fGo\u001c:\t\u000f\tM\u0003\u0001\"\u0011\u0003V\u0005Q1\u000f^1siN<\u0016\u000e\u001e5\u0016\t\t]#1\r\u000b\u0006K\te#Q\r\u0005\t\u0003G\u0012\t\u00061\u0001\u0003\\A)aB!\u0018\u0003b%\u0019!q\f\u0002\u0003\r\u001d+gnU3r!\r\u0011\"1\r\u0003\u0007)\nE#\u0019A\u000b\t\u000f\t\u001d$\u0011\u000ba\u0001o\u00051qN\u001a4tKRDqAa\u001b\u0001\t\u0003\u0012i'\u0001\u0005f]\u0012\u001cx+\u001b;i+\u0011\u0011yGa\u001e\u0015\u0007\u0015\u0012\t\b\u0003\u0005\u0002d\t%\u0004\u0019\u0001B:!\u0015q!Q\fB;!\r\u0011\"q\u000f\u0003\u0007)\n%$\u0019A\u000b\t\u001d\tm\u0004\u0001%A\u0002\u0002\u0003%IA! \u0003\n\u0006\u00012/\u001e9fe\u0012\u0012X\rZ;dK2+g\r^\u000b\u0005\u0005\u007f\u0012\u0019\t\u0006\u0003\u0003\u0002\n\u0015\u0005c\u0001\n\u0003\u0004\u00129AK!\u001fC\u0002\u0005m\u0001b\u0002/\u0003z\u0001\u0007!q\u0011\t\b\u0015y\u0013\t)\u0005BA\u0013\u0011\t\tBa#\n\u0007\t5%AA\bUe\u00064XM]:bE2,wJ\\2f\u00119\u0011\t\n\u0001I\u0001\u0004\u0003\u0005I\u0011\u0002BJ\u0005?\u000b\u0011c];qKJ$#/\u001a3vG\u0016\u0014\u0016n\u001a5u+\u0011\u0011)J!'\u0015\t\t]%1\u0014\t\u0004%\teEa\u0002+\u0003\u0010\n\u0007\u00111\u0004\u0005\b9\n=\u0005\u0019\u0001BO!\u001dQa,\u0005BL\u0005/KA!a\t\u0003\"&\u0019!1\u0015\u0002\u0003\u0019%#XM]1cY\u0016d\u0015n[3\t\u001d\t\u001d\u0006\u0001%A\u0002\u0002\u0003%IA!+\u0003F\u0006I1/\u001e9fe\u0012R\u0018\u000e]\u000b\t\u0005W\u0013YLa0\u00032R!!Q\u0016Ba)\u0011\u0011yKa-\u0011\u0007I\u0011\t\fB\u0004\u0002@\t\u0015&\u0019A\u000b\t\u0011\u0005\r#Q\u0015a\u0002\u0005k\u0003\u0012\"a\u0012\u0002Ne\u00119La,\u0011\u000f)\t\u0019F!/\u0003>B\u0019!Ca/\u0005\u0011\u0005m#Q\u0015b\u0001\u00037\u00012A\u0005B`\t\u0019!&Q\u0015b\u0001+!A\u00111\rBS\u0001\u0004\u0011\u0019\rE\u0003\u000f\u0003O\u0012i,\u0003\u0003\u00024\t\u0005\u0006B\u0004Be\u0001A\u0005\u0019\u0011!A\u0005\n\u0005M%1Z\u0001\u000bgV\u0004XM\u001d\u0013iK\u0006$\u0017\u0002BAI\u0005CCaBa4\u0001!\u0003\r\t\u0011!C\u0005\u00033\u0013\t.\u0001\u0006tkB,'\u000f\n;bS2LA!a&\u0003T&\u0019!Q\u001b\u0002\u0003\u001fQ\u0013\u0018M^3sg\u0006\u0014G.\u001a'jW\u0016DaB!7\u0001!\u0003\r\t\u0011!C\u0005\u0003'\u0013Y.\u0001\u0006tkB,'\u000f\n7bgRLA!!(\u0003T\"q!q\u001c\u0001\u0011\u0002\u0007\u0005\t\u0011\"\u0003\u0002\u001a\n\u0005\u0018AC:va\u0016\u0014H%\u001b8ji&!\u0011\u0011\u0015Bj\u00119\u0011)\u000f\u0001I\u0001\u0004\u0003\u0005I\u0011\u0002Bt\u0005g\f!c];qKJ$3/Y7f\u000b2,W.\u001a8ugV!!\u0011\u001eBy)\r)#1\u001e\u0005\t\u0003G\u0012\u0019\u000f1\u0001\u0003nB)a\"a\u001a\u0003pB\u0019!C!=\u0005\u000fQ\u0013\u0019O1\u0001\u0002\u001c%!\u0011\u0011\u001eBQ\u00119\u00119\u0010\u0001I\u0001\u0004\u0003\u0005I\u0011\u0002B}\u0007\u000b\tab];qKJ$SM\u001c3t/&$\b.\u0006\u0003\u0003|\u000e\rAcA\u0013\u0003~\"A\u00111\rB{\u0001\u0004\u0011y\u0010E\u0003\u000f\u0005;\u001a\t\u0001E\u0002\u0013\u0007\u0007!a\u0001\u0016B{\u0005\u0004)\u0012\u0002\u0002B6\u0007\u000fI1a!\u0003\u0003\u0005\u001d\u0019V-\u001d'jW\u0016\u0004BA\u0004\u0001\u00123\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/IndexedSeqOptimized.class */
public interface IndexedSeqOptimized<A, Repr> extends IndexedSeqLike<A, Repr> {

    /* renamed from: scala.collection.IndexedSeqOptimized$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/IndexedSeqOptimized$class.class */
    public abstract class Cclass {
        public static void $init$(IndexedSeqOptimized indexedSeqOptimized) {
        }

        public static void copyToArray(IndexedSeqOptimized indexedSeqOptimized, Object obj, int i, int i2) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            RichInt$ richInt$2 = RichInt$.MODULE$;
            Predef$ predef$2 = Predef$.MODULE$;
            int min$extension = richInt$.min$extension(richInt$2.min$extension(indexedSeqOptimized.length(), i2), ScalaRunTime$.MODULE$.array_length(obj) - i);
            int i3 = 0;
            while (i3 < min$extension) {
                ScalaRunTime$.MODULE$.array_update(obj, i, indexedSeqOptimized.apply(i3));
                i3++;
                i++;
            }
        }

        public static Object drop(IndexedSeqOptimized indexedSeqOptimized, int i) {
            return indexedSeqOptimized.slice(i, indexedSeqOptimized.length());
        }

        public static Object dropRight(IndexedSeqOptimized indexedSeqOptimized, int i) {
            return indexedSeqOptimized.slice(0, indexedSeqOptimized.length() - package$.MODULE$.max(i, 0));
        }

        public static Object dropWhile(IndexedSeqOptimized indexedSeqOptimized, Function1 function1) {
            return indexedSeqOptimized.drop(indexedSeqOptimized.prefixLength(function1));
        }

        public static boolean endsWith(IndexedSeqOptimized indexedSeqOptimized, GenSeq genSeq) {
            boolean z;
            if (genSeq instanceof IndexedSeq) {
                IndexedSeq indexedSeq = (IndexedSeq) genSeq;
                int length = indexedSeqOptimized.length() - 1;
                int length2 = indexedSeq.length() - 1;
                if (length2 <= length) {
                    while (true) {
                        z = true;
                        if (length2 < 0) {
                            break;
                        }
                        A apply = indexedSeqOptimized.apply(length);
                        A apply2 = indexedSeq.apply(length2);
                        if (!(apply == apply2 ? true : apply == null ? false : apply instanceof Number ? BoxesRunTime.equalsNumObject((Number) apply, apply2) : apply instanceof Character ? BoxesRunTime.equalsCharObject((Character) apply, apply2) : apply.equals(apply2))) {
                            return false;
                        }
                        length--;
                        length2--;
                    }
                } else {
                    z = false;
                }
            } else {
                z = indexedSeqOptimized.scala$collection$IndexedSeqOptimized$$super$endsWith(genSeq);
            }
            return z;
        }

        public static boolean exists(IndexedSeqOptimized indexedSeqOptimized, Function1 function1) {
            boolean z = false;
            if (prefixLengthImpl(indexedSeqOptimized, function1, false) != indexedSeqOptimized.length()) {
                z = true;
            }
            return z;
        }

        public static Option find(IndexedSeqOptimized indexedSeqOptimized, Function1 function1) {
            int prefixLength = indexedSeqOptimized.prefixLength(new IndexedSeqOptimized$$anonfun$1(indexedSeqOptimized, function1));
            return prefixLength < indexedSeqOptimized.length() ? new Some(indexedSeqOptimized.apply(prefixLength)) : None$.MODULE$;
        }

        public static Object foldLeft(IndexedSeqOptimized indexedSeqOptimized, Object obj, Function2 function2) {
            return foldl(indexedSeqOptimized, 0, indexedSeqOptimized.length(), obj, function2);
        }

        public static Object foldRight(IndexedSeqOptimized indexedSeqOptimized, Object obj, Function2 function2) {
            return foldr(indexedSeqOptimized, 0, indexedSeqOptimized.length(), obj, function2);
        }

        private static Object foldl(IndexedSeqOptimized indexedSeqOptimized, int i, int i2, Object obj, Function2 function2) {
            while (i != i2) {
                obj = function2.apply(obj, indexedSeqOptimized.apply(i));
                i++;
            }
            return obj;
        }

        private static Object foldr(IndexedSeqOptimized indexedSeqOptimized, int i, int i2, Object obj, Function2 function2) {
            while (i != i2) {
                i2--;
                obj = function2.apply(indexedSeqOptimized.apply(i2), obj);
            }
            return obj;
        }

        public static boolean forall(IndexedSeqOptimized indexedSeqOptimized, Function1 function1) {
            boolean z = true;
            if (prefixLengthImpl(indexedSeqOptimized, function1, true) != indexedSeqOptimized.length()) {
                z = false;
            }
            return z;
        }

        public static void foreach(IndexedSeqOptimized indexedSeqOptimized, Function1 function1) {
            int length = indexedSeqOptimized.length();
            for (int i = 0; i < length; i++) {
                function1.apply(indexedSeqOptimized.apply(i));
            }
        }

        public static Object head(IndexedSeqOptimized indexedSeqOptimized) {
            return indexedSeqOptimized.isEmpty() ? indexedSeqOptimized.scala$collection$IndexedSeqOptimized$$super$head() : indexedSeqOptimized.apply(0);
        }

        public static int indexWhere(IndexedSeqOptimized indexedSeqOptimized, Function1 function1, int i) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            int max$extension = richInt$.max$extension(i, 0);
            return negLength(indexedSeqOptimized, max$extension + indexedSeqOptimized.segmentLength(new IndexedSeqOptimized$$anonfun$indexWhere$1(indexedSeqOptimized, function1), max$extension));
        }

        public static Object init(IndexedSeqOptimized indexedSeqOptimized) {
            return indexedSeqOptimized.length() > 0 ? indexedSeqOptimized.slice(0, indexedSeqOptimized.length() - 1) : indexedSeqOptimized.scala$collection$IndexedSeqOptimized$$super$init();
        }

        public static boolean isEmpty(IndexedSeqOptimized indexedSeqOptimized) {
            return indexedSeqOptimized.length() == 0;
        }

        public static Object last(IndexedSeqOptimized indexedSeqOptimized) {
            return indexedSeqOptimized.length() > 0 ? indexedSeqOptimized.apply(indexedSeqOptimized.length() - 1) : indexedSeqOptimized.scala$collection$IndexedSeqOptimized$$super$last();
        }

        public static int lastIndexWhere(IndexedSeqOptimized indexedSeqOptimized, Function1 function1, int i) {
            int min = package$.MODULE$.min(i, indexedSeqOptimized.length() - 1);
            while (min >= 0 && !BoxesRunTime.unboxToBoolean(function1.apply(indexedSeqOptimized.apply(min)))) {
                min--;
            }
            return min;
        }

        public static int lengthCompare(IndexedSeqOptimized indexedSeqOptimized, int i) {
            return indexedSeqOptimized.length() - i;
        }

        private static int negLength(IndexedSeqOptimized indexedSeqOptimized, int i) {
            int i2 = i;
            if (i >= indexedSeqOptimized.length()) {
                i2 = -1;
            }
            return i2;
        }

        private static int prefixLengthImpl(IndexedSeqOptimized indexedSeqOptimized, Function1 function1, boolean z) {
            int i = 0;
            while (i < indexedSeqOptimized.length() && BoxesRunTime.unboxToBoolean(function1.apply(indexedSeqOptimized.apply(i))) == z) {
                i++;
            }
            return i;
        }

        public static Object reduceLeft(IndexedSeqOptimized indexedSeqOptimized, Function2 function2) {
            return indexedSeqOptimized.length() > 0 ? foldl(indexedSeqOptimized, 1, indexedSeqOptimized.length(), indexedSeqOptimized.apply(0), function2) : indexedSeqOptimized.scala$collection$IndexedSeqOptimized$$super$reduceLeft(function2);
        }

        public static Object reduceRight(IndexedSeqOptimized indexedSeqOptimized, Function2 function2) {
            return indexedSeqOptimized.length() > 0 ? foldr(indexedSeqOptimized, 0, indexedSeqOptimized.length() - 1, indexedSeqOptimized.apply(indexedSeqOptimized.length() - 1), function2) : indexedSeqOptimized.scala$collection$IndexedSeqOptimized$$super$reduceRight(function2);
        }

        public static Object reverse(IndexedSeqOptimized indexedSeqOptimized) {
            Builder<A, Repr> newBuilder = indexedSeqOptimized.newBuilder();
            newBuilder.sizeHint(indexedSeqOptimized.length());
            int length = indexedSeqOptimized.length();
            while (length > 0) {
                length--;
                newBuilder.$plus$eq((Builder<A, Repr>) indexedSeqOptimized.apply(length));
            }
            return newBuilder.result();
        }

        public static Iterator reverseIterator(IndexedSeqOptimized indexedSeqOptimized) {
            return new AbstractIterator<A>(indexedSeqOptimized) { // from class: scala.collection.IndexedSeqOptimized$$anon$1
                private final /* synthetic */ IndexedSeqOptimized $outer;

                /* renamed from: i */
                private int f1511i;

                {
                    Objects.requireNonNull(indexedSeqOptimized);
                    this.$outer = indexedSeqOptimized;
                    this.f1511i = indexedSeqOptimized.length();
                }

                /* renamed from: i */
                private int m196i() {
                    return this.f1511i;
                }

                private void i_$eq(int i) {
                    this.f1511i = i;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return m196i() > 0;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v2, types: [A] */
                @Override // scala.collection.Iterator
                public A next() {
                    Object obj;
                    if (m196i() > 0) {
                        i_$eq(m196i() - 1);
                        obj = this.$outer.apply(m196i());
                    } else {
                        obj = Iterator$.MODULE$.empty().next();
                    }
                    return obj;
                }
            };
        }

        public static boolean sameElements(IndexedSeqOptimized indexedSeqOptimized, GenIterable genIterable) {
            boolean z;
            if (genIterable instanceof IndexedSeq) {
                IndexedSeq indexedSeq = (IndexedSeq) genIterable;
                int length = indexedSeqOptimized.length();
                if (length == indexedSeq.length()) {
                    int i = 0;
                    while (i < length) {
                        A apply = indexedSeqOptimized.apply(i);
                        A apply2 = indexedSeq.apply(i);
                        if (!(apply == apply2 ? true : apply == null ? false : apply instanceof Number ? BoxesRunTime.equalsNumObject((Number) apply, apply2) : apply instanceof Character ? BoxesRunTime.equalsCharObject((Character) apply, apply2) : apply.equals(apply2))) {
                            break;
                        }
                        i++;
                    }
                    if (i == length) {
                        z = true;
                    }
                }
                z = false;
            } else {
                z = indexedSeqOptimized.scala$collection$IndexedSeqOptimized$$super$sameElements(genIterable);
            }
            return z;
        }

        public static int segmentLength(IndexedSeqOptimized indexedSeqOptimized, Function1 function1, int i) {
            int length = indexedSeqOptimized.length();
            int i2 = i;
            while (i2 < length && BoxesRunTime.unboxToBoolean(function1.apply(indexedSeqOptimized.apply(i2)))) {
                i2++;
            }
            return i2 - i;
        }

        public static Object slice(IndexedSeqOptimized indexedSeqOptimized, int i, int i2) {
            int max = package$.MODULE$.max(i, 0);
            int min = package$.MODULE$.min(package$.MODULE$.max(i2, 0), indexedSeqOptimized.length());
            int max2 = package$.MODULE$.max(min - max, 0);
            Builder<A, Repr> newBuilder = indexedSeqOptimized.newBuilder();
            newBuilder.sizeHint(max2);
            while (max < min) {
                newBuilder.$plus$eq((Builder<A, Repr>) indexedSeqOptimized.apply(max));
                max++;
            }
            return newBuilder.result();
        }

        public static Tuple2 span(IndexedSeqOptimized indexedSeqOptimized, Function1 function1) {
            return indexedSeqOptimized.splitAt(indexedSeqOptimized.prefixLength(function1));
        }

        public static Tuple2 splitAt(IndexedSeqOptimized indexedSeqOptimized, int i) {
            return new Tuple2(indexedSeqOptimized.take(i), indexedSeqOptimized.drop(i));
        }

        public static boolean startsWith(IndexedSeqOptimized indexedSeqOptimized, GenSeq genSeq, int i) {
            boolean z;
            if (genSeq instanceof IndexedSeq) {
                IndexedSeq indexedSeq = (IndexedSeq) genSeq;
                int length = indexedSeqOptimized.length();
                int length2 = indexedSeq.length();
                int i2 = i;
                int i3 = 0;
                while (i2 < length && i3 < length2) {
                    A apply = indexedSeqOptimized.apply(i2);
                    A apply2 = indexedSeq.apply(i3);
                    if (!(apply == apply2 ? true : apply == null ? false : apply instanceof Number ? BoxesRunTime.equalsNumObject((Number) apply, apply2) : apply instanceof Character ? BoxesRunTime.equalsCharObject((Character) apply, apply2) : apply.equals(apply2))) {
                        break;
                    }
                    i2++;
                    i3++;
                }
                z = false;
                if (i3 == length2) {
                    z = true;
                }
            } else {
                int length3 = indexedSeqOptimized.length();
                Iterator<A> it = genSeq.iterator();
                while (i < length3 && it.hasNext()) {
                    A apply3 = indexedSeqOptimized.apply(i);
                    A next = it.next();
                    if (!(apply3 == next ? true : apply3 == null ? false : apply3 instanceof Number ? BoxesRunTime.equalsNumObject((Number) apply3, next) : apply3 instanceof Character ? BoxesRunTime.equalsCharObject((Character) apply3, next) : apply3.equals(next))) {
                        return false;
                    }
                    i++;
                }
                z = !it.hasNext();
            }
            return z;
        }

        public static Object tail(IndexedSeqOptimized indexedSeqOptimized) {
            return indexedSeqOptimized.isEmpty() ? indexedSeqOptimized.scala$collection$IndexedSeqOptimized$$super$tail() : indexedSeqOptimized.slice(1, indexedSeqOptimized.length());
        }

        public static Object take(IndexedSeqOptimized indexedSeqOptimized, int i) {
            return indexedSeqOptimized.slice(0, i);
        }

        public static Object takeRight(IndexedSeqOptimized indexedSeqOptimized, int i) {
            return indexedSeqOptimized.slice(indexedSeqOptimized.length() - package$.MODULE$.max(i, 0), indexedSeqOptimized.length());
        }

        public static Object takeWhile(IndexedSeqOptimized indexedSeqOptimized, Function1 function1) {
            return indexedSeqOptimized.take(indexedSeqOptimized.prefixLength(function1));
        }

        public static Object zip(IndexedSeqOptimized indexedSeqOptimized, GenIterable genIterable, CanBuildFrom canBuildFrom) {
            Object obj;
            if (genIterable instanceof IndexedSeq) {
                IndexedSeq indexedSeq = (IndexedSeq) genIterable;
                Builder apply = canBuildFrom.apply(indexedSeqOptimized.repr());
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                int min$extension = richInt$.min$extension(indexedSeqOptimized.length(), indexedSeq.length());
                apply.sizeHint(min$extension);
                for (int i = 0; i < min$extension; i++) {
                    apply.$plus$eq((Builder) new Tuple2(indexedSeqOptimized.apply(i), indexedSeq.apply(i)));
                }
                obj = apply.result();
            } else {
                obj = indexedSeqOptimized.scala$collection$IndexedSeqOptimized$$super$zip(genIterable, canBuildFrom);
            }
            return obj;
        }

        public static Object zipWithIndex(IndexedSeqOptimized indexedSeqOptimized, CanBuildFrom canBuildFrom) {
            Builder apply = canBuildFrom.apply(indexedSeqOptimized.repr());
            int length = indexedSeqOptimized.length();
            apply.sizeHint(length);
            for (int i = 0; i < length; i++) {
                apply.$plus$eq((Builder) new Tuple2(indexedSeqOptimized.apply(i), BoxesRunTime.boxToInteger(i)));
            }
            return apply.result();
        }
    }

    @Override // scala.collection.IterableLike
    <B> void copyToArray(Object obj, int i, int i2);

    @Override // scala.collection.IterableLike
    Repr drop(int i);

    @Override // scala.collection.IterableLike
    Repr dropRight(int i);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    Repr dropWhile(Function1<A, Object> function1);

    @Override // scala.collection.SeqLike
    <B> boolean endsWith(GenSeq<B> genSeq);

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
    <U> void foreach(Function1<A, U> function1);

    @Override // scala.collection.IterableLike
    A head();

    @Override // scala.collection.SeqLike
    int indexWhere(Function1<A, Object> function1, int i);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    Repr init();

    @Override // scala.collection.SeqLike, scala.collection.IterableLike
    boolean isEmpty();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    A last();

    @Override // scala.collection.SeqLike
    int lastIndexWhere(Function1<A, Object> function1, int i);

    @Override // scala.collection.SeqLike
    int lengthCompare(int i);

    @Override // scala.collection.TraversableOnce
    <B> B reduceLeft(Function2<B, A, B> function2);

    @Override // scala.collection.IterableLike
    <B> B reduceRight(Function2<A, B, B> function2);

    @Override // scala.collection.SeqLike
    Repr reverse();

    @Override // scala.collection.SeqLike
    Iterator<A> reverseIterator();

    @Override // scala.collection.IterableLike
    <B> boolean sameElements(GenIterable<B> genIterable);

    /* synthetic */ boolean scala$collection$IndexedSeqOptimized$$super$endsWith(GenSeq genSeq);

    /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$head();

    /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$init();

    /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$last();

    /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$reduceLeft(Function2 function2);

    /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$reduceRight(Function2 function2);

    /* synthetic */ boolean scala$collection$IndexedSeqOptimized$$super$sameElements(GenIterable genIterable);

    /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$tail();

    /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$zip(GenIterable genIterable, CanBuildFrom canBuildFrom);

    @Override // scala.collection.SeqLike
    int segmentLength(Function1<A, Object> function1, int i);

    @Override // scala.collection.IterableLike
    Repr slice(int i, int i2);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    Tuple2<Repr, Repr> span(Function1<A, Object> function1);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    Tuple2<Repr, Repr> splitAt(int i);

    @Override // scala.collection.SeqLike
    <B> boolean startsWith(GenSeq<B> genSeq, int i);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    Repr tail();

    @Override // scala.collection.IterableLike
    Repr take(int i);

    @Override // scala.collection.IterableLike
    Repr takeRight(int i);

    @Override // scala.collection.IterableLike
    Repr takeWhile(Function1<A, Object> function1);

    @Override // scala.collection.IterableLike
    <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<Repr, Tuple2<A1, B>, That> canBuildFrom);

    @Override // scala.collection.IterableLike
    <A1, That> That zipWithIndex(CanBuildFrom<Repr, Tuple2<A1, Object>, That> canBuildFrom);
}
