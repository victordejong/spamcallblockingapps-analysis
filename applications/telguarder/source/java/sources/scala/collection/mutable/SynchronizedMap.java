package scala.collection.mutable;

import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.Tuple2;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Set;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001\t\u001ddaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u0010'ft7\r\u001b:p]&TX\rZ'ba*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\rQQcH\n\u0004\u0001-y\u0001C\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\b\u0007\u0005\u0019\te.\u001f*fMB!\u0001#E\n\u001f\u001b\u0005\u0011\u0011B\u0001\n\u0003\u0005\ri\u0015\r\u001d\t\u0003)Ua\u0001\u0001B\u0003\u0017\u0001\t\u0007qCA\u0001B#\tA2\u0004\u0005\u0002\r3%\u0011!D\u0002\u0002\b\u001d>$\b.\u001b8h!\taA$\u0003\u0002\u001e\r\t\u0019\u0011I\\=\u0011\u0005QyB!\u0002\u0011\u0001\u0005\u00049\"!\u0001\"\t\u000b\t\u0002A\u0011A\u0012\u0002\r\u0011Jg.\u001b;%)\u0005!\u0003C\u0001\u0007&\u0013\t1cA\u0001\u0003V]&$\bB\u0002\u0015\u0001!\u0013\u0005\u0011&A\u0002hKR$\"AK\u0017\u0011\u00071Yc$\u0003\u0002-\r\t1q\n\u001d;j_:DQAL\u0014A\u0002M\t1a[3z\u0011\u0019\u0001\u0004\u0001%C\u0001c\u0005A\u0011\u000e^3sCR|'/F\u00013!\r\u0019DGN\u0007\u0002\t%\u0011Q\u0007\u0002\u0002\t\u0013R,'/\u0019;peB!AbN\n\u001f\u0013\tAdA\u0001\u0004UkBdWM\r\u0005\u0007u\u0001\u0001J\u0011A\u001e\u0002\u0011\u0011\u0002H.^:%KF$\"\u0001P\u001f\u000e\u0003\u0001AQAP\u001dA\u0002Y\n!a\u001b<\t\r\u0001\u0003\u0001\u0013\"\u0001B\u0003%!S.\u001b8vg\u0012*\u0017\u000f\u0006\u0002=\u0005\")af\u0010a\u0001'!)A\t\u0001C!\u000b\u0006!1/\u001b>f+\u00051\u0005C\u0001\u0007H\u0013\tAeAA\u0002J]RDQA\u0013\u0001\u0005B-\u000b1\u0001];u)\rQC*\u0014\u0005\u0006]%\u0003\ra\u0005\u0005\u0006\u001d&\u0003\rAH\u0001\u0006m\u0006dW/\u001a\u0005\u0006!\u0002!\t%U\u0001\u0007kB$\u0017\r^3\u0015\u0007\u0011\u00126\u000bC\u0003/\u001f\u0002\u00071\u0003C\u0003O\u001f\u0002\u0007a\u0004C\u0003V\u0001\u0011\u0005c+\u0001\u0004sK6|g/\u001a\u000b\u0003U]CQA\f+A\u0002MAQ!\u0017\u0001\u0005B\r\nQa\u00197fCJDQa\u0017\u0001\u0005Bq\u000bqbZ3u\u001fJ,En]3Va\u0012\fG/\u001a\u000b\u0004=us\u0006\"\u0002\u0018[\u0001\u0004\u0019\u0002BB0[\t\u0003\u0007\u0001-A\u0004eK\u001a\fW\u000f\u001c;\u0011\u00071\tg$\u0003\u0002c\r\tAAHY=oC6,g\bC\u0003e\u0001\u0011\u0005S-A\u0005ue\u0006t7OZ8s[R\u0011AH\u001a\u0005\u0006O\u000e\u0004\r\u0001[\u0001\u0002MB)A\"[\n\u001f=%\u0011!N\u0002\u0002\n\rVt7\r^5p]JBQ\u0001\u001c\u0001\u0005B5\faA]3uC&tGC\u0001\u001fo\u0011\u0015y7\u000e1\u0001q\u0003\u0005\u0001\b#\u0002\u0007j'y\t\bC\u0001\u0007s\u0013\t\u0019hAA\u0004C_>dW-\u00198\t\u000bU\u0004A\u0011\t<\u0002\rY\fG.^3t+\u00059\bcA\u001ay=%\u0011\u0011\u0010\u0002\u0002\t\u0013R,'/\u00192mK\"2Ao_A\u0002\u0003\u000f\u0001\"\u0001`@\u000e\u0003uT!A \u0004\u0002\u0015\u0005tgn\u001c;bi&|g.C\u0002\u0002\u0002u\u0014\u0011\"\\5he\u0006$\u0018n\u001c8\"\u0005\u0005\u0015\u0011!\u000f1wC2,Xm\u001d1!e\u0016$XO\u001d8tA\u0001LE/\u001a:bE2,7LQ/aAI\fG\u000f[3sAQD\u0017M\u001c\u0011a\u0013R,'/\u0019;pen\u0013U\f\u0019\u0018\"\u0005\u0005%\u0011!\u0002\u001a/q9\u0002\u0004bBA\u0007\u0001\u0011\u0005\u0013qB\u0001\u000fm\u0006dW/Z:Ji\u0016\u0014\u0018\r^8s+\t\t\t\u0002E\u00024iyAq!!\u0006\u0001\t\u0003\n9\"A\u0003dY>tW\r\u0006\u0002\u0002\u001aA\u0019A(a\u0007\n\t\u0005u\u0011q\u0004\u0002\u0005'\u0016dg-C\u0002\u0002\"\u0011\u0011q\u0002\u0016:bm\u0016\u00148/\u00192mK2K7.\u001a\u0005\b\u0003K\u0001A\u0011IA\u0014\u0003\u001d1wN]3bG\",B!!\u000b\u00026Q\u0019A%a\u000b\t\u000f\u001d\f\u0019\u00031\u0001\u0002.A1A\"a\f7\u0003gI1!!\r\u0007\u0005%1UO\\2uS>t\u0017\u0007E\u0002\u0015\u0003k!q!a\u000e\u0002$\t\u0007qCA\u0001V\u0011\u001d\tY\u0004\u0001C!\u0003{\tQ!\u00199qYf$2AHA \u0011\u0019q\u0013\u0011\ba\u0001'!9\u00111\t\u0001\u0005B\u0005\u0015\u0013AB6fsN+G/\u0006\u0002\u0002HA!1'!\u0013\u0014\u0013\r\tY\u0005\u0002\u0002\u0004'\u0016$\bbBA(\u0001\u0011\u0005\u0013\u0011K\u0001\u0005W\u0016L8/\u0006\u0002\u0002TA\u00191\u0007_\n)\u000f\u0005530a\u0016\u0002\b\u0005\u0012\u0011\u0011L\u00018A.,\u0017p\u001d1!e\u0016$XO\u001d8tA\u0001LE/\u001a:bE2,7,Q/aAI\fG\u000f[3sAQD\u0017M\u001c\u0011a\u0013R,'/\u0019;pen\u000bU\f\u0019\u0018\t\u000f\u0005u\u0003\u0001\"\u0011\u0002`\u0005a1.Z=t\u0013R,'/\u0019;peV\u0011\u0011\u0011\r\t\u0004gQ\u001a\u0002bBA3\u0001\u0011\u0005\u0013qM\u0001\bSN,U\u000e\u001d;z+\u0005\t\bbBA6\u0001\u0011\u0005\u0013QN\u0001\tG>tG/Y5ogR\u0019\u0011/a\u001c\t\r9\nI\u00071\u0001\u0014\u0011\u001d\t\u0019\b\u0001C!\u0003k\n1\"[:EK\u001aLg.\u001a3BiR\u0019\u0011/a\u001e\t\r9\n\t\b1\u0001\u0014\u00119\tY\b\u0001I\u0001\u0004\u0003\u0005I\u0011BA?\u0003\u0003\u000b\u0011b];qKJ$s-\u001a;\u0015\u0007)\ny\b\u0003\u0004/\u0003s\u0002\raE\u0005\u0004Q\u0005\r\u0015bAAC\t\t9Q*\u00199MS.,\u0007\"DAE\u0001A\u0005\u0019\u0011!A\u0005\nE\nY)\u0001\btkB,'\u000fJ5uKJ\fGo\u001c:\n\u0007A\n\u0019\t\u0003\b\u0002\u0010\u0002\u0001\n1!A\u0001\n\u0013\t\t*!&\u0002\u001dM,\b/\u001a:%IAdWo\u001d\u0013fcR\u0019A(a%\t\ry\ni\t1\u00017\u0013\rQ\u0014qS\u0005\u0004\u0003\u000b\u0013\u0001BDAN\u0001A\u0005\u0019\u0011!A\u0005\n\u0005u\u0015\u0011U\u0001\u0010gV\u0004XM\u001d\u0013%[&tWo\u001d\u0013fcR\u0019A(a(\t\r9\nI\n1\u0001\u0014\u0013\r\u0001\u0015q\u0013\u0005\u000e\u0003K\u0003\u0001\u0013aA\u0001\u0002\u0013%Q)a*\u0002\u0015M,\b/\u001a:%g&TX-C\u0002E\u0003SK1!a+\u0005\u0005=!&/\u0019<feN\f'\r\\3P]\u000e,\u0007BDAX\u0001A\u0005\u0019\u0011!A\u0005\n\u0005E\u0016qW\u0001\ngV\u0004XM\u001d\u0013qkR$RAKAZ\u0003kCaALAW\u0001\u0004\u0019\u0002B\u0002(\u0002.\u0002\u0007a$C\u0002K\u0003/Ca\"a/\u0001!\u0003\r\t\u0011!C\u0005\u0003{\u000b\u0019-\u0001\u0007tkB,'\u000fJ;qI\u0006$X\rF\u0003%\u0003\u007f\u000b\t\r\u0003\u0004/\u0003s\u0003\ra\u0005\u0005\u0007\u001d\u0006e\u0006\u0019\u0001\u0010\n\u0007A\u000b9\n\u0003\b\u0002H\u0002\u0001\n1!A\u0001\n\u0013\tI-!4\u0002\u0019M,\b/\u001a:%e\u0016lwN^3\u0015\u0007)\nY\r\u0003\u0004/\u0003\u000b\u0004\raE\u0005\u0004+\u0006]\u0005\"DAi\u0001A\u0005\u0019\u0011!A\u0005\n\r\n\u0019.A\u0006tkB,'\u000fJ2mK\u0006\u0014\u0018bA-\u0002\u0018\"q\u0011q\u001b\u0001\u0011\u0002\u0007\u0005\t\u0011\"\u0003\u0002Z\u0006\u0005\u0018!F:va\u0016\u0014HeZ3u\u001fJ,En]3Va\u0012\fG/\u001a\u000b\u0006=\u0005m\u0017Q\u001c\u0005\u0007]\u0005U\u0007\u0019A\n\t\u0011\u0005}\u0017Q\u001bCA\u0002\u0001\f!a\u001c9\n\u0007m\u000b9\n\u0003\b\u0002f\u0002\u0001\n1!A\u0001\n\u0013\t9/a;\u0002\u001fM,\b/\u001a:%iJ\fgn\u001d4pe6$2\u0001PAu\u0011\u00199\u00171\u001da\u0001Q&\u0019A-a&\t\u001d\u0005=\b\u0001%A\u0002\u0002\u0003%I!!=\u0002v\u0006a1/\u001e9fe\u0012\u0012X\r^1j]R\u0019A(a=\t\r=\fi\u000f1\u0001q\u0013\ra\u0017q\u0013\u0005\u000e\u0003s\u0004\u0001\u0013aA\u0001\u0002\u0013%a/a?\u0002\u0019M,\b/\u001a:%m\u0006dW/Z:\n\u0007U\f\u0019\t\u0003\b\u0002��\u0002\u0001\n1!A\u0001\n\u0013\tyA!\u0001\u0002)M,\b/\u001a:%m\u0006dW/Z:Ji\u0016\u0014\u0018\r^8s\u0013\u0011\ti!a!\t\u001d\t\u0015\u0001\u0001%A\u0002\u0002\u0003%IAa\u0002\u0003\n\u0005Y1/\u001e9fe\u0012\u001aGn\u001c8f)\u0005y\u0011\u0002BA\u000b\u0003/CaB!\u0004\u0001!\u0003\r\t\u0011!C\u0005\u0005\u001f\u0011Y\"A\u0007tkB,'\u000f\n4pe\u0016\f7\r[\u000b\u0005\u0005#\u0011I\u0002F\u0002%\u0005'Aqa\u001aB\u0006\u0001\u0004\u0011)\u0002\u0005\u0004\r\u0003_1$q\u0003\t\u0004)\teAaBA\u001c\u0005\u0017\u0011\raF\u0005\u0005\u0003K\u0011i\"C\u0002\u0003 \u0011\u0011A\"\u0013;fe\u0006\u0014G.\u001a'jW\u0016DaBa\t\u0001!\u0003\r\t\u0011!C\u0005\u0005K\u0011I#A\u0006tkB,'\u000fJ1qa2LHc\u0001\u0010\u0003(!1aF!\tA\u0002MIA!a\u000f\u0002\u0004\"q!Q\u0006\u0001\u0011\u0002\u0007\u0005\t\u0011\"\u0003\u0002F\t=\u0012\u0001D:va\u0016\u0014He[3z'\u0016$\u0018\u0002BA\"\u0003\u0007CaBa\r\u0001!\u0003\r\t\u0011!C\u0005\u0003#\u0012)$\u0001\u0006tkB,'\u000fJ6fsNLA!a\u0014\u0002\u0004\"q!\u0011\b\u0001\u0011\u0002\u0007\u0005\t\u0011\"\u0003\u0002`\tm\u0012AE:va\u0016\u0014He[3zg&#XM]1u_JLA!!\u0018\u0002\u0004\"q!q\b\u0001\u0011\u0002\u0007\u0005\t\u0011\"\u0003\u0002h\t\u0005\u0013!D:va\u0016\u0014H%[:F[B$\u00180\u0003\u0003\u0002f\u0005\r\u0005B\u0004B#\u0001A\u0005\u0019\u0011!A\u0005\n\t\u001d#1J\u0001\u000fgV\u0004XM\u001d\u0013d_:$\u0018-\u001b8t)\r\t(\u0011\n\u0005\u0007]\t\r\u0003\u0019A\n\n\t\u0005-\u00141\u0011\u0005\u000f\u0005\u001f\u0002\u0001\u0013aA\u0001\u0002\u0013%!\u0011\u000bB+\u0003E\u0019X\u000f]3sI%\u001cH)\u001a4j]\u0016$\u0017\t\u001e\u000b\u0004c\nM\u0003B\u0002\u0018\u0003N\u0001\u00071#\u0003\u0003\u0002t\u0005\r\u0005f\u0002\u0001\u0003Z\t}#1\r\t\u0004\u0019\tm\u0013b\u0001B/\r\tQA-\u001a9sK\u000e\fG/\u001a3\"\u0005\t\u0005\u0014!!\u0007Ts:\u001c\u0007N]8oSj\fG/[8oAYL\u0017\r\t;sC&$8\u000fI5tA\u0011,\u0007O]3dCR,G\rI1tA%$\b%[:!S:DWM]3oi2L\b%\u001e8sK2L\u0017M\u00197f]\u0001\u00023i\u001c8tS\u0012,'\u000f\t6bm\u0006tS\u000f^5m]\r|gnY;se\u0016tGOL\"p]\u000e,(O]3oi\"\u000b7\u000f['ba\u0002\n7\u000fI1oA\u0005dG/\u001a:oCRLg/\u001a\u0018\"\u0005\t\u0015\u0014A\u0002\u001a/cEr\u0003\u0007")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SynchronizedMap.class */
public interface SynchronizedMap<A, B> extends Map<A, B> {

