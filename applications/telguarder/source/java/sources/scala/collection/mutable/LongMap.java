package scala.collection.mutable;

import java.util.Arrays;
import java.util.NoSuchElementException;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.None$;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.BufferedIterator;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.Growable;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Builder;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\r\u0005d\u0001B\u0001\u0003\u0005%\u0011q\u0001T8oO6\u000b\u0007O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0016'\u0015\u00011BH\u0011&!\u0011aQbD\n\u000e\u0003\tI!A\u0004\u0002\u0003\u0017\u0005\u00137\u000f\u001e:bGRl\u0015\r\u001d\t\u0003!Ei\u0011AB\u0005\u0003%\u0019\u0011A\u0001T8oOB\u0011A#\u0006\u0007\u0001\t\u00151\u0002A1\u0001\u0018\u0005\u00051\u0016C\u0001\r\u001c!\t\u0001\u0012$\u0003\u0002\u001b\r\t9aj\u001c;iS:<\u0007C\u0001\t\u001d\u0013\tibAA\u0002B]f\u0004B\u0001D\u0010\u0010'%\u0011\u0001E\u0001\u0002\u0004\u001b\u0006\u0004\b#\u0002\u0007#\u001fM!\u0013BA\u0012\u0003\u0005\u001di\u0015\r\u001d'jW\u0016\u00042\u0001\u0004\u0001\u0014!\t\u0001b%\u0003\u0002(\r\ta1+\u001a:jC2L'0\u00192mK\"A\u0011\u0006\u0001B\u0001B\u0003%!&\u0001\u0007eK\u001a\fW\u000f\u001c;F]R\u0014\u0018\u0010\u0005\u0003\u0011W=\u0019\u0012B\u0001\u0017\u0007\u0005%1UO\\2uS>t\u0017\u0007\u0003\u0005/\u0001\t\u0005\t\u0015!\u00030\u0003EIg.\u001b;jC2\u0014UO\u001a4feNK'0\u001a\t\u0003!AJ!!\r\u0004\u0003\u0007%sG\u000f\u0003\u00054\u0001\t\u0005\t\u0015!\u00035\u0003%Ig.\u001b;CY\u0006t7\u000e\u0005\u0002\u0011k%\u0011aG\u0002\u0002\b\u0005>|G.Z1o\u0011\u0019A\u0004\u0001\"\u0001\u0005s\u00051A(\u001b8jiz\"B\u0001\n\u001e<y!)\u0011f\u000ea\u0001U!)af\u000ea\u0001_!)1g\u000ea\u0001i!)\u0001\b\u0001C\u0001}Q\tA\u0005C\u00039\u0001\u0011\u0005\u0001\t\u0006\u0002%\u0003\")\u0011f\u0010a\u0001U!)\u0001\b\u0001C\u0001\u0007R\u0011A\u0005\u0012\u0005\u0006]\t\u0003\ra\f\u0005\u0006q\u0001!\tA\u0012\u000b\u0004I\u001dC\u0005\"B\u0015F\u0001\u0004Q\u0003\"\u0002\u0018F\u0001\u0004y\u0003B\u0002&\u0001A\u0003&q&\u0001\u0003nCN\\\u0007B\u0002'\u0001A\u0003&q&A\u0005fqR\u0014\u0018mS3zg\"1a\n\u0001Q!\n=\u000b\u0011B_3s_Z\u000bG.^3\u0011\u0005A\u0001\u0016BA)\u0007\u0005\u0019\te.\u001f*fM\"11\u000b\u0001Q!\n=\u000b\u0001\"\\5o-\u0006dW/\u001a\u0005\u0007+\u0002\u0001\u000b\u0015B\u0018\u0002\u000b}\u001b\u0018N_3\t\r]\u0003\u0001\u0015)\u00030\u0003\u001dyf/Y2b]RDa!\u0017\u0001!B\u0013Q\u0016!B0lKf\u001c\bc\u0001\t\\\u001f%\u0011AL\u0002\u0002\u0006\u0003J\u0014\u0018-\u001f\u0005\u0007=\u0002\u0001\u000b\u0015B0\u0002\u000f}3\u0018\r\\;fgB\u0019\u0001cW(\t\r\u0005\u0004\u0001\u0015\"\u0003c\u0003E!WMZ1vYRLe.\u001b;jC2L'0\u001a\u000b\u0003G\u001a\u0004\"\u0001\u00053\n\u0005\u00154!\u0001B+oSRDQa\u001a1A\u0002=\n\u0011A\u001c\u0005\u0007S\u0002!\t\u0001\u00026\u0002\u0019%t\u0017\u000e^5bY&TX\rV8\u0015\u0013\r\\Wn\\9tk^L\b\"\u00027i\u0001\u0004y\u0013!A7\t\u000b9D\u0007\u0019A\u0018\u0002\u0005\u0015\\\u0007\"\u00029i\u0001\u0004y\u0015A\u0001>w\u0011\u0015\u0011\b\u000e1\u0001P\u0003\tig\u000fC\u0003uQ\u0002\u0007q&\u0001\u0002tu\")a\u000f\u001ba\u0001_\u0005\u0011ao\u0019\u0005\u0006q\"\u0004\rAW\u0001\u0003WjDQA\u001f5A\u0002}\u000b!A\u001e>\t\u000bq\u0004A\u0011I?\u0002\tML'0Z\u000b\u0002_!1q\u0010\u0001C!\u0003\u0003\tQ!Z7qif,\u0012\u0001\n\u0005\b\u0003\u000b\u0001A\u0011BA\u0004\u0003)IWNY1mC:\u001cW\rZ\u000b\u0002i!9\u00111\u0002\u0001\u0005\n\u00055\u0011a\u0002;p\u0013:$W\r\u001f\u000b\u0004_\u0005=\u0001bBA\t\u0003\u0013\u0001\raD\u0001\u0002W\"9\u0011Q\u0003\u0001\u0005\n\u0005]\u0011!C:fK.,U\u000e\u001d;z)\ry\u0013\u0011\u0004\u0005\b\u0003#\t\u0019\u00021\u0001\u0010\u0011\u001d\ti\u0002\u0001C\u0005\u0003?\t\u0011b]3fW\u0016sGO]=\u0015\u0007=\n\t\u0003C\u0004\u0002\u0012\u0005m\u0001\u0019A\b\t\u000f\u0005\u0015\u0002\u0001\"\u0003\u0002(\u0005y1/Z3l\u000b:$(/_(s\u001fB,g\u000eF\u00020\u0003SAq!!\u0005\u0002$\u0001\u0007q\u0002C\u0004\u0002.\u0001!\t%a\f\u0002\u0011\r|g\u000e^1j]N$2\u0001NA\u0019\u0011\u001d\t\u0019$a\u000bA\u0002=\t1a[3z\u0011\u001d\t9\u0004\u0001C!\u0003s\t1aZ3u)\u0011\tY$!\u0011\u0011\tA\tidE\u0005\u0004\u0003\u007f1!AB(qi&|g\u000eC\u0004\u00024\u0005U\u0002\u0019A\b\t\u000f\u0005\u0015\u0003\u0001\"\u0011\u0002H\u0005Iq-\u001a;Pe\u0016c7/Z\u000b\u0005\u0003\u0013\ni\u0005\u0006\u0004\u0002L\u0005M\u0013Q\u000b\t\u0004)\u00055C\u0001CA(\u0003\u0007\u0012\r!!\u0015\u0003\u0005Y\u000b\u0014CA\n\u001c\u0011\u001d\t\u0019$a\u0011A\u0002=A\u0011\"a\u0016\u0002D\u0011\u0005\r!!\u0017\u0002\u000f\u0011,g-Y;miB)\u0001#a\u0017\u0002L%\u0019\u0011Q\f\u0004\u0003\u0011q\u0012\u0017P\\1nKzBq!!\u0019\u0001\t\u0003\n\u0019'A\bhKR|%/\u00127tKV\u0003H-\u0019;f)\u0015\u0019\u0012QMA4\u0011\u001d\t\u0019$a\u0018A\u0002=A\u0011\"!\u001b\u0002`\u0011\u0005\r!a\u001b\u0002\u0019\u0011,g-Y;miZ\u000bG.^3\u0011\tA\tYf\u0005\u0005\b\u0003_\u0002A\u0011AA9\u0003%9W\r^(s\u001dVdG\u000eF\u0002\u0014\u0003gBq!a\r\u0002n\u0001\u0007q\u0002C\u0004\u0002x\u0001!\t%!\u001f\u0002\u000b\u0005\u0004\b\u000f\\=\u0015\u0007M\tY\bC\u0004\u00024\u0005U\u0004\u0019A\b\t\u000f\u0005]\u0003\u0001\"\u0011\u0002��Q\u00191#!!\t\u000f\u0005M\u0012Q\u0010a\u0001\u001f!9\u0011Q\u0011\u0001\u0005\n\u0005\u001d\u0015A\u0002:fa\u0006\u001c7\u000eF\u0002d\u0003\u0013Cq!a#\u0002\u0004\u0002\u0007q&A\u0004oK^l\u0015m]6\t\u000f\u0005\u0015\u0005\u0001\"\u0001\u0002\u0010R\t1\rC\u0004\u0002\u0014\u0002!\t%!&\u0002\u0007A,H\u000f\u0006\u0004\u0002<\u0005]\u0015\u0011\u0014\u0005\b\u0003g\t\t\n1\u0001\u0010\u0011\u001d\tY*!%A\u0002M\tQA^1mk\u0016Dq!a(\u0001\t\u0003\n\t+\u0001\u0004va\u0012\fG/\u001a\u000b\u0006G\u0006\r\u0016Q\u0015\u0005\b\u0003g\ti\n1\u0001\u0010\u0011\u001d\tY*!(A\u0002MAq!!+\u0001\t\u0003\tY+\u0001\u0005%a2,8\u000fJ3r)\u0019\ti+a,\u000226\t\u0001\u0001C\u0004\u00024\u0005\u001d\u0006\u0019A\b\t\u000f\u0005m\u0015q\u0015a\u0001'!9\u0011\u0011\u0016\u0001\u0005\u0002\u0005UF\u0003BAW\u0003oC\u0001\"!/\u00024\u0002\u0007\u00111X\u0001\u0003WZ\u0004R\u0001EA_\u001fMI1!a0\u0007\u0005\u0019!V\u000f\u001d7fe!9\u00111\u0019\u0001\u0005\u0002\u0005\u0015\u0017!\u0003\u0013nS:,8\u000fJ3r)\u0011\ti+a2\t\u000f\u0005M\u0012\u0011\u0019a\u0001\u001f!9\u00111\u001a\u0001\u0005\u0002\u00055\u0017\u0001C5uKJ\fGo\u001c:\u0016\u0005\u0005=\u0007CBAi\u0003'\fY,D\u0001\u0005\u0013\r\t)\u000e\u0002\u0002\t\u0013R,'/\u0019;pe\"9\u0011\u0011\u001c\u0001\u0005B\u0005m\u0017a\u00024pe\u0016\f7\r[\u000b\u0005\u0003;\f9\u000fF\u0002d\u0003?D\u0001\"!9\u0002X\u0002\u0007\u00111]\u0001\u0002MB1\u0001cKA^\u0003K\u00042\u0001FAt\t\u001d\tI/a6C\u0002]\u0011\u0011!\u0011\u0005\u0007\u0003[\u0004A\u0011\t \u0002\u000b\rdwN\\3\t\u000f\u0005E\b\u0001\"\u0001\u0002t\u0006Qam\u001c:fC\u000eD7*Z=\u0016\t\u0005U\u0018Q \u000b\u0004G\u0006]\b\u0002CAq\u0003_\u0004\r!!?\u0011\u000bAYs\"a?\u0011\u0007Q\ti\u0010B\u0004\u0002j\u0006=(\u0019A\f\t\u000f\t\u0005\u0001\u0001\"\u0001\u0003\u0004\u0005aam\u001c:fC\u000eDg+\u00197vKV!!Q\u0001B\u0007)\r\u0019'q\u0001\u0005\t\u0003C\fy\u00101\u0001\u0003\nA)\u0001cK\n\u0003\fA\u0019AC!\u0004\u0005\u000f\u0005%\u0018q b\u0001/!9!\u0011\u0003\u0001\u0005\u0002\tM\u0011\u0001D7baZ\u000bG.^3t\u001d><X\u0003\u0002B\u000b\u00057!BAa\u0006\u0003\u001eA!A\u0002\u0001B\r!\r!\"1\u0004\u0003\b\u0003\u001f\u0012yA1\u0001\u0018\u0011!\t\tOa\u0004A\u0002\t}\u0001#\u0002\t,'\te\u0001b\u0002B\u0012\u0001\u0011\u0005!QE\u0001\u0010iJ\fgn\u001d4pe64\u0016\r\\;fgR!\u0011Q\u0016B\u0014\u0011!\t\tO!\tA\u0002\t%\u0002\u0003\u0002\t,'M9qA!\f\u0003\u0011\u0003\u0011y#A\u0004M_:<W*\u00199\u0011\u00071\u0011\tD\u0002\u0004\u0002\u0005!\u0005!1G\n\u0005\u0005cyU\u0005C\u00049\u0005c!\tAa\u000e\u0015\u0005\t=\u0002B\u0003B\u001e\u0005c\u0011\r\u0011\"\u0004\u0003>\u0005I\u0011J\u001c3fq6\u000b7o[\u000b\u0003\u0005\u007fy!A!\u0011\u001e\t}z����@\u0005\n\u0005\u000b\u0012\t\u0004)A\u0007\u0005\u007f\t!\"\u00138eKbl\u0015m]6!\u0011)\u0011IE!\rC\u0002\u00135!1J\u0001\u000b\u001b&\u001c8/\u001b8h\u0005&$XC\u0001B'\u001f\t\u0011y%\b\u0003\u0001\u0002\u0001\u0001\u0001\"\u0003B*\u0005c\u0001\u000bQ\u0002B'\u0003-i\u0015n]:j]\u001e\u0014\u0015\u000e\u001e\u0011\t\u0015\t]#\u0011\u0007b\u0001\n\u001b\u0011I&A\u0005WC\u000e\fg\u000e\u001e\"jiV\u0011!1L\b\u0003\u0005;jB\u0001\u0011\u0001\u0001\u0001!I!\u0011\rB\u0019A\u00035!1L\u0001\u000b-\u0006\u001c\u0017M\u001c;CSR\u0004\u0003B\u0003B3\u0005c\u0011\r\u0011\"\u0004\u0003h\u0005QQ*[:t-\u0006\u001c\u0017M\u001c;\u0016\u0005\t%tB\u0001B6;\u0011\u0001\r\u0001\u0001\u0001\t\u0013\t=$\u0011\u0007Q\u0001\u000e\t%\u0014aC'jgN4\u0016mY1oi\u0002B!Ba\u001d\u00032\t\u0007I\u0011\u0002B;\u0003A)\u0007pY3qi&|g\u000eR3gCVdG/\u0006\u0002\u0003xA!\u0001cK\b\u0019\u0011%\u0011YH!\r!\u0002\u0013\u00119(A\tfq\u000e,\u0007\u000f^5p]\u0012+g-Y;mi\u0002B\u0001Ba \u00032\u0011\r!\u0011Q\u0001\rG\u0006t')^5mI\u001a\u0013x.\\\u000b\u0007\u0005\u0007\u0013)Ja'\u0016\u0005\t\u0015\u0005C\u0003BD\u0005\u001b\u0013\tJa&\u0003 6\u0011!\u0011\u0012\u0006\u0004\u0005\u0017#\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0005\u0005\u001f\u0013II\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\u0005\u0003\r\u0001\tM\u0005c\u0001\u000b\u0003\u0016\u00121aC! C\u0002]\u0001b\u0001EA_\u001f\te\u0005c\u0001\u000b\u0003\u001c\u00129!Q\u0014B?\u0005\u00049\"!A+\u0011\t1\u0001!\u0011\u0014\u0004\b\u0005G\u0013\tD\u0001BS\u00059auN\\4NCB\u0014U/\u001b7eKJ,BAa*\u00034N)!\u0011U(\u0003*B9ABa+\u00030\nU\u0016b\u0001BW\u0005\t9!)^5mI\u0016\u0014\bC\u0002\t\u0002>>\u0011\t\fE\u0002\u0015\u0005g#aA\u0006BQ\u0005\u00049\u0002\u0003\u0002\u0007\u0001\u0005cCq\u0001\u000fBQ\t\u0003\u0011I\f\u0006\u0002\u0003<B1!Q\u0018BQ\u0005ck!A!\r\t\u0017\t\u0005'\u0011\u0015a\u0001\n\u0003!!1Y\u0001\u0006K2,Wn]\u000b\u0003\u0005kC1Ba2\u0003\"\u0002\u0007I\u0011\u0001\u0003\u0003J\u0006IQ\r\\3ng~#S-\u001d\u000b\u0004G\n-\u0007B\u0003Bg\u0005\u000b\f\t\u00111\u0001\u00036\u0006\u0019\u0001\u0010J\u0019\t\u0013\tE'\u0011\u0015Q!\n\tU\u0016AB3mK6\u001c\b\u0005\u0003\u0005\u0002*\n\u0005F\u0011\u0001Bk)\u0011\u00119N!7\u000e\u0005\t\u0005\u0006\u0002\u0003Bn\u0005'\u0004\rAa,\u0002\u000b\u0015tGO]=\t\u0011\t}'\u0011\u0015C\u0001\u0003\u001f\u000bQa\u00197fCJD\u0001Ba9\u0003\"\u0012\u0005!Q]\u0001\u0007e\u0016\u001cX\u000f\u001c;\u0015\u0005\tU\u0006\u0002CA<\u0005c!\tA!;\u0016\t\t-(\u0011\u001f\u000b\u0005\u0005[\u0014\u0019\u0010\u0005\u0003\r\u0001\t=\bc\u0001\u000b\u0003r\u00121aCa:C\u0002]A\u0001B!1\u0003h\u0002\u0007!Q\u001f\t\u0006!\t](1`\u0005\u0004\u0005s4!A\u0003\u001fsKB,\u0017\r^3e}A1\u0001#!0\u0010\u0005_Dqa B\u0019\t\u0003\u0011y0\u0006\u0003\u0004\u0002\r\u001dQCAB\u0002!\u0011a\u0001a!\u0002\u0011\u0007Q\u00199\u0001\u0002\u0004\u0017\u0005{\u0014\ra\u0006\u0005\t\u0007\u0017\u0011\t\u0004\"\u0001\u0004\u000e\u0005Yq/\u001b;i\t\u00164\u0017-\u001e7u+\u0011\u0019ya!\u0006\u0015\t\rE1q\u0003\t\u0005\u0019\u0001\u0019\u0019\u0002E\u0002\u0015\u0007+!aAFB\u0005\u0005\u00049\u0002\u0002CA,\u0007\u0013\u0001\ra!\u0007\u0011\u000bAYsba\u0005\t\u0011\ru!\u0011\u0007C\u0001\u0007?\tqA\u001a:p[jK\u0007/\u0006\u0003\u0004\"\r\u001dBCBB\u0012\u0007S\u0019i\u0003\u0005\u0003\r\u0001\r\u0015\u0002c\u0001\u000b\u0004(\u00111aca\u0007C\u0002]Aqaa\u000b\u0004\u001c\u0001\u0007!,\u0001\u0003lKf\u001c\b\u0002CB\u0018\u00077\u0001\ra!\r\u0002\rY\fG.^3t!\u0011\u00012l!\n\t\u0011\ru!\u0011\u0007C\u0001\u0007k)Baa\u000e\u0004>Q11\u0011HB \u0007\u000f\u0002B\u0001\u0004\u0001\u0004<A\u0019Ac!\u0010\u0005\rY\u0019\u0019D1\u0001\u0018\u0011!\u0019Yca\rA\u0002\r\u0005\u0003\u0003\u0002\u0007\u0004D=I1a!\u0012\u0003\u0005!IE/\u001a:bE2,\u0007\u0002CB\u0018\u0007g\u0001\ra!\u0013\u0011\u000b1\u0019\u0019ea\u000f\t\u0015\r5#\u0011GA\u0001\n\u0013\u0019y%A\u0006sK\u0006$'+Z:pYZ,GCAB)!\u0011\u0019\u0019f!\u0018\u000e\u0005\rU#\u0002BB,\u00073\nA\u0001\\1oO*\u001111L\u0001\u0005U\u00064\u0018-\u0003\u0003\u0004`\rU#AB(cU\u0016\u001cG\u000f")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LongMap.class */
public final class LongMap<V> extends AbstractMap<Object, V> implements Serializable {
    private int _size;
    private int _vacant;
    private final Function1<Object, V> defaultEntry;
    private int mask;
    public long[] scala$collection$mutable$LongMap$$_keys;
    public Object[] scala$collection$mutable$LongMap$$_values;
    public int scala$collection$mutable$LongMap$$extraKeys;
    public Object scala$collection$mutable$LongMap$$minValue;
    public Object scala$collection$mutable$LongMap$$zeroValue;

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LongMap$LongMapBuilder.class */
    public static final class LongMapBuilder<V> implements Builder<Tuple2<Object, V>, LongMap<V>> {
        private LongMap<V> elems = new LongMap<>();

