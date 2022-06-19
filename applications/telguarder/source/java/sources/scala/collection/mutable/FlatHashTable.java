package scala.collection.mutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Objects;
import scala.Function1;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Some;
import scala.collection.AbstractIterator;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.TraversableOnce;
import scala.collection.immutable.Range;
import scala.collection.immutable.Range$;
import scala.collection.mutable.ArrayOps;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichInt$;
import scala.runtime.TraitSetter;
import scala.util.hashing.package$;
@ScalaSignature(bytes = "\u0006\u0001\tugaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u000e\r2\fG\u000fS1tQR\u000b'\r\\3\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0004\u0015\u0005M3c\u0001\u0001\f\u001fA\u0011A\"D\u0007\u0002\r%\u0011aB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u000bA\ty!!\u0015\u000f\u0005E\u0011R\"\u0001\u0002\b\rM\u0011\u0001\u0012\u0001\u0003\u0015\u000351E.\u0019;ICNDG+\u00192mKB\u0011\u0011#\u0006\u0004\u0007\u0003\tA\t\u0001\u0002\f\u0014\u0005UY\u0001\"\u0002\r\u0016\t\u0003I\u0012A\u0002\u001fj]&$h\bF\u0001\u0015\u0011\u0015YR\u0003\"\u0002\u001d\u00035\u0019X-\u001a3HK:,'/\u0019;peV\tQ\u0004E\u0002\u001fG\u0015j\u0011a\b\u0006\u0003A\u0005\nA\u0001\\1oO*\t!%\u0001\u0003kCZ\f\u0017B\u0001\u0013 \u0005-!\u0006N]3bI2{7-\u00197\u0011\u0005\u0019JS\"A\u0014\u000b\u0005!2\u0011\u0001B;uS2L!AK\u0014\u0003\rI\u000bg\u000eZ8n\u000f\u0015aS\u0003#\u0003.\u00031qU\u000f\u001c7TK:$\u0018N\\3m!\tqs&D\u0001\u0016\r\u0015\u0001T\u0003#\u00032\u00051qU\u000f\u001c7TK:$\u0018N\\3m'\ty3\u0002C\u0003\u0019_\u0011\u00051\u0007F\u0001.\u0011\u0015)t\u0006\"\u00117\u0003!A\u0017m\u001d5D_\u0012,G#A\u001c\u0011\u00051A\u0014BA\u001d\u0007\u0005\rIe\u000e\u001e\u0005\u0006w=\"\t\u0005P\u0001\ti>\u001cFO]5oOR\tQ\b\u0005\u0002\u001f}%\u0011qh\b\u0002\u0007'R\u0014\u0018N\\4\t\u000b\u0005+B\u0011\u0001\"\u0002#\u0011,g-Y;mi2{\u0017\r\u001a$bGR|'/F\u00018\u0011\u0015!U\u0003\"\u0002C\u0003=aw.\u00193GC\u000e$xN\u001d#f]Vl\u0007\"\u0002$\u0016\t\u00039\u0015\u0001E:ju\u00164uN\u001d+ie\u0016\u001c\bn\u001c7e)\r9\u0004J\u0013\u0005\u0006\u0013\u0016\u0003\raN\u0001\u0005g&TX\rC\u0003L\u000b\u0002\u0007q'A\u0006`Y>\fGMR1di>\u0014\b\"B'\u0016\t\u0003q\u0015\u0001\u00048foRC'/Z:i_2$GcA\u001cP!\")1\n\u0014a\u0001o!)\u0011\n\u0014a\u0001o\u0019!!+\u0006\u0001T\u0005!\u0019uN\u001c;f]R\u001cXC\u0001+y'\t\t6\u0002\u0003\u0005W#\n\u0015\r\u0011\"\u0001C\u0003)aw.\u00193GC\u000e$xN\u001d\u0005\t1F\u0013\t\u0011)A\u0005o\u0005YAn\\1e\r\u0006\u001cGo\u001c:!\u0011!Q\u0016K!b\u0001\n\u0003Y\u0016!\u0002;bE2,W#\u0001/\u0011\u00071i6\"\u0003\u0002_\r\t)\u0011I\u001d:bs\"A\u0001-\u0015B\u0001B\u0003%A,\u0001\u0004uC\ndW\r\t\u0005\tEF\u0013)\u0019!C\u0001\u0005\u0006IA/\u00192mKNK'0\u001a\u0005\tIF\u0013\t\u0011)A\u0005o\u0005QA/\u00192mKNK'0\u001a\u0011\t\u0011\u0019\f&Q1A\u0005\u0002\t\u000b\u0011\u0002\u001e5sKNDw\u000e\u001c3\t\u0011!\f&\u0011!Q\u0001\n]\n!\u0002\u001e5sKNDw\u000e\u001c3!\u0011!Q\u0017K!b\u0001\n\u0003\u0011\u0015!C:fK\u00124\u0018\r\\;f\u0011!a\u0017K!A!\u0002\u00139\u0014AC:fK\u00124\u0018\r\\;fA!Aa.\u0015BC\u0002\u0013\u0005q.A\u0004tSj,W.\u00199\u0016\u0003A\u00042\u0001D/8\u0011!\u0011\u0018K!A!\u0002\u0013\u0001\u0018\u0001C:ju\u0016l\u0017\r\u001d\u0011\t\u000ba\tF\u0011\u0001;\u0015\u001bU\f\u0019!!\u0002\u0002\b\u0005%\u00111BA\u0007!\rq\u0013K\u001e\t\u0003obd\u0001\u0001B\u0003z#\n\u0007!PA\u0001B#\tYh\u0010\u0005\u0002\ry&\u0011QP\u0002\u0002\b\u001d>$\b.\u001b8h!\taq0C\u0002\u0002\u0002\u0019\u00111!\u00118z\u0011\u001516\u000f1\u00018\u0011\u0015Q6\u000f1\u0001]\u0011\u0015\u00117\u000f1\u00018\u0011\u001517\u000f1\u00018\u0011\u0015Q7\u000f1\u00018\u0011\u0015q7\u000f1\u0001q\r%\t\t\"\u0006I\u0001\u0004\u0003\t\u0019BA\u0005ICNDW\u000b^5mgV!\u0011QCA#'\r\tya\u0003\u0005\t\u00033\ty\u0001\"\u0001\u0002\u001c\u00051A%\u001b8ji\u0012\"\"!!\b\u0011\u00071\ty\"C\u0002\u0002\"\u0019\u0011A!\u00168ji\"9\u0011QEA\b\t+\u0011\u0015\u0001F:ju\u0016l\u0015\r\u001d\"vG.,GOQ5u'&TX\rC\u0004\u0002*\u0005=AQ\u0003\"\u0002#ML'0Z'ba\n+8m[3u'&TX\r\u0003\u0005\u0002.\u0005=AQCA\u0018\u0003\u001dIW\u000e\u001d:pm\u0016$RaNA\u0019\u0003kAq!a\r\u0002,\u0001\u0007q'A\u0003iG>$W\rC\u0004\u00028\u0005-\u0002\u0019A\u001c\u0002\tM,W\r\u001a\u0005\t\u0003w\ty\u0001\"\u0006\u0002>\u0005YQ\r\\3n)>,e\u000e\u001e:z)\rY\u0011q\b\u0005\t\u0003\u0003\nI\u00041\u0001\u0002D\u0005!Q\r\\3n!\r9\u0018Q\t\u0003\u0007s\u0006=!\u0019\u0001>\t\u0011\u0005%\u0013q\u0002C\u000b\u0003\u0017\n1\"\u001a8uef$v.\u00127f[R!\u00111IA'\u0011\u001d\ty%a\u0012A\u0002-\tQ!\u001a8uef\u00042a^A*\t\u0015I\bA1\u0001{\u0011\u001d\tI\u0002\u0001C\u0001\u00037Aq!!\u0017\u0001\t\u001b\tY&\u0001\u0006uC\ndW\rR3ck\u001e,\"!!\u0018\u0011\u00071\ty&C\u0002\u0002b\u0019\u0011qAQ8pY\u0016\fg\u000e\u0003\u0005L\u0001\u0001\u0007I\u0011\u0001\u0003C\u0011)\t9\u0007\u0001a\u0001\n\u0003!\u0011\u0011N\u0001\u0010?2|\u0017\r\u001a$bGR|'o\u0018\u0013fcR!\u0011QDA6\u0011%\ti'!\u001a\u0002\u0002\u0003\u0007q'A\u0002yIEBq!!\u001d\u0001A\u0003&q'\u0001\u0007`Y>\fGMR1di>\u0014\b\u0005\u000b\u0003\u0002p\u0005U\u0004c\u0001\u0007\u0002x%\u0019\u0011\u0011\u0010\u0004\u0003\u0013Q\u0014\u0018M\\:jK:$\bb\u0002.\u0001\u0001\u0004%\tb\u0017\u0005\n\u0003\u007f\u0002\u0001\u0019!C\t\u0003\u0003\u000b\u0011\u0002^1cY\u0016|F%Z9\u0015\t\u0005u\u00111\u0011\u0005\n\u0003[\ni(!AA\u0002qCa\u0001\u0019\u0001!B\u0013a\u0006\u0006BAC\u0003kBqA\u0019\u0001A\u0002\u0013E!\tC\u0005\u0002\u000e\u0002\u0001\r\u0011\"\u0005\u0002\u0010\u0006iA/\u00192mKNK'0Z0%KF$B!!\b\u0002\u0012\"I\u0011QNAF\u0003\u0003\u0005\ra\u000e\u0005\u0007I\u0002\u0001\u000b\u0015B\u001c)\t\u0005M\u0015Q\u000f\u0005\bM\u0002\u0001\r\u0011\"\u0005C\u0011%\tY\n\u0001a\u0001\n#\ti*A\u0007uQJ,7\u000f[8mI~#S-\u001d\u000b\u0005\u0003;\ty\nC\u0005\u0002n\u0005e\u0015\u0011!a\u0001o!1\u0001\u000e\u0001Q!\n]BC!!)\u0002v!9a\u000e\u0001a\u0001\n#y\u0007\"CAU\u0001\u0001\u0007I\u0011CAV\u0003-\u0019\u0018N_3nCB|F%Z9\u0015\t\u0005u\u0011Q\u0016\u0005\n\u0003[\n9+!AA\u0002ADaA\u001d\u0001!B\u0013\u0001\b\u0006BAX\u0003kBqA\u001b\u0001A\u0002\u0013E!\tC\u0005\u00028\u0002\u0001\r\u0011\"\u0005\u0002:\u0006i1/Z3em\u0006dW/Z0%KF$B!!\b\u0002<\"I\u0011QNA[\u0003\u0003\u0005\ra\u000e\u0005\u0007Y\u0002\u0001\u000b\u0015B\u001c)\t\u0005u\u0016Q\u000f\u0005\b\u0003\u0007\u0004A\u0011CAc\u0003!\u0019\u0017\r]1dSRLHcA\u001c\u0002H\"9\u0011\u0011ZAa\u0001\u00049\u0014\u0001D3ya\u0016\u001cG/\u001a3TSj,\u0007BBAg\u0001\u0011\u0005!)A\u0006j]&$\u0018.\u00197TSj,\u0007BBAi\u0001\u0011%!)A\bj]&$\u0018.\u00197DCB\f7-\u001b;z\u0011\u0019\t)\u000e\u0001C\t\u0005\u0006Q!/\u00198e_6\u001cV-\u001a3\t\r\u0005e\u0007\u0001\"\u0005C\u00035!\u0018M\u00197f'&TXmU3fI\"A\u0011Q\u001c\u0001\u0005\u0002\u0011\ty.\u0001\u0003j]&$HCBA\u000f\u0003C\f\t\u0010\u0003\u0005\u0002d\u0006m\u0007\u0019AAs\u0003\tIg\u000e\u0005\u0003\u0002h\u00065XBAAu\u0015\r\tY/I\u0001\u0003S>LA!a<\u0002j\n\trJ\u00196fGRLe\u000e];u'R\u0014X-Y7\t\u0011\u0005M\u00181\u001ca\u0001\u0003k\f\u0011A\u001a\t\b\u0019\u0005]\u0018\u0011KA\u000f\u0013\r\tIP\u0002\u0002\n\rVt7\r^5p]FB\u0001\"!@\u0001\t\u0003!\u0011q`\u0001\fg\u0016\u0014\u0018.\u00197ju\u0016$v\u000e\u0006\u0003\u0002\u001e\t\u0005\u0001\u0002\u0003B\u0002\u0003w\u0004\rA!\u0002\u0002\u0007=,H\u000f\u0005\u0003\u0002h\n\u001d\u0011\u0002\u0002B\u0005\u0003S\u0014!c\u00142kK\u000e$x*\u001e;qkR\u001cFO]3b[\"9!Q\u0002\u0001\u0005\u0012\t=\u0011!\u00034j]\u0012,e\u000e\u001e:z)\u0011\u0011\tBa\u0006\u0011\u000b1\u0011\u0019\"!\u0015\n\u0007\tUaA\u0001\u0004PaRLwN\u001c\u0005\t\u0003\u0003\u0012Y\u00011\u0001\u0002R!B!1\u0002B\u000e\u0005C\u0011)\u0003E\u0002\r\u0005;I1Aa\b\u0007\u0005Q!W\r\u001d:fG\u0006$X\rZ(wKJ\u0014\u0018\u000eZ5oO\u0006\u0012!1E\u0001K\u0013:$XM\u001d8bY\u0002JW\u000e\u001d7f[\u0016tG/\u0019;j_:\u0004Cm\\3tA9|G\u000fI1e[&$\be]3og&\u0014G.\u001a\u0011pm\u0016\u0014(/\u001b3j]\u001e\u0004sN\u001a\u0011uQ&\u001c\b%\\3uQ>$g&\t\u0002\u0003(\u00051!GL\u00192]ABqAa\u000b\u0001\t#\u0011i#\u0001\u0007d_:$\u0018-\u001b8t\u000b2,W\u000e\u0006\u0003\u0002^\t=\u0002\u0002CA!\u0005S\u0001\r!!\u0015)\u0011\t%\"1\u0004B\u0011\u0005KAqA!\u000e\u0001\t\u0013\u00119$\u0001\u0007gS:$W\t\\3n\u00136\u0004H\u000eF\u0002\f\u0005sA\u0001\"!\u0011\u00034\u0001\u0007\u0011\u0011\u000b\u0005\b\u0005{\u0001A\u0011\u0003B \u0003\u001d\tG\rZ#mK6$B!!\u0018\u0003B!A\u0011\u0011\tB\u001e\u0001\u0004\t\t\u0006C\u0004\u0003F\u0001!\tBa\u0012\u0002\u0011\u0005$G-\u00128uef$B!!\u0018\u0003J!9!1\nB\"\u0001\u0004Y\u0011\u0001\u00038fo\u0016sGO]=\t\u000f\t=\u0003\u0001\"\u0005\u0003R\u0005Q!/Z7pm\u0016,E.Z7\u0015\t\u0005u#1\u000b\u0005\t\u0003\u0003\u0012i\u00051\u0001\u0002R!9!q\u000b\u0001\u0005\u0012\te\u0013\u0001C5uKJ\fGo\u001c:\u0016\u0005\tm\u0003C\u0002B/\u0005?\n\t&D\u0001\u0005\u0013\r\u0011\t\u0007\u0002\u0002\t\u0013R,'/\u0019;pe\"9!Q\r\u0001\u0005\n\u0005m\u0011!C4s_^$\u0016M\u00197f\u0011\u001d\u0011I\u0007\u0001C\u0005\u00037\tqb\u00195fG.\u001cuN\\:jgR,g\u000e\u001e\u0005\b\u0005[\u0002A\u0011\u0003B8\u00031qgnU5{K6\u000b\u0007/\u00113e)\u0011\tiB!\u001d\t\u000f\tM$1\u000ea\u0001o\u0005\t\u0001\u000e\u000b\u0005\u0003l\tm!\u0011\u0005B\u0013\u0011\u001d\u0011I\b\u0001C\t\u0005w\nqB\u001c8TSj,W*\u00199SK6|g/\u001a\u000b\u0005\u0003;\u0011i\bC\u0004\u0003t\t]\u0004\u0019A\u001c)\u0011\t]$1\u0004B\u0011\u0005KAqAa!\u0001\t#\u0011))\u0001\bo]NK'0Z'baJ+7/\u001a;\u0015\t\u0005u!q\u0011\u0005\b\u0005\u0013\u0013\t\t1\u00018\u0003-!\u0018M\u00197f\u0019\u0016tw\r\u001e5)\u0011\t\u0005%1\u0004B\u0011\u0005KAqAa$\u0001\t\u000b!!)A\nu_R\fGnU5{K6\u000b\u0007OQ;dW\u0016$8\u000fC\u0004\u0003\u0014\u0002!\tB!&\u0002\u001f\r\fGnY*ju\u0016l\u0015\r]*ju\u0016$2a\u000eBL\u0011\u001d\u0011II!%A\u0002]B\u0003B!%\u0003\u001c\t\u0005\"Q\u0005\u0005\b\u0005;\u0003A\u0011\u0003BP\u0003-\u0019\u0018N_3NCBLe.\u001b;\u0015\t\u0005u!\u0011\u0015\u0005\b\u0005\u0013\u0013Y\n1\u00018Q!\u0011YJa\u0007\u0003\"\t\u0015\u0002b\u0002BT\u0001\u0011E\u00111D\u0001\u0016g&TX-T1q\u0013:LG/\u00118e%\u0016\u0014W/\u001b7eQ!\u0011)Ka\u0007\u0003\"\t\u0015\u0002\u0002\u0003BW\u0001\u0011\u0005A!a\u0007\u0002\u0019A\u0014\u0018N\u001c;TSj,W*\u00199\t\u0011\tE\u0006\u0001\"\u0001\u0005\u00037\tQ\u0002\u001d:j]R\u001cuN\u001c;f]R\u001c\bb\u0002B[\u0001\u0011E\u00111D\u0001\u000fg&TX-T1q\t&\u001c\u0018M\u00197f\u0011\u001d\u0011I\f\u0001C\t\u00037\n\u0001#[:TSj,W*\u00199EK\u001aLg.\u001a3\t\u000f\tu\u0006\u0001\"\u0005\u0002\\\u0005\t\u0012\r\\<bsNLe.\u001b;TSj,W*\u00199\t\u000f\t\u0005\u0007\u0001\"\u0006\u0003D\u0006)\u0011N\u001c3fqR\u0019qG!2\t\u000f\u0005M\"q\u0018a\u0001o!9!\u0011\u001a\u0001\u0005\u0012\u0005m\u0011AC2mK\u0006\u0014H+\u00192mK\"A!Q\u001a\u0001\u0005\u0002\u0011\u0011y-A\tiCNDG+\u00192mK\u000e{g\u000e^3oiN,\"A!5\u0011\tA\t\u0016\u0011\u000b\u0005\b\u0005+\u0004A\u0011\u0003Bl\u0003AIg.\u001b;XSRD7i\u001c8uK:$8\u000f\u0006\u0003\u0002\u001e\te\u0007\u0002\u0003Bn\u0005'\u0004\rA!5\u0002\u0003\r\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/FlatHashTable.class */
public interface FlatHashTable<A> extends HashUtils<A> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/FlatHashTable$Contents.class */
    public static class Contents<A> {
        private final int loadFactor;
        private final int seedvalue;
        private final int[] sizemap;
        private final Object[] table;
        private final int tableSize;
        private final int threshold;

        public Contents(int i, Object[] objArr, int i2, int i3, int i4, int[] iArr) {
            this.loadFactor = i;
            this.table = objArr;
            this.tableSize = i2;
            this.threshold = i3;
            this.seedvalue = i4;
            this.sizemap = iArr;
        }

        public int loadFactor() {
            return this.loadFactor;
        }

        public int seedvalue() {
            return this.seedvalue;
        }

        public int[] sizemap() {
            return this.sizemap;
        }

        public Object[] table() {
            return this.table;
        }

        public int tableSize() {
            return this.tableSize;
        }

        public int threshold() {
            return this.threshold;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/FlatHashTable$HashUtils.class */
    public interface HashUtils<A> {

        /* renamed from: scala.collection.mutable.FlatHashTable$HashUtils$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/FlatHashTable$HashUtils$class.class */
        public abstract class Cclass {
            public static void $init$(HashUtils hashUtils) {
            }

            public static final Object elemToEntry(HashUtils hashUtils, Object obj) {
                FlatHashTable$NullSentinel$ flatHashTable$NullSentinel$ = obj;
                if (obj == null) {
                    flatHashTable$NullSentinel$ = FlatHashTable$NullSentinel$.MODULE$;
                }
                return flatHashTable$NullSentinel$;
            }

            public static final Object entryToElem(HashUtils hashUtils, Object obj) {
                Object obj2 = obj;
                if (obj == FlatHashTable$NullSentinel$.MODULE$) {
                    obj2 = null;
                }
                return obj2;
            }

            public static final int improve(HashUtils hashUtils, int i, int i2) {
                int byteswap32 = package$.MODULE$.byteswap32(i);
                int i3 = i2 % 32;
                return (byteswap32 << (32 - i3)) | (byteswap32 >>> i3);
            }

            public static final int sizeMapBucketBitSize(HashUtils hashUtils) {
                return 5;
            }

            public static final int sizeMapBucketSize(HashUtils hashUtils) {
                return 1 << hashUtils.sizeMapBucketBitSize();
            }
        }

        Object elemToEntry(A a);

        A entryToElem(Object obj);

        int improve(int i, int i2);

        int sizeMapBucketBitSize();

        int sizeMapBucketSize();
    }

    /* renamed from: scala.collection.mutable.FlatHashTable$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/FlatHashTable$class.class */
    public abstract class Cclass {
        public static void $init$(FlatHashTable flatHashTable) {
            flatHashTable._loadFactor_$eq(FlatHashTable$.MODULE$.defaultLoadFactor());
            flatHashTable.table_$eq(new Object[initialCapacity(flatHashTable)]);
            flatHashTable.tableSize_$eq(0);
            flatHashTable.threshold_$eq(FlatHashTable$.MODULE$.newThreshold(flatHashTable._loadFactor(), initialCapacity(flatHashTable)));
            flatHashTable.sizemap_$eq(null);
            flatHashTable.seedvalue_$eq(flatHashTable.tableSizeSeed());
        }

        public static boolean addElem(FlatHashTable flatHashTable, Object obj) {
            return flatHashTable.addEntry(flatHashTable.elemToEntry(obj));
        }

        public static boolean addEntry(FlatHashTable flatHashTable, Object obj) {
            int index = flatHashTable.index(obj.hashCode());
            Object obj2 = flatHashTable.table()[index];
            while (true) {
                Object obj3 = obj2;
                boolean z = true;
                if (obj3 == null) {
                    flatHashTable.table()[index] = obj;
                    flatHashTable.tableSize_$eq(flatHashTable.tableSize() + 1);
                    flatHashTable.nnSizeMapAdd(index);
                    if (flatHashTable.tableSize() < flatHashTable.threshold()) {
                        return true;
                    }
                    growTable(flatHashTable);
                    return true;
                }
                if (obj3 != obj) {
                    z = obj3 == null ? false : obj3 instanceof Number ? BoxesRunTime.equalsNumObject((Number) obj3, obj) : obj3 instanceof Character ? BoxesRunTime.equalsCharObject((Character) obj3, obj) : obj3.equals(obj);
                }
                if (z) {
                    return false;
                }
                index = (index + 1) % flatHashTable.table().length;
                obj2 = flatHashTable.table()[index];
            }
        }

        public static boolean alwaysInitSizeMap(FlatHashTable flatHashTable) {
            return false;
        }

        public static int calcSizeMapSize(FlatHashTable flatHashTable, int i) {
            return (i >> flatHashTable.sizeMapBucketBitSize()) + 1;
        }

        public static int capacity(FlatHashTable flatHashTable, int i) {
            return i == 0 ? 1 : HashTable$.MODULE$.powerOfTwo(i);
        }

        private static void checkConsistent(FlatHashTable flatHashTable) {
            Predef$ predef$ = Predef$.MODULE$;
            int length = flatHashTable.table().length;
            Range$ range$ = Range$.MODULE$;
            Range range = new Range(0, length, 1);
            FlatHashTable$$anonfun$checkConsistent$1 flatHashTable$$anonfun$checkConsistent$1 = new FlatHashTable$$anonfun$checkConsistent$1(flatHashTable);
            range.scala$collection$immutable$Range$$validateMaxLength();
            boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
            int start = range.start();
            int terminalElement = range.terminalElement();
            int step = range.step();
            int i = 0;
            while (true) {
                if (!z ? i < range.numRangeElements() : start != terminalElement) {
                    if (flatHashTable.table()[start] != null && !flatHashTable.containsElem(flatHashTable.entryToElem(flatHashTable.table()[start]))) {
                        Predef$ predef$2 = Predef$.MODULE$;
                        C2579xe92a0def c2579xe92a0def = new C2579xe92a0def(flatHashTable$$anonfun$checkConsistent$1, start);
                        StringBuilder append = new StringBuilder().append((Object) "assertion failed: ");
                        StringBuilder append2 = new StringBuilder().append(start).append((Object) " ").append(c2579xe92a0def.$outer.$outer.table()[start]).append((Object) " ");
                        Predef$ predef$3 = Predef$.MODULE$;
                        throw new AssertionError(append.append((Object) append2.append((Object) TraversableOnce.Cclass.mkString(new ArrayOps.ofRef(c2579xe92a0def.$outer.$outer.table()))).toString()).toString());
                    }
                    i++;
                    start += step;
                } else {
                    return;
                }
            }
        }

        public static void clearTable(FlatHashTable flatHashTable) {
            int length = flatHashTable.table().length;
            while (true) {
                length--;
                if (length < 0) {
                    flatHashTable.tableSize_$eq(0);
                    flatHashTable.nnSizeMapReset(flatHashTable.table().length);
                    return;
                }
                flatHashTable.table()[length] = null;
            }
        }

        public static boolean containsElem(FlatHashTable flatHashTable, Object obj) {
            return findElemImpl(flatHashTable, obj) != null;
        }

        private static Object findElemImpl(FlatHashTable flatHashTable, Object obj) {
            Object obj2;
            Object elemToEntry = flatHashTable.elemToEntry(obj);
            int index = flatHashTable.index(elemToEntry.hashCode());
            Object obj3 = flatHashTable.table()[index];
            while (true) {
                obj2 = obj3;
                if (obj2 == null) {
                    break;
                }
                if (obj2 == elemToEntry ? true : obj2 == null ? false : obj2 instanceof Number ? BoxesRunTime.equalsNumObject((Number) obj2, elemToEntry) : obj2 instanceof Character ? BoxesRunTime.equalsCharObject((Character) obj2, elemToEntry) : obj2.equals(elemToEntry)) {
                    break;
                }
                index = (index + 1) % flatHashTable.table().length;
                obj3 = flatHashTable.table()[index];
            }
            return obj2;
        }

        public static Option findEntry(FlatHashTable flatHashTable, Object obj) {
            Object findElemImpl = findElemImpl(flatHashTable, obj);
            return findElemImpl == null ? None$.MODULE$ : new Some(flatHashTable.entryToElem(findElemImpl));
        }

        private static void growTable(FlatHashTable flatHashTable) {
            Object[] table = flatHashTable.table();
            flatHashTable.table_$eq(new Object[flatHashTable.table().length * 2]);
            flatHashTable.tableSize_$eq(0);
            flatHashTable.nnSizeMapReset(flatHashTable.table().length);
            flatHashTable.seedvalue_$eq(flatHashTable.tableSizeSeed());
            flatHashTable.threshold_$eq(FlatHashTable$.MODULE$.newThreshold(flatHashTable._loadFactor(), flatHashTable.table().length));
            for (Object obj : table) {
                if (obj == null) {
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                } else {
                    BoxesRunTime.boxToBoolean(flatHashTable.addEntry(obj));
                }
            }
            if (tableDebug(flatHashTable)) {
                checkConsistent(flatHashTable);
            }
        }

        public static Contents hashTableContents(FlatHashTable flatHashTable) {
            return new Contents(flatHashTable._loadFactor(), flatHashTable.table(), flatHashTable.tableSize(), flatHashTable.threshold(), flatHashTable.seedvalue(), flatHashTable.sizemap());
        }

        public static final int index(FlatHashTable flatHashTable, int i) {
            int improve = flatHashTable.improve(i, flatHashTable.seedvalue());
            int length = flatHashTable.table().length - 1;
            return length & (improve >>> (32 - Integer.bitCount(length)));
        }

        public static void init(FlatHashTable flatHashTable, ObjectInputStream objectInputStream, Function1 function1) {
            objectInputStream.defaultReadObject();
            flatHashTable._loadFactor_$eq(objectInputStream.readInt());
            Predef$.MODULE$.m5971assert(flatHashTable._loadFactor() > 0);
            int readInt = objectInputStream.readInt();
            flatHashTable.tableSize_$eq(0);
            Predef$.MODULE$.m5971assert(readInt >= 0);
            flatHashTable.table_$eq(new Object[flatHashTable.capacity(FlatHashTable$.MODULE$.sizeForThreshold(readInt, flatHashTable._loadFactor()))]);
            flatHashTable.threshold_$eq(FlatHashTable$.MODULE$.newThreshold(flatHashTable._loadFactor(), flatHashTable.table().length));
            flatHashTable.seedvalue_$eq(objectInputStream.readInt());
            if (objectInputStream.readBoolean()) {
                flatHashTable.sizeMapInit(flatHashTable.table().length);
            } else {
                flatHashTable.sizemap_$eq(null);
            }
            for (int i = 0; i < readInt; i++) {
                A entryToElem = flatHashTable.entryToElem(objectInputStream.readObject());
                function1.apply(entryToElem);
                flatHashTable.addElem(entryToElem);
            }
        }

        public static void initWithContents(FlatHashTable flatHashTable, Contents contents) {
            if (contents != null) {
                flatHashTable._loadFactor_$eq(contents.loadFactor());
                flatHashTable.table_$eq(contents.table());
                flatHashTable.tableSize_$eq(contents.tableSize());
                flatHashTable.threshold_$eq(contents.threshold());
                flatHashTable.seedvalue_$eq(contents.seedvalue());
                flatHashTable.sizemap_$eq(contents.sizemap());
            }
            if (!flatHashTable.alwaysInitSizeMap() || flatHashTable.sizemap() != null) {
                return;
            }
            flatHashTable.sizeMapInitAndRebuild();
        }

        private static int initialCapacity(FlatHashTable flatHashTable) {
            return flatHashTable.capacity(flatHashTable.initialSize());
        }

        public static int initialSize(FlatHashTable flatHashTable) {
            return 32;
        }

        public static boolean isSizeMapDefined(FlatHashTable flatHashTable) {
            return flatHashTable.sizemap() != null;
        }

        public static Iterator iterator(FlatHashTable flatHashTable) {
            return new AbstractIterator<A>(flatHashTable) { // from class: scala.collection.mutable.FlatHashTable$$anon$1
                private final /* synthetic */ FlatHashTable $outer;

                /* renamed from: i */
                private int f1565i = 0;

                {
                    Objects.requireNonNull(flatHashTable);
                    this.$outer = flatHashTable;
                }

                /* renamed from: i */
                private int m136i() {
                    return this.f1565i;
                }

                private void i_$eq(int i) {
                    this.f1565i = i;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    boolean z;
                    while (true) {
                        z = true;
                        if (m136i() >= this.$outer.table().length || this.$outer.table()[m136i()] != null) {
                            break;
                        }
                        i_$eq(m136i() + 1);
                    }
                    if (m136i() >= this.$outer.table().length) {
                        z = false;
                    }
                    return z;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v2, types: [A] */
                @Override // scala.collection.Iterator
                public A next() {
                    Object obj;
                    if (hasNext()) {
                        i_$eq(m136i() + 1);
                        FlatHashTable flatHashTable2 = this.$outer;
                        obj = flatHashTable2.entryToElem(flatHashTable2.table()[m136i() - 1]);
                    } else {
                        obj = Iterator$.MODULE$.empty().next();
                    }
                    return obj;
                }
            };
        }

        public static void nnSizeMapAdd(FlatHashTable flatHashTable, int i) {
            if (flatHashTable.sizemap() != null) {
                int sizeMapBucketBitSize = i >> flatHashTable.sizeMapBucketBitSize();
                int[] sizemap = flatHashTable.sizemap();
                sizemap[sizeMapBucketBitSize] = sizemap[sizeMapBucketBitSize] + 1;
            }
        }

        public static void nnSizeMapRemove(FlatHashTable flatHashTable, int i) {
            if (flatHashTable.sizemap() != null) {
                int[] sizemap = flatHashTable.sizemap();
                int sizeMapBucketBitSize = i >> flatHashTable.sizeMapBucketBitSize();
                sizemap[sizeMapBucketBitSize] = sizemap[sizeMapBucketBitSize] - 1;
            }
        }

        public static void nnSizeMapReset(FlatHashTable flatHashTable, int i) {
            if (flatHashTable.sizemap() != null) {
                int calcSizeMapSize = flatHashTable.calcSizeMapSize(i);
                if (flatHashTable.sizemap().length != calcSizeMapSize) {
                    flatHashTable.sizemap_$eq(new int[calcSizeMapSize]);
                } else {
                    Arrays.fill(flatHashTable.sizemap(), 0);
                }
            }
        }

        private static final boolean precedes$1(FlatHashTable flatHashTable, int i, int i2) {
            boolean z = true;
            int length = flatHashTable.table().length >> 1;
            if (i > i2 ? i - i2 <= length : i2 - i >= length) {
                z = false;
            }
            return z;
        }

        public static void printContents(FlatHashTable flatHashTable) {
            Predef$.MODULE$.println(Predef$.MODULE$.refArrayOps(flatHashTable.table()).mkString("[", ", ", "]"));
        }

        public static void printSizeMap(FlatHashTable flatHashTable) {
            Predef$.MODULE$.println(Predef$.MODULE$.intArrayOps(flatHashTable.sizemap()).mkString("szmap: [", ", ", "]"));
        }

        public static int randomSeed(FlatHashTable flatHashTable) {
            return FlatHashTable$.MODULE$.seedGenerator().get().nextInt();
        }

        public static boolean removeElem(FlatHashTable flatHashTable, Object obj) {
            int i;
            if (tableDebug(flatHashTable)) {
                checkConsistent(flatHashTable);
            }
            Object elemToEntry = flatHashTable.elemToEntry(obj);
            int index = flatHashTable.index(elemToEntry.hashCode());
            Object obj2 = flatHashTable.table()[index];
            while (true) {
                Object obj3 = obj2;
                boolean z = false;
                if (obj3 == null) {
                    return false;
                }
                if (obj3 == elemToEntry) {
                    z = true;
                } else if (obj3 != null) {
                    z = obj3 instanceof Number ? BoxesRunTime.equalsNumObject((Number) obj3, elemToEntry) : obj3 instanceof Character ? BoxesRunTime.equalsCharObject((Character) obj3, elemToEntry) : obj3.equals(elemToEntry);
                }
                if (z) {
                    int i2 = index + 1;
                    int length = flatHashTable.table().length;
                    while (true) {
                        int i3 = i2 % length;
                        i = index;
                        if (flatHashTable.table()[i3] == null) {
                            break;
                        }
                        int index2 = flatHashTable.index(flatHashTable.table()[i3].hashCode());
                        index = i;
                        if (index2 != i3) {
                            index = i;
                            if (precedes$1(flatHashTable, index2, i)) {
                                flatHashTable.table()[i] = flatHashTable.table()[i3];
                                index = i3;
                            }
                        }
                        i2 = i3 + 1;
                        length = flatHashTable.table().length;
                    }
                    flatHashTable.table()[i] = null;
                    flatHashTable.tableSize_$eq(flatHashTable.tableSize() - 1);
                    flatHashTable.nnSizeMapRemove(i);
                    if (!tableDebug(flatHashTable)) {
                        return true;
                    }
                    checkConsistent(flatHashTable);
                    return true;
                }
                index = (index + 1) % flatHashTable.table().length;
                obj2 = flatHashTable.table()[index];
            }
        }

        public static void serializeTo(FlatHashTable flatHashTable, ObjectOutputStream objectOutputStream) {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeInt(flatHashTable._loadFactor());
            objectOutputStream.writeInt(flatHashTable.tableSize());
            objectOutputStream.writeInt(flatHashTable.seedvalue());
            objectOutputStream.writeBoolean(flatHashTable.isSizeMapDefined());
            flatHashTable.iterator().foreach(new FlatHashTable$$anonfun$serializeTo$1(flatHashTable, objectOutputStream));
        }

        public static void sizeMapDisable(FlatHashTable flatHashTable) {
            flatHashTable.sizemap_$eq(null);
        }

        public static void sizeMapInit(FlatHashTable flatHashTable, int i) {
            flatHashTable.sizemap_$eq(new int[flatHashTable.calcSizeMapSize(i)]);
        }

        public static void sizeMapInitAndRebuild(FlatHashTable flatHashTable) {
            int i;
            flatHashTable.sizeMapInit(flatHashTable.table().length);
            int i2 = flatHashTable.totalSizeMapBuckets();
            Object[] table = flatHashTable.table();
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            int min$extension = richInt$.min$extension(flatHashTable.sizeMapBucketSize(), table.length);
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                int i5 = 0;
                while (true) {
                    i = i5;
                    if (i3 < min$extension) {
                        int i6 = i;
                        if (table[i3] != null) {
                            i6 = i + 1;
                        }
                        i3++;
                        i5 = i6;
                    }
                }
                flatHashTable.sizemap()[i4] = i;
                min$extension += flatHashTable.sizeMapBucketSize();
            }
        }

        private static final boolean tableDebug(FlatHashTable flatHashTable) {
            return false;
        }

        public static int tableSizeSeed(FlatHashTable flatHashTable) {
            return Integer.bitCount(flatHashTable.table().length - 1);
        }

        public static final int totalSizeMapBuckets(FlatHashTable flatHashTable) {
            return ((flatHashTable.table().length - 1) / flatHashTable.sizeMapBucketSize()) + 1;
        }
    }

    int _loadFactor();

    @TraitSetter
    void _loadFactor_$eq(int i);

    boolean addElem(A a);

    boolean addEntry(Object obj);

    boolean alwaysInitSizeMap();

    int calcSizeMapSize(int i);

    int capacity(int i);

    void clearTable();

    boolean containsElem(A a);

    Option<A> findEntry(A a);

    Contents<A> hashTableContents();

    int index(int i);

    void init(ObjectInputStream objectInputStream, Function1<A, BoxedUnit> function1);

    void initWithContents(Contents<A> contents);

    int initialSize();

    boolean isSizeMapDefined();

    Iterator<A> iterator();

    void nnSizeMapAdd(int i);

    void nnSizeMapRemove(int i);

    void nnSizeMapReset(int i);

    void printContents();

    void printSizeMap();

    int randomSeed();

    boolean removeElem(A a);

    int seedvalue();

    @TraitSetter
    void seedvalue_$eq(int i);

    void serializeTo(ObjectOutputStream objectOutputStream);

    void sizeMapDisable();

    void sizeMapInit(int i);

    void sizeMapInitAndRebuild();

    int[] sizemap();

    @TraitSetter
    void sizemap_$eq(int[] iArr);

    Object[] table();

    int tableSize();

    int tableSizeSeed();

    @TraitSetter
    void tableSize_$eq(int i);

    @TraitSetter
    void table_$eq(Object[] objArr);

    int threshold();

    @TraitSetter
    void threshold_$eq(int i);

    int totalSizeMapBuckets();
}
