package scala.math;

import java.util.Comparator;
import java.util.Objects;
import scala.Function1;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Some;
import scala.Tuple2;
import scala.Tuple2$mcZZ$sp;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u0019\rh\u0001C\u0001\u0003!\u0003\r\taB6\u0003\u0011=\u0013H-\u001a:j]\u001eT!a\u0001\u0003\u0002\t5\fG\u000f\u001b\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001QC\u0001\u0005\u001a'\u0015\u0001\u0011\"E\u0012(!\tQq\"D\u0001\f\u0015\taQ\"\u0001\u0003mC:<'\"\u0001\b\u0002\t)\fg/Y\u0005\u0003!-\u0011aa\u00142kK\u000e$\bc\u0001\n\u0016/5\t1C\u0003\u0002\u0015\u001b\u0005!Q\u000f^5m\u0013\t12C\u0001\u0006D_6\u0004\u0018M]1u_J\u0004\"\u0001G\r\r\u0001\u0011)!\u0004\u0001b\u00017\t\tA+\u0005\u0002\u001dAA\u0011QDH\u0007\u0002\t%\u0011q\u0004\u0002\u0002\b\u001d>$\b.\u001b8h!\ti\u0012%\u0003\u0002#\t\t\u0019\u0011I\\=\u0011\u0007\u0011*s#D\u0001\u0003\u0013\t1#AA\bQCJ$\u0018.\u00197Pe\u0012,'/\u001b8h!\ti\u0002&\u0003\u0002*\t\ta1+\u001a:jC2L'0\u00192mK\")1\u0006\u0001C\u0001Y\u00051A%\u001b8ji\u0012\"\u0012!\f\t\u0003;9J!a\f\u0003\u0003\tUs\u0017\u000e\u001e\u0005\u0006c\u0001!\tAM\u0001\u000biJL8i\\7qCJ,GcA\u001a:wA\u0019Q\u0004\u000e\u001c\n\u0005U\"!\u0001B*p[\u0016\u0004\"!H\u001c\n\u0005a\"!aA%oi\")!\b\ra\u0001/\u0005\t\u0001\u0010C\u0003=a\u0001\u0007q#A\u0001z\u0011\u0015q\u0004A\"\u0001@\u0003\u001d\u0019w.\u001c9be\u0016$2A\u000e!B\u0011\u0015QT\b1\u0001\u0018\u0011\u0015aT\b1\u0001\u0018\u0011\u0015\u0019\u0005\u0001\"\u0011E\u0003\u0011aG/Z9\u0015\u0007\u0015C\u0015\n\u0005\u0002\u001e\r&\u0011q\t\u0002\u0002\b\u0005>|G.Z1o\u0011\u0015Q$\t1\u0001\u0018\u0011\u0015a$\t1\u0001\u0018\u0011\u0015Y\u0005\u0001\"\u0011M\u0003\u00119G/Z9\u0015\u0007\u0015ke\nC\u0003;\u0015\u0002\u0007q\u0003C\u0003=\u0015\u0002\u0007q\u0003C\u0003Q\u0001\u0011\u0005\u0013+\u0001\u0002miR\u0019QIU*\t\u000biz\u0005\u0019A\f\t\u000bqz\u0005\u0019A\f\t\u000bU\u0003A\u0011\t,\u0002\u0005\u001d$HcA#X1\")!\b\u0016a\u0001/!)A\b\u0016a\u0001/!)!\f\u0001C!7\u0006)Q-];jmR\u0019Q\tX/\t\u000biJ\u0006\u0019A\f\t\u000bqJ\u0006\u0019A\f\t\u000b}\u0003A\u0011\u00011\u0002\u00075\f\u0007\u0010F\u0002\u0018C\nDQA\u000f0A\u0002]AQ\u0001\u00100A\u0002]AQ\u0001\u001a\u0001\u0005\u0002\u0015\f1!\\5o)\r9bm\u001a\u0005\u0006u\r\u0004\ra\u0006\u0005\u0006y\r\u0004\ra\u0006\u0005\u0006S\u0002!\tE[\u0001\be\u00164XM]:f+\u0005Y\u0007c\u0001\u0013\u0001/!)Q\u000e\u0001C\u0001]\u0006\u0011qN\\\u000b\u0003_J$\"\u0001\u001d;\u0011\u0007\u0011\u0002\u0011\u000f\u0005\u0002\u0019e\u0012)1\u000f\u001cb\u00017\t\tQ\u000bC\u0003vY\u0002\u0007a/A\u0001g!\u0011ir/]\f\n\u0005a$!!\u0003$v]\u000e$\u0018n\u001c82\r\u0011Q\b\u0001A>\u0003\u0007=\u00038o\u0005\u0002zyB\u0011Q$`\u0005\u0003}\u0012\u0011a!\u00118z%\u00164\u0007\"CA\u0001s\n\u0005\t\u0015!\u0003\u0018\u0003\ra\u0007n\u001d\u0005\b\u0003\u000bIH\u0011AA\u0004\u0003\u0019a\u0014N\\5u}Q!\u0011\u0011BA\u0007!\r\tY!_\u0007\u0002\u0001!9\u0011\u0011AA\u0002\u0001\u00049\u0002bBA\ts\u0012\u0005\u00111C\u0001\u0006I1,7o\u001d\u000b\u0004\u000b\u0006U\u0001bBA\f\u0003\u001f\u0001\raF\u0001\u0004e\"\u001c\bbBA\u000es\u0012\u0005\u0011QD\u0001\tI1,7o\u001d\u0013fcR\u0019Q)a\b\t\u000f\u0005]\u0011\u0011\u0004a\u0001/!9\u00111E=\u0005\u0002\u0005\u0015\u0012\u0001\u0003\u0013he\u0016\fG/\u001a:\u0015\u0007\u0015\u000b9\u0003C\u0004\u0002\u0018\u0005\u0005\u0002\u0019A\f\t\u000f\u0005-\u0012\u0010\"\u0001\u0002.\u0005YAe\u001a:fCR,'\u000fJ3r)\r)\u0015q\u0006\u0005\b\u0003/\tI\u00031\u0001\u0018\u0011\u0019Q\u0016\u0010\"\u0001\u00024Q\u0019Q)!\u000e\t\u000f\u0005]\u0011\u0011\u0007a\u0001/!1q,\u001fC\u0001\u0003s!2aFA\u001e\u0011\u001d\t9\"a\u000eA\u0002]Aa\u0001Z=\u0005\u0002\u0005}BcA\f\u0002B!9\u0011qCA\u001f\u0001\u00049\u0002bBA#\u0001\u0011\r\u0011qI\u0001\u000e[.|%\u000fZ3sS:<w\n]:\u0015\t\u0005%\u0011\u0011\n\u0005\b\u0003\u0003\t\u0019\u00051\u0001\u0018Q\u0015\u0001\u0011QJA-!\u0011\ty%!\u0016\u000e\u0005\u0005E#bAA*\t\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\t\u0005]\u0013\u0011\u000b\u0002\u0011S6\u0004H.[2ji:{GOR8v]\u0012\f#!a\u0017\u0002M9{\u0007%[7qY&\u001c\u0017\u000e\u001e\u0011Pe\u0012,'/\u001b8hA\u0011,g-\u001b8fI\u00022wN\u001d\u0011%wRkhfB\u0004\u0002`\tA\t!!\u0019\u0002\u0011=\u0013H-\u001a:j]\u001e\u00042\u0001JA2\r\u0019\t!\u0001#\u0001\u0002fM1\u00111\r?\u0002h\u001d\u00022\u0001JA5\u0013\r\tYG\u0001\u0002\u001d\u0019><\bK]5pe&$\u0018p\u0014:eKJLgnZ%na2L7-\u001b;t\u0011!\t)!a\u0019\u0005\u0002\u0005=DCAA1\u0011!\t\u0019(a\u0019\u0005\u0002\u0005U\u0014!B1qa2LX\u0003BA<\u0003{\"B!!\u001f\u0002��A!A\u0005AA>!\rA\u0012Q\u0010\u0003\u00075\u0005E$\u0019A\u000e\t\u0011\u0005\u0005\u0015\u0011\u000fa\u0002\u0003s\n1a\u001c:e\r)\t))a\u0019\u0011\u0002\u0007\u0005\u0011q\u0011\u0002\u000f\u000bb$(/Y%na2L7-\u001b;t'\r\t\u0019\t \u0005\u0007W\u0005\rE\u0011\u0001\u0017\t\u0011\u00055\u00151\u0011C\u0002\u0003\u001f\u000b!c]3r\t\u0016\u0014\u0018N^3e\u001fJ$WM]5oOV1\u0011\u0011SAL\u0003g#B!a%\u00026B!A\u0005AAK!\u0015A\u0012qSAY\t!\tI*a#C\u0002\u0005m%AA\"D+\u0011\ti*!,\u0012\u0007q\ty\n\u0005\u0004\u0002\"\u0006\u001d\u00161V\u0007\u0003\u0003GS1!!*\u0005\u0003)\u0019w\u000e\u001c7fGRLwN\\\u0005\u0005\u0003S\u000b\u0019KA\u0002TKF\u00042\u0001GAW\t\u001d\ty+a&C\u0002m\u0011\u0011\u0001\u0017\t\u00041\u0005MFA\u0002\u000e\u0002\f\n\u00071\u0004\u0003\u0005\u0002\u0002\u0006-\u00059AA\\!\u0011!\u0003!!-\t\u0011\u0005m\u00161\u0011C\u0002\u0003{\u000b\u0001#\u001b8gSb|%\u000fZ3sS:<w\n]:\u0016\t\u0005}\u0016\u0011\u001a\u000b\u0005\u0003\u0003\fi\r\u0006\u0003\u0002D\u0006-\u0007cAAcsB!A\u0005AAd!\rA\u0012\u0011\u001a\u0003\u00075\u0005e&\u0019A\u000e\t\u0011\u0005\u0005\u0015\u0011\u0018a\u0002\u0003\u000bDqAOA]\u0001\u0004\t9m\u0002\u0005\u0002R\u0006\r\u0004\u0012AAj\u0003%IU\u000e\u001d7jG&$8\u000f\u0005\u0003\u0002V\u0006]WBAA2\r!\tI.a\u0019\t\u0002\u0005m'!C%na2L7-\u001b;t'\u0015\t9\u000e`Ao!\u0011\t).a!\t\u0011\u0005\u0015\u0011q\u001bC\u0001\u0003C$\"!a5\t\u0011\u0005\u0015\u00181\rC\u0001\u0003O\fAB\u001a:p[2+7o\u001d+iC:,B!!;\u0002pR!\u00111^Ay!\u0011!\u0003!!<\u0011\u0007a\ty\u000f\u0002\u0004\u001b\u0003G\u0014\ra\u0007\u0005\t\u0003g\f\u0019\u000f1\u0001\u0002v\u0006\u00191-\u001c9\u0011\u0011u\t90!<\u0002n\u0016K1!!?\u0005\u0005%1UO\\2uS>t'\u0007\u0003\u0005\u0002~\u0006\rD\u0011AA��\u0003\t\u0011\u00170\u0006\u0004\u0003\u0002\t%!\u0011\u0003\u000b\u0005\u0005\u0007\u0011)\u0002\u0006\u0003\u0003\u0006\t-\u0001\u0003\u0002\u0013\u0001\u0005\u000f\u00012\u0001\u0007B\u0005\t\u0019Q\u00121 b\u00017!A\u0011\u0011QA~\u0001\b\u0011i\u0001\u0005\u0003%\u0001\t=\u0001c\u0001\r\u0003\u0012\u00119!1CA~\u0005\u0004Y\"!A*\t\u000fU\fY\u00101\u0001\u0003\u0018A1Qd\u001eB\u0004\u0005\u001f1!Ba\u0007\u0002dA\u0005\u0019\u0011\u0001B\u000f\u00051)f.\u001b;Pe\u0012,'/\u001b8h'\u0015\u0011I\"\u0003B\u0010!\r!\u0003!\f\u0005\u0007W\teA\u0011\u0001\u0017\t\u000fy\u0012I\u0002\"\u0001\u0003&Q)aGa\n\u0003*!1!Ha\tA\u00025Ba\u0001\u0010B\u0012\u0001\u0004is\u0001\u0003B\u0017\u0003GB\u0019Aa\f\u0002\tUs\u0017\u000e\u001e\t\u0005\u0003+\u0014\tDB\u00040\u0003GB\tAa\r\u0014\u000b\tE\u0012B!\u000e\u0011\t\u0005U'\u0011\u0004\u0005\t\u0003\u000b\u0011\t\u0004\"\u0001\u0003:Q\u0011!q\u0006\u0005\u000b\u0005{\u0011\t$!A\u0005\n\t}\u0012a\u0003:fC\u0012\u0014Vm]8mm\u0016$\u0012!\u0003\u0004\u000b\u0005\u0007\n\u0019\u0007%A\u0002\u0002\t\u0015#a\u0004\"p_2,\u0017M\\(sI\u0016\u0014\u0018N\\4\u0014\u000b\t\u0005\u0013Ba\u0012\u0011\u0007\u0011\u0002Q\t\u0003\u0004,\u0005\u0003\"\t\u0001\f\u0005\b}\t\u0005C\u0011\u0001B')\u00151$q\nB)\u0011\u0019Q$1\na\u0001\u000b\"1AHa\u0013A\u0002\u0015;\u0001B!\u0016\u0002d!\r!qK\u0001\b\u0005>|G.Z1o!\u0011\t)N!\u0017\u0007\u000f\u001d\u000b\u0019\u0007#\u0001\u0003\\M)!\u0011L\u0005\u0003^A!\u0011Q\u001bB!\u0011!\t)A!\u0017\u0005\u0002\t\u0005DC\u0001B,\u0011)\u0011iD!\u0017\u0002\u0002\u0013%!q\b\u0004\u000b\u0005O\n\u0019\u0007%A\u0002\u0002\t%$\u0001\u0004\"zi\u0016|%\u000fZ3sS:<7#\u0002B3\u0013\t-\u0004\u0003\u0002\u0013\u0001\u0005[\u00022!\bB8\u0013\r\u0011\t\b\u0002\u0002\u0005\u0005f$X\r\u0003\u0004,\u0005K\"\t\u0001\f\u0005\b}\t\u0015D\u0011\u0001B<)\u00151$\u0011\u0010B>\u0011\u001dQ$Q\u000fa\u0001\u0005[Bq\u0001\u0010B;\u0001\u0004\u0011ig\u0002\u0005\u0003��\u0005\r\u00042\u0001BA\u0003\u0011\u0011\u0015\u0010^3\u0011\t\u0005U'1\u0011\u0004\t\u0005c\n\u0019\u0007#\u0001\u0003\u0006N)!1Q\u0005\u0003\bB!\u0011Q\u001bB3\u0011!\t)Aa!\u0005\u0002\t-EC\u0001BA\u0011)\u0011iDa!\u0002\u0002\u0013%!q\b\u0004\u000b\u0005#\u000b\u0019\u0007%A\u0002\u0002\tM%\u0001D\"iCJ|%\u000fZ3sS:<7#\u0002BH\u0013\tU\u0005\u0003\u0002\u0013\u0001\u0005/\u00032!\bBM\u0013\r\u0011Y\n\u0002\u0002\u0005\u0007\"\f'\u000f\u0003\u0004,\u0005\u001f#\t\u0001\f\u0005\b}\t=E\u0011\u0001BQ)\u00151$1\u0015BS\u0011\u001dQ$q\u0014a\u0001\u0005/Cq\u0001\u0010BP\u0001\u0004\u00119j\u0002\u0005\u0003*\u0006\r\u00042\u0001BV\u0003\u0011\u0019\u0005.\u0019:\u0011\t\u0005U'Q\u0016\u0004\t\u00057\u000b\u0019\u0007#\u0001\u00030N)!QV\u0005\u00032B!\u0011Q\u001bBH\u0011!\t)A!,\u0005\u0002\tUFC\u0001BV\u0011)\u0011iD!,\u0002\u0002\u0013%!q\b\u0004\u000b\u0005w\u000b\u0019\u0007%A\u0002\u0002\tu&!D*i_J$xJ\u001d3fe&twmE\u0003\u0003:&\u0011y\f\u0005\u0003%\u0001\t\u0005\u0007cA\u000f\u0003D&\u0019!Q\u0019\u0003\u0003\u000bMCwN\u001d;\t\r-\u0012I\f\"\u0001-\u0011\u001dq$\u0011\u0018C\u0001\u0005\u0017$RA\u000eBg\u0005\u001fDqA\u000fBe\u0001\u0004\u0011\t\rC\u0004=\u0005\u0013\u0004\rA!1\b\u0011\tM\u00171\rE\u0002\u0005+\fQa\u00155peR\u0004B!!6\u0003X\u001aA!QYA2\u0011\u0003\u0011InE\u0003\u0003X&\u0011Y\u000e\u0005\u0003\u0002V\ne\u0006\u0002CA\u0003\u0005/$\tAa8\u0015\u0005\tU\u0007B\u0003B\u001f\u0005/\f\t\u0011\"\u0003\u0003@\u0019Q!Q]A2!\u0003\r\tAa:\u0003\u0017%sGo\u0014:eKJLgnZ\n\u0006\u0005GL!\u0011\u001e\t\u0004I\u00011\u0004BB\u0016\u0003d\u0012\u0005A\u0006C\u0004?\u0005G$\tAa<\u0015\u000bY\u0012\tPa=\t\ri\u0012i\u000f1\u00017\u0011\u0019a$Q\u001ea\u0001m\u001dA!q_A2\u0011\u0007\u0011I0A\u0002J]R\u0004B!!6\u0003|\u001a9\u0001(a\u0019\t\u0002\tu8#\u0002B~\u0013\t}\b\u0003BAk\u0005GD\u0001\"!\u0002\u0003|\u0012\u000511\u0001\u000b\u0003\u0005sD!B!\u0010\u0003|\u0006\u0005I\u0011\u0002B \r)\u0019I!a\u0019\u0011\u0002\u0007\u000511\u0002\u0002\r\u0019>twm\u0014:eKJLgnZ\n\u0006\u0007\u000fI1Q\u0002\t\u0005I\u0001\u0019y\u0001E\u0002\u001e\u0007#I1aa\u0005\u0005\u0005\u0011auN\\4\t\r-\u001a9\u0001\"\u0001-\u0011\u001dq4q\u0001C\u0001\u00073!RANB\u000e\u0007;AqAOB\f\u0001\u0004\u0019y\u0001C\u0004=\u0007/\u0001\raa\u0004\b\u0011\r\u0005\u00121\rE\u0002\u0007G\tA\u0001T8oOB!\u0011Q[B\u0013\r!\u0019\u0019\"a\u0019\t\u0002\r\u001d2#BB\u0013\u0013\r%\u0002\u0003BAk\u0007\u000fA\u0001\"!\u0002\u0004&\u0011\u00051Q\u0006\u000b\u0003\u0007GA!B!\u0010\u0004&\u0005\u0005I\u0011\u0002B \r)\u0019\u0019$a\u0019\u0011\u0002\u0007\u00051Q\u0007\u0002\u000e\r2|\u0017\r^(sI\u0016\u0014\u0018N\\4\u0014\u000b\rE\u0012ba\u000e\u0011\t\u0011\u00021\u0011\b\t\u0004;\rm\u0012bAB\u001f\t\t)a\t\\8bi\"11f!\r\u0005\u00021BqAPB\u0019\t\u0003\u0019\u0019\u0005F\u00037\u0007\u000b\u001a9\u0005C\u0004;\u0007\u0003\u0002\ra!\u000f\t\u000fq\u001a\t\u00051\u0001\u0004:!91i!\r\u0005B\r-C#B#\u0004N\r=\u0003b\u0002\u001e\u0004J\u0001\u00071\u0011\b\u0005\by\r%\u0003\u0019AB\u001d\u0011\u001dY5\u0011\u0007C!\u0007'\"R!RB+\u0007/BqAOB)\u0001\u0004\u0019I\u0004C\u0004=\u0007#\u0002\ra!\u000f\t\u000fA\u001b\t\u0004\"\u0011\u0004\\Q)Qi!\u0018\u0004`!9!h!\u0017A\u0002\re\u0002b\u0002\u001f\u0004Z\u0001\u00071\u0011\b\u0005\b+\u000eEB\u0011IB2)\u0015)5QMB4\u0011\u001dQ4\u0011\ra\u0001\u0007sAq\u0001PB1\u0001\u0004\u0019I\u0004C\u0004[\u0007c!\tea\u001b\u0015\u000b\u0015\u001biga\u001c\t\u000fi\u001aI\u00071\u0001\u0004:!9Ah!\u001bA\u0002\re\u0002bB0\u00042\u0011\u000531\u000f\u000b\u0007\u0007s\u0019)ha\u001e\t\u000fi\u001a\t\b1\u0001\u0004:!9Ah!\u001dA\u0002\re\u0002b\u00023\u00042\u0011\u000531\u0010\u000b\u0007\u0007s\u0019iha \t\u000fi\u001aI\b1\u0001\u0004:!9Ah!\u001fA\u0002\re\u0002bB5\u00042\u0011\u000531Q\u000b\u0003\u0007o9\u0001ba\"\u0002d!\r1\u0011R\u0001\u0006\r2|\u0017\r\u001e\t\u0005\u0003+\u001cYI\u0002\u0005\u0004>\u0005\r\u0004\u0012ABG'\u0015\u0019Y)CBH!\u0011\t)n!\r\t\u0011\u0005\u001511\u0012C\u0001\u0007'#\"a!#\t\u0015\tu21RA\u0001\n\u0013\u0011yD\u0002\u0006\u0004\u001a\u0006\r\u0004\u0013aA\u0001\u00077\u0013a\u0002R8vE2,wJ\u001d3fe&twmE\u0003\u0004\u0018&\u0019i\n\u0005\u0003%\u0001\r}\u0005cA\u000f\u0004\"&\u001911\u0015\u0003\u0003\r\u0011{WO\u00197f\u0011\u0019Y3q\u0013C\u0001Y!9aha&\u0005\u0002\r%F#\u0002\u001c\u0004,\u000e5\u0006b\u0002\u001e\u0004(\u0002\u00071q\u0014\u0005\by\r\u001d\u0006\u0019ABP\u0011\u001d\u00195q\u0013C!\u0007c#R!RBZ\u0007kCqAOBX\u0001\u0004\u0019y\nC\u0004=\u0007_\u0003\raa(\t\u000f-\u001b9\n\"\u0011\u0004:R)Qia/\u0004>\"9!ha.A\u0002\r}\u0005b\u0002\u001f\u00048\u0002\u00071q\u0014\u0005\b!\u000e]E\u0011IBa)\u0015)51YBc\u0011\u001dQ4q\u0018a\u0001\u0007?Cq\u0001PB`\u0001\u0004\u0019y\nC\u0004V\u0007/#\te!3\u0015\u000b\u0015\u001bYm!4\t\u000fi\u001a9\r1\u0001\u0004 \"9Aha2A\u0002\r}\u0005b\u0002.\u0004\u0018\u0012\u00053\u0011\u001b\u000b\u0006\u000b\u000eM7Q\u001b\u0005\bu\r=\u0007\u0019ABP\u0011\u001da4q\u001aa\u0001\u0007?CqaXBL\t\u0003\u001aI\u000e\u0006\u0004\u0004 \u000em7Q\u001c\u0005\bu\r]\u0007\u0019ABP\u0011\u001da4q\u001ba\u0001\u0007?Cq\u0001ZBL\t\u0003\u001a\t\u000f\u0006\u0004\u0004 \u000e\r8Q\u001d\u0005\bu\r}\u0007\u0019ABP\u0011\u001da4q\u001ca\u0001\u0007?Cq![BL\t\u0003\u001aI/\u0006\u0002\u0004\u001e\u001eA1Q^A2\u0011\u0007\u0019y/\u0001\u0004E_V\u0014G.\u001a\t\u0005\u0003+\u001c\tP\u0002\u0005\u0004$\u0006\r\u0004\u0012ABz'\u0015\u0019\t0CB{!\u0011\t)na&\t\u0011\u0005\u00151\u0011\u001fC\u0001\u0007s$\"aa<\t\u0015\tu2\u0011_A\u0001\n\u0013\u0011yD\u0002\u0006\u0004��\u0006\r\u0004\u0013aA\u0001\t\u0003\u0011aBQ5h\u0013:$xJ\u001d3fe&twmE\u0003\u0004~&!\u0019\u0001\u0005\u0003%\u0001\u0011\u0015\u0001c\u0001\u0013\u0005\b%\u0019A\u0011\u0002\u0002\u0003\r\tKw-\u00138u\u0011\u0019Y3Q C\u0001Y!9ah!@\u0005\u0002\u0011=A#\u0002\u001c\u0005\u0012\u0011M\u0001b\u0002\u001e\u0005\u000e\u0001\u0007AQ\u0001\u0005\by\u00115\u0001\u0019\u0001C\u0003\u000f!!9\"a\u0019\t\u0004\u0011e\u0011A\u0002\"jO&sG\u000f\u0005\u0003\u0002V\u0012ma\u0001\u0003C\u0005\u0003GB\t\u0001\"\b\u0014\u000b\u0011m\u0011\u0002b\b\u0011\t\u0005U7Q \u0005\t\u0003\u000b!Y\u0002\"\u0001\u0005$Q\u0011A\u0011\u0004\u0005\u000b\u0005{!Y\"!A\u0005\n\t}bA\u0003C\u0015\u0003G\u0002\n1!\u0001\u0005,\t\u0011\")[4EK\u000eLW.\u00197Pe\u0012,'/\u001b8h'\u0015!9#\u0003C\u0017!\u0011!\u0003\u0001b\f\u0011\u0007\u0011\"\t$C\u0002\u00054\t\u0011!BQ5h\t\u0016\u001c\u0017.\\1m\u0011\u0019YCq\u0005C\u0001Y!9a\bb\n\u0005\u0002\u0011eB#\u0002\u001c\u0005<\u0011u\u0002b\u0002\u001e\u00058\u0001\u0007Aq\u0006\u0005\by\u0011]\u0002\u0019\u0001C\u0018\u000f!!\t%a\u0019\t\u0004\u0011\r\u0013A\u0003\"jO\u0012+7-[7bYB!\u0011Q\u001bC#\r!!\u0019$a\u0019\t\u0002\u0011\u001d3#\u0002C#\u0013\u0011%\u0003\u0003BAk\tOA\u0001\"!\u0002\u0005F\u0011\u0005AQ\n\u000b\u0003\t\u0007B!B!\u0010\u0005F\u0005\u0005I\u0011\u0002B \r)!\u0019&a\u0019\u0011\u0002\u0007\u0005AQ\u000b\u0002\u000f'R\u0014\u0018N\\4Pe\u0012,'/\u001b8h'\u0015!\t&\u0003C,!\u0011!\u0003\u0001\"\u0017\u0011\t\u0011mC\u0011\r\b\u0004;\u0011u\u0013b\u0001C0\t\u00051\u0001K]3eK\u001aLA\u0001b\u0019\u0005f\t11\u000b\u001e:j]\u001eT1\u0001b\u0018\u0005\u0011\u0019YC\u0011\u000bC\u0001Y!9a\b\"\u0015\u0005\u0002\u0011-D#\u0002\u001c\u0005n\u0011=\u0004b\u0002\u001e\u0005j\u0001\u0007A\u0011\f\u0005\by\u0011%\u0004\u0019\u0001C-\u000f!!\u0019(a\u0019\t\u0004\u0011U\u0014AB*ue&tw\r\u0005\u0003\u0002V\u0012]d\u0001\u0003C2\u0003GB\t\u0001\"\u001f\u0014\u000b\u0011]\u0014\u0002b\u001f\u0011\t\u0005UG\u0011\u000b\u0005\t\u0003\u000b!9\b\"\u0001\u0005��Q\u0011AQ\u000f\u0005\u000b\u0005{!9(!A\u0005\n\t}bA\u0003CC\u0003G\u0002\n1!\u0001\u0005\b\nqq\n\u001d;j_:|%\u000fZ3sS:<W\u0003\u0002CE\t+\u001bR\u0001b!\n\t\u0017\u0003B\u0001\n\u0001\u0005\u000eB)Q\u0004b$\u0005\u0014&\u0019A\u0011\u0013\u0003\u0003\r=\u0003H/[8o!\rABQ\u0013\u0003\u00075\u0011\r%\u0019A\u000e\t\r-\"\u0019\t\"\u0001-\u0011!!Y\nb!\u0007\u0002\u0011u\u0015AD8qi&|gn\u0014:eKJLgnZ\u000b\u0003\t?\u0003B\u0001\n\u0001\u0005\u0014\"9a\bb!\u0005\u0002\u0011\rF#\u0002\u001c\u0005&\u0012\u001d\u0006b\u0002\u001e\u0005\"\u0002\u0007AQ\u0012\u0005\by\u0011\u0005\u0006\u0019\u0001CG\u0011!!Y+a\u0019\u0005\u0004\u00115\u0016AB(qi&|g.\u0006\u0003\u00050\u0012]F\u0003\u0002CY\ts\u0003B\u0001\n\u0001\u00054B)Q\u0004b$\u00056B\u0019\u0001\u0004b.\u0005\ri!IK1\u0001\u001c\u0011!\t\t\t\"+A\u0004\u0011m\u0006\u0003\u0002\u0013\u0001\tkC\u0001\u0002b0\u0002d\u0011\rA\u0011Y\u0001\t\u0013R,'/\u00192mKV!A1\u0019Cl)\u0011!)\r\"7\u0011\t\u0011\u0002Aq\u0019\t\u0007\t\u0013$y\r\"6\u000f\u0007u!Y-C\u0002\u0005N\u0012\tq\u0001]1dW\u0006<W-\u0003\u0003\u0005R\u0012M'\u0001C%uKJ\f'\r\\3\u000b\u0007\u00115G\u0001E\u0002\u0019\t/$aA\u0007C_\u0005\u0004Y\u0002\u0002CAA\t{\u0003\u001d\u0001b7\u0011\t\u0011\u0002AQ\u001b\u0005\t\t?\f\u0019\u0007b\u0001\u0005b\u00061A+\u001e9mKJ*b\u0001b9\u0005p\u0012UHC\u0002Cs\ts$y\u0010\u0005\u0003%\u0001\u0011\u001d\bcB\u000f\u0005j\u00125H1_\u0005\u0004\tW$!A\u0002+va2,'\u0007E\u0002\u0019\t_$q\u0001\"=\u0005^\n\u00071D\u0001\u0002UcA\u0019\u0001\u0004\">\u0005\u000f\u0011]HQ\u001cb\u00017\t\u0011AK\r\u0005\t\tw$i\u000eq\u0001\u0005~\u0006!qN\u001d32!\u0011!\u0003\u0001\"<\t\u0011\u0015\u0005AQ\u001ca\u0002\u000b\u0007\tAa\u001c:eeA!A\u0005\u0001Cz\u0011!)9!a\u0019\u0005\u0004\u0015%\u0011A\u0002+va2,7'\u0006\u0005\u0006\f\u0015]Q1DC\u0010)!)i!b\t\u0006(\u0015-\u0002\u0003\u0002\u0013\u0001\u000b\u001f\u0001\u0012\"HC\t\u000b+)I\"\"\b\n\u0007\u0015MAA\u0001\u0004UkBdWm\r\t\u00041\u0015]Aa\u0002Cy\u000b\u000b\u0011\ra\u0007\t\u00041\u0015mAa\u0002C|\u000b\u000b\u0011\ra\u0007\t\u00041\u0015}AaBC\u0011\u000b\u000b\u0011\ra\u0007\u0002\u0003)NB\u0001\u0002b?\u0006\u0006\u0001\u000fQQ\u0005\t\u0005I\u0001))\u0002\u0003\u0005\u0006\u0002\u0015\u0015\u00019AC\u0015!\u0011!\u0003!\"\u0007\t\u0011\u00155RQ\u0001a\u0002\u000b_\tAa\u001c:egA!A\u0005AC\u000f\u0011!)\u0019$a\u0019\u0005\u0004\u0015U\u0012A\u0002+va2,G'\u0006\u0006\u00068\u0015\rSqIC&\u000b\u001f\"\"\"\"\u000f\u0006T\u0015]S1LC0!\u0011!\u0003!b\u000f\u0011\u0017u)i$\"\u0011\u0006F\u0015%SQJ\u0005\u0004\u000b\u007f!!A\u0002+va2,G\u0007E\u0002\u0019\u000b\u0007\"q\u0001\"=\u00062\t\u00071\u0004E\u0002\u0019\u000b\u000f\"q\u0001b>\u00062\t\u00071\u0004E\u0002\u0019\u000b\u0017\"q!\"\t\u00062\t\u00071\u0004E\u0002\u0019\u000b\u001f\"q!\"\u0015\u00062\t\u00071D\u0001\u0002Ui!AA1`C\u0019\u0001\b))\u0006\u0005\u0003%\u0001\u0015\u0005\u0003\u0002CC\u0001\u000bc\u0001\u001d!\"\u0017\u0011\t\u0011\u0002QQ\t\u0005\t\u000b[)\t\u0004q\u0001\u0006^A!A\u0005AC%\u0011!)\t'\"\rA\u0004\u0015\r\u0014\u0001B8sIR\u0002B\u0001\n\u0001\u0006N!AQqMA2\t\u0007)I'\u0001\u0004UkBdW-N\u000b\r\u000bW*9(b\u001f\u0006��\u0015\rUq\u0011\u000b\r\u000b[*Y)b$\u0006\u0014\u0016]U1\u0014\t\u0005I\u0001)y\u0007E\u0007\u001e\u000bc*)(\"\u001f\u0006~\u0015\u0005UQQ\u0005\u0004\u000bg\"!A\u0002+va2,W\u0007E\u0002\u0019\u000bo\"q\u0001\"=\u0006f\t\u00071\u0004E\u0002\u0019\u000bw\"q\u0001b>\u0006f\t\u00071\u0004E\u0002\u0019\u000b\u007f\"q!\"\t\u0006f\t\u00071\u0004E\u0002\u0019\u000b\u0007#q!\"\u0015\u0006f\t\u00071\u0004E\u0002\u0019\u000b\u000f#q!\"#\u0006f\t\u00071D\u0001\u0002Uk!AA1`C3\u0001\b)i\t\u0005\u0003%\u0001\u0015U\u0004\u0002CC\u0001\u000bK\u0002\u001d!\"%\u0011\t\u0011\u0002Q\u0011\u0010\u0005\t\u000b[))\u0007q\u0001\u0006\u0016B!A\u0005AC?\u0011!)\t'\"\u001aA\u0004\u0015e\u0005\u0003\u0002\u0013\u0001\u000b\u0003C\u0001\"\"(\u0006f\u0001\u000fQqT\u0001\u0005_J$W\u0007\u0005\u0003%\u0001\u0015\u0015\u0005\u0002CCR\u0003G\"\u0019!\"*\u0002\rQ+\b\u000f\\37+9)9+b-\u00068\u0016mVqXCb\u000b\u000f$b\"\"+\u0006L\u0016=W1[Cl\u000b7,y\u000e\u0005\u0003%\u0001\u0015-\u0006cD\u000f\u0006.\u0016EVQWC]\u000b{+\t-\"2\n\u0007\u0015=FA\u0001\u0004UkBdWM\u000e\t\u00041\u0015MFa\u0002Cy\u000bC\u0013\ra\u0007\t\u00041\u0015]Fa\u0002C|\u000bC\u0013\ra\u0007\t\u00041\u0015mFaBC\u0011\u000bC\u0013\ra\u0007\t\u00041\u0015}FaBC)\u000bC\u0013\ra\u0007\t\u00041\u0015\rGaBCE\u000bC\u0013\ra\u0007\t\u00041\u0015\u001dGaBCe\u000bC\u0013\ra\u0007\u0002\u0003)ZB\u0001\u0002b?\u0006\"\u0002\u000fQQ\u001a\t\u0005I\u0001)\t\f\u0003\u0005\u0006\u0002\u0015\u0005\u00069ACi!\u0011!\u0003!\".\t\u0011\u00155R\u0011\u0015a\u0002\u000b+\u0004B\u0001\n\u0001\u0006:\"AQ\u0011MCQ\u0001\b)I\u000e\u0005\u0003%\u0001\u0015u\u0006\u0002CCO\u000bC\u0003\u001d!\"8\u0011\t\u0011\u0002Q\u0011\u0019\u0005\t\u000bC,\t\u000bq\u0001\u0006d\u0006!qN\u001d37!\u0011!\u0003!\"2\t\u0011\u0015\u001d\u00181\rC\u0002\u000bS\fa\u0001V;qY\u0016<T\u0003ECv\u000bo,Y0b@\u0007\u0004\u0019\u001da1\u0002D\b)A)iOb\u0005\u0007\u0018\u0019maq\u0004D\u0012\rO1Y\u0003\u0005\u0003%\u0001\u0015=\b#E\u000f\u0006r\u0016UX\u0011`C\u007f\r\u00031)A\"\u0003\u0007\u000e%\u0019Q1\u001f\u0003\u0003\rQ+\b\u000f\\38!\rARq\u001f\u0003\b\tc,)O1\u0001\u001c!\rAR1 \u0003\b\to,)O1\u0001\u001c!\rARq \u0003\b\u000bC))O1\u0001\u001c!\rAb1\u0001\u0003\b\u000b#*)O1\u0001\u001c!\rAbq\u0001\u0003\b\u000b\u0013+)O1\u0001\u001c!\rAb1\u0002\u0003\b\u000b\u0013,)O1\u0001\u001c!\rAbq\u0002\u0003\b\r#))O1\u0001\u001c\u0005\t!v\u0007\u0003\u0005\u0005|\u0016\u0015\b9\u0001D\u000b!\u0011!\u0003!\">\t\u0011\u0015\u0005QQ\u001da\u0002\r3\u0001B\u0001\n\u0001\u0006z\"AQQFCs\u0001\b1i\u0002\u0005\u0003%\u0001\u0015u\b\u0002CC1\u000bK\u0004\u001dA\"\t\u0011\t\u0011\u0002a\u0011\u0001\u0005\t\u000b;+)\u000fq\u0001\u0007&A!A\u0005\u0001D\u0003\u0011!)\t/\":A\u0004\u0019%\u0002\u0003\u0002\u0013\u0001\r\u0013A\u0001B\"\f\u0006f\u0002\u000faqF\u0001\u0005_J$w\u0007\u0005\u0003%\u0001\u00195\u0001\u0002\u0003D\u001a\u0003G\"\u0019A\"\u000e\u0002\rQ+\b\u000f\\39+I19Db\u0011\u0007H\u0019-cq\nD*\r/2YFb\u0018\u0015%\u0019eb1\rD4\rW2yGb\u001d\u0007x\u0019mdq\u0010\t\u0005I\u00011Y\u0004E\n\u001e\r{1\tE\"\u0012\u0007J\u00195c\u0011\u000bD+\r32i&C\u0002\u0007@\u0011\u0011a\u0001V;qY\u0016D\u0004c\u0001\r\u0007D\u00119A\u0011\u001fD\u0019\u0005\u0004Y\u0002c\u0001\r\u0007H\u00119Aq\u001fD\u0019\u0005\u0004Y\u0002c\u0001\r\u0007L\u00119Q\u0011\u0005D\u0019\u0005\u0004Y\u0002c\u0001\r\u0007P\u00119Q\u0011\u000bD\u0019\u0005\u0004Y\u0002c\u0001\r\u0007T\u00119Q\u0011\u0012D\u0019\u0005\u0004Y\u0002c\u0001\r\u0007X\u00119Q\u0011\u001aD\u0019\u0005\u0004Y\u0002c\u0001\r\u0007\\\u00119a\u0011\u0003D\u0019\u0005\u0004Y\u0002c\u0001\r\u0007`\u00119a\u0011\rD\u0019\u0005\u0004Y\"A\u0001+9\u0011!!YP\"\rA\u0004\u0019\u0015\u0004\u0003\u0002\u0013\u0001\r\u0003B\u0001\"\"\u0001\u00072\u0001\u000fa\u0011\u000e\t\u0005I\u00011)\u0005\u0003\u0005\u0006.\u0019E\u00029\u0001D7!\u0011!\u0003A\"\u0013\t\u0011\u0015\u0005d\u0011\u0007a\u0002\rc\u0002B\u0001\n\u0001\u0007N!AQQ\u0014D\u0019\u0001\b1)\b\u0005\u0003%\u0001\u0019E\u0003\u0002CCq\rc\u0001\u001dA\"\u001f\u0011\t\u0011\u0002aQ\u000b\u0005\t\r[1\t\u0004q\u0001\u0007~A!A\u0005\u0001D-\u0011!1\tI\"\rA\u0004\u0019\r\u0015\u0001B8sIb\u0002B\u0001\n\u0001\u0007^!AaqQA2\t\u00071I)\u0001\u0004UkBdW-O\u000b\u0015\r\u001739Jb'\u0007 \u001a\rfq\u0015DV\r_3\u0019Lb.\u0015)\u00195e1\u0018D`\r\u000749Mb3\u0007P\u001aMgq\u001bDn!\u0011!\u0003Ab$\u0011+u1\tJ\"&\u0007\u001a\u001aue\u0011\u0015DS\rS3iK\"-\u00076&\u0019a1\u0013\u0003\u0003\rQ+\b\u000f\\3:!\rAbq\u0013\u0003\b\tc4)I1\u0001\u001c!\rAb1\u0014\u0003\b\to4)I1\u0001\u001c!\rAbq\u0014\u0003\b\u000bC1)I1\u0001\u001c!\rAb1\u0015\u0003\b\u000b#2)I1\u0001\u001c!\rAbq\u0015\u0003\b\u000b\u00133)I1\u0001\u001c!\rAb1\u0016\u0003\b\u000b\u00134)I1\u0001\u001c!\rAbq\u0016\u0003\b\r#1)I1\u0001\u001c!\rAb1\u0017\u0003\b\rC2)I1\u0001\u001c!\rAbq\u0017\u0003\b\rs3)I1\u0001\u001c\u0005\t!\u0016\b\u0003\u0005\u0005|\u001a\u0015\u00059\u0001D_!\u0011!\u0003A\"&\t\u0011\u0015\u0005aQ\u0011a\u0002\r\u0003\u0004B\u0001\n\u0001\u0007\u001a\"AQQ\u0006DC\u0001\b1)\r\u0005\u0003%\u0001\u0019u\u0005\u0002CC1\r\u000b\u0003\u001dA\"3\u0011\t\u0011\u0002a\u0011\u0015\u0005\t\u000b;3)\tq\u0001\u0007NB!A\u0005\u0001DS\u0011!)\tO\"\"A\u0004\u0019E\u0007\u0003\u0002\u0013\u0001\rSC\u0001B\"\f\u0007\u0006\u0002\u000faQ\u001b\t\u0005I\u00011i\u000b\u0003\u0005\u0007\u0002\u001a\u0015\u00059\u0001Dm!\u0011!\u0003A\"-\t\u0011\u0019ugQ\u0011a\u0002\r?\fAa\u001c:esA!A\u0005\u0001D[\u0011)\u0011i$a\u0019\u0002\u0002\u0013%!q\b")
/* loaded from: classes3-dex2jar.jar:scala/math/Ordering.class */
public interface Ordering<T> extends Comparator<T>, PartialOrdering<T> {

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$BigDecimalOrdering.class */
    public interface BigDecimalOrdering extends Ordering<BigDecimal> {