        public LongMapBuilder() {
            Growable.Cclass.$init$(this);
            Builder.Cclass.$init$(this);
        }

        @Override // scala.collection.generic.Growable
        public Growable $plus$eq(Object obj, Object obj2, Seq seq) {
            Growable $plus$plus$eq;
            $plus$plus$eq = $plus$eq((LongMapBuilder<V>) obj).$plus$eq(obj2).$plus$plus$eq(seq);
            return $plus$plus$eq;
        }

        public LongMapBuilder<V> $plus$eq(Tuple2<Object, V> tuple2) {
            elems().$plus$eq((Tuple2) tuple2);
            return this;
        }

        @Override // scala.collection.generic.Growable
        public Growable<Tuple2<Object, V>> $plus$plus$eq(TraversableOnce<Tuple2<Object, V>> traversableOnce) {
            return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
            elems_$eq(new LongMap<>());
        }

        public LongMap<V> elems() {
            return this.elems;
        }

        public void elems_$eq(LongMap<V> longMap) {
            this.elems = longMap;
        }

        @Override // scala.collection.mutable.Builder
        public <NewTo> Builder<Tuple2<Object, V>, NewTo> mapResult(Function1<LongMap<V>, NewTo> function1) {
            return Builder.Cclass.mapResult(this, function1);
        }

