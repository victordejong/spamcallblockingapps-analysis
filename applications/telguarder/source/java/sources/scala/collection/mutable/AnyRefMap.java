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
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\rEd\u0001B\u0001\u0003\u0005%\u0011\u0011\"\u00118z%\u00164W*\u00199\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0004\u0015Ea2\u0003\u0002\u0001\fE\u0015\u0002B\u0001D\u0007\u001075\t!!\u0003\u0002\u000f\u0005\tY\u0011IY:ue\u0006\u001cG/T1q!\t\u0001\u0012\u0003\u0004\u0001\u0005\u000bI\u0001!\u0019A\n\u0003\u0003-\u000b\"\u0001\u0006\r\u0011\u0005U1R\"\u0001\u0004\n\u0005]1!a\u0002(pi\"Lgn\u001a\t\u0003+eI!A\u0007\u0004\u0003\r\u0005s\u0017PU3g!\t\u0001B\u0004B\u0003\u001e\u0001\t\u0007aDA\u0001W#\t!r\u0004\u0005\u0002\u0016A%\u0011\u0011E\u0002\u0002\u0004\u0003:L\b\u0003\u0002\u0007$\u001fmI!\u0001\n\u0002\u0003\u00075\u000b\u0007\u000fE\u0003\rM=Y\u0002&\u0003\u0002(\u0005\t9Q*\u00199MS.,\u0007\u0003\u0002\u0007\u0001\u001fmA\u0001B\u000b\u0001\u0003\u0002\u0003\u0006IaK\u0001\rI\u00164\u0017-\u001e7u\u000b:$(/\u001f\t\u0005+1z1$\u0003\u0002.\r\tIa)\u001e8di&|g.\r\u0005\t_\u0001\u0011\t\u0011)A\u0005a\u0005\t\u0012N\\5uS\u0006d')\u001e4gKJ\u001c\u0016N_3\u0011\u0005U\t\u0014B\u0001\u001a\u0007\u0005\rIe\u000e\u001e\u0005\ti\u0001\u0011\t\u0011)A\u0005k\u0005I\u0011N\\5u\u00052\fgn\u001b\t\u0003+YJ!a\u000e\u0004\u0003\u000f\t{w\u000e\\3b]\"1\u0011\b\u0001C\u0001\ti\na\u0001P5oSRtD\u0003\u0002\u0015<yuBQA\u000b\u001dA\u0002-BQa\f\u001dA\u0002ABQ\u0001\u000e\u001dA\u0002UBQ!\u000f\u0001\u0005\u0002}\"\u0012\u0001\u000b\u0005\u0006s\u0001!\t!\u0011\u000b\u0003Q\tCQA\u000b!A\u0002-BQ!\u000f\u0001\u0005\u0002\u0011#\"\u0001K#\t\u000b=\u001a\u0005\u0019\u0001\u0019\t\u000be\u0002A\u0011A$\u0015\u0007!B\u0015\nC\u0003+\r\u0002\u00071\u0006C\u00030\r\u0002\u0007\u0001\u0007\u0003\u0004L\u0001\u0001\u0006K\u0001M\u0001\u0005[\u0006\u001c8\u000e\u0003\u0004N\u0001\u0001\u0006K\u0001M\u0001\u0006?NL'0\u001a\u0005\u0007\u001f\u0002\u0001\u000b\u0015\u0002\u0019\u0002\u000f}3\u0018mY1oi\"1\u0011\u000b\u0001Q!\nI\u000bqa\u00185bg\",7\u000fE\u0002\u0016'BJ!\u0001\u0016\u0004\u0003\u000b\u0005\u0013(/Y=\t\rY\u0003\u0001\u0015)\u0003X\u0003\u0015y6.Z=t!\r)2\u000b\u0007\u0005\u00073\u0002\u0001\u000b\u0015B,\u0002\u000f}3\u0018\r\\;fg\"11\f\u0001Q\u0005\nq\u000b\u0011\u0003Z3gCVdG/\u00138ji&\fG.\u001b>f)\ti\u0006\r\u0005\u0002\u0016=&\u0011qL\u0002\u0002\u0005+:LG\u000fC\u0003b5\u0002\u0007\u0001'A\u0001o\u0011\u0019\u0019\u0007\u0001\"\u0001\u0005I\u0006a\u0011N\\5uS\u0006d\u0017N_3U_R9Q,Z4jW6|\u0007\"\u00024c\u0001\u0004\u0001\u0014!A7\t\u000b!\u0014\u0007\u0019\u0001\u0019\u0002\u0005MT\b\"\u00026c\u0001\u0004\u0001\u0014A\u0001<d\u0011\u0015a'\r1\u0001S\u0003\tA'\u0010C\u0003oE\u0002\u0007q+\u0001\u0002lu\")\u0001O\u0019a\u0001/\u0006\u0011aO\u001f\u0005\u0006e\u0002!\te]\u0001\u0005g&TX-F\u00011\u0011\u0015)\b\u0001\"\u0011w\u0003\u0015)W\u000e\u001d;z+\u0005A\u0003\"\u0002=\u0001\t\u0013I\u0018AC5nE\u0006d\u0017M\\2fIV\tQ\u0007C\u0003|\u0001\u0011%A0\u0001\u0004iCNDwJ\u001a\u000b\u0003auDQA >A\u0002=\t1a[3z\u0011\u001d\t\t\u0001\u0001C\u0005\u0003\u0007\t\u0011b]3fW\u0016sGO]=\u0015\u000bA\n)!!\u0003\t\r\u0005\u001dq\u00101\u00011\u0003\u0005A\u0007BBA\u0006\u007f\u0002\u0007\u0001$A\u0001l\u0011\u001d\ty\u0001\u0001C\u0005\u0003#\tqb]3fW\u0016sGO]=Pe>\u0003XM\u001c\u000b\u0006a\u0005M\u0011Q\u0003\u0005\b\u0003\u000f\ti\u00011\u00011\u0011\u001d\tY!!\u0004A\u0002aAq!!\u0007\u0001\t\u0003\nY\"\u0001\u0005d_:$\u0018-\u001b8t)\r)\u0014Q\u0004\u0005\u0007}\u0006]\u0001\u0019A\b\t\u000f\u0005\u0005\u0002\u0001\"\u0011\u0002$\u0005\u0019q-\u001a;\u0015\t\u0005\u0015\u00121\u0006\t\u0005+\u0005\u001d2$C\u0002\u0002*\u0019\u0011aa\u00149uS>t\u0007B\u0002@\u0002 \u0001\u0007q\u0002C\u0004\u00020\u0001!\t%!\r\u0002\u0013\u001d,Go\u0014:FYN,W\u0003BA\u001a\u0003o!b!!\u000e\u0002>\u0005}\u0002c\u0001\t\u00028\u0011A\u0011\u0011HA\u0017\u0005\u0004\tYD\u0001\u0002WcE\u00111d\b\u0005\u0007}\u00065\u0002\u0019A\b\t\u0013\u0005\u0005\u0013Q\u0006CA\u0002\u0005\r\u0013a\u00023fM\u0006,H\u000e\u001e\t\u0006+\u0005\u0015\u0013QG\u0005\u0004\u0003\u000f2!\u0001\u0003\u001fcs:\fW.\u001a \t\u000f\u0005-\u0003\u0001\"\u0011\u0002N\u0005yq-\u001a;Pe\u0016c7/Z+qI\u0006$X\rF\u0003\u001c\u0003\u001f\n\t\u0006\u0003\u0004\u007f\u0003\u0013\u0002\ra\u0004\u0005\n\u0003'\nI\u0005\"a\u0001\u0003+\nA\u0002Z3gCVdGOV1mk\u0016\u0004B!FA#7!9\u0011\u0011\f\u0001\u0005\u0002\u0005m\u0013!C4fi>\u0013h*\u001e7m)\rY\u0012Q\f\u0005\u0007}\u0006]\u0003\u0019A\b\t\u000f\u0005\u0005\u0004\u0001\"\u0011\u0002d\u0005)\u0011\r\u001d9msR\u00191$!\u001a\t\ry\fy\u00061\u0001\u0010\u0011\u001d\t\t\u0005\u0001C!\u0003S\"2aGA6\u0011\u0019q\u0018q\ra\u0001\u001f!9\u0011q\u000e\u0001\u0005\n\u0005E\u0014A\u0002:fa\u0006\u001c7\u000eF\u0002^\u0003gBq!!\u001e\u0002n\u0001\u0007\u0001'A\u0004oK^l\u0015m]6\t\u000f\u0005=\u0004\u0001\"\u0001\u0002zQ\tQ\fC\u0004\u0002~\u0001!\t%a \u0002\u0007A,H\u000f\u0006\u0004\u0002&\u0005\u0005\u00151\u0011\u0005\u0007}\u0006m\u0004\u0019A\b\t\u000f\u0005\u0015\u00151\u0010a\u00017\u0005)a/\u00197vK\"9\u0011\u0011\u0012\u0001\u0005B\u0005-\u0015AB;qI\u0006$X\rF\u0003^\u0003\u001b\u000by\t\u0003\u0004\u007f\u0003\u000f\u0003\ra\u0004\u0005\b\u0003\u000b\u000b9\t1\u0001\u001c\u0011\u001d\t\u0019\n\u0001C\u0001\u0003+\u000b\u0001\u0002\n9mkN$S-\u001d\u000b\u0007\u0003/\u000bI*a'\u000e\u0003\u0001AaA`AI\u0001\u0004y\u0001bBAC\u0003#\u0003\ra\u0007\u0005\b\u0003'\u0003A\u0011AAP)\u0011\t9*!)\t\u0011\u0005\r\u0016Q\u0014a\u0001\u0003K\u000b!a\u001b<\u0011\u000bU\t9kD\u000e\n\u0007\u0005%fA\u0001\u0004UkBdWM\r\u0005\b\u0003[\u0003A\u0011AAX\u0003%!S.\u001b8vg\u0012*\u0017\u000f\u0006\u0003\u0002\u0018\u0006E\u0006B\u0002@\u0002,\u0002\u0007q\u0002C\u0004\u00026\u0002!\t!a.\u0002\u0011%$XM]1u_J,\"!!/\u0011\r\u0005m\u0016QXAS\u001b\u0005!\u0011bAA`\t\tA\u0011\n^3sCR|'\u000fC\u0004\u0002D\u0002!\t%!2\u0002\u000f\u0019|'/Z1dQV!\u0011qYAi)\ri\u0016\u0011\u001a\u0005\t\u0003\u0017\f\t\r1\u0001\u0002N\u0006\ta\r\u0005\u0004\u0016Y\u0005\u0015\u0016q\u001a\t\u0004!\u0005EGaBAj\u0003\u0003\u0014\rA\b\u0002\u0002\u0003\"1\u0011q\u001b\u0001\u0005B}\nQa\u00197p]\u0016D\u0001\"a7\u0001A\u0013%\u0011Q\\\u0001\u000fM>\u0014X-Y2i\u000b2,W.\u001a8u+\u0019\ty.a;\u0002pR)Q,!9\u0002f\"9\u00111]Am\u0001\u00049\u0016!B3mK6\u001c\b\u0002CAf\u00033\u0004\r!a:\u0011\rUa\u0013\u0011^Aw!\r\u0001\u00121\u001e\u0003\b\u0003'\fIN1\u0001\u001f!\r\u0001\u0012q\u001e\u0003\b\u0003c\fIN1\u0001\u001f\u0005\u0005\u0011\u0005bBA{\u0001\u0011\u0005\u0011q_\u0001\u000bM>\u0014X-Y2i\u0017\u0016LX\u0003BA}\u0005\u0003!2!XA~\u0011!\tY-a=A\u0002\u0005u\b#B\u000b-\u001f\u0005}\bc\u0001\t\u0003\u0002\u00119\u00111[Az\u0005\u0004q\u0002b\u0002B\u0003\u0001\u0011\u0005!qA\u0001\rM>\u0014X-Y2i-\u0006dW/Z\u000b\u0005\u0005\u0013\u0011\t\u0002F\u0002^\u0005\u0017A\u0001\"a3\u0003\u0004\u0001\u0007!Q\u0002\t\u0006+1Z\"q\u0002\t\u0004!\tEAaBAj\u0005\u0007\u0011\rA\b\u0005\b\u0005+\u0001A\u0011\u0001B\f\u00031i\u0017\r\u001d,bYV,7OT8x+\u0011\u0011IBa\b\u0015\t\tm!\u0011\u0005\t\u0006\u0019\u0001y!Q\u0004\t\u0004!\t}AaBA\u001d\u0005'\u0011\rA\b\u0005\t\u0003\u0017\u0014\u0019\u00021\u0001\u0003$A)Q\u0003L\u000e\u0003\u001e!9!q\u0005\u0001\u0005\u0002\t%\u0012a\u0004;sC:\u001chm\u001c:n-\u0006dW/Z:\u0015\t\u0005]%1\u0006\u0005\t\u0003\u0017\u0014)\u00031\u0001\u0003.A!Q\u0003L\u000e\u001c\u000f\u001d\u0011\tD\u0001E\u0001\u0005g\t\u0011\"\u00118z%\u00164W*\u00199\u0011\u00071\u0011)D\u0002\u0004\u0002\u0005!\u0005!qG\n\u0004\u0005kA\u0002bB\u001d\u00036\u0011\u0005!1\b\u000b\u0003\u0005gA!Ba\u0010\u00036\t\u0007IQ\u0002B!\u0003%Ie\u000eZ3y\u001b\u0006\u001c8.\u0006\u0002\u0003D=\u0011!QI\u000f\u0005\u007f}���� C\u0005\u0003J\tU\u0002\u0015!\u0004\u0003D\u0005Q\u0011J\u001c3fq6\u000b7o\u001b\u0011\t\u0015\t5#Q\u0007b\u0001\n\u001b\u0011y%\u0001\u0006NSN\u001c\u0018N\\4CSR,\"A!\u0015\u0010\u0005\tMS\u0004\u0002A\u0001\u0001\u0001A\u0011Ba\u0016\u00036\u0001\u0006iA!\u0015\u0002\u00175K7o]5oO\nKG\u000f\t\u0005\u000b\u00057\u0012)D1A\u0005\u000e\tu\u0013!\u0003,bG\u0006tGOQ5u+\t\u0011yf\u0004\u0002\u0003bu!\u0001\t\u0001\u0001\u0001\u0011%\u0011)G!\u000e!\u0002\u001b\u0011y&\u0001\u0006WC\u000e\fg\u000e\u001e\"ji\u0002B!B!\u001b\u00036\t\u0007IQ\u0002B6\u0003)i\u0015n]:WC\u000e\fg\u000e^\u000b\u0003\u0005[z!Aa\u001c\u001e\t\u0001\u0007\u0001\u0001\u0001\u0005\n\u0005g\u0012)\u0004)A\u0007\u0005[\n1\"T5tgZ\u000b7-\u00198uA!Q!q\u000fB\u001b\u0005\u0004%IA!\u001f\u0002!\u0015D8-\u001a9uS>tG)\u001a4bk2$XC\u0001B>!\u0011)Bf\b\u000b\t\u0013\t}$Q\u0007Q\u0001\n\tm\u0014!E3yG\u0016\u0004H/[8o\t\u00164\u0017-\u001e7uA!A!1\u0011B\u001b\t\u0007\u0011))\u0001\u0007dC:\u0014U/\u001b7e\rJ|W.\u0006\u0006\u0003\b\ne%Q\u0014BR\u0005S+\"A!#\u0011\u0015\t-%\u0011\u0013BK\u0005?\u0013i+\u0004\u0002\u0003\u000e*\u0019!q\u0012\u0003\u0002\u000f\u001d,g.\u001a:jG&!!1\u0013BG\u00051\u0019\u0015M\u001c\"vS2$gI]8n!\u0019a\u0001Aa&\u0003\u001cB\u0019\u0001C!'\u0005\rI\u0011\tI1\u0001\u0014!\r\u0001\"Q\u0014\u0003\u0007;\t\u0005%\u0019\u0001\u0010\u0011\u000fU\t9K!)\u0003(B\u0019\u0001Ca)\u0005\u000f\t\u0015&\u0011\u0011b\u0001'\t\t!\nE\u0002\u0011\u0005S#qAa+\u0003\u0002\n\u0007aDA\u0001V!\u0019a\u0001A!)\u0003(\u001a9!\u0011\u0017B\u001b\u0005\tM&\u0001E!osJ+g-T1q\u0005VLG\u000eZ3s+\u0019\u0011)L!1\u0003FN)!q\u0016\r\u00038B9AB!/\u0003>\n\u001d\u0017b\u0001B^\u0005\t9!)^5mI\u0016\u0014\bcB\u000b\u0002(\n}&1\u0019\t\u0004!\t\u0005GA\u0002\n\u00030\n\u00071\u0003E\u0002\u0011\u0005\u000b$a!\bBX\u0005\u0004q\u0002C\u0002\u0007\u0001\u0005\u007f\u0013\u0019\rC\u0004:\u0005_#\tAa3\u0015\u0005\t5\u0007\u0003\u0003Bh\u0005_\u0013yLa1\u000e\u0005\tU\u0002bCAr\u0005_\u0003\r\u0011\"\u0001\u0005\u0005',\"Aa2\t\u0017\t]'q\u0016a\u0001\n\u0003!!\u0011\\\u0001\nK2,Wn]0%KF$2!\u0018Bn\u0011)\u0011iN!6\u0002\u0002\u0003\u0007!qY\u0001\u0004q\u0012\n\u0004\"\u0003Bq\u0005_\u0003\u000b\u0015\u0002Bd\u0003\u0019)G.Z7tA!A\u00111\u0013BX\t\u0003\u0011)\u000f\u0006\u0003\u0003h\n%XB\u0001BX\u0011!\u0011YOa9A\u0002\tu\u0016!B3oiJL\b\u0002\u0003Bx\u0005_#\t!!\u001f\u0002\u000b\rdW-\u0019:\t\u0011\tM(q\u0016C\u0001\u0005k\faA]3tk2$HC\u0001Bd\u0011!\t\tG!\u000e\u0005\u0002\teXC\u0002B~\u0007\u0003\u0019)\u0001\u0006\u0003\u0003~\u000e\u001d\u0001C\u0002\u0007\u0001\u0005\u007f\u001c\u0019\u0001E\u0002\u0011\u0007\u0003!aA\u0005B|\u0005\u0004\u0019\u0002c\u0001\t\u0004\u0006\u00111QDa>C\u0002yA\u0001\"a9\u0003x\u0002\u00071\u0011\u0002\t\u0006+\r-1qB\u0005\u0004\u0007\u001b1!A\u0003\u001fsKB,\u0017\r^3e}A9Q#a*\u0003��\u000e\r\u0001bB;\u00036\u0011\u000511C\u000b\u0007\u0007+\u0019Yba\b\u0016\u0005\r]\u0001C\u0002\u0007\u0001\u00073\u0019i\u0002E\u0002\u0011\u00077!aAEB\t\u0005\u0004\u0019\u0002c\u0001\t\u0004 \u00111Qd!\u0005C\u0002yA\u0001ba\t\u00036\u0011\u00051QE\u0001\fo&$\b\u000eR3gCVdG/\u0006\u0004\u0004(\r52\u0011\u0007\u000b\u0005\u0007S\u0019\u0019\u0004\u0005\u0004\r\u0001\r-2q\u0006\t\u0004!\r5BA\u0002\n\u0004\"\t\u00071\u0003E\u0002\u0011\u0007c!a!HB\u0011\u0005\u0004q\u0002\u0002CA!\u0007C\u0001\ra!\u000e\u0011\rUa31FB\u0018\u0011!\u0019ID!\u000e\u0005\u0002\rm\u0012a\u00024s_6T\u0016\u000e]\u000b\u0007\u0007{\u0019\u0019ea\u0012\u0015\r\r}2\u0011JB(!\u0019a\u0001a!\u0011\u0004FA\u0019\u0001ca\u0011\u0005\rI\u00199D1\u0001\u0014!\r\u00012q\t\u0003\u0007;\r]\"\u0019\u0001\u0010\t\u0011\r-3q\u0007a\u0001\u0007\u001b\nAa[3zgB!QcUB!\u0011!\u0019\tfa\u000eA\u0002\rM\u0013A\u0002<bYV,7\u000f\u0005\u0003\u0016'\u000e\u0015\u0003\u0002CB\u001d\u0005k!\taa\u0016\u0016\r\re3qLB2)\u0019\u0019Yf!\u001a\u0004nA1A\u0002AB/\u0007C\u00022\u0001EB0\t\u0019\u00112Q\u000bb\u0001'A\u0019\u0001ca\u0019\u0005\ru\u0019)F1\u0001\u001f\u0011!\u0019Ye!\u0016A\u0002\r\u001d\u0004#\u0002\u0007\u0004j\ru\u0013bAB6\u0005\tA\u0011\n^3sC\ndW\r\u0003\u0005\u0004R\rU\u0003\u0019AB8!\u0015a1\u0011NB1\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/AnyRefMap.class */
public final class AnyRefMap<K, V> extends AbstractMap<K, V> {
    private int _size;
    private int _vacant;
    private final Function1<K, V> defaultEntry;
    private int mask;
    public int[] scala$collection$mutable$AnyRefMap$$_hashes;
    public Object[] scala$collection$mutable$AnyRefMap$$_keys;
    public Object[] scala$collection$mutable$AnyRefMap$$_values;

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/AnyRefMap$AnyRefMapBuilder.class */
    public static final class AnyRefMapBuilder<K, V> implements Builder<Tuple2<K, V>, AnyRefMap<K, V>> {
        private AnyRefMap<K, V> elems = new AnyRefMap<>();