        /* renamed from: scala.math.Ordering$BigDecimalOrdering$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$BigDecimalOrdering$class.class */
        public abstract class Cclass {
            public static void $init$(BigDecimalOrdering bigDecimalOrdering) {
            }

            public static int compare(BigDecimalOrdering bigDecimalOrdering, BigDecimal bigDecimal, BigDecimal bigDecimal2) {
                return bigDecimal.compare(bigDecimal2);
            }
        }

        int compare(BigDecimal bigDecimal, BigDecimal bigDecimal2);
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$BigIntOrdering.class */
    public interface BigIntOrdering extends Ordering<BigInt> {

        /* renamed from: scala.math.Ordering$BigIntOrdering$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$BigIntOrdering$class.class */
        public abstract class Cclass {
            public static void $init$(BigIntOrdering bigIntOrdering) {
            }

            public static int compare(BigIntOrdering bigIntOrdering, BigInt bigInt, BigInt bigInt2) {
                return bigInt.compare(bigInt2);
            }
        }

        int compare(BigInt bigInt, BigInt bigInt2);
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$BooleanOrdering.class */
    public interface BooleanOrdering extends Ordering<Object> {

        /* renamed from: scala.math.Ordering$BooleanOrdering$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$BooleanOrdering$class.class */
        public abstract class Cclass {
            public static void $init$(BooleanOrdering booleanOrdering) {
            }