        @Override // scala.collection.mutable.Builder
        public LongMap<V> result() {
            return elems();
        }

        @Override // scala.collection.mutable.Builder
        public void sizeHint(int i) {
            Builder.Cclass.sizeHint(this, i);
        }

        @Override // scala.collection.mutable.Builder
        public void sizeHint(TraversableLike<?, ?> traversableLike) {
            Builder.Cclass.sizeHint(this, traversableLike);
        }

        @Override // scala.collection.mutable.Builder
        public void sizeHint(TraversableLike<?, ?> traversableLike, int i) {
            Builder.Cclass.sizeHint(this, traversableLike, i);
        }

        @Override // scala.collection.mutable.Builder
        public void sizeHintBounded(int i, TraversableLike<?, ?> traversableLike) {
            Builder.Cclass.sizeHintBounded(this, i, traversableLike);
        }
    }

    public LongMap() {
        this(LongMap$.MODULE$.scala$collection$mutable$LongMap$$exceptionDefault(), 16, true);
    }

    public LongMap(int i) {
        this(LongMap$.MODULE$.scala$collection$mutable$LongMap$$exceptionDefault(), i, true);
    }

    public LongMap(Function1<Object, V> function1) {
        this(function1, 16, true);
    }

    public LongMap(Function1<Object, V> function1, int i) {
        this(function1, i, true);
    }