    /* renamed from: scala.collection.mutable.SynchronizedMap$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SynchronizedMap$class.class */
    public abstract class Cclass {
        public static void $init$(SynchronizedMap synchronizedMap) {
        }

        public static SynchronizedMap $minus$eq(SynchronizedMap synchronizedMap, Object obj) {
            SynchronizedMap scala$collection$mutable$SynchronizedMap$$super$$minus$eq;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$$minus$eq = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$$minus$eq(obj);
            }
            return scala$collection$mutable$SynchronizedMap$$super$$minus$eq;
        }

        public static SynchronizedMap $plus$eq(SynchronizedMap synchronizedMap, Tuple2 tuple2) {
            SynchronizedMap scala$collection$mutable$SynchronizedMap$$super$$plus$eq;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$$plus$eq = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$$plus$eq(tuple2);
            }
            return scala$collection$mutable$SynchronizedMap$$super$$plus$eq;
        }

        public static Object apply(SynchronizedMap synchronizedMap, Object obj) {
            Object scala$collection$mutable$SynchronizedMap$$super$apply;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$apply = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$apply(obj);
            }
            return scala$collection$mutable$SynchronizedMap$$super$apply;
        }

        public static void clear(SynchronizedMap synchronizedMap) {
            synchronized (synchronizedMap) {
                synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$clear();
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
        }

        public static Map clone(SynchronizedMap synchronizedMap) {
            Map scala$collection$mutable$SynchronizedMap$$super$clone;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$clone = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$clone();
            }
            return scala$collection$mutable$SynchronizedMap$$super$clone;
        }

        public static boolean contains(SynchronizedMap synchronizedMap, Object obj) {
            boolean scala$collection$mutable$SynchronizedMap$$super$contains;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$contains = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$contains(obj);
            }
            return scala$collection$mutable$SynchronizedMap$$super$contains;
        }

        public static void foreach(SynchronizedMap synchronizedMap, Function1 function1) {
            synchronized (synchronizedMap) {
                synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$foreach(function1);
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
        }

        public static Option get(SynchronizedMap synchronizedMap, Object obj) {
            Option scala$collection$mutable$SynchronizedMap$$super$get;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$get = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$get(obj);
            }
            return scala$collection$mutable$SynchronizedMap$$super$get;
        }

        public static Object getOrElseUpdate(SynchronizedMap synchronizedMap, Object obj, Function0 function0) {
            Object scala$collection$mutable$SynchronizedMap$$super$getOrElseUpdate;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$getOrElseUpdate = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$getOrElseUpdate(obj, function0);
            }
            return scala$collection$mutable$SynchronizedMap$$super$getOrElseUpdate;
        }

        public static boolean isDefinedAt(SynchronizedMap synchronizedMap, Object obj) {
            boolean scala$collection$mutable$SynchronizedMap$$super$isDefinedAt;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$isDefinedAt = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$isDefinedAt(obj);
            }
            return scala$collection$mutable$SynchronizedMap$$super$isDefinedAt;
        }

        public static boolean isEmpty(SynchronizedMap synchronizedMap) {
            boolean scala$collection$mutable$SynchronizedMap$$super$isEmpty;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$isEmpty = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$isEmpty();
            }
            return scala$collection$mutable$SynchronizedMap$$super$isEmpty;
        }

        public static Iterator iterator(SynchronizedMap synchronizedMap) {
            Iterator scala$collection$mutable$SynchronizedMap$$super$iterator;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$iterator = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$iterator();
            }
            return scala$collection$mutable$SynchronizedMap$$super$iterator;
        }

        public static Set keySet(SynchronizedMap synchronizedMap) {
            Set scala$collection$mutable$SynchronizedMap$$super$keySet;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$keySet = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$keySet();
            }
            return scala$collection$mutable$SynchronizedMap$$super$keySet;
        }

        public static Iterable keys(SynchronizedMap synchronizedMap) {
            Iterable scala$collection$mutable$SynchronizedMap$$super$keys;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$keys = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$keys();
            }
            return scala$collection$mutable$SynchronizedMap$$super$keys;
        }

        public static Iterator keysIterator(SynchronizedMap synchronizedMap) {
            Iterator scala$collection$mutable$SynchronizedMap$$super$keysIterator;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$keysIterator = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$keysIterator();
            }
            return scala$collection$mutable$SynchronizedMap$$super$keysIterator;
        }

        public static Option put(SynchronizedMap synchronizedMap, Object obj, Object obj2) {
            Option scala$collection$mutable$SynchronizedMap$$super$put;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$put = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$put(obj, obj2);
            }
            return scala$collection$mutable$SynchronizedMap$$super$put;
        }

        public static Option remove(SynchronizedMap synchronizedMap, Object obj) {
            Option scala$collection$mutable$SynchronizedMap$$super$remove;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$remove = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$remove(obj);
            }
            return scala$collection$mutable$SynchronizedMap$$super$remove;
        }

        public static SynchronizedMap retain(SynchronizedMap synchronizedMap, Function2 function2) {
            SynchronizedMap scala$collection$mutable$SynchronizedMap$$super$retain;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$retain = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$retain(function2);
            }
            return scala$collection$mutable$SynchronizedMap$$super$retain;
        }

        public static int size(SynchronizedMap synchronizedMap) {
            int scala$collection$mutable$SynchronizedMap$$super$size;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$size = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$size();
            }
            return scala$collection$mutable$SynchronizedMap$$super$size;
        }

        public static SynchronizedMap transform(SynchronizedMap synchronizedMap, Function2 function2) {
            SynchronizedMap scala$collection$mutable$SynchronizedMap$$super$transform;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$transform = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$transform(function2);
            }
            return scala$collection$mutable$SynchronizedMap$$super$transform;
        }

        public static void update(SynchronizedMap synchronizedMap, Object obj, Object obj2) {
            synchronized (synchronizedMap) {
                synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$update(obj, obj2);
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
        }

        public static Iterable values(SynchronizedMap synchronizedMap) {
            Iterable scala$collection$mutable$SynchronizedMap$$super$values;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$values = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$values();
            }
            return scala$collection$mutable$SynchronizedMap$$super$values;
        }

        public static Iterator valuesIterator(SynchronizedMap synchronizedMap) {
            Iterator scala$collection$mutable$SynchronizedMap$$super$valuesIterator;
            synchronized (synchronizedMap) {
                scala$collection$mutable$SynchronizedMap$$super$valuesIterator = synchronizedMap.scala$collection$mutable$SynchronizedMap$$super$valuesIterator();
            }
            return scala$collection$mutable$SynchronizedMap$$super$valuesIterator;
        }
    }

    @Override // scala.collection.mutable.MapLike, scala.collection.generic.Shrinkable
    SynchronizedMap<A, B> $minus$eq(A a);

    @Override // scala.collection.mutable.MapLike
    SynchronizedMap<A, B> $plus$eq(Tuple2<A, B> tuple2);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    B apply(A a);

    @Override // scala.collection.mutable.MapLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    void clear();

    @Override // scala.collection.mutable.MapLike, scala.collection.mutable.Cloneable
    Map<A, B> clone();

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    boolean contains(A a);

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    <U> void foreach(Function1<Tuple2<A, B>, U> function1);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    Option<B> get(A a);

    @Override // scala.collection.mutable.MapLike
    B getOrElseUpdate(A a, Function0<B> function0);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.PartialFunction
    boolean isDefinedAt(A a);

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    boolean isEmpty();

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    Iterator<Tuple2<A, B>> iterator();

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    Set<A> keySet();

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    Iterable<A> keys();

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    Iterator<A> keysIterator();

    @Override // scala.collection.mutable.MapLike
    Option<B> put(A a, B b);

    @Override // scala.collection.mutable.MapLike
    Option<B> remove(A a);

    @Override // scala.collection.mutable.MapLike
    SynchronizedMap<A, B> retain(Function2<A, B, Object> function2);

    /* synthetic */ SynchronizedMap scala$collection$mutable$SynchronizedMap$$super$$minus$eq(Object obj);

    /* synthetic */ SynchronizedMap scala$collection$mutable$SynchronizedMap$$super$$plus$eq(Tuple2 tuple2);

    /* synthetic */ Object scala$collection$mutable$SynchronizedMap$$super$apply(Object obj);

    /* synthetic */ void scala$collection$mutable$SynchronizedMap$$super$clear();

    /* synthetic */ Map scala$collection$mutable$SynchronizedMap$$super$clone();

    /* synthetic */ boolean scala$collection$mutable$SynchronizedMap$$super$contains(Object obj);

    /* synthetic */ void scala$collection$mutable$SynchronizedMap$$super$foreach(Function1 function1);

    /* synthetic */ Option scala$collection$mutable$SynchronizedMap$$super$get(Object obj);

    /* synthetic */ Object scala$collection$mutable$SynchronizedMap$$super$getOrElseUpdate(Object obj, Function0 function0);

    /* synthetic */ boolean scala$collection$mutable$SynchronizedMap$$super$isDefinedAt(Object obj);

    /* synthetic */ boolean scala$collection$mutable$SynchronizedMap$$super$isEmpty();

    /* synthetic */ Iterator scala$collection$mutable$SynchronizedMap$$super$iterator();

    /* synthetic */ Set scala$collection$mutable$SynchronizedMap$$super$keySet();

    /* synthetic */ Iterable scala$collection$mutable$SynchronizedMap$$super$keys();

    /* synthetic */ Iterator scala$collection$mutable$SynchronizedMap$$super$keysIterator();

    /* synthetic */ Option scala$collection$mutable$SynchronizedMap$$super$put(Object obj, Object obj2);

    /* synthetic */ Option scala$collection$mutable$SynchronizedMap$$super$remove(Object obj);

    /* synthetic */ SynchronizedMap scala$collection$mutable$SynchronizedMap$$super$retain(Function2 function2);

    /* synthetic */ int scala$collection$mutable$SynchronizedMap$$super$size();

    /* synthetic */ SynchronizedMap scala$collection$mutable$SynchronizedMap$$super$transform(Function2 function2);

    /* synthetic */ void scala$collection$mutable$SynchronizedMap$$super$update(Object obj, Object obj2);

    /* synthetic */ Iterable scala$collection$mutable$SynchronizedMap$$super$values();

    /* synthetic */ Iterator scala$collection$mutable$SynchronizedMap$$super$valuesIterator();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    int size();

    @Override // scala.collection.mutable.MapLike
    SynchronizedMap<A, B> transform(Function2<A, B, B> function2);

    @Override // scala.collection.mutable.MapLike
    void update(A a, B b);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    Iterable<B> values();

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    Iterator<B> valuesIterator();
}