            public static int compare(BooleanOrdering booleanOrdering, boolean z, boolean z2) {
                Tuple2$mcZZ$sp tuple2$mcZZ$sp = new Tuple2$mcZZ$sp(z, z2);
                int i = 1;
                if (!tuple2$mcZZ$sp._1$mcZ$sp() && true == tuple2$mcZZ$sp._2$mcZ$sp()) {
                    i = -1;
                } else if (true != tuple2$mcZZ$sp._1$mcZ$sp() || tuple2$mcZZ$sp._2$mcZ$sp()) {
                    i = 0;
                }
                return i;
            }
        }

        int compare(boolean z, boolean z2);
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$ByteOrdering.class */
    public interface ByteOrdering extends Ordering<Object> {

        /* renamed from: scala.math.Ordering$ByteOrdering$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$ByteOrdering$class.class */
        public abstract class Cclass {
            public static void $init$(ByteOrdering byteOrdering) {
            }

            public static int compare(ByteOrdering byteOrdering, byte b, byte b2) {
                return b - b2;
            }
        }

        int compare(byte b, byte b2);
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$CharOrdering.class */
    public interface CharOrdering extends Ordering<Object> {

        /* renamed from: scala.math.Ordering$CharOrdering$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$CharOrdering$class.class */
        public abstract class Cclass {
            public static void $init$(CharOrdering charOrdering) {
            }