    public LongMap(Function1<Object, V> function1, int i, boolean z) {
        this.defaultEntry = function1;
        this.mask = 0;
        this.scala$collection$mutable$LongMap$$extraKeys = 0;
        this.scala$collection$mutable$LongMap$$zeroValue = null;
        this.scala$collection$mutable$LongMap$$minValue = null;
        this._size = 0;
        this._vacant = 0;
        this.scala$collection$mutable$LongMap$$_keys = null;
        this.scala$collection$mutable$LongMap$$_values = null;
        if (z) {
            defaultInitialize(i);
        }
    }

    public static <V, U> CanBuildFrom<LongMap<V>, Tuple2<Object, U>, LongMap<U>> canBuildFrom() {
        return LongMap$.MODULE$.canBuildFrom();
    }

    private void defaultInitialize(int i) {
        int numberOfLeadingZeros = i < 0 ? 7 : 7 | (((1 << (32 - Integer.numberOfLeadingZeros(i - 1))) - 1) & 1073741823);
        this.mask = numberOfLeadingZeros;
        this.scala$collection$mutable$LongMap$$_keys = new long[numberOfLeadingZeros + 1];
        this.scala$collection$mutable$LongMap$$_values = new Object[numberOfLeadingZeros + 1];
    }

    public static <V> LongMap<V> fromZip(Iterable<Object> iterable, Iterable<V> iterable2) {
        return LongMap$.MODULE$.fromZip(iterable, iterable2);
    }

    public static <V> LongMap<V> fromZip(long[] jArr, Object obj) {
        return LongMap$.MODULE$.fromZip(jArr, obj);
    }

    private boolean imbalanced() {
        int i = this._size;
        int i2 = this._vacant;
        return ((double) (i + i2)) > ((double) this.mask) * 0.5d || i2 > i;
    }

    private void repack(int i) {
        long[] jArr = this.scala$collection$mutable$LongMap$$_keys;
        Object[] objArr = this.scala$collection$mutable$LongMap$$_values;
        this.mask = i;
        this.scala$collection$mutable$LongMap$$_keys = new long[i + 1];
        this.scala$collection$mutable$LongMap$$_values = new Object[i + 1];
        this._vacant = 0;
        for (int i2 = 0; i2 < jArr.length; i2++) {
            long j = jArr[i2];
            if (j != (-j)) {
                int seekEmpty = seekEmpty(j);
                this.scala$collection$mutable$LongMap$$_keys[seekEmpty] = j;
                this.scala$collection$mutable$LongMap$$_values[seekEmpty] = objArr[i2];
            }
        }
    }

    private int seekEmpty(long j) {
        int index = toIndex(j);
        int i = 0;
        while (this.scala$collection$mutable$LongMap$$_keys[index] != 0) {
            i++;
            index = ((index + (((i + 1) * 2) * i)) - 3) & this.mask;
        }
        return index;
    }

    private int seekEntry(long j) {
        int index = toIndex(j);
        int i = 0;
        while (true) {
            long j2 = this.scala$collection$mutable$LongMap$$_keys[index];
            if (j2 == j) {
                return index;
            }
            if (!(j2 != 0)) {
                return Integer.MIN_VALUE | index;
            }
            i++;
            index = ((index + (((i + 1) * 2) * i)) - 3) & this.mask;
        }
    }

    private int seekEntryOrOpen(long j) {
        int index = toIndex(j);
        int i = 0;
        while (true) {
            long j2 = this.scala$collection$mutable$LongMap$$_keys[index];
            if (j2 == j) {
                return index;
            }
            if (j2 + j2 != 0) {
                i++;
                index = ((index + (((i + 1) * 2) * i)) - 3) & this.mask;
            } else if (j2 == 0) {
                return Integer.MIN_VALUE | index;
            } else {
                int i2 = i;
                int i3 = index;
                while (true) {
                    int i4 = i3;
                    long j3 = this.scala$collection$mutable$LongMap$$_keys[i4];
                    if (j3 == j) {
                        return i4;
                    }
                    if (!(j3 != 0)) {
                        return (-1073741824) | index;
                    }
                    i2++;
                    i3 = ((i4 + (((i2 + 1) * 2) * i2)) - 3) & this.mask;
                }
            }
        }
    }

    private int toIndex(long j) {
        int i = (int) ((j ^ (j >>> 32)) & 4294967295L);
        int i2 = ((i >>> 16) ^ i) * (-2048144789);
        return (i2 ^ (i2 >>> 13)) & this.mask;
    }

    public LongMap<V> $minus$eq(long j) {
        if (j != (-j)) {
            int seekEntry = seekEntry(j);
            if (seekEntry >= 0) {
                this._size--;
                this._vacant++;
                this.scala$collection$mutable$LongMap$$_keys[seekEntry] = Long.MIN_VALUE;
                this.scala$collection$mutable$LongMap$$_values[seekEntry] = null;
            }
        } else if (j == 0) {
            this.scala$collection$mutable$LongMap$$extraKeys &= 2;
            this.scala$collection$mutable$LongMap$$zeroValue = null;
        } else {
            this.scala$collection$mutable$LongMap$$extraKeys &= 1;
            this.scala$collection$mutable$LongMap$$minValue = null;
        }
        return this;
    }

    public LongMap<V> $plus$eq(long j, V v) {
        update(j, (long) v);
        return this;
    }