        public AnyRefMapBuilder() {
            Growable.Cclass.$init$(this);
            Builder.Cclass.$init$(this);
        }

        @Override // scala.collection.generic.Growable
        public Growable $plus$eq(Object obj, Object obj2, Seq seq) {
            Growable $plus$plus$eq;
            $plus$plus$eq = $plus$eq((AnyRefMapBuilder<K, V>) obj).$plus$eq(obj2).$plus$plus$eq(seq);
            return $plus$plus$eq;
        }

        public AnyRefMapBuilder<K, V> $plus$eq(Tuple2<K, V> tuple2) {
            elems().$plus$eq((Tuple2) tuple2);
            return this;
        }

        @Override // scala.collection.generic.Growable
        public Growable<Tuple2<K, V>> $plus$plus$eq(TraversableOnce<Tuple2<K, V>> traversableOnce) {
            return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
            elems_$eq(new AnyRefMap<>());
        }

        public AnyRefMap<K, V> elems() {
            return this.elems;
        }

        public void elems_$eq(AnyRefMap<K, V> anyRefMap) {
            this.elems = anyRefMap;
        }

        @Override // scala.collection.mutable.Builder
        public <NewTo> Builder<Tuple2<K, V>, NewTo> mapResult(Function1<AnyRefMap<K, V>, NewTo> function1) {
            return Builder.Cclass.mapResult(this, function1);
        }