            public static int compare(CharOrdering charOrdering, char c, char c2) {
                return c - c2;
            }
        }

        int compare(char c, char c2);
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$DoubleOrdering.class */
    public interface DoubleOrdering extends Ordering<Object> {

        /* renamed from: scala.math.Ordering$DoubleOrdering$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$DoubleOrdering$class.class */
        public abstract class Cclass {
            public static void $init$(DoubleOrdering doubleOrdering) {
            }

            public static int compare(DoubleOrdering doubleOrdering, double d, double d2) {
                return Double.compare(d, d2);
            }

            public static boolean equiv(DoubleOrdering doubleOrdering, double d, double d2) {
                return d == d2;
            }

            /* renamed from: gt */
            public static boolean m46gt(DoubleOrdering doubleOrdering, double d, double d2) {
                return d > d2;
            }

            public static boolean gteq(DoubleOrdering doubleOrdering, double d, double d2) {
                return d >= d2;
            }

            /* renamed from: lt */
            public static boolean m45lt(DoubleOrdering doubleOrdering, double d, double d2) {
                return d < d2;
            }

            public static boolean lteq(DoubleOrdering doubleOrdering, double d, double d2) {
                return d <= d2;
            }

            public static double max(DoubleOrdering doubleOrdering, double d, double d2) {
                return package$.MODULE$.max(d, d2);
            }