    @Override // scala.collection.mutable.MapLike
    public LongMap<V> $plus$eq(Tuple2<Object, V> tuple2) {
        update(tuple2._1$mcJ$sp(), (long) tuple2.mo268_2());
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v8 */
    public V apply(long j) {
        V v;
        if (j == (-j)) {
            v = (this.scala$collection$mutable$LongMap$$extraKeys & (((int) (j >>> 63)) + 1)) == 0 ? this.defaultEntry.apply(BoxesRunTime.boxToLong(j)) : j == 0 ? this.scala$collection$mutable$LongMap$$zeroValue : this.scala$collection$mutable$LongMap$$minValue;
        } else {
            int seekEntry = seekEntry(j);
            v = seekEntry < 0 ? this.defaultEntry.apply(BoxesRunTime.boxToLong(j)) : this.scala$collection$mutable$LongMap$$_values[seekEntry];
        }
        return v;
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToLong(obj));
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike, scala.collection.mutable.Cloneable
    public LongMap<V> clone() {
        long[] jArr = this.scala$collection$mutable$LongMap$$_keys;
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        Object[] objArr = this.scala$collection$mutable$LongMap$$_values;
        Object[] copyOf2 = Arrays.copyOf(objArr, objArr.length);
        LongMap<V> longMap = new LongMap<>(this.defaultEntry, 1, false);
        longMap.initializeTo(this.mask, this.scala$collection$mutable$LongMap$$extraKeys, this.scala$collection$mutable$LongMap$$zeroValue, this.scala$collection$mutable$LongMap$$minValue, this._size, this._vacant, copyOf, copyOf2);
        return longMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
        if ((r5.scala$collection$mutable$LongMap$$extraKeys & (((int) (r6 >>> 63)) + 1)) != 0) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
        if (seekEntry(r6) >= 0) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002a, code lost:
        r10 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean contains(long r6) {
        /*
            r5 = this;
            r0 = r6
            long r0 = -r0
            r8 = r0
            r0 = 0
            r10 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L22
            r0 = r6
            r1 = 63
            long r0 = r0 >>> r1
            int r0 = (int) r0
            r11 = r0
            r0 = r5
            int r0 = r0.scala$collection$mutable$LongMap$$extraKeys
            r1 = r11
            r2 = 1
            int r1 = r1 + r2
            r0 = r0 & r1
            if (r0 == 0) goto L2d
            goto L2a
        L22:
            r0 = r5
            r1 = r6
            int r0 = r0.seekEntry(r1)
            if (r0 < 0) goto L2d
        L2a:
            r0 = 1
            r10 = r0
        L2d:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.LongMap.contains(long):boolean");
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return contains(BoxesRunTime.unboxToLong(obj));
    }

    /* renamed from: default */
    public V m6223default(long j) {
        return this.defaultEntry.apply(BoxesRunTime.boxToLong(j));
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    /* renamed from: default */
    public /* bridge */ /* synthetic */ Object mo6041default(Object obj) {
        return m6223default(BoxesRunTime.unboxToLong(obj));
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public LongMap<V> empty() {
        return new LongMap<>();
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <A> void foreach(Function1<Tuple2<Object, V>, A> function1) {
        if ((this.scala$collection$mutable$LongMap$$extraKeys & 1) == 1) {
            function1.apply(new Tuple2<>(BoxesRunTime.boxToLong(0L), this.scala$collection$mutable$LongMap$$zeroValue));
        } else {
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        if ((this.scala$collection$mutable$LongMap$$extraKeys & 2) == 2) {
            function1.apply(new Tuple2<>(BoxesRunTime.boxToLong(Long.MIN_VALUE), this.scala$collection$mutable$LongMap$$minValue));
        } else {
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            long[] jArr = this.scala$collection$mutable$LongMap$$_keys;
            if ((i < jArr.length) && (i2 < this._size)) {
                long j = jArr[i];
                if (j != (-j)) {
                    i2++;
                    function1.apply(new Tuple2<>(BoxesRunTime.boxToLong(j), this.scala$collection$mutable$LongMap$$_values[i]));
                } else {
                    BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
                }
                i++;
            } else {
                return;
            }
        }
    }

    public <A> void foreachKey(Function1<Object, A> function1) {
        if ((this.scala$collection$mutable$LongMap$$extraKeys & 1) == 1) {
            function1.apply(BoxesRunTime.boxToLong(0L));
        } else {
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        if ((this.scala$collection$mutable$LongMap$$extraKeys & 2) == 2) {
            function1.apply(BoxesRunTime.boxToLong(Long.MIN_VALUE));
        } else {
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            long[] jArr = this.scala$collection$mutable$LongMap$$_keys;
            if ((i < jArr.length) && (i2 < this._size)) {
                long j = jArr[i];
                if (j != (-j)) {
                    i2++;
                    function1.apply(BoxesRunTime.boxToLong(j));
                } else {
                    BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <A> void foreachValue(Function1<V, A> function1) {
        if ((this.scala$collection$mutable$LongMap$$extraKeys & 1) == 1) {
            function1.apply(this.scala$collection$mutable$LongMap$$zeroValue);
        } else {
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        if ((this.scala$collection$mutable$LongMap$$extraKeys & 2) == 2) {
            function1.apply(this.scala$collection$mutable$LongMap$$minValue);
        } else {
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            long[] jArr = this.scala$collection$mutable$LongMap$$_keys;
            if ((i < jArr.length) && (i2 < this._size)) {
                long j = jArr[i];
                if (j != (-j)) {
                    i2++;
                    function1.apply(this.scala$collection$mutable$LongMap$$_values[i]);
                } else {
                    BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
                }
                i++;
            } else {
                return;
            }
        }
    }

    public Option<V> get(long j) {
        None$ none$;
        if (j == (-j)) {
            none$ = (this.scala$collection$mutable$LongMap$$extraKeys & (((int) (j >>> 63)) + 1)) == 0 ? None$.MODULE$ : j == 0 ? new Some(this.scala$collection$mutable$LongMap$$zeroValue) : new Some(this.scala$collection$mutable$LongMap$$minValue);
        } else {
            int seekEntry = seekEntry(j);
            none$ = seekEntry < 0 ? None$.MODULE$ : new Some(this.scala$collection$mutable$LongMap$$_values[seekEntry]);
        }
        return none$;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public /* bridge */ /* synthetic */ Option get(Object obj) {
        return get(BoxesRunTime.unboxToLong(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v8 */
    public <V1> V1 getOrElse(long j, Function0<V1> function0) {
        V1 v1;
        if (j == (-j)) {
            v1 = (this.scala$collection$mutable$LongMap$$extraKeys & (((int) (j >>> 63)) + 1)) == 0 ? function0.apply() : j == 0 ? this.scala$collection$mutable$LongMap$$zeroValue : this.scala$collection$mutable$LongMap$$minValue;
        } else {
            int seekEntry = seekEntry(j);
            v1 = seekEntry < 0 ? function0.apply() : this.scala$collection$mutable$LongMap$$_values[seekEntry];
        }
        return v1;
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public /* bridge */ /* synthetic */ Object getOrElse(Object obj, Function0 function0) {
        return getOrElse(BoxesRunTime.unboxToLong(obj), function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v48, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v8 */
    public V getOrElseUpdate(long j, Function0<V> function0) {
        V v;
        if (j == (-j)) {
            int i = ((int) (j >>> 63)) + 1;
            if ((this.scala$collection$mutable$LongMap$$extraKeys & i) == 0) {
                v = function0.apply();
                this.scala$collection$mutable$LongMap$$extraKeys |= i;
                if (j == 0) {
                    this.scala$collection$mutable$LongMap$$zeroValue = v;
                } else {
                    this.scala$collection$mutable$LongMap$$minValue = v;
                }
            } else {
                v = j == 0 ? this.scala$collection$mutable$LongMap$$zeroValue : this.scala$collection$mutable$LongMap$$minValue;
            }
        } else {
            int seekEntryOrOpen = seekEntryOrOpen(j);
            if (seekEntryOrOpen < 0) {
                long[] jArr = this.scala$collection$mutable$LongMap$$_keys;
                V apply = function0.apply();
                if (jArr != this.scala$collection$mutable$LongMap$$_keys) {
                    int seekEntryOrOpen2 = seekEntryOrOpen(j);
                    seekEntryOrOpen = seekEntryOrOpen2;
                    if (seekEntryOrOpen2 >= 0) {
                        this._size--;
                        seekEntryOrOpen = seekEntryOrOpen2;
                    }
                }
                this._size++;
                int i2 = 1073741823 & seekEntryOrOpen;
                this.scala$collection$mutable$LongMap$$_keys[i2] = j;
                this.scala$collection$mutable$LongMap$$_values[i2] = apply;
                if ((1073741824 & seekEntryOrOpen) != 0) {
                    this._vacant--;
                    v = apply;
                } else {
                    v = apply;
                    if (imbalanced()) {
                        repack();
                        v = apply;
                    }
                }
            } else {
                v = this.scala$collection$mutable$LongMap$$_values[seekEntryOrOpen];
            }
        }
        return v;
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public /* bridge */ /* synthetic */ Object getOrElseUpdate(Object obj, Function0 function0) {
        return getOrElseUpdate(BoxesRunTime.unboxToLong(obj), function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.lang.Object] */
    public V getOrNull(long j) {
        V v = null;
        if (j == (-j)) {
            if ((this.scala$collection$mutable$LongMap$$extraKeys & (((int) (j >>> 63)) + 1)) != 0) {
                v = j == 0 ? this.scala$collection$mutable$LongMap$$zeroValue : this.scala$collection$mutable$LongMap$$minValue;
            }
        } else {
            int seekEntry = seekEntry(j);
            if (seekEntry >= 0) {
                v = this.scala$collection$mutable$LongMap$$_values[seekEntry];
            }
        }
        return v;
    }

    public void initializeTo(int i, int i2, Object obj, Object obj2, int i3, int i4, long[] jArr, Object[] objArr) {
        this.mask = i;
        this.scala$collection$mutable$LongMap$$extraKeys = i2;
        this.scala$collection$mutable$LongMap$$zeroValue = obj;
        this.scala$collection$mutable$LongMap$$minValue = obj2;
        this._size = i3;
        this._vacant = i4;
        this.scala$collection$mutable$LongMap$$_keys = jArr;
        this.scala$collection$mutable$LongMap$$_values = objArr;
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<Object, V>> iterator() {
        return new Iterator<Tuple2<Object, V>>(this) { // from class: scala.collection.mutable.LongMap$$anon$1
            private Tuple2<Object, V> anotherPair;
            private int index;

            /* renamed from: kz */
            private final long[] f1567kz;
            private Tuple2<Object, V> nextPair;

            /* renamed from: vz */
            private final Object[] f1568vz;

            {
                TraversableOnce.Cclass.$init$(this);
                Iterator.Cclass.$init$(this);
                this.f1567kz = this.scala$collection$mutable$LongMap$$_keys;
                this.f1568vz = this.scala$collection$mutable$LongMap$$_values;
                this.nextPair = this.scala$collection$mutable$LongMap$$extraKeys == 0 ? null : (this.scala$collection$mutable$LongMap$$extraKeys & 1) == 1 ? new Tuple2(BoxesRunTime.boxToLong(0L), this.scala$collection$mutable$LongMap$$zeroValue) : new Tuple2(BoxesRunTime.boxToLong(Long.MIN_VALUE), this.scala$collection$mutable$LongMap$$minValue);
                this.anotherPair = this.scala$collection$mutable$LongMap$$extraKeys == 3 ? new Tuple2(BoxesRunTime.boxToLong(Long.MIN_VALUE), this.scala$collection$mutable$LongMap$$minValue) : null;
                this.index = 0;
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B $colon$bslash(B b, Function2<Tuple2<Object, V>, B, B> function2) {
                Object foldRight;
                foldRight = foldRight(b, function2);
                return (B) foldRight;
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B $div$colon(B b, Function2<B, Tuple2<Object, V>, B> function2) {
                Object foldLeft;
                foldLeft = foldLeft(b, function2);
                return (B) foldLeft;
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> $plus$plus(Function0<GenTraversableOnce<B>> function0) {
                return Iterator.Cclass.$plus$plus(this, function0);
            }

            @Override // scala.collection.TraversableOnce
            public StringBuilder addString(StringBuilder stringBuilder) {
                return TraversableOnce.Cclass.addString(this, stringBuilder);
            }

            @Override // scala.collection.TraversableOnce
            public StringBuilder addString(StringBuilder stringBuilder, String str) {
                return TraversableOnce.Cclass.addString(this, stringBuilder, str);
            }

            @Override // scala.collection.TraversableOnce
            public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
                return TraversableOnce.Cclass.addString(this, stringBuilder, str, str2, str3);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B aggregate(Function0<B> function0, Function2<B, Tuple2<Object, V>, B> function2, Function2<B, B, B> function22) {
                return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
            }

            @Override // scala.collection.Iterator
            public BufferedIterator<Tuple2<Object, V>> buffered() {
                return Iterator.Cclass.buffered(this);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> collect(PartialFunction<Tuple2<Object, V>, B> partialFunction) {
                return Iterator.Cclass.collect(this, partialFunction);
            }

            @Override // scala.collection.TraversableOnce
            public <B> Option<B> collectFirst(PartialFunction<Tuple2<Object, V>, B> partialFunction) {
                return TraversableOnce.Cclass.collectFirst(this, partialFunction);
            }

            @Override // scala.collection.Iterator
            public boolean contains(Object obj) {
                return Iterator.Cclass.contains(this, obj);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> void copyToArray(Object obj) {
                TraversableOnce.Cclass.copyToArray(this, obj);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> void copyToArray(Object obj, int i) {
                TraversableOnce.Cclass.copyToArray(this, obj, i);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public <B> void copyToArray(Object obj, int i, int i2) {
                Iterator.Cclass.copyToArray(this, obj, i, i2);
            }

            @Override // scala.collection.TraversableOnce
            public <B> void copyToBuffer(Buffer<B> buffer) {
                TraversableOnce.Cclass.copyToBuffer(this, buffer);
            }

            @Override // scala.collection.Iterator
            public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<Tuple2<Object, V>, B, Object> function2) {
                return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public int count(Function1<Tuple2<Object, V>, Object> function1) {
                return TraversableOnce.Cclass.count(this, function1);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<Object, V>> drop(int i) {
                return Iterator.Cclass.drop(this, i);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<Object, V>> dropWhile(Function1<Tuple2<Object, V>, Object> function1) {
                return Iterator.Cclass.dropWhile(this, function1);
            }

            @Override // scala.collection.Iterator
            public Tuple2<Iterator<Tuple2<Object, V>>, Iterator<Tuple2<Object, V>>> duplicate() {
                return Iterator.Cclass.duplicate(this);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public boolean exists(Function1<Tuple2<Object, V>, Object> function1) {
                return Iterator.Cclass.exists(this, function1);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<Object, V>> filter(Function1<Tuple2<Object, V>, Object> function1) {
                return Iterator.Cclass.filter(this, function1);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<Object, V>> filterNot(Function1<Tuple2<Object, V>, Object> function1) {
                return Iterator.Cclass.filterNot(this, function1);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Option<Tuple2<Object, V>> find(Function1<Tuple2<Object, V>, Object> function1) {
                return Iterator.Cclass.find(this, function1);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> flatMap(Function1<Tuple2<Object, V>, GenTraversableOnce<B>> function1) {
                return Iterator.Cclass.flatMap(this, function1);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
                return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B foldLeft(B b, Function2<B, Tuple2<Object, V>, B> function2) {
                return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public <B> B foldRight(B b, Function2<Tuple2<Object, V>, B, B> function2) {
                return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public boolean forall(Function1<Tuple2<Object, V>, Object> function1) {
                return Iterator.Cclass.forall(this, function1);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
            public <U> void foreach(Function1<Tuple2<Object, V>, U> function1) {
                Iterator.Cclass.foreach(this, function1);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<Tuple2<Object, V>>.GroupedIterator<B> grouped(int i) {
                return Iterator.Cclass.grouped(this, i);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public boolean hasDefiniteSize() {
                return Iterator.Cclass.hasDefiniteSize(this);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v13 */
            /* JADX WARN: Type inference failed for: r0v28 */
            /* JADX WARN: Type inference failed for: r0v29 */
            @Override // scala.collection.Iterator
            public boolean hasNext() {
                boolean z = false;
                if (this.nextPair == null) {
                    int i = this.index;
                    long[] jArr = this.f1567kz;
                    if (i < jArr.length) {
                        ?? r0 = jArr[i];
                        while (true) {
                            char c = r0;
                            if (c != (-c)) {
                                this.nextPair = new Tuple2(BoxesRunTime.boxToLong(this.f1567kz[this.index]), this.f1568vz[this.index]);
                                this.index++;
                                break;
                            }
                            int i2 = this.index + 1;
                            this.index = i2;
                            long[] jArr2 = this.f1567kz;
                            if (i2 >= jArr2.length) {
                                return false;
                            }
                            r0 = jArr2[i2];
                        }
                    }
                    return z;
                }
                z = true;
                return z;
            }

            @Override // scala.collection.Iterator
            public <B> int indexOf(B b) {
                return Iterator.Cclass.indexOf(this, b);
            }

            @Override // scala.collection.Iterator
            public int indexWhere(Function1<Tuple2<Object, V>, Object> function1) {
                return Iterator.Cclass.indexWhere(this, function1);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
            public boolean isEmpty() {
                return Iterator.Cclass.isEmpty(this);
            }

            @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce
            public boolean isTraversableAgain() {
                return Iterator.Cclass.isTraversableAgain(this);
            }

            @Override // scala.collection.Iterator
            public int length() {
                return Iterator.Cclass.length(this);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> map(Function1<Tuple2<Object, V>, B> function1) {
                return Iterator.Cclass.map(this, function1);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public Object max(Ordering ordering) {
                return TraversableOnce.Cclass.max(this, ordering);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public Object maxBy(Function1 function1, Ordering ordering) {
                return TraversableOnce.Cclass.maxBy(this, function1, ordering);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public Object min(Ordering ordering) {
                return TraversableOnce.Cclass.min(this, ordering);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public Object minBy(Function1 function1, Ordering ordering) {
                return TraversableOnce.Cclass.minBy(this, function1, ordering);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public String mkString() {
                return TraversableOnce.Cclass.mkString(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public String mkString(String str) {
                return TraversableOnce.Cclass.mkString(this, str);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public String mkString(String str, String str2, String str3) {
                return TraversableOnce.Cclass.mkString(this, str, str2, str3);
            }

            @Override // scala.collection.Iterator
            public Tuple2<Object, V> next() {
                if (this.nextPair != null || hasNext()) {
                    Tuple2<Object, V> tuple2 = this.nextPair;
                    Tuple2<Object, V> tuple22 = this.anotherPair;
                    if (tuple22 == 0) {
                        this.nextPair = null;
                    } else {
                        this.nextPair = tuple22;
                        this.anotherPair = null;
                    }
                    return tuple2;
                }
                throw new NoSuchElementException("next");
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public boolean nonEmpty() {
                return TraversableOnce.Cclass.nonEmpty(this);
            }

            @Override // scala.collection.Iterator
            public <A1> Iterator<A1> padTo(int i, A1 a1) {
                return Iterator.Cclass.padTo(this, i, a1);
            }

            @Override // scala.collection.Iterator
            public Tuple2<Iterator<Tuple2<Object, V>>, Iterator<Tuple2<Object, V>>> partition(Function1<Tuple2<Object, V>, Object> function1) {
                return Iterator.Cclass.partition(this, function1);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
                return Iterator.Cclass.patch(this, i, iterator, i2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B product(Numeric<B> numeric) {
                return (B) TraversableOnce.Cclass.product(this, numeric);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <A1> A1 reduce(Function2<A1, A1, A1> function2) {
                return (A1) TraversableOnce.Cclass.reduce(this, function2);
            }

            @Override // scala.collection.TraversableOnce
            public <B> B reduceLeft(Function2<B, Tuple2<Object, V>, B> function2) {
                return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> Option<B> reduceLeftOption(Function2<B, Tuple2<Object, V>, B> function2) {
                return TraversableOnce.Cclass.reduceLeftOption(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
                return TraversableOnce.Cclass.reduceOption(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public <B> B reduceRight(Function2<Tuple2<Object, V>, B, B> function2) {
                return (B) TraversableOnce.Cclass.reduceRight(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> Option<B> reduceRightOption(Function2<Tuple2<Object, V>, B, B> function2) {
                return TraversableOnce.Cclass.reduceRightOption(this, function2);
            }

            @Override // scala.collection.TraversableOnce
            public List<Tuple2<Object, V>> reversed() {
                return TraversableOnce.Cclass.reversed(this);
            }

            @Override // scala.collection.Iterator
            public boolean sameElements(Iterator<?> iterator) {
                return Iterator.Cclass.sameElements(this, iterator);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> scanLeft(B b, Function2<B, Tuple2<Object, V>, B> function2) {
                return Iterator.Cclass.scanLeft(this, b, function2);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> scanRight(B b, Function2<Tuple2<Object, V>, B, B> function2) {
                return Iterator.Cclass.scanRight(this, b, function2);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
            public Iterator<Tuple2<Object, V>> seq() {
                return Iterator.Cclass.seq(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public int size() {
                return TraversableOnce.Cclass.size(this);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<Object, V>> slice(int i, int i2) {
                return Iterator.Cclass.slice(this, i, i2);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<Tuple2<Object, V>>.GroupedIterator<B> sliding(int i, int i2) {
                return Iterator.Cclass.sliding(this, i, i2);
            }

            @Override // scala.collection.Iterator
            public <B> int sliding$default$2() {
                return Iterator.Cclass.sliding$default$2(this);
            }

            @Override // scala.collection.Iterator
            public Tuple2<Iterator<Tuple2<Object, V>>, Iterator<Tuple2<Object, V>>> span(Function1<Tuple2<Object, V>, Object> function1) {
                return Iterator.Cclass.span(this, function1);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B sum(Numeric<B> numeric) {
                return (B) TraversableOnce.Cclass.sum(this, numeric);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<Object, V>> take(int i) {
                return Iterator.Cclass.take(this, i);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<Object, V>> takeWhile(Function1<Tuple2<Object, V>, Object> function1) {
                return Iterator.Cclass.takeWhile(this, function1);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            /* renamed from: to */
            public <Col> Col mo1to(CanBuildFrom<Nothing$, Tuple2<Object, V>, Col> canBuildFrom) {
                return (Col) TraversableOnce.Cclass.m182to(this, canBuildFrom);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> Object toArray(ClassTag<B> classTag) {
                return TraversableOnce.Cclass.toArray(this, classTag);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> Buffer<B> toBuffer() {
                return TraversableOnce.Cclass.toBuffer(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public IndexedSeq<Tuple2<Object, V>> toIndexedSeq() {
                return TraversableOnce.Cclass.toIndexedSeq(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Iterable<Tuple2<Object, V>> toIterable() {
                return TraversableOnce.Cclass.toIterable(this);
            }

            @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Iterator<Tuple2<Object, V>> toIterator() {
                return Iterator.Cclass.toIterator(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public List<Tuple2<Object, V>> toList() {
                return TraversableOnce.Cclass.toList(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Tuple2<Object, V>, Tuple2<T, U>> predef$$less$colon$less) {
                return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
            public Seq<Tuple2<Object, V>> toSeq() {
                return TraversableOnce.Cclass.toSeq(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
            public <B> Set<B> toSet() {
                return TraversableOnce.Cclass.toSet(this);
            }

            @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Stream<Tuple2<Object, V>> toStream() {
                return Iterator.Cclass.toStream(this);
            }

            @Override // scala.collection.Iterator
            public String toString() {
                return Iterator.Cclass.toString(this);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public Traversable<Tuple2<Object, V>> toTraversable() {
                return Iterator.Cclass.toTraversable(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public Vector<Tuple2<Object, V>> toVector() {
                return TraversableOnce.Cclass.toVector(this);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<Object, V>> withFilter(Function1<Tuple2<Object, V>, Object> function1) {
                return Iterator.Cclass.withFilter(this, function1);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<Tuple2<Tuple2<Object, V>, B>> zip(Iterator<B> iterator) {
                return Iterator.Cclass.zip(this, iterator);
            }

            @Override // scala.collection.Iterator
            public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
                return Iterator.Cclass.zipAll(this, iterator, a1, b1);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<Tuple2<Object, V>, Object>> zipWithIndex() {
                return Iterator.Cclass.zipWithIndex(this);
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <V1> LongMap<V1> mapValuesNow(Function1<V, V1> function1) {
        Object obj = null;
        Object apply = (this.scala$collection$mutable$LongMap$$extraKeys & 1) == 1 ? function1.apply(this.scala$collection$mutable$LongMap$$zeroValue) : null;
        if ((this.scala$collection$mutable$LongMap$$extraKeys & 2) == 2) {
            obj = function1.apply(this.scala$collection$mutable$LongMap$$minValue);
        }
        LongMap<V1> longMap = new LongMap<>(LongMap$.MODULE$.scala$collection$mutable$LongMap$$exceptionDefault(), 1, false);
        long[] jArr = this.scala$collection$mutable$LongMap$$_keys;
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        Object[] objArr = new Object[this.scala$collection$mutable$LongMap$$_values.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            long[] jArr2 = this.scala$collection$mutable$LongMap$$_keys;
            boolean z = i < jArr2.length;
            int i4 = this._size;
            if (!z || !(i3 < i4)) {
                longMap.initializeTo(this.mask, this.scala$collection$mutable$LongMap$$extraKeys, apply, obj, i4, this._vacant, copyOf, objArr);
                return longMap;
            }
            long j = jArr2[i];
            int i5 = i3;
            if (j != (-j)) {
                i5 = i3 + 1;
                objArr[i] = function1.apply(this.scala$collection$mutable$LongMap$$_values[i]);
            }
            i++;
            i2 = i5;
        }
    }

    public Option<V> put(long j, V v) {
        None$ none$;
        if (j != (-j)) {
            int seekEntryOrOpen = seekEntryOrOpen(j);
            if (seekEntryOrOpen < 0) {
                int i = 1073741823 & seekEntryOrOpen;
                this.scala$collection$mutable$LongMap$$_keys[i] = j;
                this.scala$collection$mutable$LongMap$$_values[i] = v;
                this._size++;
                if ((1073741824 & seekEntryOrOpen) != 0) {
                    this._vacant--;
                } else if (imbalanced()) {
                    repack();
                }
                none$ = None$.MODULE$;
            } else {
                Some some = new Some(this.scala$collection$mutable$LongMap$$_values[seekEntryOrOpen]);
                this.scala$collection$mutable$LongMap$$_keys[seekEntryOrOpen] = j;
                this.scala$collection$mutable$LongMap$$_values[seekEntryOrOpen] = v;
                none$ = some;
            }
        } else if (j == 0) {
            Some some2 = (this.scala$collection$mutable$LongMap$$extraKeys & 1) == 1 ? new Some(this.scala$collection$mutable$LongMap$$zeroValue) : None$.MODULE$;
            this.scala$collection$mutable$LongMap$$zeroValue = v;
            this.scala$collection$mutable$LongMap$$extraKeys |= 1;
            none$ = some2;
        } else {
            Some some3 = (this.scala$collection$mutable$LongMap$$extraKeys & 2) == 1 ? new Some(this.scala$collection$mutable$LongMap$$minValue) : None$.MODULE$;
            this.scala$collection$mutable$LongMap$$minValue = v;
            this.scala$collection$mutable$LongMap$$extraKeys |= 2;
            none$ = some3;
        }
        return none$;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public /* bridge */ /* synthetic */ Option put(Object obj, Object obj2) {
        return put(BoxesRunTime.unboxToLong(obj), (long) obj2);
    }

    public void repack() {
        int i = this.mask;
        int i2 = this._size;
        int i3 = this._vacant;
        int i4 = i;
        if (i2 + i3 >= i * 0.5d) {
            i4 = i;
            if (i3 <= i * 0.2d) {
                i4 = ((i << 1) + 1) & 1073741823;
            }
        }
        while (i4 > 8 && this._size * 8 < i4) {
            i4 >>>= 1;
        }
        repack(i4);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return this._size + ((this.scala$collection$mutable$LongMap$$extraKeys + 1) / 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LongMap<V> transformValues(Function1<V, V> function1) {
        if ((this.scala$collection$mutable$LongMap$$extraKeys & 1) == 1) {
            this.scala$collection$mutable$LongMap$$zeroValue = function1.apply(this.scala$collection$mutable$LongMap$$zeroValue);
        }
        if ((this.scala$collection$mutable$LongMap$$extraKeys & 2) == 2) {
            this.scala$collection$mutable$LongMap$$minValue = function1.apply(this.scala$collection$mutable$LongMap$$minValue);
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            long[] jArr = this.scala$collection$mutable$LongMap$$_keys;
            if ((i < jArr.length) && (i3 < this._size)) {
                long j = jArr[i];
                int i4 = i3;
                if (j != (-j)) {
                    i4 = i3 + 1;
                    Object[] objArr = this.scala$collection$mutable$LongMap$$_values;
                    objArr[i] = function1.apply(objArr[i]);
                }
                i++;
                i2 = i4;
            } else {
                return this;
            }
        }
    }

    public void update(long j, V v) {
        if (j == (-j)) {
            if (j == 0) {
                this.scala$collection$mutable$LongMap$$zeroValue = v;
                this.scala$collection$mutable$LongMap$$extraKeys |= 1;
                return;
            }
            this.scala$collection$mutable$LongMap$$minValue = v;
            this.scala$collection$mutable$LongMap$$extraKeys |= 2;
            return;
        }
        int seekEntryOrOpen = seekEntryOrOpen(j);
        if (seekEntryOrOpen >= 0) {
            this.scala$collection$mutable$LongMap$$_keys[seekEntryOrOpen] = j;
            this.scala$collection$mutable$LongMap$$_values[seekEntryOrOpen] = v;
            return;
        }
        int i = 1073741823 & seekEntryOrOpen;
        this.scala$collection$mutable$LongMap$$_keys[i] = j;
        this.scala$collection$mutable$LongMap$$_values[i] = v;
        this._size++;
        if ((1073741824 & seekEntryOrOpen) != 0) {
            this._vacant--;
        } else if (!imbalanced()) {
        } else {
            repack();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public /* bridge */ /* synthetic */ void update(Object obj, Object obj2) {
        update(BoxesRunTime.unboxToLong(obj), (long) obj2);
    }
}