        @Override // scala.collection.mutable.Builder
        public AnyRefMap<K, V> result() {
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

    public AnyRefMap() {
        this(AnyRefMap$.MODULE$.scala$collection$mutable$AnyRefMap$$exceptionDefault(), 16, true);
    }

    public AnyRefMap(int i) {
        this(AnyRefMap$.MODULE$.scala$collection$mutable$AnyRefMap$$exceptionDefault(), i, true);
    }

    public AnyRefMap(Function1<K, V> function1) {
        this(function1, 16, true);
    }

    public AnyRefMap(Function1<K, V> function1, int i) {
        this(function1, i, true);
    }

    public AnyRefMap(Function1<K, V> function1, int i, boolean z) {
        this.defaultEntry = function1;
        this.mask = 0;
        this._size = 0;
        this._vacant = 0;
        this.scala$collection$mutable$AnyRefMap$$_hashes = null;
        this.scala$collection$mutable$AnyRefMap$$_keys = null;
        this.scala$collection$mutable$AnyRefMap$$_values = null;
        if (z) {
            defaultInitialize(i);
        }
    }

    public static <K, V, J, U> CanBuildFrom<AnyRefMap<K, V>, Tuple2<J, U>, AnyRefMap<J, U>> canBuildFrom() {
        return AnyRefMap$.MODULE$.canBuildFrom();
    }

    private void defaultInitialize(int i) {
        int numberOfLeadingZeros = i < 0 ? 7 : 7 | (((1 << (32 - Integer.numberOfLeadingZeros(i - 1))) - 1) & 1073741823);
        this.mask = numberOfLeadingZeros;
        this.scala$collection$mutable$AnyRefMap$$_hashes = new int[numberOfLeadingZeros + 1];
        this.scala$collection$mutable$AnyRefMap$$_keys = new Object[numberOfLeadingZeros + 1];
        this.scala$collection$mutable$AnyRefMap$$_values = new Object[numberOfLeadingZeros + 1];
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <A, B> void foreachElement(Object[] objArr, Function1<A, B> function1) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.scala$collection$mutable$AnyRefMap$$_hashes;
            boolean z = true;
            boolean z2 = i < iArr.length;
            if (i2 >= this._size) {
                z = false;
            }
            if (z2 && z) {
                int i3 = iArr[i];
                if (i3 + i3 != 0) {
                    i2++;
                    function1.apply(objArr[i]);
                } else {
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                }
                i++;
            } else {
                return;
            }
        }
    }