            public static double min(DoubleOrdering doubleOrdering, double d, double d2) {
                return package$.MODULE$.min(d, d2);
            }

            public static Ordering reverse(DoubleOrdering doubleOrdering) {
                return new DoubleOrdering(doubleOrdering) { // from class: scala.math.Ordering$DoubleOrdering$$anon$2
                    private final /* synthetic */ Ordering.DoubleOrdering $outer;

                    {
                        Objects.requireNonNull(doubleOrdering);
                        this.$outer = doubleOrdering;
                        PartialOrdering.Cclass.$init$(this);
                        Ordering.Cclass.$init$(this);
                        Ordering.DoubleOrdering.Cclass.$init$(this);
                    }

                    @Override // scala.math.Ordering.DoubleOrdering
                    public int compare(double d, double d2) {
                        return this.$outer.compare(d2, d);
                    }

                    @Override // scala.math.Ordering, java.util.Comparator
                    public /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
                        return compare(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2));
                    }

                    @Override // scala.math.Ordering.DoubleOrdering
                    public boolean equiv(double d, double d2) {
                        return Ordering.DoubleOrdering.Cclass.equiv(this, d, d2);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
                    public /* bridge */ /* synthetic */ boolean equiv(Object obj, Object obj2) {
                        return equiv(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2));
                    }

