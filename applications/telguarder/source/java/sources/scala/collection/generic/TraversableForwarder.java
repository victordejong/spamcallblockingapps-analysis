package scala.collection.generic;

import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.collection.Iterable;
import scala.collection.Seq;
import scala.collection.Traversable;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.StringBuilder;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\rUaaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u0015)J\fg/\u001a:tC\ndWMR8so\u0006\u0014H-\u001a:\u000b\u0005\r!\u0011aB4f]\u0016\u0014\u0018n\u0019\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0003\u0015U\u00192\u0001A\u0006\u0010!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\t\u0004!E\u0019R\"\u0001\u0003\n\u0005I!!a\u0003+sCZ,'o]1cY\u0016\u0004\"\u0001F\u000b\r\u0001\u00111a\u0003\u0001CC\u0002]\u0011\u0011!Q\t\u00031m\u0001\"\u0001D\r\n\u0005i1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019qI!!\b\u0004\u0003\u0007\u0005s\u0017\u0010C\u0003 \u0001\u0011\u0005\u0001%\u0001\u0004%S:LG\u000f\n\u000b\u0002CA\u0011ABI\u0005\u0003G\u0019\u0011A!\u00168ji\")Q\u0005\u0001D\tM\u0005QQO\u001c3fe2L\u0018N\\4\u0016\u0003=AQ\u0001\u000b\u0001\u0005B%\nqAZ8sK\u0006\u001c\u0007.\u0006\u0002+cQ\u0011\u0011e\u000b\u0005\u0006Y\u001d\u0002\r!L\u0001\u0002MB!ABL\n1\u0013\tycAA\u0005Gk:\u001cG/[8ocA\u0011A#\r\u0003\u0006e\u001d\u0012\ra\u0006\u0002\u0002\u0005\")A\u0007\u0001C!k\u00059\u0011n]#naRLX#\u0001\u001c\u0011\u000519\u0014B\u0001\u001d\u0007\u0005\u001d\u0011un\u001c7fC:DQA\u000f\u0001\u0005BU\n\u0001B\\8o\u000b6\u0004H/\u001f\u0005\u0006y\u0001!\t%P\u0001\u0005g&TX-F\u0001?!\taq(\u0003\u0002A\r\t\u0019\u0011J\u001c;\t\u000b\t\u0003A\u0011I\u001b\u0002\u001f!\f7\u000fR3gS:LG/Z*ju\u0016DQ\u0001\u0012\u0001\u0005B\u0015\u000baAZ8sC2dGC\u0001\u001cG\u0011\u001595\t1\u0001I\u0003\u0005\u0001\b\u0003\u0002\u0007/'YBQA\u0013\u0001\u0005B-\u000ba!\u001a=jgR\u001cHC\u0001\u001cM\u0011\u00159\u0015\n1\u0001I\u0011\u0015q\u0005\u0001\"\u0011P\u0003\u0015\u0019w.\u001e8u)\tq\u0004\u000bC\u0003H\u001b\u0002\u0007\u0001\nC\u0003S\u0001\u0011\u00053+\u0001\u0003gS:$GC\u0001+X!\raQkE\u0005\u0003-\u001a\u0011aa\u00149uS>t\u0007\"B$R\u0001\u0004A\u0005\"B-\u0001\t\u0003R\u0016\u0001\u00034pY\u0012dUM\u001a;\u0016\u0005msFC\u0001/e)\tiv\f\u0005\u0002\u0015=\u0012)!\u0007\u0017b\u0001/!)\u0001\r\u0017a\u0001C\u0006\u0011q\u000e\u001d\t\u0006\u0019\tl6#X\u0005\u0003G\u001a\u0011\u0011BR;oGRLwN\u001c\u001a\t\u000b\u0015D\u0006\u0019A/\u0002\u0003iDQa\u001a\u0001\u0005B!\f!\u0002\n3jm\u0012\u001aw\u000e\\8o+\tIG\u000e\u0006\u0002k_R\u00111.\u001c\t\u0003)1$QA\r4C\u0002]AQ\u0001\u00194A\u00029\u0004R\u0001\u00042l'-DQ!\u001a4A\u0002-DQ!\u001d\u0001\u0005BI\f\u0011BZ8mIJKw\r\u001b;\u0016\u0005M4HC\u0001;z)\t)x\u000f\u0005\u0002\u0015m\u0012)!\u0007\u001db\u0001/!)\u0001\r\u001da\u0001qB)ABY\nvk\")Q\r\u001da\u0001k\")1\u0010\u0001C!y\u0006iAeY8m_:$#m\u001d7bg\",2!`A\u0001)\rq\u0018q\u0001\u000b\u0004\u007f\u0006\r\u0001c\u0001\u000b\u0002\u0002\u0011)!G\u001fb\u0001/!1\u0001M\u001fa\u0001\u0003\u000b\u0001R\u0001\u00042\u0014\u007f~DQ!\u001a>A\u0002}Dq!a\u0003\u0001\t\u0003\ni!\u0001\u0006sK\u0012,8-\u001a'fMR,B!a\u0004\u0002\u0014Q!\u0011\u0011CA\f!\r!\u00121\u0003\u0003\be\u0005%!\u0019AA\u000b#\t\u00192\u0004C\u0004a\u0003\u0013\u0001\r!!\u0007\u0011\u000f1\u0011\u0017\u0011C\n\u0002\u0012!9\u0011Q\u0004\u0001\u0005B\u0005}\u0011\u0001\u0005:fIV\u001cW\rT3gi>\u0003H/[8o+\u0011\t\t#a\n\u0015\t\u0005\r\u0012\u0011\u0006\t\u0005\u0019U\u000b)\u0003E\u0002\u0015\u0003O!qAMA\u000e\u0005\u0004\t)\u0002C\u0004a\u00037\u0001\r!a\u000b\u0011\u000f1\u0011\u0017QE\n\u0002&!9\u0011q\u0006\u0001\u0005B\u0005E\u0012a\u0003:fIV\u001cWMU5hQR,B!a\r\u00028Q!\u0011QGA\u001d!\r!\u0012q\u0007\u0003\be\u00055\"\u0019AA\u000b\u0011\u001d\u0001\u0017Q\u0006a\u0001\u0003w\u0001r\u0001\u00042\u0014\u0003k\t)\u0004C\u0004\u0002@\u0001!\t%!\u0011\u0002#I,G-^2f%&<\u0007\u000e^(qi&|g.\u0006\u0003\u0002D\u0005%C\u0003BA#\u0003\u0017\u0002B\u0001D+\u0002HA\u0019A#!\u0013\u0005\u000fI\niD1\u0001\u0002\u0016!9\u0001-!\u0010A\u0002\u00055\u0003c\u0002\u0007c'\u0005\u001d\u0013q\t\u0005\b\u0003#\u0002A\u0011IA*\u0003\r\u0019X/\\\u000b\u0005\u0003+\nI\u0006\u0006\u0003\u0002X\u0005m\u0003c\u0001\u000b\u0002Z\u00119!'a\u0014C\u0002\u0005U\u0001\u0002CA/\u0003\u001f\u0002\u001d!a\u0018\u0002\u00079,X\u000e\u0005\u0004\u0002b\u0005\u001d\u0014q\u000b\b\u0004\u0019\u0005\r\u0014bAA3\r\u00059\u0001/Y2lC\u001e,\u0017\u0002BA5\u0003W\u0012qAT;nKJL7MC\u0002\u0002f\u0019Aq!a\u001c\u0001\t\u0003\n\t(A\u0004qe>$Wo\u0019;\u0016\t\u0005M\u0014q\u000f\u000b\u0005\u0003k\nI\bE\u0002\u0015\u0003o\"qAMA7\u0005\u0004\t)\u0002\u0003\u0005\u0002^\u00055\u00049AA>!\u0019\t\t'a\u001a\u0002v!9\u0011q\u0010\u0001\u0005B\u0005\u0005\u0015aA7j]V!\u00111QAI)\r\u0019\u0012Q\u0011\u0005\t\u0003\u000f\u000bi\bq\u0001\u0002\n\u0006\u00191-\u001c9\u0011\r\u0005\u0005\u00141RAH\u0013\u0011\ti)a\u001b\u0003\u0011=\u0013H-\u001a:j]\u001e\u00042\u0001FAI\t\u001d\u0011\u0014Q\u0010b\u0001\u0003+Aq!!&\u0001\t\u0003\n9*A\u0002nCb,B!!'\u0002\"R\u00191#a'\t\u0011\u0005\u001d\u00151\u0013a\u0002\u0003;\u0003b!!\u0019\u0002\f\u0006}\u0005c\u0001\u000b\u0002\"\u00129!'a%C\u0002\u0005U\u0001bBAS\u0001\u0011\u0005\u0013qU\u0001\u0005Q\u0016\fG-F\u0001\u0014\u0011\u001d\tY\u000b\u0001C!\u0003[\u000b!\u0002[3bI>\u0003H/[8o+\u0005!\u0006bBAY\u0001\u0011\u0005\u0013qU\u0001\u0005Y\u0006\u001cH\u000fC\u0004\u00026\u0002!\t%!,\u0002\u00151\f7\u000f^(qi&|g\u000eC\u0004\u0002:\u0002!\t%a/\u0002\u0019\r|\u0007/\u001f+p\u0005V4g-\u001a:\u0016\t\u0005u\u0016\u0011\u001b\u000b\u0004C\u0005}\u0006\u0002CAa\u0003o\u0003\r!a1\u0002\t\u0011,7\u000f\u001e\t\u0007\u0003\u000b\fY-a4\u000e\u0005\u0005\u001d'bAAe\t\u00059Q.\u001e;bE2,\u0017\u0002BAg\u0003\u000f\u0014aAQ;gM\u0016\u0014\bc\u0001\u000b\u0002R\u00129!'a.C\u0002\u0005U\u0001bBAk\u0001\u0011\u0005\u0013q[\u0001\fG>\u0004\u0018\u0010V8BeJ\f\u00170\u0006\u0003\u0002Z\u0006\u001dHcB\u0011\u0002\\\u0006%\u0018Q\u001e\u0005\t\u0003;\f\u0019\u000e1\u0001\u0002`\u0006\u0011\u0001p\u001d\t\u0006\u0019\u0005\u0005\u0018Q]\u0005\u0004\u0003G4!!B!se\u0006L\bc\u0001\u000b\u0002h\u00129!'a5C\u0002\u0005U\u0001bBAv\u0003'\u0004\rAP\u0001\u0006gR\f'\u000f\u001e\u0005\b\u0003_\f\u0019\u000e1\u0001?\u0003\raWM\u001c\u0005\b\u0003+\u0004A\u0011IAz+\u0011\t)0!@\u0015\u000b\u0005\n90a@\t\u0011\u0005u\u0017\u0011\u001fa\u0001\u0003s\u0004R\u0001DAq\u0003w\u00042\u0001FA\u007f\t\u001d\u0011\u0014\u0011\u001fb\u0001\u0003+Aq!a;\u0002r\u0002\u0007a\bC\u0004\u0002V\u0002!\tEa\u0001\u0016\t\t\u0015!Q\u0002\u000b\u0004C\t\u001d\u0001\u0002CAo\u0005\u0003\u0001\rA!\u0003\u0011\u000b1\t\tOa\u0003\u0011\u0007Q\u0011i\u0001B\u00043\u0005\u0003\u0011\r!!\u0006\t\u000f\tE\u0001\u0001\"\u0011\u0003\u0014\u00059Ao\\!se\u0006LX\u0003\u0002B\u000b\u00057!BAa\u0006\u0003\u001eA)A\"!9\u0003\u001aA\u0019ACa\u0007\u0005\u000fI\u0012yA1\u0001\u0002\u0016!Q!q\u0004B\b\u0003\u0003\u0005\u001dA!\t\u0002\u0015\u00154\u0018\u000eZ3oG\u0016$\u0013\u0007\u0005\u0004\u0003$\t%\"\u0011D\u0007\u0003\u0005KQ1Aa\n\u0007\u0003\u001d\u0011XM\u001a7fGRLAAa\u000b\u0003&\tA1\t\\1tgR\u000bw\rC\u0004\u00030\u0001!\tE!\r\u0002\rQ|G*[:u+\t\u0011\u0019\u0004E\u0003\u00036\tm2#\u0004\u0002\u00038)\u0019!\u0011\b\u0003\u0002\u0013%lW.\u001e;bE2,\u0017\u0002\u0002B\u001f\u0005o\u0011A\u0001T5ti\"9!\u0011\t\u0001\u0005B\t\r\u0013A\u0003;p\u0013R,'/\u00192mKV\u0011!Q\t\t\u0005!\t\u001d3#C\u0002\u0003J\u0011\u0011\u0001\"\u0013;fe\u0006\u0014G.\u001a\u0005\b\u0005\u001b\u0002A\u0011\tB(\u0003\u0015!xnU3r+\t\u0011\t\u0006\u0005\u0003\u0011\u0005'\u001a\u0012b\u0001B+\t\t\u00191+Z9\t\u000f\te\u0003\u0001\"\u0011\u0003\\\u0005aAo\\%oI\u0016DX\rZ*fcV\u0011!Q\f\t\u0006\u0005k\u0011yfE\u0005\u0005\u0005C\u00129D\u0001\u0006J]\u0012,\u00070\u001a3TKFDqA!\u001a\u0001\t\u0003\u00129'\u0001\u0005u_\n+hMZ3s+\u0011\u0011IGa\u001c\u0016\u0005\t-\u0004CBAc\u0003\u0017\u0014i\u0007E\u0002\u0015\u0005_\"qA\rB2\u0005\u0004\t)\u0002C\u0004\u0003t\u0001!\tE!\u001e\u0002\u0011Q|7\u000b\u001e:fC6,\"Aa\u001e\u0011\u000b\tU\"\u0011P\n\n\t\tm$q\u0007\u0002\u0007'R\u0014X-Y7\t\u000f\t}\u0004\u0001\"\u0011\u0003\u0002\u0006)Ao\\*fiV!!1\u0011BG+\t\u0011)\t\u0005\u0004\u00036\t\u001d%1R\u0005\u0005\u0005\u0013\u00139DA\u0002TKR\u00042\u0001\u0006BG\t\u001d\u0011$Q\u0010b\u0001\u0003+AqA!%\u0001\t\u0003\u0012\u0019*A\u0003u_6\u000b\u0007/\u0006\u0004\u0003\u0016\n}%Q\u0015\u000b\u0005\u0005/\u0013I\u000b\u0005\u0005\u00036\te%Q\u0014BR\u0013\u0011\u0011YJa\u000e\u0003\u00075\u000b\u0007\u000fE\u0002\u0015\u0005?#qA!)\u0003\u0010\n\u0007qCA\u0001U!\r!\"Q\u0015\u0003\b\u0005O\u0013yI1\u0001\u0018\u0005\u0005)\u0006\u0002\u0003BV\u0005\u001f\u0003\u001dA!,\u0002\u0005\u00154\bc\u0002BX\u0005k\u001b\"1\u0018\b\u0004\u0019\tE\u0016b\u0001BZ\r\u00051\u0001K]3eK\u001aLAAa.\u0003:\n\u0001B\u0005\\3tg\u0012\u001aw\u000e\\8oI1,7o\u001d\u0006\u0004\u0005g3\u0001c\u0002\u0007\u0003>\nu%1U\u0005\u0004\u0005\u007f3!A\u0002+va2,'\u0007C\u0004\u0003D\u0002!\tE!2\u0002\u00115\\7\u000b\u001e:j]\u001e$\u0002Ba2\u0003N\n='1\u001b\t\u0005\u0005_\u0013I-\u0003\u0003\u0003L\ne&AB*ue&tw\r\u0003\u0005\u0002l\n\u0005\u0007\u0019\u0001Bd\u0011!\u0011\tN!1A\u0002\t\u001d\u0017aA:fa\"A!Q\u001bBa\u0001\u0004\u00119-A\u0002f]\u0012DqAa1\u0001\t\u0003\u0012I\u000e\u0006\u0003\u0003H\nm\u0007\u0002\u0003Bi\u0005/\u0004\rAa2\t\u000f\t\r\u0007\u0001\"\u0011\u0003`V\u0011!q\u0019\u0005\b\u0005G\u0004A\u0011\tBs\u0003%\tG\rZ*ue&tw\r\u0006\u0006\u0003h\n5(\u0011\u001fBz\u0005k\u0004B!!2\u0003j&!!1^Ad\u00055\u0019FO]5oO\n+\u0018\u000e\u001c3fe\"A!q\u001eBq\u0001\u0004\u00119/A\u0001c\u0011!\tYO!9A\u0002\t\u001d\u0007\u0002\u0003Bi\u0005C\u0004\rAa2\t\u0011\tU'\u0011\u001da\u0001\u0005\u000fDqAa9\u0001\t\u0003\u0012I\u0010\u0006\u0004\u0003h\nm(Q \u0005\t\u0005_\u00149\u00101\u0001\u0003h\"A!\u0011\u001bB|\u0001\u0004\u00119\rC\u0004\u0003d\u0002!\te!\u0001\u0015\t\t\u001d81\u0001\u0005\t\u0005_\u0014y\u00101\u0001\u0003h\":\u0001aa\u0002\u0004\u000e\rE\u0001c\u0001\u0007\u0004\n%\u001911\u0002\u0004\u0003\u0015\u0011,\u0007O]3dCR,G-\t\u0002\u0004\u0010\u0005yfi\u001c:xCJ$\u0017N\\4!SN\u0004\u0013N\u001c5fe\u0016tG\u000f\\=!k:\u0014X\r\\5bE2,\u0007e]5oG\u0016\u0004\u0013\u000e\u001e\u0011jg\u0002rw\u000e\u001e\u0011bkR|W.\u0019;fI\u0002\ng\u000e\u001a\u0011oK^\u0004S.\u001a;i_\u0012\u001c\beY1oA\t,\u0007EZ8sO>$H/\u001a8/C\t\u0019\u0019\"\u0001\u00043]E\nd\u0006\r")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/TraversableForwarder.class */
public interface TraversableForwarder<A> extends Traversable<A> {