    public static <K, V> AnyRefMap<K, V> fromZip(Iterable<K> iterable, Iterable<V> iterable2) {
        return AnyRefMap$.MODULE$.fromZip(iterable, iterable2);
    }

    public static <K, V> AnyRefMap<K, V> fromZip(K[] kArr, Object obj) {
        return AnyRefMap$.MODULE$.fromZip(kArr, obj);
    }

    private int hashOf(K k) {
        int i = 1091049865;
        if (k != null) {
            int hashCode = k.hashCode();
            int i2 = (hashCode ^ (hashCode >>> 16)) * (-2048144789);
            int i3 = i2 ^ (i2 >>> 13);
            if (i3 != 0) {
                i = Integer.MAX_VALUE & i3;
            }
        }
        return i;
    }

    private boolean imbalanced() {
        int i = this._size;
        int i2 = this._vacant;
        return ((double) (i + i2)) > ((double) this.mask) * 0.5d || i2 > i;
    }

    private void repack(int i) {
        int[] iArr;
        int[] iArr2 = this.scala$collection$mutable$AnyRefMap$$_hashes;
        Object[] objArr = this.scala$collection$mutable$AnyRefMap$$_keys;
        Object[] objArr2 = this.scala$collection$mutable$AnyRefMap$$_values;
        this.mask = i;
        this.scala$collection$mutable$AnyRefMap$$_hashes = new int[i + 1];
        this.scala$collection$mutable$AnyRefMap$$_keys = new Object[i + 1];
        this.scala$collection$mutable$AnyRefMap$$_values = new Object[i + 1];
        this._vacant = 0;
        for (int i2 = 0; i2 < iArr2.length; i2++) {
            int i3 = iArr2[i2];
            if (i3 + i3 != 0) {
                int i4 = this.mask & i3;
                int i5 = 0;
                while (true) {
                    iArr = this.scala$collection$mutable$AnyRefMap$$_hashes;
                    if (iArr[i4] == 0) {
                        break;
                    }
                    i5++;
                    i4 = ((i4 + (((i5 + 1) * 2) * i5)) - 3) & this.mask;
                }
                iArr[i4] = i3;
                this.scala$collection$mutable$AnyRefMap$$_keys[i4] = objArr[i2];
                this.scala$collection$mutable$AnyRefMap$$_values[i4] = objArr2[i2];
            }
        }
    }