                    @Override // scala.math.Ordering.DoubleOrdering
                    /* renamed from: gt */
                    public boolean mo48gt(double d, double d2) {
                        return this.$outer.mo48gt(d2, d);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    /* renamed from: gt */
                    public /* bridge */ /* synthetic */ boolean mo37gt(Object obj, Object obj2) {
                        return mo48gt(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2));
                    }

                    @Override // scala.math.Ordering.DoubleOrdering
                    public boolean gteq(double d, double d2) {
                        return this.$outer.gteq(d2, d);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    public /* bridge */ /* synthetic */ boolean gteq(Object obj, Object obj2) {
                        return gteq(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2));
                    }

                    @Override // scala.math.Ordering.DoubleOrdering
                    /* renamed from: lt */
                    public boolean mo47lt(double d, double d2) {
                        return this.$outer.mo47lt(d2, d);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    /* renamed from: lt */
                    public /* bridge */ /* synthetic */ boolean mo36lt(Object obj, Object obj2) {
                        return mo47lt(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2));
                    }

                    @Override // scala.math.Ordering.DoubleOrdering
                    public boolean lteq(double d, double d2) {
                        return this.$outer.lteq(d2, d);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    public /* bridge */ /* synthetic */ boolean lteq(Object obj, Object obj2) {
                        return lteq(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2));
                    }

                    @Override // scala.math.Ordering.DoubleOrdering
                    public double max(double d, double d2) {
                        return this.$outer.min(d, d2);
                    }

                    @Override // scala.math.Ordering
                    public /* bridge */ /* synthetic */ Object max(Object obj, Object obj2) {
                        return BoxesRunTime.boxToDouble(max(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2)));
                    }

                    @Override // scala.math.Ordering.DoubleOrdering
                    public double min(double d, double d2) {
                        return this.$outer.max(d, d2);
                    }

                    @Override // scala.math.Ordering
                    public /* bridge */ /* synthetic */ Object min(Object obj, Object obj2) {
                        return BoxesRunTime.boxToDouble(min(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2)));
                    }

                    @Override // scala.math.Ordering
                    public Ordering<Object>.Ops mkOrderingOps(Object obj) {
                        return Ordering.Cclass.mkOrderingOps(this, obj);
                    }

                    @Override // scala.math.Ordering
                    /* renamed from: on */
                    public <U> Ordering<U> mo49on(Function1<U, Object> function1) {
                        return Ordering.Cclass.m38on(this, function1);
                    }

                    @Override // scala.math.Ordering.DoubleOrdering, scala.math.Ordering, scala.math.PartialOrdering
                    public Ordering.DoubleOrdering reverse() {
                        return this.$outer;
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    public Some tryCompare(Object obj, Object obj2) {
                        return Ordering.Cclass.tryCompare(this, obj, obj2);
                    }
                };
            }
        }

        int compare(double d, double d2);

        boolean equiv(double d, double d2);

        /* renamed from: gt */
        boolean mo48gt(double d, double d2);

        boolean gteq(double d, double d2);

        /* renamed from: lt */
        boolean mo47lt(double d, double d2);

        boolean lteq(double d, double d2);

        double max(double d, double d2);

        double min(double d, double d2);

        @Override // scala.math.Ordering, scala.math.PartialOrdering
        Ordering<Object> reverse();
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$ExtraImplicits.class */
    public interface ExtraImplicits {

        /* renamed from: scala.math.Ordering$ExtraImplicits$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$ExtraImplicits$class.class */
        public abstract class Cclass {
            public static void $init$(ExtraImplicits extraImplicits) {
            }

            public static Ops infixOrderingOps(ExtraImplicits extraImplicits, Object obj, Ordering ordering) {
                return new Ops(ordering, obj);
            }