    /* renamed from: scala.collection.generic.TraversableForwarder$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/TraversableForwarder$class.class */
    public abstract class Cclass {
        public static Object $colon$bslash(TraversableForwarder traversableForwarder, Object obj, Function2 function2) {
            return traversableForwarder.underlying().$colon$bslash(obj, function2);
        }

        public static Object $div$colon(TraversableForwarder traversableForwarder, Object obj, Function2 function2) {
            return traversableForwarder.underlying().$div$colon(obj, function2);
        }

        public static void $init$(TraversableForwarder traversableForwarder) {
        }

        public static StringBuilder addString(TraversableForwarder traversableForwarder, StringBuilder stringBuilder) {
            return traversableForwarder.underlying().addString(stringBuilder);
        }

        public static StringBuilder addString(TraversableForwarder traversableForwarder, StringBuilder stringBuilder, String str) {
            return traversableForwarder.underlying().addString(stringBuilder, str);
        }

        public static StringBuilder addString(TraversableForwarder traversableForwarder, StringBuilder stringBuilder, String str, String str2, String str3) {
            return traversableForwarder.underlying().addString(stringBuilder, str, str2, str3);
        }

        public static void copyToArray(TraversableForwarder traversableForwarder, Object obj) {
            traversableForwarder.underlying().copyToArray(obj);
        }