    private int seekEntry(int i, Object obj) {
        int i2 = this.mask & i;
        int i3 = 0;
        while (true) {
            int i4 = this.scala$collection$mutable$AnyRefMap$$_hashes[i2];
            if (i4 != 0) {
                if (i4 == i) {
                    Object obj2 = this.scala$collection$mutable$AnyRefMap$$_keys[i2];
                    if (obj2 == obj || (obj2 != null && obj2.equals(obj))) {
                        return i2;
                    }
                }
                i3++;
                i2 = ((i2 + (((i3 + 1) * 2) * i3)) - 3) & this.mask;
            } else {
                return Integer.MIN_VALUE | i2;
            }
        }
    }

    private int seekEntryOrOpen(int i, Object obj) {
        int i2 = this.mask & i;
        int i3 = -1;
        int i4 = 0;
        while (true) {
            int i5 = this.scala$collection$mutable$AnyRefMap$$_hashes[i2];
            if (!(i5 != 0)) {
                return i3 >= 0 ? (-1073741824) | i3 : Integer.MIN_VALUE | i2;
            }
            if (i5 == i) {
                Object obj2 = this.scala$collection$mutable$AnyRefMap$$_keys[i2];
                if (obj2 == obj || (obj2 != null && obj2.equals(obj))) {
                    return i2;
                }
            }
            int i6 = i3;
            if (i3 == -1) {
                i6 = i3;
                if (i5 + i5 == 0) {
                    i6 = i2;
                }
            }
            i4++;
            i2 = ((i2 + (((i4 + 1) * 2) * i4)) - 3) & this.mask;
            i3 = i6;
        }
    }

    @Override // scala.collection.mutable.MapLike, scala.collection.generic.Shrinkable
    public AnyRefMap<K, V> $minus$eq(K k) {
        int seekEntry = seekEntry(hashOf(k), k);
        if (seekEntry >= 0) {
            this._size--;
            this._vacant++;
            this.scala$collection$mutable$AnyRefMap$$_hashes[seekEntry] = Integer.MIN_VALUE;
            this.scala$collection$mutable$AnyRefMap$$_keys[seekEntry] = null;
            this.scala$collection$mutable$AnyRefMap$$_values[seekEntry] = null;
        }
        return this;
    }

    public AnyRefMap<K, V> $plus$eq(K k, V v) {
        update(k, v);
        return this;
    }