            public static Ordering seqDerivedOrdering(ExtraImplicits extraImplicits, Ordering ordering) {
                return new Ordering<CC>(extraImplicits, ordering) { // from class: scala.math.Ordering$ExtraImplicits$$anon$8
                    private final Ordering ord$4;

                    {
                        this.ord$4 = ordering;
                        PartialOrdering.Cclass.$init$(this);
                        Ordering.Cclass.$init$(this);
                    }

                    /* JADX WARN: Incorrect types in method signature: (TCC;TCC;)I */
                    public int compare(Seq seq, Seq seq2) {
                        Iterator<A> it = seq.iterator();
                        Iterator<A> it2 = seq2.iterator();
                        while (it.hasNext() && it2.hasNext()) {
                            int compare = this.ord$4.compare(it.next(), it2.next());
                            if (compare != 0) {
                                return compare;
                            }
                        }
                        return Ordering$Boolean$.MODULE$.compare(it.hasNext(), it2.hasNext());
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
                    public boolean equiv(Object obj, Object obj2) {
                        return Ordering.Cclass.equiv(this, obj, obj2);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    /* renamed from: gt */
                    public boolean mo37gt(Object obj, Object obj2) {
                        return Ordering.Cclass.m40gt(this, obj, obj2);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    public boolean gteq(Object obj, Object obj2) {
                        return Ordering.Cclass.gteq(this, obj, obj2);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    /* renamed from: lt */
                    public boolean mo36lt(Object obj, Object obj2) {
                        return Ordering.Cclass.m39lt(this, obj, obj2);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    public boolean lteq(Object obj, Object obj2) {
                        return Ordering.Cclass.lteq(this, obj, obj2);
                    }

                    @Override // scala.math.Ordering
                    public Object max(Object obj, Object obj2) {
                        return Ordering.Cclass.max(this, obj, obj2);
                    }

                    @Override // scala.math.Ordering
                    public Object min(Object obj, Object obj2) {
                        return Ordering.Cclass.min(this, obj, obj2);
                    }

                    @Override // scala.math.Ordering
                    public Ordering.Ops mkOrderingOps(Object obj) {
                        return Ordering.Cclass.mkOrderingOps(this, obj);
                    }

                    @Override // scala.math.Ordering
                    /* renamed from: on */
                    public <U> Ordering<U> mo49on(Function1<U, CC> function1) {
                        return Ordering.Cclass.m38on(this, function1);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    public Ordering<CC> reverse() {
                        return Ordering.Cclass.reverse(this);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    public Some tryCompare(Object obj, Object obj2) {
                        return Ordering.Cclass.tryCompare(this, obj, obj2);
                    }
                };
            }
        }

        <T> Ordering<T>.Ops infixOrderingOps(T t, Ordering<T> ordering);

        <CC extends Seq<Object>, T> Ordering<CC> seqDerivedOrdering(Ordering<T> ordering);
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$FloatOrdering.class */
    public interface FloatOrdering extends Ordering<Object> {

        /* renamed from: scala.math.Ordering$FloatOrdering$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$FloatOrdering$class.class */
        public abstract class Cclass {
            public static void $init$(FloatOrdering floatOrdering) {
            }

            public static int compare(FloatOrdering floatOrdering, float f, float f2) {
                return Float.compare(f, f2);
            }

            public static boolean equiv(FloatOrdering floatOrdering, float f, float f2) {
                return f == f2;
            }

            /* renamed from: gt */
            public static boolean m42gt(FloatOrdering floatOrdering, float f, float f2) {
                return f > f2;
            }

            public static boolean gteq(FloatOrdering floatOrdering, float f, float f2) {
                return f >= f2;
            }

            /* renamed from: lt */
            public static boolean m41lt(FloatOrdering floatOrdering, float f, float f2) {
                return f < f2;
            }

            public static boolean lteq(FloatOrdering floatOrdering, float f, float f2) {
                return f <= f2;
            }

            public static float max(FloatOrdering floatOrdering, float f, float f2) {
                return package$.MODULE$.max(f, f2);
            }

            public static float min(FloatOrdering floatOrdering, float f, float f2) {
                return package$.MODULE$.min(f, f2);
            }

            public static Ordering reverse(FloatOrdering floatOrdering) {
                return new FloatOrdering(floatOrdering) { // from class: scala.math.Ordering$FloatOrdering$$anon$1
                    private final /* synthetic */ Ordering.FloatOrdering $outer;

                    {
                        Objects.requireNonNull(floatOrdering);
                        this.$outer = floatOrdering;
                        PartialOrdering.Cclass.$init$(this);
                        Ordering.Cclass.$init$(this);
                        Ordering.FloatOrdering.Cclass.$init$(this);
                    }

                    @Override // scala.math.Ordering.FloatOrdering
                    public int compare(float f, float f2) {
                        return this.$outer.compare(f2, f);
                    }

                    @Override // scala.math.Ordering, java.util.Comparator
                    public /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
                        return compare(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2));
                    }

                    @Override // scala.math.Ordering.FloatOrdering
                    public boolean equiv(float f, float f2) {
                        return Ordering.FloatOrdering.Cclass.equiv(this, f, f2);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
                    public /* bridge */ /* synthetic */ boolean equiv(Object obj, Object obj2) {
                        return equiv(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2));
                    }

                    @Override // scala.math.Ordering.FloatOrdering
                    /* renamed from: gt */
                    public boolean mo44gt(float f, float f2) {
                        return this.$outer.mo44gt(f2, f);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    /* renamed from: gt */
                    public /* bridge */ /* synthetic */ boolean mo37gt(Object obj, Object obj2) {
                        return mo44gt(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2));
                    }

                    @Override // scala.math.Ordering.FloatOrdering
                    public boolean gteq(float f, float f2) {
                        return this.$outer.gteq(f2, f);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    public /* bridge */ /* synthetic */ boolean gteq(Object obj, Object obj2) {
                        return gteq(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2));
                    }

                    @Override // scala.math.Ordering.FloatOrdering
                    /* renamed from: lt */
                    public boolean mo43lt(float f, float f2) {
                        return this.$outer.mo43lt(f2, f);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    /* renamed from: lt */
                    public /* bridge */ /* synthetic */ boolean mo36lt(Object obj, Object obj2) {
                        return mo43lt(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2));
                    }

                    @Override // scala.math.Ordering.FloatOrdering
                    public boolean lteq(float f, float f2) {
                        return this.$outer.lteq(f2, f);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    public /* bridge */ /* synthetic */ boolean lteq(Object obj, Object obj2) {
                        return lteq(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2));
                    }

                    @Override // scala.math.Ordering.FloatOrdering
                    public float max(float f, float f2) {
                        return this.$outer.min(f, f2);
                    }

                    @Override // scala.math.Ordering
                    public /* bridge */ /* synthetic */ Object max(Object obj, Object obj2) {
                        return BoxesRunTime.boxToFloat(max(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2)));
                    }

                    @Override // scala.math.Ordering.FloatOrdering
                    public float min(float f, float f2) {
                        return this.$outer.max(f, f2);
                    }

                    @Override // scala.math.Ordering
                    public /* bridge */ /* synthetic */ Object min(Object obj, Object obj2) {
                        return BoxesRunTime.boxToFloat(min(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2)));
                    }

                    @Override // scala.math.Ordering
                    public Ordering<Object>.Ops mkOrderingOps(Object obj) {
                        return Ordering.Cclass.mkOrderingOps(this, obj);
                    }

                    @Override // scala.math.Ordering
                    /* renamed from: on */
                    public <U> Ordering<U> mo49on(Function1<U, Object> function1) {
                        return Ordering.Cclass.m38on(this, function1);
                    }

                    @Override // scala.math.Ordering.FloatOrdering, scala.math.Ordering, scala.math.PartialOrdering
                    public Ordering.FloatOrdering reverse() {
                        return this.$outer;
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    public Some tryCompare(Object obj, Object obj2) {
                        return Ordering.Cclass.tryCompare(this, obj, obj2);
                    }
                };
            }
        }

        int compare(float f, float f2);

        boolean equiv(float f, float f2);

        /* renamed from: gt */
        boolean mo44gt(float f, float f2);

        boolean gteq(float f, float f2);

        /* renamed from: lt */
        boolean mo43lt(float f, float f2);

        boolean lteq(float f, float f2);

        float max(float f, float f2);

        float min(float f, float f2);

        @Override // scala.math.Ordering, scala.math.PartialOrdering
        Ordering<Object> reverse();
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$IntOrdering.class */
    public interface IntOrdering extends Ordering<Object> {

        /* renamed from: scala.math.Ordering$IntOrdering$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$IntOrdering$class.class */
        public abstract class Cclass {
            public static void $init$(IntOrdering intOrdering) {
            }

            public static int compare(IntOrdering intOrdering, int i, int i2) {
                return i < i2 ? -1 : i == i2 ? 0 : 1;
            }
        }

        int compare(int i, int i2);
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$LongOrdering.class */
    public interface LongOrdering extends Ordering<Object> {

        /* renamed from: scala.math.Ordering$LongOrdering$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$LongOrdering$class.class */
        public abstract class Cclass {
            public static void $init$(LongOrdering longOrdering) {
            }

            public static int compare(LongOrdering longOrdering, long j, long j2) {
                int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
                return i < 0 ? -1 : i == 0 ? 0 : 1;
            }
        }

        int compare(long j, long j2);
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$Ops.class */
    public class Ops {
        public final /* synthetic */ Ordering $outer;
        private final T lhs;

        public Ops(Ordering<T> ordering, T t) {
            this.lhs = t;
            Objects.requireNonNull(ordering);
            this.$outer = ordering;
        }

        public boolean $greater(T t) {
            return scala$math$Ordering$Ops$$$outer().mo37gt(this.lhs, t);
        }

        public boolean $greater$eq(T t) {
            return scala$math$Ordering$Ops$$$outer().gteq(this.lhs, t);
        }

        public boolean $less(T t) {
            return scala$math$Ordering$Ops$$$outer().mo36lt(this.lhs, t);
        }

        public boolean $less$eq(T t) {
            return scala$math$Ordering$Ops$$$outer().lteq(this.lhs, t);
        }

        public boolean equiv(T t) {
            return scala$math$Ordering$Ops$$$outer().equiv(this.lhs, t);
        }

        public T max(T t) {
            return (T) scala$math$Ordering$Ops$$$outer().max(this.lhs, t);
        }

        public T min(T t) {
            return (T) scala$math$Ordering$Ops$$$outer().min(this.lhs, t);
        }

        public /* synthetic */ Ordering scala$math$Ordering$Ops$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$OptionOrdering.class */
    public interface OptionOrdering<T> extends Ordering<Option<T>> {

        /* renamed from: scala.math.Ordering$OptionOrdering$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$OptionOrdering$class.class */
        public abstract class Cclass {
            public static void $init$(OptionOrdering optionOrdering) {
            }

            public static int compare(OptionOrdering optionOrdering, Option option, Option option2) {
                int i;
                Tuple2 tuple2 = new Tuple2(option, option2);
                if (None$.MODULE$.equals(tuple2.mo269_1()) && None$.MODULE$.equals(tuple2.mo268_2())) {
                    i = 0;
                } else if (None$.MODULE$.equals(tuple2.mo269_1())) {
                    i = -1;
                } else if (!None$.MODULE$.equals(tuple2.mo268_2())) {
                    if (tuple2.mo269_1() instanceof Some) {
                        Some some = (Some) tuple2.mo269_1();
                        if (tuple2.mo268_2() instanceof Some) {
                            i = optionOrdering.optionOrdering().compare((T) some.m362x(), (T) ((Some) tuple2.mo268_2()).m362x());
                        }
                    }
                    throw new MatchError(tuple2);
                } else {
                    i = 1;
                }
                return i;
            }
        }

        int compare(Option<T> option, Option<T> option2);

        Ordering<T> optionOrdering();
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$ShortOrdering.class */
    public interface ShortOrdering extends Ordering<Object> {

        /* renamed from: scala.math.Ordering$ShortOrdering$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$ShortOrdering$class.class */
        public abstract class Cclass {
            public static void $init$(ShortOrdering shortOrdering) {
            }

            public static int compare(ShortOrdering shortOrdering, short s, short s2) {
                return s - s2;
            }
        }

        int compare(short s, short s2);
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$StringOrdering.class */
    public interface StringOrdering extends Ordering<String> {

        /* renamed from: scala.math.Ordering$StringOrdering$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$StringOrdering$class.class */
        public abstract class Cclass {
            public static void $init$(StringOrdering stringOrdering) {
            }

            public static int compare(StringOrdering stringOrdering, String str, String str2) {
                return str.compareTo(str2);
            }
        }

        int compare(String str, String str2);
    }

    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$UnitOrdering.class */
    public interface UnitOrdering extends Ordering<BoxedUnit> {

        /* renamed from: scala.math.Ordering$UnitOrdering$class */
        /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$UnitOrdering$class.class */
        public abstract class Cclass {
            public static void $init$(UnitOrdering unitOrdering) {
            }

            public static int compare(UnitOrdering unitOrdering, BoxedUnit boxedUnit, BoxedUnit boxedUnit2) {
                return 0;
            }
        }

        int compare(BoxedUnit boxedUnit, BoxedUnit boxedUnit2);
    }

    /* renamed from: scala.math.Ordering$class */
    /* loaded from: classes3-dex2jar.jar:scala/math/Ordering$class.class */
    public abstract class Cclass {
        public static void $init$(Ordering ordering) {
        }

        public static boolean equiv(Ordering ordering, Object obj, Object obj2) {
            return ordering.compare(obj, obj2) == 0;
        }

        /* renamed from: gt */
        public static boolean m40gt(Ordering ordering, Object obj, Object obj2) {
            return ordering.compare(obj, obj2) > 0;
        }

        public static boolean gteq(Ordering ordering, Object obj, Object obj2) {
            return ordering.compare(obj, obj2) >= 0;
        }

        /* renamed from: lt */
        public static boolean m39lt(Ordering ordering, Object obj, Object obj2) {
            return ordering.compare(obj, obj2) < 0;
        }

        public static boolean lteq(Ordering ordering, Object obj, Object obj2) {
            return ordering.compare(obj, obj2) <= 0;
        }

        public static Object max(Ordering ordering, Object obj, Object obj2) {
            if (!ordering.gteq(obj, obj2)) {
                obj = obj2;
            }
            return obj;
        }

        public static Object min(Ordering ordering, Object obj, Object obj2) {
            if (!ordering.lteq(obj, obj2)) {
                obj = obj2;
            }
            return obj;
        }

        public static Ops mkOrderingOps(Ordering ordering, Object obj) {
            return new Ops(ordering, obj);
        }

        /* renamed from: on */
        public static Ordering m38on(Ordering ordering, Function1 function1) {
            return new Ordering<U>(ordering, function1) { // from class: scala.math.Ordering$$anon$5
                private final /* synthetic */ Ordering $outer;
                private final Function1 f$2;

                /* JADX WARN: Multi-variable type inference failed */
                {
                    Objects.requireNonNull(ordering);
                    this.$outer = ordering;
                    this.f$2 = function1;
                    PartialOrdering.Cclass.$init$(this);
                    Ordering.Cclass.$init$(this);
                }

                @Override // scala.math.Ordering, java.util.Comparator
                public int compare(U u, U u2) {
                    return this.$outer.compare(this.f$2.apply(u), this.f$2.apply(u2));
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
                public boolean equiv(U u, U u2) {
                    return Ordering.Cclass.equiv(this, u, u2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                /* renamed from: gt */
                public boolean mo37gt(U u, U u2) {
                    return Ordering.Cclass.m40gt(this, u, u2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public boolean gteq(U u, U u2) {
                    return Ordering.Cclass.gteq(this, u, u2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                /* renamed from: lt */
                public boolean mo36lt(U u, U u2) {
                    return Ordering.Cclass.m39lt(this, u, u2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public boolean lteq(U u, U u2) {
                    return Ordering.Cclass.lteq(this, u, u2);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [U, java.lang.Object] */
                @Override // scala.math.Ordering
                public U max(U u, U u2) {
                    return Ordering.Cclass.max(this, u, u2);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [U, java.lang.Object] */
                @Override // scala.math.Ordering
                public U min(U u, U u2) {
                    return Ordering.Cclass.min(this, u, u2);
                }

                @Override // scala.math.Ordering
                public Ordering<U>.Ops mkOrderingOps(U u) {
                    return Ordering.Cclass.mkOrderingOps(this, u);
                }

                @Override // scala.math.Ordering
                /* renamed from: on */
                public <U> Ordering<U> mo49on(Function1<U, U> function12) {
                    return Ordering.Cclass.m38on(this, function12);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public Ordering<U> reverse() {
                    return Ordering.Cclass.reverse(this);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public Some<Object> tryCompare(U u, U u2) {
                    return Ordering.Cclass.tryCompare(this, u, u2);
                }
            };
        }

        public static Ordering reverse(Ordering ordering) {
            return new Ordering<T>(ordering) { // from class: scala.math.Ordering$$anon$4
                private final /* synthetic */ Ordering $outer;

                {
                    Objects.requireNonNull(ordering);
                    this.$outer = ordering;
                    PartialOrdering.Cclass.$init$(this);
                    Ordering.Cclass.$init$(this);
                }

                @Override // scala.math.Ordering, java.util.Comparator
                public int compare(T t, T t2) {
                    return this.$outer.compare(t2, t);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
                public boolean equiv(T t, T t2) {
                    return Ordering.Cclass.equiv(this, t, t2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                /* renamed from: gt */
                public boolean mo37gt(T t, T t2) {
                    return Ordering.Cclass.m40gt(this, t, t2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public boolean gteq(T t, T t2) {
                    return Ordering.Cclass.gteq(this, t, t2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                /* renamed from: lt */
                public boolean mo36lt(T t, T t2) {
                    return Ordering.Cclass.m39lt(this, t, t2);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public boolean lteq(T t, T t2) {
                    return Ordering.Cclass.lteq(this, t, t2);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
                @Override // scala.math.Ordering
                public T max(T t, T t2) {
                    return Ordering.Cclass.max(this, t, t2);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
                @Override // scala.math.Ordering
                public T min(T t, T t2) {
                    return Ordering.Cclass.min(this, t, t2);
                }

                @Override // scala.math.Ordering
                public Ordering<T>.Ops mkOrderingOps(T t) {
                    return Ordering.Cclass.mkOrderingOps(this, t);
                }

                @Override // scala.math.Ordering
                /* renamed from: on */
                public <U> Ordering<U> mo49on(Function1<U, T> function1) {
                    return Ordering.Cclass.m38on(this, function1);
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public Ordering<T> reverse() {
                    return this.$outer;
                }

                @Override // scala.math.Ordering, scala.math.PartialOrdering
                public Some<Object> tryCompare(T t, T t2) {
                    return Ordering.Cclass.tryCompare(this, t, t2);
                }
            };
        }

        public static Some tryCompare(Ordering ordering, Object obj, Object obj2) {
            return new Some(BoxesRunTime.boxToInteger(ordering.compare(obj, obj2)));
        }
    }

    @Override // java.util.Comparator
    int compare(T t, T t2);

    boolean equiv(T t, T t2);

    /* renamed from: gt */
    boolean mo37gt(T t, T t2);

    boolean gteq(T t, T t2);

    /* renamed from: lt */
    boolean mo36lt(T t, T t2);

    boolean lteq(T t, T t2);

    T max(T t, T t2);

    T min(T t, T t2);

    Ordering<T>.Ops mkOrderingOps(T t);

    /* renamed from: on */
    <U> Ordering<U> mo49on(Function1<U, T> function1);

    Ordering<T> reverse();

    Some<Object> tryCompare(T t, T t2);
}