        public static void copyToArray(TraversableForwarder traversableForwarder, Object obj, int i) {
            traversableForwarder.underlying().copyToArray(obj, i);
        }

        public static void copyToArray(TraversableForwarder traversableForwarder, Object obj, int i, int i2) {
            traversableForwarder.underlying().copyToArray(obj, i, i2);
        }

        public static void copyToBuffer(TraversableForwarder traversableForwarder, Buffer buffer) {
            traversableForwarder.underlying().copyToBuffer(buffer);
        }

        public static int count(TraversableForwarder traversableForwarder, Function1 function1) {
            return traversableForwarder.underlying().count(function1);
        }

        public static boolean exists(TraversableForwarder traversableForwarder, Function1 function1) {
            return traversableForwarder.underlying().exists(function1);
        }

        public static Option find(TraversableForwarder traversableForwarder, Function1 function1) {
            return traversableForwarder.underlying().find(function1);
        }

        public static Object foldLeft(TraversableForwarder traversableForwarder, Object obj, Function2 function2) {
            return traversableForwarder.underlying().foldLeft(obj, function2);
        }

        public static Object foldRight(TraversableForwarder traversableForwarder, Object obj, Function2 function2) {
            return traversableForwarder.underlying().foldRight(obj, function2);
        }

        public static boolean forall(TraversableForwarder traversableForwarder, Function1 function1) {
            return traversableForwarder.underlying().forall(function1);
        }