    @Override // scala.collection.mutable.MapLike
    public AnyRefMap<K, V> $plus$eq(Tuple2<K, V> tuple2) {
        update(tuple2.mo269_1(), tuple2.mo268_2());
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    public V apply(K k) {
        int seekEntry = seekEntry(hashOf(k), k);
        return seekEntry < 0 ? this.defaultEntry.apply(k) : this.scala$collection$mutable$AnyRefMap$$_values[seekEntry];
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike, scala.collection.mutable.Cloneable
    public AnyRefMap<K, V> clone() {
        int[] iArr = this.scala$collection$mutable$AnyRefMap$$_hashes;
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        Object[] objArr = this.scala$collection$mutable$AnyRefMap$$_keys;
        Object[] copyOf2 = Arrays.copyOf(objArr, objArr.length);
        Object[] objArr2 = this.scala$collection$mutable$AnyRefMap$$_values;
        Object[] copyOf3 = Arrays.copyOf(objArr2, objArr2.length);
        AnyRefMap<K, V> anyRefMap = new AnyRefMap<>(this.defaultEntry, 1, false);
        anyRefMap.initializeTo(this.mask, this._size, this._vacant, copyOf, copyOf2, copyOf3);
        return anyRefMap;
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public boolean contains(K k) {
        return seekEntry(hashOf(k), k) >= 0;
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    /* renamed from: default */
    public V mo6041default(K k) {
        return this.defaultEntry.apply(k);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public AnyRefMap<K, V> empty() {
        return new AnyRefMap<>(this.defaultEntry);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <A> void foreach(Function1<Tuple2<K, V>, A> function1) {
        int[] iArr;
        int i = 0;
        for (int i2 = this._size; i2 > 0; i2--) {
            while (true) {
                iArr = this.scala$collection$mutable$AnyRefMap$$_hashes;
                if (i >= iArr.length) {
                    break;
                }
                int i3 = iArr[i];
                if (!(i3 + i3 == 0 && i < iArr.length)) {
                    break;
                }
                i++;
            }
            if (i >= iArr.length) {
                return;
            }
            function1.apply(new Tuple2<>(this.scala$collection$mutable$AnyRefMap$$_keys[i], this.scala$collection$mutable$AnyRefMap$$_values[i]));
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <A> void foreachKey(Function1<K, A> function1) {
        foreachElement(this.scala$collection$mutable$AnyRefMap$$_keys, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <A> void foreachValue(Function1<V, A> function1) {
        foreachElement(this.scala$collection$mutable$AnyRefMap$$_values, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<V> get(K k) {
        int seekEntry = seekEntry(hashOf(k), k);
        return seekEntry < 0 ? None$.MODULE$ : new Some(this.scala$collection$mutable$AnyRefMap$$_values[seekEntry]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public <V1> V1 getOrElse(K k, Function0<V1> function0) {
        int seekEntry = seekEntry(hashOf(k), k);
        return seekEntry < 0 ? function0.apply() : this.scala$collection$mutable$AnyRefMap$$_values[seekEntry];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v8 */
    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public V getOrElseUpdate(K k, Function0<V> function0) {
        V v;
        int hashOf = hashOf(k);
        int seekEntryOrOpen = seekEntryOrOpen(hashOf, k);
        if (seekEntryOrOpen < 0) {
            int[] iArr = this.scala$collection$mutable$AnyRefMap$$_hashes;
            V apply = function0.apply();
            if (iArr != this.scala$collection$mutable$AnyRefMap$$_hashes) {
                int seekEntryOrOpen2 = seekEntryOrOpen(hashOf, k);
                seekEntryOrOpen = seekEntryOrOpen2;
                if (seekEntryOrOpen2 >= 0) {
                    this._size--;
                    seekEntryOrOpen = seekEntryOrOpen2;
                }
            }
            this._size++;
            int i = 1073741823 & seekEntryOrOpen;
            this.scala$collection$mutable$AnyRefMap$$_hashes[i] = hashOf;
            this.scala$collection$mutable$AnyRefMap$$_keys[i] = k;
            this.scala$collection$mutable$AnyRefMap$$_values[i] = apply;
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
            v = this.scala$collection$mutable$AnyRefMap$$_values[seekEntryOrOpen];
        }
        return v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public V getOrNull(K k) {
        int seekEntry = seekEntry(hashOf(k), k);
        return seekEntry < 0 ? null : this.scala$collection$mutable$AnyRefMap$$_values[seekEntry];
    }

    public void initializeTo(int i, int i2, int i3, int[] iArr, Object[] objArr, Object[] objArr2) {
        this.mask = i;
        this._size = i2;
        this._vacant = i3;
        this.scala$collection$mutable$AnyRefMap$$_hashes = iArr;
        this.scala$collection$mutable$AnyRefMap$$_keys = objArr;
        this.scala$collection$mutable$AnyRefMap$$_values = objArr2;
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<K, V>> iterator() {
        return new Iterator<Tuple2<K, V>>(this) { // from class: scala.collection.mutable.AnyRefMap$$anon$1

            /* renamed from: hz */
            private final int[] f1562hz;
            private int index = 0;

            /* renamed from: kz */
            private final Object[] f1563kz;

            /* renamed from: vz */
            private final Object[] f1564vz;

            {
                TraversableOnce.Cclass.$init$(this);
                Iterator.Cclass.$init$(this);
                this.f1562hz = this.scala$collection$mutable$AnyRefMap$$_hashes;
                this.f1563kz = this.scala$collection$mutable$AnyRefMap$$_keys;
                this.f1564vz = this.scala$collection$mutable$AnyRefMap$$_values;
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B $colon$bslash(B b, Function2<Tuple2<K, V>, B, B> function2) {
                Object foldRight;
                foldRight = foldRight(b, function2);
                return (B) foldRight;
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B $div$colon(B b, Function2<B, Tuple2<K, V>, B> function2) {
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
            public <B> B aggregate(Function0<B> function0, Function2<B, Tuple2<K, V>, B> function2, Function2<B, B, B> function22) {
                return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
            }

            @Override // scala.collection.Iterator
            public BufferedIterator<Tuple2<K, V>> buffered() {
                return Iterator.Cclass.buffered(this);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> collect(PartialFunction<Tuple2<K, V>, B> partialFunction) {
                return Iterator.Cclass.collect(this, partialFunction);
            }

            @Override // scala.collection.TraversableOnce
            public <B> Option<B> collectFirst(PartialFunction<Tuple2<K, V>, B> partialFunction) {
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
            public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<Tuple2<K, V>, B, Object> function2) {
                return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public int count(Function1<Tuple2<K, V>, Object> function1) {
                return TraversableOnce.Cclass.count(this, function1);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<K, V>> drop(int i) {
                return Iterator.Cclass.drop(this, i);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<K, V>> dropWhile(Function1<Tuple2<K, V>, Object> function1) {
                return Iterator.Cclass.dropWhile(this, function1);
            }

            @Override // scala.collection.Iterator
            public Tuple2<Iterator<Tuple2<K, V>>, Iterator<Tuple2<K, V>>> duplicate() {
                return Iterator.Cclass.duplicate(this);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public boolean exists(Function1<Tuple2<K, V>, Object> function1) {
                return Iterator.Cclass.exists(this, function1);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<K, V>> filter(Function1<Tuple2<K, V>, Object> function1) {
                return Iterator.Cclass.filter(this, function1);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<K, V>> filterNot(Function1<Tuple2<K, V>, Object> function1) {
                return Iterator.Cclass.filterNot(this, function1);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Option<Tuple2<K, V>> find(Function1<Tuple2<K, V>, Object> function1) {
                return Iterator.Cclass.find(this, function1);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> flatMap(Function1<Tuple2<K, V>, GenTraversableOnce<B>> function1) {
                return Iterator.Cclass.flatMap(this, function1);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
                return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B foldLeft(B b, Function2<B, Tuple2<K, V>, B> function2) {
                return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public <B> B foldRight(B b, Function2<Tuple2<K, V>, B, B> function2) {
                return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public boolean forall(Function1<Tuple2<K, V>, Object> function1) {
                return Iterator.Cclass.forall(this, function1);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
            public <U> void foreach(Function1<Tuple2<K, V>, U> function1) {
                Iterator.Cclass.foreach(this, function1);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<Tuple2<K, V>>.GroupedIterator<B> grouped(int i) {
                return Iterator.Cclass.grouped(this, i);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public boolean hasDefiniteSize() {
                return Iterator.Cclass.hasDefiniteSize(this);
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                boolean z;
                int i = this.index;
                int[] iArr = this.f1562hz;
                if (i < iArr.length) {
                    int i2 = iArr[i];
                    while (true) {
                        int i3 = i2;
                        z = true;
                        if (i3 + i3 != 0) {
                            break;
                        }
                        int i4 = this.index + 1;
                        this.index = i4;
                        int[] iArr2 = this.f1562hz;
                        if (i4 >= iArr2.length) {
                            return false;
                        }
                        i2 = iArr2[i4];
                    }
                } else {
                    z = false;
                }
                return z;
            }

            @Override // scala.collection.Iterator
            public <B> int indexOf(B b) {
                return Iterator.Cclass.indexOf(this, b);
            }

            @Override // scala.collection.Iterator
            public int indexWhere(Function1<Tuple2<K, V>, Object> function1) {
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
            public <B> Iterator<B> map(Function1<Tuple2<K, V>, B> function1) {
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
            public Tuple2<K, V> next() {
                if (hasNext()) {
                    Object[] objArr = this.f1563kz;
                    int i = this.index;
                    Tuple2<K, V> tuple2 = new Tuple2<>(objArr[i], this.f1564vz[i]);
                    this.index++;
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
            public Tuple2<Iterator<Tuple2<K, V>>, Iterator<Tuple2<K, V>>> partition(Function1<Tuple2<K, V>, Object> function1) {
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
            public <B> B reduceLeft(Function2<B, Tuple2<K, V>, B> function2) {
                return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> Option<B> reduceLeftOption(Function2<B, Tuple2<K, V>, B> function2) {
                return TraversableOnce.Cclass.reduceLeftOption(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
                return TraversableOnce.Cclass.reduceOption(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public <B> B reduceRight(Function2<Tuple2<K, V>, B, B> function2) {
                return (B) TraversableOnce.Cclass.reduceRight(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> Option<B> reduceRightOption(Function2<Tuple2<K, V>, B, B> function2) {
                return TraversableOnce.Cclass.reduceRightOption(this, function2);
            }

            @Override // scala.collection.TraversableOnce
            public List<Tuple2<K, V>> reversed() {
                return TraversableOnce.Cclass.reversed(this);
            }

            @Override // scala.collection.Iterator
            public boolean sameElements(Iterator<?> iterator) {
                return Iterator.Cclass.sameElements(this, iterator);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> scanLeft(B b, Function2<B, Tuple2<K, V>, B> function2) {
                return Iterator.Cclass.scanLeft(this, b, function2);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> scanRight(B b, Function2<Tuple2<K, V>, B, B> function2) {
                return Iterator.Cclass.scanRight(this, b, function2);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
            public Iterator<Tuple2<K, V>> seq() {
                return Iterator.Cclass.seq(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public int size() {
                return TraversableOnce.Cclass.size(this);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<K, V>> slice(int i, int i2) {
                return Iterator.Cclass.slice(this, i, i2);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<Tuple2<K, V>>.GroupedIterator<B> sliding(int i, int i2) {
                return Iterator.Cclass.sliding(this, i, i2);
            }

            @Override // scala.collection.Iterator
            public <B> int sliding$default$2() {
                return Iterator.Cclass.sliding$default$2(this);
            }

            @Override // scala.collection.Iterator
            public Tuple2<Iterator<Tuple2<K, V>>, Iterator<Tuple2<K, V>>> span(Function1<Tuple2<K, V>, Object> function1) {
                return Iterator.Cclass.span(this, function1);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B sum(Numeric<B> numeric) {
                return (B) TraversableOnce.Cclass.sum(this, numeric);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<K, V>> take(int i) {
                return Iterator.Cclass.take(this, i);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<K, V>> takeWhile(Function1<Tuple2<K, V>, Object> function1) {
                return Iterator.Cclass.takeWhile(this, function1);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            /* renamed from: to */
            public <Col> Col mo1to(CanBuildFrom<Nothing$, Tuple2<K, V>, Col> canBuildFrom) {
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
            public IndexedSeq<Tuple2<K, V>> toIndexedSeq() {
                return TraversableOnce.Cclass.toIndexedSeq(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Iterable<Tuple2<K, V>> toIterable() {
                return TraversableOnce.Cclass.toIterable(this);
            }

            @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Iterator<Tuple2<K, V>> toIterator() {
                return Iterator.Cclass.toIterator(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public List<Tuple2<K, V>> toList() {
                return TraversableOnce.Cclass.toList(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Tuple2<K, V>, Tuple2<T, U>> predef$$less$colon$less) {
                return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
            public Seq<Tuple2<K, V>> toSeq() {
                return TraversableOnce.Cclass.toSeq(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
            public <B> Set<B> toSet() {
                return TraversableOnce.Cclass.toSet(this);
            }

            @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Stream<Tuple2<K, V>> toStream() {
                return Iterator.Cclass.toStream(this);
            }

            @Override // scala.collection.Iterator
            public String toString() {
                return Iterator.Cclass.toString(this);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public Traversable<Tuple2<K, V>> toTraversable() {
                return Iterator.Cclass.toTraversable(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public Vector<Tuple2<K, V>> toVector() {
                return TraversableOnce.Cclass.toVector(this);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<K, V>> withFilter(Function1<Tuple2<K, V>, Object> function1) {
                return Iterator.Cclass.withFilter(this, function1);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<Tuple2<Tuple2<K, V>, B>> zip(Iterator<B> iterator) {
                return Iterator.Cclass.zip(this, iterator);
            }

            @Override // scala.collection.Iterator
            public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
                return Iterator.Cclass.zipAll(this, iterator, a1, b1);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<Tuple2<K, V>, Object>> zipWithIndex() {
                return Iterator.Cclass.zipWithIndex(this);
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <V1> AnyRefMap<K, V1> mapValuesNow(Function1<V, V1> function1) {
        AnyRefMap<K, V1> anyRefMap = new AnyRefMap<>(AnyRefMap$.MODULE$.scala$collection$mutable$AnyRefMap$$exceptionDefault(), 1, false);
        int[] iArr = this.scala$collection$mutable$AnyRefMap$$_hashes;
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        Object[] objArr = this.scala$collection$mutable$AnyRefMap$$_keys;
        Object[] copyOf2 = Arrays.copyOf(objArr, objArr.length);
        Object[] objArr2 = new Object[this.scala$collection$mutable$AnyRefMap$$_values.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            int[] iArr2 = this.scala$collection$mutable$AnyRefMap$$_hashes;
            boolean z = i < iArr2.length;
            int i4 = this._size;
            if (!z || !(i3 < i4)) {
                anyRefMap.initializeTo(this.mask, i4, this._vacant, copyOf, copyOf2, objArr2);
                return anyRefMap;
            }
            int i5 = iArr2[i];
            int i6 = i3;
            if (i5 + i5 != 0) {
                i6 = i3 + 1;
                objArr2[i] = function1.apply(this.scala$collection$mutable$AnyRefMap$$_values[i]);
            }
            i++;
            i2 = i6;
        }
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public Option<V> put(K k, V v) {
        None$ none$;
        int hashOf = hashOf(k);
        int seekEntryOrOpen = seekEntryOrOpen(hashOf, k);
        if (seekEntryOrOpen < 0) {
            int i = 1073741823 & seekEntryOrOpen;
            this.scala$collection$mutable$AnyRefMap$$_hashes[i] = hashOf;
            this.scala$collection$mutable$AnyRefMap$$_keys[i] = k;
            this.scala$collection$mutable$AnyRefMap$$_values[i] = v;
            this._size++;
            if ((1073741824 & seekEntryOrOpen) != 0) {
                this._vacant--;
            } else if (imbalanced()) {
                repack();
            }
            none$ = None$.MODULE$;
        } else {
            Some some = new Some(this.scala$collection$mutable$AnyRefMap$$_values[seekEntryOrOpen]);
            this.scala$collection$mutable$AnyRefMap$$_hashes[seekEntryOrOpen] = hashOf;
            this.scala$collection$mutable$AnyRefMap$$_keys[seekEntryOrOpen] = k;
            this.scala$collection$mutable$AnyRefMap$$_values[seekEntryOrOpen] = v;
            none$ = some;
        }
        return none$;
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
        return this._size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AnyRefMap<K, V> transformValues(Function1<V, V> function1) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            int[] iArr = this.scala$collection$mutable$AnyRefMap$$_hashes;
            boolean z = true;
            boolean z2 = i < iArr.length;
            if (i3 >= this._size) {
                z = false;
            }
            if (z2 && z) {
                int i4 = iArr[i];
                int i5 = i3;
                if (i4 + i4 != 0) {
                    i5 = i3 + 1;
                    Object[] objArr = this.scala$collection$mutable$AnyRefMap$$_values;
                    objArr[i] = function1.apply(objArr[i]);
                }
                i++;
                i2 = i5;
            } else {
                return this;
            }
        }
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public void update(K k, V v) {
        int hashOf = hashOf(k);
        int seekEntryOrOpen = seekEntryOrOpen(hashOf, k);
        if (seekEntryOrOpen >= 0) {
            this.scala$collection$mutable$AnyRefMap$$_hashes[seekEntryOrOpen] = hashOf;
            this.scala$collection$mutable$AnyRefMap$$_keys[seekEntryOrOpen] = k;
            this.scala$collection$mutable$AnyRefMap$$_values[seekEntryOrOpen] = v;
            return;
        }
        int i = 1073741823 & seekEntryOrOpen;
        this.scala$collection$mutable$AnyRefMap$$_hashes[i] = hashOf;
        this.scala$collection$mutable$AnyRefMap$$_keys[i] = k;
        this.scala$collection$mutable$AnyRefMap$$_values[i] = v;
        this._size++;
        if ((1073741824 & seekEntryOrOpen) != 0) {
            this._vacant--;
        } else if (!imbalanced()) {
        } else {
            repack();
        }
    }
}