        public static void foreach(TraversableForwarder traversableForwarder, Function1 function1) {
            traversableForwarder.underlying().foreach(function1);
        }

        public static boolean hasDefiniteSize(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().hasDefiniteSize();
        }

        public static Object head(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().head();
        }

        public static Option headOption(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().headOption();
        }

        public static boolean isEmpty(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().isEmpty();
        }

        public static Object last(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().last();
        }

        public static Option lastOption(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().lastOption();
        }

        public static Object max(TraversableForwarder traversableForwarder, Ordering ordering) {
            return traversableForwarder.underlying().max(ordering);
        }

        public static Object min(TraversableForwarder traversableForwarder, Ordering ordering) {
            return traversableForwarder.underlying().min(ordering);
        }

        public static String mkString(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().mkString();
        }

        public static String mkString(TraversableForwarder traversableForwarder, String str) {
            return traversableForwarder.underlying().mkString(str);
        }

        public static String mkString(TraversableForwarder traversableForwarder, String str, String str2, String str3) {
            return traversableForwarder.underlying().mkString(str, str2, str3);
        }

        public static boolean nonEmpty(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().nonEmpty();
        }

        public static Object product(TraversableForwarder traversableForwarder, Numeric numeric) {
            return traversableForwarder.underlying().product(numeric);
        }

        public static Object reduceLeft(TraversableForwarder traversableForwarder, Function2 function2) {
            return traversableForwarder.underlying().reduceLeft(function2);
        }

        public static Option reduceLeftOption(TraversableForwarder traversableForwarder, Function2 function2) {
            return traversableForwarder.underlying().reduceLeftOption(function2);
        }

        public static Object reduceRight(TraversableForwarder traversableForwarder, Function2 function2) {
            return traversableForwarder.underlying().reduceRight(function2);
        }

        public static Option reduceRightOption(TraversableForwarder traversableForwarder, Function2 function2) {
            return traversableForwarder.underlying().reduceRightOption(function2);
        }

        public static int size(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().size();
        }

        public static Object sum(TraversableForwarder traversableForwarder, Numeric numeric) {
            return traversableForwarder.underlying().sum(numeric);
        }

        public static Object toArray(TraversableForwarder traversableForwarder, ClassTag classTag) {
            return traversableForwarder.underlying().toArray(classTag);
        }

        public static Buffer toBuffer(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().toBuffer();
        }

        public static IndexedSeq toIndexedSeq(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().toIndexedSeq();
        }

        public static Iterable toIterable(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().toIterable();
        }

        public static List toList(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().toList();
        }

        public static Map toMap(TraversableForwarder traversableForwarder, Predef$$less$colon$less predef$$less$colon$less) {
            return traversableForwarder.underlying().toMap(predef$$less$colon$less);
        }

        public static Seq toSeq(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().toSeq();
        }

        public static Set toSet(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().toSet();
        }

        public static Stream toStream(TraversableForwarder traversableForwarder) {
            return traversableForwarder.underlying().toStream();
        }
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> B $colon$bslash(B b, Function2<A, B, B> function2);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> B $div$colon(B b, Function2<B, A, B> function2);

    @Override // scala.collection.TraversableOnce
    StringBuilder addString(StringBuilder stringBuilder);

    @Override // scala.collection.TraversableOnce
    StringBuilder addString(StringBuilder stringBuilder, String str);

    @Override // scala.collection.TraversableOnce
    StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> void copyToArray(Object obj);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> void copyToArray(Object obj, int i);

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    <B> void copyToArray(Object obj, int i, int i2);

    @Override // scala.collection.TraversableOnce
    <B> void copyToBuffer(Buffer<B> buffer);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    int count(Function1<A, Object> function1);

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    boolean exists(Function1<A, Object> function1);

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    Option<A> find(Function1<A, Object> function1);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> B foldLeft(B b, Function2<B, A, B> function2);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    <B> B foldRight(B b, Function2<A, B, B> function2);

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    boolean forall(Function1<A, Object> function1);

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    <B> void foreach(Function1<A, B> function1);

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    boolean hasDefiniteSize();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    A head();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    Option<A> headOption();

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    boolean isEmpty();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    A last();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    Option<A> lastOption();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> A max(Ordering<B> ordering);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> A min(Ordering<B> ordering);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    String mkString();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    String mkString(String str);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    String mkString(String str, String str2, String str3);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    boolean nonEmpty();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> B product(Numeric<B> numeric);

    @Override // scala.collection.TraversableOnce
    <B> B reduceLeft(Function2<B, A, B> function2);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> Option<B> reduceLeftOption(Function2<B, A, B> function2);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    <B> B reduceRight(Function2<A, B, B> function2);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> Option<B> reduceRightOption(Function2<A, B, B> function2);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    int size();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> B sum(Numeric<B> numeric);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> Object toArray(ClassTag<B> classTag);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <B> Buffer<B> toBuffer();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    IndexedSeq<A> toIndexedSeq();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    Iterable<A> toIterable();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    List<A> toList();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <T, U> Map<T, U> toMap(Predef$$less$colon$less<A, Tuple2<T, U>> predef$$less$colon$less);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    Seq<A> toSeq();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    <B> Set<B> toSet();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    Stream<A> toStream();

    Traversable<A> underlying();
}
