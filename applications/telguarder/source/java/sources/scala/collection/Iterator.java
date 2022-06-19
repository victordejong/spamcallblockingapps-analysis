package scala.collection;

import java.util.NoSuchElementException;
import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.None$;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Some;
import scala.StringContext;
import scala.Tuple2;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.immutable.Map;
import scala.collection.immutable.Nil$;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Stream$;
import scala.collection.immutable.Stream$Empty$;
import scala.collection.immutable.Stream$cons$;
import scala.collection.immutable.StringLike;
import scala.collection.immutable.StringOps;
import scala.collection.immutable.Vector;
import scala.collection.immutable.Vector$;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.ArrayBuffer$;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Buffer$;
import scala.collection.mutable.Queue;
import scala.collection.mutable.StringBuilder;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.package$;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BooleanRef;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
import scala.runtime.Nothing$;
import scala.runtime.ObjectRef;
import scala.runtime.RichInt$;
import scala.runtime.ScalaRunTime$;
import scala.runtime.VolatileByteRef;
@ScalaSignature(bytes = "\u0006\u0001\u0015\u001dt!B\u0001\u0003\u0011\u00039\u0011\u0001C%uKJ\fGo\u001c:\u000b\u0005\r!\u0011AC2pY2,7\r^5p]*\tQ!A\u0003tG\u0006d\u0017m\u0001\u0001\u0011\u0005!IQ\"\u0001\u0002\u0007\u000b)\u0011\u0001\u0012A\u0006\u0003\u0011%#XM]1u_J\u001c\"!\u0003\u0007\u0011\u00055qQ\"\u0001\u0003\n\u0005=!!AB!osJ+g\rC\u0003\u0012\u0013\u0011\u0005!#\u0001\u0004=S:LGO\u0010\u000b\u0002\u000f!)A#\u0003C\u0002+\u0005!\u0012\n^3sCR|'oQ1o\u0005VLG\u000e\u001a$s_6,\"A\u0006\u0011\u0016\u0003]\u0001B\u0001G\u000e\u001fS9\u0011\u0001\"G\u0005\u00035\t\tq\u0002\u0016:bm\u0016\u00148/\u00192mK>s7-Z\u0005\u00039u\u0011ACQ;gM\u0016\u0014X\rZ\"b]\n+\u0018\u000e\u001c3Ge>l'B\u0001\u000e\u0003!\ty\u0002\u0005\u0004\u0001\u0005\u000b\u0005\u001a\"\u0019\u0001\u0012\u0003\u0003\u0005\u000b\"a\t\u0014\u0011\u00055!\u0013BA\u0013\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"!D\u0014\n\u0005!\"!aA!osB\u0011\u0001B\u000b\u0004\t\u0015\t\u0001\n1!\u0001,wU\u0011A&M\n\u0004U1i\u0003c\u0001\u0005/a%\u0011qF\u0001\u0002\u0010)J\fg/\u001a:tC\ndWm\u00148dKB\u0011q$\r\u0003\u0007C)\")\u0019\u0001\u0012\t\u000bMRC\u0011\u0001\u001b\u0002\r\u0011Jg.\u001b;%)\u0005)\u0004CA\u00077\u0013\t9DA\u0001\u0003V]&$\b\"B\u001d+\t\u0003Q\u0014aA:fcV\t1\bE\u0002\tUABQ!\u0010\u0016\u0007\u0002y\nq\u0001[1t\u001d\u0016DH/F\u0001@!\ti\u0001)\u0003\u0002B\t\t9!i\\8mK\u0006t\u0007\"B\"+\r\u0003!\u0015\u0001\u00028fqR$\u0012\u0001\r\u0005\u0006\r*\"\tAP\u0001\bSN,U\u000e\u001d;z\u0011\u0015A%\u0006\"\u0001?\u0003II7\u000f\u0016:bm\u0016\u00148/\u00192mK\u0006;\u0017-\u001b8\t\u000b)SC\u0011\u0001 \u0002\u001f!\f7\u000fR3gS:LG/Z*ju\u0016DQ\u0001\u0014\u0016\u0005\u00025\u000bA\u0001^1lKR\u00111H\u0014\u0005\u0006\u001f.\u0003\r\u0001U\u0001\u0002]B\u0011Q\"U\u0005\u0003%\u0012\u00111!\u00138u\u0011\u0015!&\u0006\"\u0001V\u0003\u0011!'o\u001c9\u0015\u0005m2\u0006\"B(T\u0001\u0004\u0001\u0006\"\u0002-+\t\u0003I\u0016!B:mS\u000e,GcA\u001e[9\")1l\u0016a\u0001!\u0006!aM]8n\u0011\u0015iv\u000b1\u0001Q\u0003\u0015)h\u000e^5m\u0011\u0015y&\u0006\"\u0001a\u0003\ri\u0017\r]\u000b\u0003C\u0012$\"A\u00194\u0011\u0007!Q3\r\u0005\u0002 I\u0012)QM\u0018b\u0001E\t\t!\tC\u0003h=\u0002\u0007\u0001.A\u0001g!\u0011i\u0011\u000eM2\n\u0005)$!!\u0003$v]\u000e$\u0018n\u001c82\u0011\u0015a'\u0006\"\u0001n\u0003)!\u0003\u000f\\;tIAdWo]\u000b\u0003]F$\"a\\:\u0011\u0007!Q\u0003\u000f\u0005\u0002 c\u0012)Qm\u001bb\u0001eF\u0011\u0001G\n\u0005\u0007i.$\t\u0019A;\u0002\tQD\u0017\r\u001e\t\u0004\u001bYD\u0018BA<\u0005\u0005!a$-\u001f8b[\u0016t\u0004c\u0001\u0005za&\u0011!P\u0001\u0002\u0013\u000f\u0016tGK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cW\rC\u0003}U\u0011\u0005Q0A\u0004gY\u0006$X*\u00199\u0016\u0007y\f\u0019\u0001F\u0002��\u0003\u000b\u0001B\u0001\u0003\u0016\u0002\u0002A\u0019q$a\u0001\u0005\u000b\u0015\\(\u0019\u0001\u0012\t\r\u001d\\\b\u0019AA\u0004!\u0015i\u0011\u000eMA\u0005!\u0011A\u00110!\u0001\t\u000f\u00055!\u0006\"\u0001\u0002\u0010\u00051a-\u001b7uKJ$2aOA\t\u0011!\t\u0019\"a\u0003A\u0002\u0005U\u0011!\u00019\u0011\t5I\u0007g\u0010\u0005\b\u00033QC\u0011AA\u000e\u0003-\u0019wN\u001d:fgB|g\u000eZ:\u0016\t\u0005u\u00111\u0006\u000b\u0005\u0003?\ti\u0003F\u0002@\u0003CA\u0001\"a\u0005\u0002\u0018\u0001\u0007\u00111\u0005\t\b\u001b\u0005\u0015\u0002'!\u000b@\u0013\r\t9\u0003\u0002\u0002\n\rVt7\r^5p]J\u00022aHA\u0016\t\u0019)\u0017q\u0003b\u0001E!9A/a\u0006A\u0002\u0005=\u0002\u0003\u0002\u0005z\u0003SAq!a\r+\t\u0003\t)$\u0001\u0006xSRDg)\u001b7uKJ$2aOA\u001c\u0011!\t\u0019\"!\rA\u0002\u0005U\u0001bBA\u001eU\u0011\u0005\u0011QH\u0001\nM&dG/\u001a:O_R$2aOA \u0011!\t\u0019\"!\u000fA\u0002\u0005U\u0001bBA\"U\u0011\u0005\u0011QI\u0001\bG>dG.Z2u+\u0011\t9%!\u0014\u0015\t\u0005%\u0013q\n\t\u0005\u0011)\nY\u0005E\u0002 \u0003\u001b\"a!ZA!\u0005\u0004\u0011\u0003\u0002CA)\u0003\u0003\u0002\r!a\u0015\u0002\u0005A4\u0007CB\u0007\u0002VA\nY%C\u0002\u0002X\u0011\u0011q\u0002U1si&\fGNR;oGRLwN\u001c\u0015\t\u0003\u0003\nY&a\u001a\u0002lA!\u0011QLA2\u001b\t\tyFC\u0002\u0002b\u0011\t!\"\u00198o_R\fG/[8o\u0013\u0011\t)'a\u0018\u0003\u00135LwM]1uS>t\u0017EAA5\u00031\u00037m\u001c7mK\u000e$\b\r\t5bg\u0002\u001a\u0007.\u00198hK\u0012t\u0003\u0005\u00165fAA\u0014XM^5pkN\u0004#-\u001a5bm&|'\u000fI2b]\u0002\u0012W\r\t:faJ|G-^2fI\u0002:\u0018\u000e\u001e5!AR|7+Z9a]\u0005\u0012\u0011QN\u0001\u0006e9Bd\u0006\r\u0005\b\u0003cRC\u0011AA:\u0003!\u00198-\u00198MK\u001a$X\u0003BA;\u0003{\"B!a\u001e\u0002\u0006R!\u0011\u0011PA@!\u0011A!&a\u001f\u0011\u0007}\ti\b\u0002\u0004f\u0003_\u0012\rA\t\u0005\t\u0003\u0003\u000by\u00071\u0001\u0002\u0004\u0006\u0011q\u000e\u001d\t\t\u001b\u0005\u0015\u00121\u0010\u0019\u0002|!A\u0011qQA8\u0001\u0004\tY(A\u0001{\u0011\u001d\tYI\u000bC\u0001\u0003\u001b\u000b\u0011b]2b]JKw\r\u001b;\u0016\t\u0005=\u0015q\u0013\u000b\u0005\u0003#\u000bi\n\u0006\u0003\u0002\u0014\u0006e\u0005\u0003\u0002\u0005+\u0003+\u00032aHAL\t\u0019)\u0017\u0011\u0012b\u0001E!A\u0011\u0011QAE\u0001\u0004\tY\n\u0005\u0005\u000e\u0003K\u0001\u0014QSAK\u0011!\t9)!#A\u0002\u0005U\u0005bBAQU\u0011\u0005\u00111U\u0001\ni\u0006\\Wm\u00165jY\u0016$2aOAS\u0011!\t\u0019\"a(A\u0002\u0005U\u0001bBAUU\u0011\u0005\u00111V\u0001\na\u0006\u0014H/\u001b;j_:$B!!,\u00024B)Q\"a,<w%\u0019\u0011\u0011\u0017\u0003\u0003\rQ+\b\u000f\\33\u0011!\t\u0019\"a*A\u0002\u0005U\u0001bBA\\U\u0011\u0005\u0011\u0011X\u0001\u0005gB\fg\u000e\u0006\u0003\u0002.\u0006m\u0006\u0002CA\n\u0003k\u0003\r!!\u0006\t\u000f\u0005}&\u0006\"\u0001\u0002B\u0006IAM]8q/\"LG.\u001a\u000b\u0004w\u0005\r\u0007\u0002CA\n\u0003{\u0003\r!!\u0006\t\u000f\u0005\u001d'\u0006\"\u0001\u0002J\u0006\u0019!0\u001b9\u0016\t\u0005-\u00171\u001b\u000b\u0005\u0003\u001b\f)\u000e\u0005\u0003\tU\u0005=\u0007CB\u0007\u00020B\n\t\u000eE\u0002 \u0003'$a!ZAc\u0005\u0004\u0011\u0003b\u0002;\u0002F\u0002\u0007\u0011q\u001b\t\u0005\u0011)\n\t\u000eC\u0004\u0002\\*\"\t!!8\u0002\u000bA\fG\rV8\u0016\t\u0005}\u0017Q\u001d\u000b\u0007\u0003C\fI/!<\u0011\t!Q\u00131\u001d\t\u0004?\u0005\u0015HaBAt\u00033\u0014\rA\u001d\u0002\u0003\u0003FBq!a;\u0002Z\u0002\u0007\u0001+A\u0002mK:D\u0001\"a<\u0002Z\u0002\u0007\u00111]\u0001\u0005K2,W\u000eC\u0004\u0002t*\"\t!!>\u0002\u0019iL\u0007oV5uQ&sG-\u001a=\u0016\u0005\u0005]\b\u0003\u0002\u0005+\u0003s\u0004R!DAXaACq!!@+\t\u0003\ty0\u0001\u0004{SB\fE\u000e\\\u000b\t\u0005\u0003\u0011)B!\u0003\u0003\u000eQA!1\u0001B\f\u00057\u0011y\u0002\u0005\u0003\tU\t\u0015\u0001cB\u0007\u00020\n\u001d!1\u0002\t\u0004?\t%AaBAt\u0003w\u0014\rA\u001d\t\u0004?\t5A\u0001\u0003B\b\u0003w\u0014\rA!\u0005\u0003\u0005\t\u000b\u0014c\u0001B\nMA\u0019qD!\u0006\u0005\r\u0015\fYP1\u0001#\u0011\u001d!\u00181 a\u0001\u00053\u0001B\u0001\u0003\u0016\u0003\u0014!A!QDA~\u0001\u0004\u00119!\u0001\u0005uQ&\u001cX\t\\3n\u0011!\u0011\t#a?A\u0002\t-\u0011\u0001\u0003;iCR,E.Z7\t\u000f\t\u0015\"\u0006\"\u0001\u0003(\u00059am\u001c:fC\u000eDW\u0003\u0002B\u0015\u0005c!2!\u000eB\u0016\u0011\u001d9'1\u0005a\u0001\u0005[\u0001R!D51\u0005_\u00012a\bB\u0019\t\u001d\u0011\u0019Da\tC\u0002\t\u0012\u0011!\u0016\u0005\b\u0005oQC\u0011\u0001B\u001d\u0003\u00191wN]1mYR\u0019qHa\u000f\t\u0011\u0005M!Q\u0007a\u0001\u0003+AqAa\u0010+\t\u0003\u0011\t%\u0001\u0004fq&\u001cHo\u001d\u000b\u0004\u007f\t\r\u0003\u0002CA\n\u0005{\u0001\r!!\u0006\t\u000f\t\u001d#\u0006\"\u0001\u0003J\u0005A1m\u001c8uC&t7\u000fF\u0002@\u0005\u0017Bq!a<\u0003F\u0001\u0007a\u0005C\u0004\u0003P)\"\tA!\u0015\u0002\t\u0019Lg\u000e\u001a\u000b\u0005\u0005'\u0012I\u0006\u0005\u0003\u000e\u0005+\u0002\u0014b\u0001B,\t\t1q\n\u001d;j_:D\u0001\"a\u0005\u0003N\u0001\u0007\u0011Q\u0003\u0005\b\u0005;RC\u0011\u0001B0\u0003)Ig\u000eZ3y/\",'/\u001a\u000b\u0004!\n\u0005\u0004\u0002CA\n\u00057\u0002\r!!\u0006\t\u000f\t\u0015$\u0006\"\u0001\u0003h\u00059\u0011N\u001c3fq>3W\u0003\u0002B5\u0005_\"2\u0001\u0015B6\u0011!\tyOa\u0019A\u0002\t5\u0004cA\u0010\u0003p\u00111QMa\u0019C\u0002IDqAa\u001d+\t\u0003\u0011)(\u0001\u0005ck\u001a4WM]3e+\t\u00119\b\u0005\u0003\t\u0005s\u0002\u0014b\u0001B>\u0005\t\u0001\")\u001e4gKJ,G-\u0013;fe\u0006$xN\u001d\u0004\u0007\u0005\u007fR\u0003A!!\u0003\u001f\u001d\u0013x.\u001e9fI&#XM]1u_J,BAa!\u0003\u0014N1!Q\u0010BC\u0005+\u0003R\u0001\u0003BD\u0005\u0017K1A!#\u0003\u0005A\t%m\u001d;sC\u000e$\u0018\n^3sCR|'\u000fE\u0003\t\u0005\u001b\u0013\t*C\u0002\u0003\u0010\n\u00111aU3r!\ry\"1\u0013\u0003\u0007K\nu$\u0019\u0001:\u0011\t!Q#1\u0012\u0005\u000b\u00053\u0013iH!A!\u0002\u0013Y\u0014\u0001B:fY\u001aD!B!(\u0003~\t\u0005\t\u0015!\u0003Q\u0003\u0011\u0019\u0018N_3\t\u0015\t\u0005&Q\u0010B\u0001B\u0003%\u0001+\u0001\u0003ti\u0016\u0004\bbB\t\u0003~\u0011\u0005!Q\u0015\u000b\t\u0005O\u0013YK!,\u00030B1!\u0011\u0016B?\u0005#k\u0011A\u000b\u0005\b\u00053\u0013\u0019\u000b1\u0001<\u0011\u001d\u0011iJa)A\u0002ACqA!)\u0003$\u0002\u0007\u0001\u000bC\u0005\u00034\nu\u0004\u0015)\u0003\u00036\u00061!-\u001e4gKJ\u0004bAa.\u0003>\nEUB\u0001B]\u0015\r\u0011YLA\u0001\b[V$\u0018M\u00197f\u0013\u0011\u0011yL!/\u0003\u0017\u0005\u0013(/Y=Ck\u001a4WM\u001d\u0005\t\u0005\u0007\u0014i\b)Q\u0005\u007f\u00051a-\u001b7mK\u0012D\u0001Ba2\u0003~\u0001\u0006KaP\u0001\t?B\f'\u000f^5bY\"I!1\u001aB?A\u0003&!QZ\u0001\u0004a\u0006$\u0007#B\u0007\u0003V\t=\u0007#B\u0007\u0003R\nE\u0015b\u0001Bj\t\tIa)\u001e8di&|g\u000e\r\u0005\t\u0005/\u0014i\b\"\u0001\u0003Z\u0006Yq/\u001b;i!\u0006$G-\u001b8h)\u0011\u0011YN!8\u000e\u0005\tu\u0004\"\u0003Bp\u0005+$\t\u0019\u0001Bq\u0003\u0005A\b\u0003B\u0007w\u0005#C\u0001B!:\u0003~\u0011\u0005!q]\u0001\fo&$\b\u000eU1si&\fG\u000e\u0006\u0003\u0003\\\n%\bb\u0002Bp\u0005G\u0004\ra\u0010\u0005\t\u0005[\u0014i\b\"\u0003\u0003p\u0006\tB/Y6f\t\u0016\u001cHO];di&4X\r\\=\u0015\t\tE(1\u001f\t\u0005\u0011\t5\u0005\u0007C\u0004\u0003\u001e\n-\b\u0019\u0001)\t\u0011\t](Q\u0010C\u0005\u0005s\fq\u0001]1eI&tw\r\u0006\u0003\u0003|\u000e\u001d\u0001C\u0002B\u007f\u0007\u0007\u0011\t*\u0004\u0002\u0003��*\u00191\u0011\u0001\u0002\u0002\u0013%lW.\u001e;bE2,\u0017\u0002BB\u0003\u0005\u007f\u0014A\u0001T5ti\"9!q\u001cB{\u0001\u0004\u0001\u0006\u0002CB\u0006\u0005{\"Ia!\u0004\u0002\u0007\u001d\f\u0007/F\u0001Q\u0011!\u0019\tB! \u0005\n\rM\u0011AA4p)\ry4Q\u0003\u0005\b\u0007/\u0019y\u00011\u0001Q\u0003\u0015\u0019w.\u001e8u\u0011!\u0019YB! \u0005\n\ru\u0011\u0001\u00024jY2$\u0012a\u0010\u0005\u0007{\tuD\u0011\u0001 \t\u000f\r\u0013i\b\"\u0001\u0004$Q\u00111Q\u0005\t\u0007\u0007O\u0019iC!%\u000f\u00075\u0019I#C\u0002\u0004,\u0011\tq\u0001]1dW\u0006<W-\u0003\u0003\u0004\u0006\r=\"bAB\u0016\t!911\u0007\u0016\u0005\u0002\rU\u0012aB4s_V\u0004X\rZ\u000b\u0005\u0007o\u0019i\u0004\u0006\u0003\u0004:\r}\u0002C\u0002BU\u0005{\u001aY\u0004E\u0002 \u0007{!a!ZB\u0019\u0005\u0004\u0011\bb\u0002BO\u0007c\u0001\r\u0001\u0015\u0005\b\u0007\u0007RC\u0011AB#\u0003\u001d\u0019H.\u001b3j]\u001e,Baa\u0012\u0004NQ11\u0011JB(\u0007#\u0002bA!+\u0003~\r-\u0003cA\u0010\u0004N\u00111Qm!\u0011C\u0002IDqA!(\u0004B\u0001\u0007\u0001\u000bC\u0005\u0003\"\u000e\u0005\u0003\u0013!a\u0001!\"91Q\u000b\u0016\u0005\u0002\r5\u0011A\u00027f]\u001e$\b\u000eC\u0004\u0004Z)\"\taa\u0017\u0002\u0013\u0011,\b\u000f\\5dCR,WCAAW\u0011\u001d\u0019yF\u000bC\u0001\u0007C\nQ\u0001]1uG\",Baa\u0019\u0004jQA1QMB6\u0007[\u001a\t\b\u0005\u0003\tU\r\u001d\u0004cA\u0010\u0004j\u00111Qm!\u0018C\u0002IDaaWB/\u0001\u0004\u0001\u0006\u0002CB8\u0007;\u0002\ra!\u001a\u0002\u0015A\fGo\u00195FY\u0016l7\u000fC\u0004\u0004t\ru\u0003\u0019\u0001)\u0002\u0011I,\u0007\u000f\\1dK\u0012Dqaa\u001e+\t\u0003\u0019I(A\u0006d_BLHk\\!se\u0006LX\u0003BB>\u0007\u0013#r!NB?\u0007\u0017\u001by\t\u0003\u0005\u0004��\rU\u0004\u0019ABA\u0003\tA8\u000fE\u0003\u000e\u0007\u0007\u001b9)C\u0002\u0004\u0006\u0012\u0011Q!\u0011:sCf\u00042aHBE\t\u0019)7Q\u000fb\u0001e\"91QRB;\u0001\u0004\u0001\u0016!B:uCJ$\bbBAv\u0007k\u0002\r\u0001\u0015\u0005\b\u0007'SC\u0011ABK\u00031\u0019\u0018-\\3FY\u0016lWM\u001c;t)\ry4q\u0013\u0005\bi\u000eE\u0005\u0019ABMa\u0011\u0019Yja(\u0011\t!Q3Q\u0014\t\u0004?\r}EaCBQ\u0007/\u000b\t\u0011!A\u0003\u0002\t\u00121a\u0018\u00132\u0011\u001d\u0019)K\u000bC\u0001\u0007O\u000bQ\u0002^8Ue\u00064XM]:bE2,WCABU!\u0011A11\u0016\u0019\n\u0007\r5&AA\u0006Ue\u00064XM]:bE2,\u0007BBBYU\u0011\u0005!(\u0001\u0006u_&#XM]1u_JDqa!.+\t\u0003\u00199,\u0001\u0005u_N#(/Z1n+\t\u0019I\fE\u0003\u0003~\u000em\u0006'\u0003\u0003\u0004>\n}(AB*ue\u0016\fW\u000eC\u0004\u0004B*\"\tea1\u0002\u0011Q|7\u000b\u001e:j]\u001e$\"a!2\u0011\t\r\u001d7\u0011[\u0007\u0003\u0007\u0013TAaa3\u0004N\u0006!A.\u00198h\u0015\t\u0019y-\u0001\u0003kCZ\f\u0017\u0002BBj\u0007\u0013\u0014aa\u0015;sS:<\u0007\"CBlUE\u0005I\u0011ABm\u0003E\u0019H.\u001b3j]\u001e$C-\u001a4bk2$HEM\u000b\u0005\u00077\u001ci/\u0006\u0002\u0004^*\u001a\u0001ka8,\u0005\r\u0005\b\u0003BBr\u0007Sl!a!:\u000b\t\r\u001d\u0018qL\u0001\nk:\u001c\u0007.Z2lK\u0012LAaa;\u0004f\n\tRO\\2iK\u000e\\W\r\u001a,be&\fgnY3\u0005\r\u0015\u001c)N1\u0001s\u0011%\u0019\t0\u0003b\u0001\n\u0003\u0019\u00190A\u0003f[B$\u00180\u0006\u0002\u0004vB\u0019\u0001BK\u0012\t\u0011\re\u0018\u0002)A\u0005\u0007k\fa!Z7qif\u0004\u0003bBB\u007f\u0013\u0011\u00051q`\u0001\u0007g&tw\r\\3\u0016\t\u0011\u0005Aq\u0001\u000b\u0005\t\u0007!I\u0001\u0005\u0003\tU\u0011\u0015\u0001cA\u0010\u0005\b\u00111\u0011ea?C\u0002\tB\u0001\"a<\u0004|\u0002\u0007AQ\u0001\u0005\b\t\u001bIA\u0011\u0001C\b\u0003\u0015\t\u0007\u000f\u001d7z+\u0011!\t\u0002b\u0006\u0015\t\u0011MA\u0011\u0004\t\u0005\u0011)\")\u0002E\u0002 \t/!a!\tC\u0006\u0005\u0004\u0011\u0003\u0002\u0003C\u000e\t\u0017\u0001\r\u0001\"\b\u0002\u000b\u0015dW-\\:\u0011\u000b5!y\u0002\"\u0006\n\u0007\u0011\u0005BA\u0001\u0006=e\u0016\u0004X-\u0019;fIzBqaa\u0007\n\t\u0003!)#\u0006\u0003\u0005(\u0011=B\u0003\u0002C\u0015\tk!B\u0001b\u000b\u00052A!\u0001B\u000bC\u0017!\ryBq\u0006\u0003\u0007C\u0011\r\"\u0019\u0001\u0012\t\u0013\u0005=H1\u0005CA\u0002\u0011M\u0002\u0003B\u0007w\t[Aq!a;\u0005$\u0001\u0007\u0001\u000bC\u0004\u0005:%!\t\u0001b\u000f\u0002\u0011Q\f'-\u001e7bi\u0016,B\u0001\"\u0010\u0005FQ!Aq\bC&)\u0011!\t\u0005b\u0012\u0011\t!QC1\t\t\u0004?\u0011\u0015CAB\u0011\u00058\t\u0007!\u0005C\u0004h\to\u0001\r\u0001\"\u0013\u0011\u000b5I\u0007\u000bb\u0011\t\u000f\u00115Cq\u0007a\u0001!\u0006\u0019QM\u001c3\t\u000f\u0011E\u0013\u0002\"\u0001\u0005T\u0005)!/\u00198hKR1AQ\u000bC,\t3\u00022\u0001\u0003\u0016Q\u0011\u001d\u0019i\tb\u0014A\u0002ACq\u0001\"\u0014\u0005P\u0001\u0007\u0001\u000bC\u0004\u0005R%!\t\u0001\"\u0018\u0015\u0011\u0011UCq\fC1\tGBqa!$\u0005\\\u0001\u0007\u0001\u000bC\u0004\u0005N\u0011m\u0003\u0019\u0001)\t\u000f\t\u0005F1\fa\u0001!\"9AqM\u0005\u0005\u0002\u0011%\u0014aB5uKJ\fG/Z\u000b\u0005\tW\"\u0019\b\u0006\u0003\u0005n\u0011mD\u0003\u0002C8\to\u0002B\u0001\u0003\u0016\u0005rA\u0019q\u0004b\u001d\u0005\u000f\u0011UDQ\rb\u0001E\t\tA\u000bC\u0004h\tK\u0002\r\u0001\"\u001f\u0011\r5IG\u0011\u000fC9\u0011!\u0019i\t\"\u001aA\u0002\u0011E\u0004BB.\n\t\u0003!y\b\u0006\u0003\u0005V\u0011\u0005\u0005bBBG\t{\u0002\r\u0001\u0015\u0005\u00077&!\t\u0001\"\"\u0015\r\u0011UCq\u0011CE\u0011\u001d\u0019i\tb!A\u0002ACqA!)\u0005\u0004\u0002\u0007\u0001\u000bC\u0004\u0005\u000e&!\t\u0001b$\u0002\u0017\r|g\u000e^5ok\u0006dG._\u000b\u0005\t##9\n\u0006\u0003\u0005\u0014\u0012e\u0005\u0003\u0002\u0005+\t+\u00032a\bCL\t\u0019\tC1\u0012b\u0001E!I\u0011q\u001eCF\t\u0003\u0007A1\u0014\t\u0005\u001bY$)JB\u0004\u0005 &\u0011A\u0001\")\u0003\u001d\r{gnY1u\u0013R,'/\u0019;peV!A1\u0015CU'\u0015!i\n\u0004CS!\u0011A!\u0006b*\u0011\u0007}!I\u000bB\u0004\"\t;#)\u0019\u0001\u0012\t\u0017\u00115FQ\u0014B\u0001B\u0003&AQU\u0001\bGV\u0014(/\u001a8u\u0011-!\t\f\"(\u0003\u0002\u0003\u0006I\u0001b-\u0002\u000f%t\u0017\u000e^5bYB11q\u0005C[\tsKA\u0001b.\u00040\t1a+Z2u_J\u0004R!\u0004Bi\tKCq!\u0005CO\t\u0003!i\f\u0006\u0004\u0005@\u0012\rGQ\u0019\t\u0007\t\u0003$i\nb*\u000e\u0003%A\u0001\u0002\",\u0005<\u0002\u0007AQ\u0015\u0005\t\tc#Y\f1\u0001\u00054\"9\u0011\u0003\"(\u0005\u0002\u0011%G\u0003\u0002C`\t\u0017D\u0001\u0002\"-\u0005H\u0002\u0007A1\u0017\u0015\t\t\u000f$y\r\"6\u0005vB\u0019Q\u0002\"5\n\u0007\u0011MGA\u0001\u0006eKB\u0014XmY1uK\u0012\f\u0014b\tCl\tG$Y\u000f\":\u0011\t\u0011eGq\u001c\b\u0004\u001b\u0011m\u0017b\u0001Co\t\u00051\u0001K]3eK\u001aLAaa5\u0005b*\u0019AQ\u001c\u0003\n\t\u0011\u0015Hq]\u0001\u001cI1,7o]5oSR$sM]3bi\u0016\u0014H\u0005Z3gCVdG\u000fJ\u0019\u000b\u0007\u0011%H!\u0001\u0006eKB\u0014XmY1uK\u0012\f\u0014b\tCw\t_$\t\u0010\";\u000f\u00075!y/C\u0002\u0005j\u0012\tTAI\u0007\u0005\tg\u0014Qa]2bY\u0006\f\u0014b\tCl\to$Y\u0010\"?\n\t\u0011eHq]\u0001\u001cI1,7o]5oSR$sM]3bi\u0016\u0014H\u0005Z3gCVdG\u000f\n\u001a2\u0013\r\"i\u000fb<\u0005~\u0012%\u0018'\u0002\u0012\u000e\t\u0011M\b\"CC\u0001\t;\u0003\u000b\u0015\u0002CZ\u0003\u0015\tX/Z;f\u0011%))\u0001\"(!\n\u0013\u0019i\"A\u0004bIZ\fgnY3\t\ru\"i\n\"\u0001?\u0011\u001d\u0019EQ\u0014C\u0001\u000b\u0017!\"\u0001b*\t\u000f1$i\n\"\u0011\u0006\u0010U!Q\u0011CC\f)\u0011)\u0019\"b\u0007\u0011\t!QSQ\u0003\t\u0004?\u0015]AaB3\u0006\u000e\t\u0007Q\u0011D\t\u0004\tO3\u0003\u0002\u0003;\u0006\u000e\u0011\u0005\r!\"\b\u0011\t51Xq\u0004\t\u0005\u0011e,)BB\u0004\u0006$%\u0011A!\"\n\u0003\u0019){\u0017N\\%uKJ\fGo\u001c:\u0016\t\u0015\u001dRQF\n\u0006\u000bCaQ\u0011\u0006\t\u0005\u0011)*Y\u0003E\u0002 \u000b[!q!IC\u0011\t\u000b\u0007!\u0005C\u0006\u00062\u0015\u0005\"\u0011!Q\u0001\n\u0015%\u0012a\u00017ig\"QA/\"\t\u0003\u0002\u0013\u0006I!\"\u000e\u0011\t51Xq\u0007\t\u0005\u0011e,Y\u0003C\u0004\u0012\u000bC!\t!b\u000f\u0015\r\u0015uRqHC!!\u0019!\t-\"\t\u0006,!AQ\u0011GC\u001d\u0001\u0004)I\u0003\u0003\u0005u\u000bs!\t\u0019AC\u001b\u0011-))%\"\t\t\u0006\u0004&I!b\u0012\u0002\u0007ID7/\u0006\u0002\u0006*!YQ1JC\u0011\u0011\u0003\u0005\u000b\u0015BC\u0015\u0003\u0011\u0011\bn\u001d\u0011\t\ru*\t\u0003\"\u0001?\u0011\u001d\u0019U\u0011\u0005C\u0001\u000b#\"\"!b\u000b\t\u000f1,\t\u0003\"\u0011\u0006VU!QqKC/)\u0011)I&\"\u0019\u0011\r\u0011\u0005GQTC.!\ryRQ\f\u0003\bK\u0016M#\u0019AC0#\r)YC\n\u0005\ti\u0016MC\u00111\u0001\u0006dA!QB^C3!\u0011A\u00110b\u0017")
/* loaded from: classes3-dex2jar.jar:scala/collection/Iterator.class */
public interface Iterator<A> extends TraversableOnce<A> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/Iterator$ConcatIterator.class */
    public static final class ConcatIterator<A> implements Iterator<A> {
        private Iterator<A> current;
        private Vector<Function0<Iterator<A>>> queue;

        public ConcatIterator(Iterator<A> iterator, Vector<Function0<Iterator<A>>> vector) {
            this.current = iterator;
            TraversableOnce.Cclass.$init$(this);
            Cclass.$init$(this);
            this.queue = vector;
        }

        public ConcatIterator(Vector<Function0<Iterator<A>>> vector) {
            this(Iterator$.MODULE$.empty(), vector);
        }

        private boolean advance() {
            boolean z;
            while (true) {
                if (!this.queue.isEmpty()) {
                    this.current = this.queue.head().apply();
                    this.queue = this.queue.tail();
                    if (this.current.hasNext()) {
                        z = true;
                        break;
                    }
                } else {
                    this.current = null;
                    z = false;
                    break;
                }
            }
            return z;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $colon$bslash(B b, Function2<A, B, B> function2) {
            Object foldRight;
            foldRight = foldRight(b, function2);
            return (B) foldRight;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $div$colon(B b, Function2<B, A, B> function2) {
            Object foldLeft;
            foldLeft = foldLeft(b, function2);
            return (B) foldLeft;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> $plus$plus(Function0<GenTraversableOnce<B>> function0) {
            return new ConcatIterator(this.current, (Vector) this.queue.$colon$plus(new Iterator$ConcatIterator$$anonfun$$plus$plus$1(this, function0), Vector$.MODULE$.canBuildFrom()));
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
        public <B> B aggregate(Function0<B> function0, Function2<B, A, B> function2, Function2<B, B, B> function22) {
            return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.collection.Iterator
        public BufferedIterator<A> buffered() {
            return Cclass.buffered(this);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> collect(PartialFunction<A, B> partialFunction) {
            return Cclass.collect(this, partialFunction);
        }

        @Override // scala.collection.TraversableOnce
        public <B> Option<B> collectFirst(PartialFunction<A, B> partialFunction) {
            return TraversableOnce.Cclass.collectFirst(this, partialFunction);
        }

        @Override // scala.collection.Iterator
        public boolean contains(Object obj) {
            return Cclass.contains(this, obj);
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
            Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> void copyToBuffer(Buffer<B> buffer) {
            TraversableOnce.Cclass.copyToBuffer(this, buffer);
        }

        @Override // scala.collection.Iterator
        public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<A, B, Object> function2) {
            return Cclass.corresponds(this, genTraversableOnce, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<A, Object> function1) {
            return TraversableOnce.Cclass.count(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> drop(int i) {
            return Cclass.drop(this, i);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> dropWhile(Function1<A, Object> function1) {
            return Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<A>, Iterator<A>> duplicate() {
            return Cclass.duplicate(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<A, Object> function1) {
            return Cclass.exists(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> filter(Function1<A, Object> function1) {
            return Cclass.filter(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> filterNot(Function1<A, Object> function1) {
            return Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<A> find(Function1<A, Object> function1) {
            return Cclass.find(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> flatMap(Function1<A, GenTraversableOnce<B>> function1) {
            return Cclass.flatMap(this, function1);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
            return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B foldLeft(B b, Function2<B, A, B> function2) {
            return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<A, B, B> function2) {
            return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<A, Object> function1) {
            return Cclass.forall(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<A, U> function1) {
            Cclass.foreach(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<A>.GroupedIterator<B> grouped(int i) {
            return Cclass.grouped(this, i);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            Iterator<A> iterator = this.current;
            return iterator != null && (iterator.hasNext() || advance());
        }

        @Override // scala.collection.Iterator
        public <B> int indexOf(B b) {
            return Cclass.indexOf(this, b);
        }

        @Override // scala.collection.Iterator
        public int indexWhere(Function1<A, Object> function1) {
            return Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return Cclass.isEmpty(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce
        public boolean isTraversableAgain() {
            return Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.Iterator
        public int length() {
            return Cclass.length(this);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> map(Function1<A, B> function1) {
            return Cclass.map(this, function1);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> A max(Ordering<B> ordering) {
            return (A) TraversableOnce.Cclass.max(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> A maxBy(Function1<A, B> function1, Ordering<B> ordering) {
            return (A) TraversableOnce.Cclass.maxBy(this, function1, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> A min(Ordering<B> ordering) {
            return (A) TraversableOnce.Cclass.min(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> A minBy(Function1<A, B> function1, Ordering<B> ordering) {
            return (A) TraversableOnce.Cclass.minBy(this, function1, ordering);
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
        public A next() {
            return (A) (hasNext() ? this.current : Iterator$.MODULE$.empty()).next();
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean nonEmpty() {
            return TraversableOnce.Cclass.nonEmpty(this);
        }

        @Override // scala.collection.Iterator
        public <A1> Iterator<A1> padTo(int i, A1 a1) {
            return Cclass.padTo(this, i, a1);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<A>, Iterator<A>> partition(Function1<A, Object> function1) {
            return Cclass.partition(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
            return Cclass.patch(this, i, iterator, i2);
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
        public <B> B reduceLeft(Function2<B, A, B> function2) {
            return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceLeftOption(Function2<B, A, B> function2) {
            return TraversableOnce.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
            return TraversableOnce.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B reduceRight(Function2<A, B, B> function2) {
            return (B) TraversableOnce.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceRightOption(Function2<A, B, B> function2) {
            return TraversableOnce.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce
        public List<A> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.collection.Iterator
        public boolean sameElements(Iterator<?> iterator) {
            return Cclass.sameElements(this, iterator);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanLeft(B b, Function2<B, A, B> function2) {
            return Cclass.scanLeft(this, b, function2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanRight(B b, Function2<A, B, B> function2) {
            return Cclass.scanRight(this, b, function2);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Iterator<A> seq() {
            return Cclass.seq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return TraversableOnce.Cclass.size(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<A>.GroupedIterator<B> sliding(int i, int i2) {
            return Cclass.sliding(this, i, i2);
        }

        @Override // scala.collection.Iterator
        public <B> int sliding$default$2() {
            return Cclass.sliding$default$2(this);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<A>, Iterator<A>> span(Function1<A, Object> function1) {
            return Cclass.span(this, function1);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B sum(Numeric<B> numeric) {
            return (B) TraversableOnce.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> takeWhile(Function1<A, Object> function1) {
            return Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, A, Col> canBuildFrom) {
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
        public IndexedSeq<A> toIndexedSeq() {
            return TraversableOnce.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterable<A> toIterable() {
            return TraversableOnce.Cclass.toIterable(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<A> toIterator() {
            return Cclass.toIterator(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public List<A> toList() {
            return TraversableOnce.Cclass.toList(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <T, U> Map<T, U> toMap(Predef$$less$colon$less<A, Tuple2<T, U>> predef$$less$colon$less) {
            return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public Seq<A> toSeq() {
            return TraversableOnce.Cclass.toSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return TraversableOnce.Cclass.toSet(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<A> toStream() {
            return Cclass.toStream(this);
        }

        @Override // scala.collection.Iterator
        public String toString() {
            return Cclass.toString(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Traversable<A> toTraversable() {
            return Cclass.toTraversable(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Vector<A> toVector() {
            return TraversableOnce.Cclass.toVector(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> withFilter(Function1<A, Object> function1) {
            return Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<A, B>> zip(Iterator<B> iterator) {
            return Cclass.zip(this, iterator);
        }

        @Override // scala.collection.Iterator
        public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
            return Cclass.zipAll(this, iterator, a1, b1);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<A, Object>> zipWithIndex() {
            return Cclass.zipWithIndex(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/Iterator$GroupedIterator.class */
    public class GroupedIterator<B> extends AbstractIterator<Seq<B>> {
        public final /* synthetic */ Iterator $outer;
        private boolean _partial;
        private ArrayBuffer<B> buffer;
        private boolean filled;
        public Option<Function0<B>> scala$collection$Iterator$GroupedIterator$$pad;
        public final int scala$collection$Iterator$GroupedIterator$$size;
        public final int scala$collection$Iterator$GroupedIterator$$step;
        private final Iterator<A> self;

        public GroupedIterator(Iterator<A> iterator, Iterator<A> iterator2, int i, int i2) {
            this.self = iterator2;
            this.scala$collection$Iterator$GroupedIterator$$size = i;
            this.scala$collection$Iterator$GroupedIterator$$step = i2;
            Objects.requireNonNull(iterator);
            this.$outer = iterator;
            Predef$ predef$ = Predef$.MODULE$;
            if (!(i >= 1 && i2 >= 1)) {
                StringBuilder append = new StringBuilder().append((Object) "requirement failed: ");
                Predef$ predef$2 = Predef$.MODULE$;
                throw new IllegalArgumentException(append.append((Object) StringLike.Cclass.format(new StringOps("size=%d and step=%d, but both must be positive"), Predef$.MODULE$.genericWrapArray(new Object[]{BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2)}))).toString());
            }
            this.buffer = (ArrayBuffer) ArrayBuffer$.MODULE$.apply(Nil$.MODULE$);
            this.filled = false;
            this._partial = true;
            this.scala$collection$Iterator$GroupedIterator$$pad = None$.MODULE$;
        }

        private final boolean deliver$1(int i, int i2, Seq seq, IntRef intRef, VolatileByteRef volatileByteRef) {
            int i3;
            boolean z = true;
            if (i <= 0 || (!isFirst$1(i2) && len$2(seq, intRef, volatileByteRef) <= gap())) {
                z = false;
            } else {
                if (!isFirst$1(i2)) {
                    ArrayBuffer<B> arrayBuffer = this.buffer;
                    RichInt$ richInt$ = RichInt$.MODULE$;
                    Predef$ predef$ = Predef$.MODULE$;
                    arrayBuffer.trimStart(richInt$.min$extension(this.scala$collection$Iterator$GroupedIterator$$step, i2));
                }
                if (isFirst$1(i2)) {
                    i3 = len$2(seq, intRef, volatileByteRef);
                } else {
                    RichInt$ richInt$2 = RichInt$.MODULE$;
                    Predef$ predef$2 = Predef$.MODULE$;
                    i3 = richInt$2.min$extension(i, len$2(seq, intRef, volatileByteRef) - gap());
                }
                this.buffer.$plus$plus$eq((TraversableOnce<B>) seq.takeRight(i3));
                this.filled = true;
            }
            return z;
        }

        private boolean fill() {
            return this.self.hasNext() ? this.buffer.isEmpty() ? m186go(this.scala$collection$Iterator$GroupedIterator$$size) : m186go(this.scala$collection$Iterator$GroupedIterator$$step) : false;
        }

        private int gap() {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            return richInt$.max$extension(this.scala$collection$Iterator$GroupedIterator$$step - this.scala$collection$Iterator$GroupedIterator$$size, 0);
        }

        /* renamed from: go */
        private boolean m186go(int i) {
            IntRef zero = IntRef.zero();
            BooleanRef zero2 = BooleanRef.zero();
            boolean z = false;
            VolatileByteRef create = VolatileByteRef.create((byte) 0);
            int size = this.buffer.size();
            Seq<A> takeDestructively = takeDestructively(i);
            int length = i - takeDestructively.length();
            Seq<A> seq = takeDestructively;
            if (length > 0) {
                seq = takeDestructively;
                if (this.scala$collection$Iterator$GroupedIterator$$pad.isDefined()) {
                    seq = (Seq) takeDestructively.$plus$plus(padding(length), Seq$.MODULE$.canBuildFrom());
                }
            }
            if (!seq.isEmpty()) {
                if (this._partial) {
                    RichInt$ richInt$ = RichInt$.MODULE$;
                    Predef$ predef$ = Predef$.MODULE$;
                    z = deliver$1(richInt$.min$extension(len$2(seq, zero, create), this.scala$collection$Iterator$GroupedIterator$$size), size, seq, zero, create);
                } else if (!incomplete$1(i, seq, zero, zero2, create)) {
                    if (isFirst$1(size)) {
                        z = deliver$1(len$2(seq, zero, create), size, seq, zero, create);
                    } else {
                        RichInt$ richInt$2 = RichInt$.MODULE$;
                        Predef$ predef$2 = Predef$.MODULE$;
                        z = deliver$1(richInt$2.min$extension(this.scala$collection$Iterator$GroupedIterator$$step, this.scala$collection$Iterator$GroupedIterator$$size), size, seq, zero, create);
                    }
                }
            }
            return z;
        }

        private final boolean incomplete$1(int i, Seq seq, IntRef intRef, BooleanRef booleanRef, VolatileByteRef volatileByteRef) {
            return ((byte) (volatileByteRef.elem & 2)) == 0 ? incomplete$lzycompute$1(i, seq, intRef, booleanRef, volatileByteRef) : booleanRef.elem;
        }

        private final boolean incomplete$lzycompute$1(int i, Seq seq, IntRef intRef, BooleanRef booleanRef, VolatileByteRef volatileByteRef) {
            synchronized (this) {
                if (((byte) (volatileByteRef.elem & 2)) == 0) {
                    booleanRef.elem = len$2(seq, intRef, volatileByteRef) < i;
                    volatileByteRef.elem = (byte) (volatileByteRef.elem | 2);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return booleanRef.elem;
        }

        private final boolean isFirst$1(int i) {
            return i == 0;
        }

        private final int len$2(Seq seq, IntRef intRef, VolatileByteRef volatileByteRef) {
            return ((byte) (volatileByteRef.elem & 1)) == 0 ? len$lzycompute$1(seq, intRef, volatileByteRef) : intRef.elem;
        }

        private final int len$lzycompute$1(Seq seq, IntRef intRef, VolatileByteRef volatileByteRef) {
            synchronized (this) {
                if (((byte) (volatileByteRef.elem & 1)) == 0) {
                    intRef.elem = seq.length();
                    volatileByteRef.elem = (byte) (volatileByteRef.elem | 1);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return intRef.elem;
        }

        private List<B> padding(int i) {
            return (List) List$.MODULE$.fill(i, new Iterator$GroupedIterator$$anonfun$padding$1(this));
        }

        private Seq<A> takeDestructively(int i) {
            ArrayBuffer arrayBuffer = new ArrayBuffer();
            for (int i2 = 0; i2 < i && this.self.hasNext(); i2++) {
                arrayBuffer.$plus$eq((ArrayBuffer) this.self.next());
            }
            return arrayBuffer;
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return this.filled || fill();
        }

        @Override // scala.collection.Iterator
        public List<B> next() {
            if (this.filled) {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            } else {
                BoxesRunTime.boxToBoolean(fill());
            }
            if (this.filled) {
                this.filled = false;
                return this.buffer.toList();
            }
            throw new NoSuchElementException("next on empty iterator");
        }

        public /* synthetic */ Iterator scala$collection$Iterator$GroupedIterator$$$outer() {
            return this.$outer;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Iterator<A>.GroupedIterator<B> withPadding(Function0<B> function0) {
            this.scala$collection$Iterator$GroupedIterator$$pad = new Some(function0);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Iterator<A>.GroupedIterator<B> withPartial(boolean z) {
            this._partial = z;
            if (z) {
                this.scala$collection$Iterator$GroupedIterator$$pad = None$.MODULE$;
            }
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/Iterator$JoinIterator.class */
    public static final class JoinIterator<A> implements Iterator<A> {
        private volatile boolean bitmap$0;
        private final Iterator<A> lhs;
        private Iterator<A> rhs;
        private final Function0<GenTraversableOnce<A>> that;

        public JoinIterator(Iterator<A> iterator, Function0<GenTraversableOnce<A>> function0) {
            this.lhs = iterator;
            this.that = function0;
            TraversableOnce.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        private Iterator<A> rhs() {
            return this.bitmap$0 ? this.rhs : rhs$lzycompute();
        }

        private Iterator rhs$lzycompute() {
            synchronized (this) {
                if (!this.bitmap$0) {
                    this.rhs = this.that.apply().toIterator();
                    this.bitmap$0 = true;
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            this.that = null;
            return this.rhs;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $colon$bslash(B b, Function2<A, B, B> function2) {
            Object foldRight;
            foldRight = foldRight(b, function2);
            return (B) foldRight;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $div$colon(B b, Function2<B, A, B> function2) {
            Object foldLeft;
            foldLeft = foldLeft(b, function2);
            return (B) foldLeft;
        }

        @Override // scala.collection.Iterator
        public <B> ConcatIterator<B> $plus$plus(Function0<GenTraversableOnce<B>> function0) {
            return new ConcatIterator<>(this, (Vector) package$.MODULE$.Vector().apply(Predef$.MODULE$.wrapRefArray(new Function0[]{new Iterator$JoinIterator$$anonfun$$plus$plus$2(this, function0)})));
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
        public <B> B aggregate(Function0<B> function0, Function2<B, A, B> function2, Function2<B, B, B> function22) {
            return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.collection.Iterator
        public BufferedIterator<A> buffered() {
            return Cclass.buffered(this);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> collect(PartialFunction<A, B> partialFunction) {
            return Cclass.collect(this, partialFunction);
        }

        @Override // scala.collection.TraversableOnce
        public <B> Option<B> collectFirst(PartialFunction<A, B> partialFunction) {
            return TraversableOnce.Cclass.collectFirst(this, partialFunction);
        }

        @Override // scala.collection.Iterator
        public boolean contains(Object obj) {
            return Cclass.contains(this, obj);
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
            Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> void copyToBuffer(Buffer<B> buffer) {
            TraversableOnce.Cclass.copyToBuffer(this, buffer);
        }

        @Override // scala.collection.Iterator
        public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<A, B, Object> function2) {
            return Cclass.corresponds(this, genTraversableOnce, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<A, Object> function1) {
            return TraversableOnce.Cclass.count(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> drop(int i) {
            return Cclass.drop(this, i);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> dropWhile(Function1<A, Object> function1) {
            return Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<A>, Iterator<A>> duplicate() {
            return Cclass.duplicate(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<A, Object> function1) {
            return Cclass.exists(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> filter(Function1<A, Object> function1) {
            return Cclass.filter(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> filterNot(Function1<A, Object> function1) {
            return Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<A> find(Function1<A, Object> function1) {
            return Cclass.find(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> flatMap(Function1<A, GenTraversableOnce<B>> function1) {
            return Cclass.flatMap(this, function1);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
            return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B foldLeft(B b, Function2<B, A, B> function2) {
            return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<A, B, B> function2) {
            return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<A, Object> function1) {
            return Cclass.forall(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<A, U> function1) {
            Cclass.foreach(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<A>.GroupedIterator<B> grouped(int i) {
            return Cclass.grouped(this, i);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return this.lhs.hasNext() || rhs().hasNext();
        }

        @Override // scala.collection.Iterator
        public <B> int indexOf(B b) {
            return Cclass.indexOf(this, b);
        }

        @Override // scala.collection.Iterator
        public int indexWhere(Function1<A, Object> function1) {
            return Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return Cclass.isEmpty(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce
        public boolean isTraversableAgain() {
            return Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.Iterator
        public int length() {
            return Cclass.length(this);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> map(Function1<A, B> function1) {
            return Cclass.map(this, function1);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> A max(Ordering<B> ordering) {
            return (A) TraversableOnce.Cclass.max(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> A maxBy(Function1<A, B> function1, Ordering<B> ordering) {
            return (A) TraversableOnce.Cclass.maxBy(this, function1, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> A min(Ordering<B> ordering) {
            return (A) TraversableOnce.Cclass.min(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> A minBy(Function1<A, B> function1, Ordering<B> ordering) {
            return (A) TraversableOnce.Cclass.minBy(this, function1, ordering);
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
        public A next() {
            return (this.lhs.hasNext() ? this.lhs : rhs()).next();
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean nonEmpty() {
            return TraversableOnce.Cclass.nonEmpty(this);
        }

        @Override // scala.collection.Iterator
        public <A1> Iterator<A1> padTo(int i, A1 a1) {
            return Cclass.padTo(this, i, a1);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<A>, Iterator<A>> partition(Function1<A, Object> function1) {
            return Cclass.partition(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
            return Cclass.patch(this, i, iterator, i2);
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
        public <B> B reduceLeft(Function2<B, A, B> function2) {
            return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceLeftOption(Function2<B, A, B> function2) {
            return TraversableOnce.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
            return TraversableOnce.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B reduceRight(Function2<A, B, B> function2) {
            return (B) TraversableOnce.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceRightOption(Function2<A, B, B> function2) {
            return TraversableOnce.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce
        public List<A> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.collection.Iterator
        public boolean sameElements(Iterator<?> iterator) {
            return Cclass.sameElements(this, iterator);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanLeft(B b, Function2<B, A, B> function2) {
            return Cclass.scanLeft(this, b, function2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanRight(B b, Function2<A, B, B> function2) {
            return Cclass.scanRight(this, b, function2);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Iterator<A> seq() {
            return Cclass.seq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return TraversableOnce.Cclass.size(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<A>.GroupedIterator<B> sliding(int i, int i2) {
            return Cclass.sliding(this, i, i2);
        }

        @Override // scala.collection.Iterator
        public <B> int sliding$default$2() {
            return Cclass.sliding$default$2(this);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<A>, Iterator<A>> span(Function1<A, Object> function1) {
            return Cclass.span(this, function1);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B sum(Numeric<B> numeric) {
            return (B) TraversableOnce.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> takeWhile(Function1<A, Object> function1) {
            return Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, A, Col> canBuildFrom) {
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
        public IndexedSeq<A> toIndexedSeq() {
            return TraversableOnce.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterable<A> toIterable() {
            return TraversableOnce.Cclass.toIterable(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<A> toIterator() {
            return Cclass.toIterator(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public List<A> toList() {
            return TraversableOnce.Cclass.toList(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <T, U> Map<T, U> toMap(Predef$$less$colon$less<A, Tuple2<T, U>> predef$$less$colon$less) {
            return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public Seq<A> toSeq() {
            return TraversableOnce.Cclass.toSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return TraversableOnce.Cclass.toSet(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<A> toStream() {
            return Cclass.toStream(this);
        }

        @Override // scala.collection.Iterator
        public String toString() {
            return Cclass.toString(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Traversable<A> toTraversable() {
            return Cclass.toTraversable(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Vector<A> toVector() {
            return TraversableOnce.Cclass.toVector(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<A> withFilter(Function1<A, Object> function1) {
            return Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<A, B>> zip(Iterator<B> iterator) {
            return Cclass.zip(this, iterator);
        }

        @Override // scala.collection.Iterator
        public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
            return Cclass.zipAll(this, iterator, a1, b1);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<A, Object>> zipWithIndex() {
            return Cclass.zipWithIndex(this);
        }
    }

    /* renamed from: scala.collection.Iterator$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/Iterator$class.class */
    public abstract class Cclass {
        public static void $init$(Iterator iterator) {
        }

        public static Iterator $plus$plus(Iterator iterator, Function0 function0) {
            return new JoinIterator(iterator, function0);
        }

        public static BufferedIterator buffered(Iterator iterator) {
            return new Iterator$$anon$1(iterator);
        }

        public static Iterator collect(Iterator iterator, PartialFunction partialFunction) {
            return new AbstractIterator<B>(iterator, iterator.buffered(), partialFunction) { // from class: scala.collection.Iterator$$anon$14
                private final PartialFunction pf$1;
                private final BufferedIterator self$1;

                {
                    this.self$1 = buffered;
                    this.pf$1 = partialFunction;
                }

                private void skip() {
                    while (this.self$1.hasNext() && !this.pf$1.isDefinedAt(this.self$1.head())) {
                        this.self$1.next();
                    }
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    skip();
                    return this.self$1.hasNext();
                }

                @Override // scala.collection.Iterator
                public B next() {
                    skip();
                    return this.pf$1.apply(this.self$1.next());
                }
            };
        }

        public static boolean contains(Iterator iterator, Object obj) {
            return iterator.exists(new Iterator$$anonfun$contains$1(iterator, obj));
        }

        public static void copyToArray(Iterator iterator, Object obj, int i, int i2) {
            Predef$ predef$ = Predef$.MODULE$;
            boolean z = i >= 0 && (i < ScalaRunTime$.MODULE$.array_length(obj) || ScalaRunTime$.MODULE$.array_length(obj) == 0);
            Iterator$$anonfun$copyToArray$1 iterator$$anonfun$copyToArray$1 = new Iterator$$anonfun$copyToArray$1(iterator, obj, i);
            if (z) {
                scala.math.package$ package_ = scala.math.package$.MODULE$;
                int min = Math.min(i2, ScalaRunTime$.MODULE$.array_length(obj) - i);
                for (int i3 = i; i3 < min + i && iterator.hasNext(); i3++) {
                    ScalaRunTime$.MODULE$.array_update(obj, i3, iterator.next());
                }
                return;
            }
            throw new IllegalArgumentException(new StringBuilder().append((Object) "requirement failed: ").append((Object) new StringContext(Predef$.MODULE$.wrapRefArray(new String[]{"start ", " out of range ", ""})).m361s(Predef$.MODULE$.genericWrapArray(new Object[]{BoxesRunTime.boxToInteger(iterator$$anonfun$copyToArray$1.start$4), BoxesRunTime.boxToInteger(ScalaRunTime$.MODULE$.array_length(iterator$$anonfun$copyToArray$1.xs$2))}))).toString());
        }

        public static boolean corresponds(Iterator iterator, GenTraversableOnce genTraversableOnce, Function2 function2) {
            Iterator<A> iterator2 = genTraversableOnce.toIterator();
            do {
                boolean z = false;
                if (!iterator.hasNext() || !iterator2.hasNext()) {
                    if (iterator.hasNext() == iterator2.hasNext()) {
                        z = true;
                    }
                    return z;
                }
            } while (BoxesRunTime.unboxToBoolean(function2.apply(iterator.next(), iterator2.next())));
            return false;
        }

        public static Iterator drop(Iterator iterator, int i) {
            for (int i2 = 0; i2 < i && iterator.hasNext(); i2++) {
                iterator.next();
            }
            return iterator;
        }

        public static Iterator dropWhile(Iterator iterator, Function1 function1) {
            return new AbstractIterator<A>(iterator, iterator.buffered(), function1) { // from class: scala.collection.Iterator$$anon$18
                private boolean dropped = false;
                private final Function1 p$6;
                private final BufferedIterator self$4;

                {
                    this.self$4 = buffered;
                    this.p$6 = function1;
                }

                private boolean dropped() {
                    return this.dropped;
                }

                private void dropped_$eq(boolean z) {
                    this.dropped = z;
                }

                private void skip() {
                    if (!dropped()) {
                        while (this.self$4.hasNext() && BoxesRunTime.unboxToBoolean(this.p$6.apply(this.self$4.head()))) {
                            this.self$4.next();
                        }
                        dropped_$eq(true);
                    }
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    skip();
                    return this.self$4.hasNext();
                }

                @Override // scala.collection.Iterator
                public A next() {
                    skip();
                    return this.self$4.next();
                }
            };
        }

        public static Tuple2 duplicate(Iterator iterator) {
            Queue queue = new Queue();
            ObjectRef create = ObjectRef.create(null);
            return new Tuple2(new AbstractIterator<A>(iterator, queue, create) { // from class: scala.collection.Iterator$Partner$1
                public final /* synthetic */ Iterator $outer;
                private final ObjectRef ahead$1;
                private final Queue gap$1;

                {
                    Objects.requireNonNull(iterator);
                    this.$outer = iterator;
                    this.gap$1 = queue;
                    this.ahead$1 = create;
                }

                private boolean compareGap(Queue<A> queue2) {
                    return this.gap$1 == queue2;
                }

                public boolean equals(Object obj) {
                    return obj instanceof Iterator$Partner$1 ? ((Iterator$Partner$1) obj).compareGap(this.gap$1) && this.gap$1.isEmpty() : super.equals(obj);
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    boolean z;
                    synchronized (scala$collection$Iterator$Partner$$$outer()) {
                        z = (this != ((Iterator) this.ahead$1.elem) && !this.gap$1.isEmpty()) || scala$collection$Iterator$Partner$$$outer().hasNext();
                    }
                    return z;
                }

                public int hashCode() {
                    return this.gap$1.hashCode();
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // scala.collection.Iterator
                public A next() {
                    Object obj;
                    synchronized (scala$collection$Iterator$Partner$$$outer()) {
                        if (this.gap$1.isEmpty()) {
                            this.ahead$1.elem = this;
                        }
                        if (this == ((Iterator) this.ahead$1.elem)) {
                            obj = scala$collection$Iterator$Partner$$$outer().next();
                            this.gap$1.enqueue(Predef$.MODULE$.genericWrapArray(new Object[]{obj}));
                        } else {
                            obj = this.gap$1.dequeue();
                        }
                    }
                    return obj;
                }

                public /* synthetic */ Iterator scala$collection$Iterator$Partner$$$outer() {
                    return this.$outer;
                }
            }, new AbstractIterator<A>(iterator, queue, create) { // from class: scala.collection.Iterator$Partner$1
                public final /* synthetic */ Iterator $outer;
                private final ObjectRef ahead$1;
                private final Queue gap$1;

                {
                    Objects.requireNonNull(iterator);
                    this.$outer = iterator;
                    this.gap$1 = queue;
                    this.ahead$1 = create;
                }

                private boolean compareGap(Queue<A> queue2) {
                    return this.gap$1 == queue2;
                }

                public boolean equals(Object obj) {
                    return obj instanceof Iterator$Partner$1 ? ((Iterator$Partner$1) obj).compareGap(this.gap$1) && this.gap$1.isEmpty() : super.equals(obj);
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    boolean z;
                    synchronized (scala$collection$Iterator$Partner$$$outer()) {
                        z = (this != ((Iterator) this.ahead$1.elem) && !this.gap$1.isEmpty()) || scala$collection$Iterator$Partner$$$outer().hasNext();
                    }
                    return z;
                }

                public int hashCode() {
                    return this.gap$1.hashCode();
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // scala.collection.Iterator
                public A next() {
                    Object obj;
                    synchronized (scala$collection$Iterator$Partner$$$outer()) {
                        if (this.gap$1.isEmpty()) {
                            this.ahead$1.elem = this;
                        }
                        if (this == ((Iterator) this.ahead$1.elem)) {
                            obj = scala$collection$Iterator$Partner$$$outer().next();
                            this.gap$1.enqueue(Predef$.MODULE$.genericWrapArray(new Object[]{obj}));
                        } else {
                            obj = this.gap$1.dequeue();
                        }
                    }
                    return obj;
                }

                public /* synthetic */ Iterator scala$collection$Iterator$Partner$$$outer() {
                    return this.$outer;
                }
            });
        }

        public static boolean exists(Iterator iterator, Function1 function1) {
            boolean z;
            boolean z2 = false;
            while (true) {
                z = z2;
                if (z || !iterator.hasNext()) {
                    break;
                }
                z2 = BoxesRunTime.unboxToBoolean(function1.apply(iterator.next()));
            }
            return z;
        }

        public static Iterator filter(Iterator iterator, Function1 function1) {
            return new AbstractIterator<A>(iterator, function1) { // from class: scala.collection.Iterator$$anon$13
                private final /* synthetic */ Iterator $outer;

                /* renamed from: hd */
                private A f1513hd;
                private boolean hdDefined = false;
                private final Function1 p$1;

                /* JADX WARN: Multi-variable type inference failed */
                {
                    Objects.requireNonNull(iterator);
                    this.$outer = iterator;
                    this.p$1 = function1;
                }

                /* renamed from: hd */
                private A m194hd() {
                    return this.f1513hd;
                }

                private boolean hdDefined() {
                    return this.hdDefined;
                }

                private void hdDefined_$eq(boolean z) {
                    this.hdDefined = z;
                }

                private void hd_$eq(A a) {
                    this.f1513hd = a;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    if (!hdDefined()) {
                        while (this.$outer.hasNext()) {
                            hd_$eq(this.$outer.next());
                            if (BoxesRunTime.unboxToBoolean(this.p$1.apply(m194hd()))) {
                                hdDefined_$eq(true);
                                return true;
                            }
                        }
                        return false;
                    }
                    return true;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // scala.collection.Iterator
                public A next() {
                    Nothing$ nothing$;
                    if (hasNext()) {
                        hdDefined_$eq(false);
                        nothing$ = m194hd();
                    } else {
                        nothing$ = Iterator$.MODULE$.empty().next();
                    }
                    return nothing$;
                }
            };
        }

        public static Iterator filterNot(Iterator iterator, Function1 function1) {
            return iterator.filter(new Iterator$$anonfun$filterNot$1(iterator, function1));
        }

        public static Option find(Iterator iterator, Function1 function1) {
            Option option = None$.MODULE$;
            while (option.isEmpty() && iterator.hasNext()) {
                Object next = iterator.next();
                if (BoxesRunTime.unboxToBoolean(function1.apply(next))) {
                    option = new Some(next);
                }
            }
            return option;
        }

        public static Iterator flatMap(Iterator iterator, Function1 function1) {
            return new AbstractIterator<B>(iterator, function1) { // from class: scala.collection.Iterator$$anon$12
                private final /* synthetic */ Iterator $outer;
                private Iterator<B> cur = Iterator$.MODULE$.empty();
                private final Function1 f$4;

                /* JADX WARN: Multi-variable type inference failed */
                {
                    Objects.requireNonNull(iterator);
                    this.$outer = iterator;
                    this.f$4 = function1;
                }

                private Iterator<B> cur() {
                    return this.cur;
                }

                private void cur_$eq(Iterator<B> iterator2) {
                    this.cur = iterator2;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    boolean z;
                    while (true) {
                        if (!cur().hasNext()) {
                            if (!this.$outer.hasNext()) {
                                z = false;
                                break;
                            }
                            cur_$eq(((GenTraversableOnce) this.f$4.apply(this.$outer.next())).toIterator());
                        } else {
                            z = true;
                            break;
                        }
                    }
                    return z;
                }

                /* JADX WARN: Type inference failed for: r0v3, types: [B, java.lang.Object] */
                @Override // scala.collection.Iterator
                public B next() {
                    return (hasNext() ? cur() : Iterator$.MODULE$.empty()).next();
                }
            };
        }

        public static boolean forall(Iterator iterator, Function1 function1) {
            boolean z;
            boolean z2 = true;
            while (true) {
                z = z2;
                if (!z || !iterator.hasNext()) {
                    break;
                }
                z2 = BoxesRunTime.unboxToBoolean(function1.apply(iterator.next()));
            }
            return z;
        }

        public static void foreach(Iterator iterator, Function1 function1) {
            while (iterator.hasNext()) {
                function1.apply(iterator.next());
            }
        }

        public static GroupedIterator grouped(Iterator iterator, int i) {
            return new GroupedIterator(iterator, iterator, i, i);
        }

        public static boolean hasDefiniteSize(Iterator iterator) {
            return iterator.isEmpty();
        }

        public static int indexOf(Iterator iterator, Object obj) {
            boolean z = false;
            int i = 0;
            while (!z && iterator.hasNext()) {
                Object next = iterator.next();
                if (next == obj ? true : next == null ? false : next instanceof Number ? BoxesRunTime.equalsNumObject((Number) next, obj) : next instanceof Character ? BoxesRunTime.equalsCharObject((Character) next, obj) : next.equals(obj)) {
                    z = true;
                } else {
                    i++;
                }
            }
            if (!z) {
                i = -1;
            }
            return i;
        }

        public static int indexWhere(Iterator iterator, Function1 function1) {
            boolean z = false;
            int i = 0;
            while (!z && iterator.hasNext()) {
                if (BoxesRunTime.unboxToBoolean(function1.apply(iterator.next()))) {
                    z = true;
                } else {
                    i++;
                }
            }
            if (!z) {
                i = -1;
            }
            return i;
        }

        public static boolean isEmpty(Iterator iterator) {
            return !iterator.hasNext();
        }

        public static boolean isTraversableAgain(Iterator iterator) {
            return false;
        }

        public static int length(Iterator iterator) {
            return iterator.size();
        }

        public static Iterator map(Iterator iterator, Function1 function1) {
            return new AbstractIterator<B>(iterator, function1) { // from class: scala.collection.Iterator$$anon$11
                private final /* synthetic */ Iterator $outer;
                private final Function1 f$3;

                /* JADX WARN: Multi-variable type inference failed */
                {
                    Objects.requireNonNull(iterator);
                    this.$outer = iterator;
                    this.f$3 = function1;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return this.$outer.hasNext();
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [B, java.lang.Object] */
                @Override // scala.collection.Iterator
                public B next() {
                    return this.f$3.apply(this.$outer.next());
                }
            };
        }

        public static Iterator padTo(Iterator iterator, int i, Object obj) {
            return new AbstractIterator<A1>(iterator, i, obj) { // from class: scala.collection.Iterator$$anon$20
                private final /* synthetic */ Iterator $outer;
                private int count = 0;
                private final Object elem$4;
                private final int len$3;

                {
                    Objects.requireNonNull(iterator);
                    this.$outer = iterator;
                    this.len$3 = i;
                    this.elem$4 = obj;
                }

                private int count() {
                    return this.count;
                }

                private void count_$eq(int i2) {
                    this.count = i2;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return this.$outer.hasNext() || count() < this.len$3;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // scala.collection.Iterator
                public A1 next() {
                    count_$eq(count() + 1);
                    return this.$outer.hasNext() ? this.$outer.next() : count() <= this.len$3 ? this.elem$4 : Iterator$.MODULE$.empty().next();
                }
            };
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, scala.collection.Iterator$PartitionIterator$1] */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, scala.collection.Iterator$PartitionIterator$1] */
        public static Tuple2 partition(Iterator iterator, Function1 function1) {
            BufferedIterator<A> buffered = iterator.buffered();
            AbstractIterator<A> abstractIterator = new AbstractIterator<A>(iterator, function1, buffered) { // from class: scala.collection.Iterator$PartitionIterator$1
                public final /* synthetic */ Iterator $outer;
                private final Queue<A> lookahead = new Queue<>();
                private Iterator$PartitionIterator$1 other;

                /* renamed from: p */
                private final Function1<A, Object> f1521p;
                private final BufferedIterator self$2;

                /* JADX WARN: Multi-variable type inference failed */
                {
                    this.f1521p = function1;
                    Objects.requireNonNull(iterator);
                    this.$outer = iterator;
                    this.self$2 = buffered;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    boolean z;
                    if (lookahead().isEmpty()) {
                        skip();
                        if (!this.self$2.hasNext()) {
                            z = false;
                            return z;
                        }
                    }
                    z = true;
                    return z;
                }

                public Queue<A> lookahead() {
                    return this.lookahead;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // scala.collection.Iterator
                public A next() {
                    Object obj;
                    if (lookahead().isEmpty()) {
                        skip();
                        obj = this.self$2.next();
                    } else {
                        obj = lookahead().dequeue();
                    }
                    return obj;
                }

                public Iterator$PartitionIterator$1 other() {
                    return this.other;
                }

                public void other_$eq(Iterator$PartitionIterator$1 iterator$PartitionIterator$1) {
                    this.other = iterator$PartitionIterator$1;
                }

                public /* synthetic */ Iterator scala$collection$Iterator$PartitionIterator$$$outer() {
                    return this.$outer;
                }

                public void skip() {
                    while (this.self$2.hasNext() && !BoxesRunTime.unboxToBoolean(this.f1521p.apply(this.self$2.head()))) {
                        other().lookahead().$plus$eq(this.self$2.next());
                    }
                }
            };
            AbstractIterator<A> abstractIterator2 = new AbstractIterator<A>(iterator, new Iterator$$anonfun$1(iterator, function1), buffered) { // from class: scala.collection.Iterator$PartitionIterator$1
                public final /* synthetic */ Iterator $outer;
                private final Queue<A> lookahead = new Queue<>();
                private Iterator$PartitionIterator$1 other;

                /* renamed from: p */
                private final Function1<A, Object> f1521p;
                private final BufferedIterator self$2;

                /* JADX WARN: Multi-variable type inference failed */
                {
                    this.f1521p = function1;
                    Objects.requireNonNull(iterator);
                    this.$outer = iterator;
                    this.self$2 = buffered;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    boolean z;
                    if (lookahead().isEmpty()) {
                        skip();
                        if (!this.self$2.hasNext()) {
                            z = false;
                            return z;
                        }
                    }
                    z = true;
                    return z;
                }

                public Queue<A> lookahead() {
                    return this.lookahead;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // scala.collection.Iterator
                public A next() {
                    Object obj;
                    if (lookahead().isEmpty()) {
                        skip();
                        obj = this.self$2.next();
                    } else {
                        obj = lookahead().dequeue();
                    }
                    return obj;
                }

                public Iterator$PartitionIterator$1 other() {
                    return this.other;
                }

                public void other_$eq(Iterator$PartitionIterator$1 iterator$PartitionIterator$1) {
                    this.other = iterator$PartitionIterator$1;
                }

                public /* synthetic */ Iterator scala$collection$Iterator$PartitionIterator$$$outer() {
                    return this.$outer;
                }

                public void skip() {
                    while (this.self$2.hasNext() && !BoxesRunTime.unboxToBoolean(this.f1521p.apply(this.self$2.head()))) {
                        other().lookahead().$plus$eq(this.self$2.next());
                    }
                }
            };
            abstractIterator.other_$eq(abstractIterator2);
            abstractIterator2.other_$eq(abstractIterator);
            return new Tuple2(abstractIterator, abstractIterator2);
        }

        public static Iterator patch(Iterator iterator, int i, Iterator iterator2, int i2) {
            return new AbstractIterator<B>(iterator, i, iterator2, i2) { // from class: scala.collection.Iterator$$anon$23

                /* renamed from: i */
                private int f1516i;
                private Iterator<A> origElems;
                private final Iterator patchElems$1;
                private final int replaced$1;

                {
                    this.patchElems$1 = iterator2;
                    this.replaced$1 = i2;
                    this.origElems = iterator;
                    this.f1516i = i <= 0 ? 0 : i;
                }

                /* renamed from: i */
                private int m191i() {
                    return this.f1516i;
                }

                private void i_$eq(int i3) {
                    this.f1516i = i3;
                }

                private Iterator<A> origElems() {
                    return this.origElems;
                }

                private void origElems_$eq(Iterator<A> iterator3) {
                    this.origElems = iterator3;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    if (m191i() == 0) {
                        origElems_$eq(origElems().drop(this.replaced$1));
                        i_$eq(-1);
                    }
                    return origElems().hasNext() || this.patchElems$1.hasNext();
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // scala.collection.Iterator
                public B next() {
                    Object obj;
                    if (m191i() == 0) {
                        origElems_$eq(origElems().drop(this.replaced$1));
                        i_$eq(-1);
                    }
                    if (m191i() < 0) {
                        obj = this.patchElems$1.hasNext() ? this.patchElems$1.next() : origElems().next();
                    } else if (origElems().hasNext()) {
                        i_$eq(m191i() - 1);
                        obj = origElems().next();
                    } else {
                        i_$eq(-1);
                        obj = this.patchElems$1.next();
                    }
                    return obj;
                }
            };
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x008e, code lost:
            if (r4.hasNext() != false) goto L25;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean sameElements(scala.collection.Iterator r3, scala.collection.Iterator r4) {
            /*
            L0:
                r0 = r3
                boolean r0 = r0.hasNext()
                r5 = r0
                r0 = 1
                r6 = r0
                r0 = 1
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L7c
                r0 = r4
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L7c
                r0 = r3
                java.lang.Object r0 = r0.next()
                r8 = r0
                r0 = r4
                java.lang.Object r0 = r0.next()
                r9 = r0
                r0 = r8
                r1 = r9
                if (r0 != r1) goto L33
                goto L75
            L33:
                r0 = r8
                if (r0 != 0) goto L3e
                r0 = 0
                r7 = r0
                goto L75
            L3e:
                r0 = r8
                boolean r0 = r0 instanceof java.lang.Number
                if (r0 == 0) goto L55
                r0 = r8
                java.lang.Number r0 = (java.lang.Number) r0
                r1 = r9
                boolean r0 = scala.runtime.BoxesRunTime.equalsNumObject(r0, r1)
                r7 = r0
                goto L75
            L55:
                r0 = r8
                boolean r0 = r0 instanceof java.lang.Character
                if (r0 == 0) goto L6c
                r0 = r8
                java.lang.Character r0 = (java.lang.Character) r0
                r1 = r9
                boolean r0 = scala.runtime.BoxesRunTime.equalsCharObject(r0, r1)
                r7 = r0
                goto L75
            L6c:
                r0 = r8
                r1 = r9
                boolean r0 = r0.equals(r1)
                r7 = r0
            L75:
                r0 = r7
                if (r0 != 0) goto L0
                r0 = 0
                return r0
            L7c:
                r0 = r3
                boolean r0 = r0.hasNext()
                if (r0 != 0) goto L91
                r0 = r6
                r7 = r0
                r0 = r4
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L94
            L91:
                r0 = 0
                r7 = r0
            L94:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.Iterator.Cclass.sameElements(scala.collection.Iterator, scala.collection.Iterator):boolean");
        }

        public static Iterator scanLeft(Iterator iterator, Object obj, Function2 function2) {
            return new AbstractIterator<B>(iterator, obj, function2) { // from class: scala.collection.Iterator$$anon$15
                private final /* synthetic */ Iterator $outer;
                private B elem;
                private boolean hasNext = true;
                private final Function2 op$1;

                /* JADX WARN: Multi-variable type inference failed */
                {
                    Objects.requireNonNull(iterator);
                    this.$outer = iterator;
                    this.op$1 = function2;
                    this.elem = obj;
                }

                private B elem() {
                    return this.elem;
                }

                private void elem_$eq(B b) {
                    this.elem = b;
                }

                private void hasNext_$eq(boolean z) {
                    this.hasNext = z;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return this.hasNext;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // scala.collection.Iterator
                public B next() {
                    Nothing$ nothing$;
                    if (hasNext()) {
                        nothing$ = elem();
                        if (this.$outer.hasNext()) {
                            elem_$eq(this.op$1.apply(elem(), this.$outer.next()));
                        } else {
                            hasNext_$eq(false);
                        }
                    } else {
                        nothing$ = Iterator$.MODULE$.empty().next();
                    }
                    return nothing$;
                }
            };
        }

        public static Iterator scanRight(Iterator iterator, Object obj, Function2 function2) {
            return ((IterableLike) iterator.toBuffer().scanRight(obj, function2, Buffer$.MODULE$.canBuildFrom())).iterator();
        }

        public static Iterator seq(Iterator iterator) {
            return iterator;
        }

        public static Iterator slice(Iterator iterator, int i, int i2) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            int max$extension = richInt$.max$extension(i, 0);
            for (int i3 = max$extension; i3 > 0 && iterator.hasNext(); i3--) {
                iterator.next();
            }
            return new AbstractIterator<A>(iterator, max$extension, i2) { // from class: scala.collection.Iterator$$anon$10
                private final /* synthetic */ Iterator $outer;
                private int remaining;

                {
                    Objects.requireNonNull(iterator);
                    this.$outer = iterator;
                    this.remaining = i2 - max$extension;
                }

                private int remaining() {
                    return this.remaining;
                }

                private void remaining_$eq(int i4) {
                    this.remaining = i4;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return remaining() > 0 && this.$outer.hasNext();
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // scala.collection.Iterator
                public A next() {
                    Nothing$ nothing$;
                    if (remaining() > 0) {
                        remaining_$eq(remaining() - 1);
                        nothing$ = this.$outer.next();
                    } else {
                        nothing$ = Iterator$.MODULE$.empty().next();
                    }
                    return nothing$;
                }
            };
        }

        public static GroupedIterator sliding(Iterator iterator, int i, int i2) {
            return new GroupedIterator(iterator, iterator, i, i2);
        }

        public static int sliding$default$2(Iterator iterator) {
            return 1;
        }

        public static Tuple2 span(Iterator iterator, Function1 function1) {
            BufferedIterator<A> buffered = iterator.buffered();
            Iterator$Leading$1 iterator$Leading$1 = new Iterator$Leading$1(iterator, buffered, function1);
            return new Tuple2(iterator$Leading$1, new AbstractIterator<A>(iterator, buffered, iterator$Leading$1) { // from class: scala.collection.Iterator$$anon$17
                private volatile boolean bitmap$0;

                /* renamed from: it */
                private BufferedIterator<A> f1515it;
                private final Iterator$Leading$1 leading$1;
                private final BufferedIterator self$3;

                {
                    this.self$3 = buffered;
                    this.leading$1 = iterator$Leading$1;
                }

                /* renamed from: it */
                private BufferedIterator<A> m192it() {
                    return this.bitmap$0 ? this.f1515it : it$lzycompute();
                }

                private BufferedIterator it$lzycompute() {
                    synchronized (this) {
                        if (!this.bitmap$0) {
                            this.leading$1.finish();
                            this.f1515it = this.self$3;
                            this.bitmap$0 = true;
                        }
                        BoxedUnit boxedUnit = BoxedUnit.UNIT;
                    }
                    this.self$3 = null;
                    this.leading$1 = null;
                    return this.f1515it;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return m192it().hasNext();
                }

                @Override // scala.collection.Iterator
                public A next() {
                    return m192it().next();
                }

                @Override // scala.collection.AbstractIterator, scala.collection.Iterator
                public String toString() {
                    return "unknown-if-empty iterator";
                }
            });
        }

        public static Iterator take(Iterator iterator, int i) {
            return iterator.slice(0, i);
        }

        public static Iterator takeWhile(Iterator iterator, Function1 function1) {
            return new AbstractIterator<A>(iterator, function1) { // from class: scala.collection.Iterator$$anon$16

                /* renamed from: hd */
                private A f1514hd;
                private boolean hdDefined = false;
                private final Function1 p$3;
                private Iterator<A> tail;

                /* JADX WARN: Multi-variable type inference failed */
                {
                    this.p$3 = function1;
                    this.tail = iterator;
                }

                /* renamed from: hd */
                private A m193hd() {
                    return this.f1514hd;
                }

                private boolean hdDefined() {
                    return this.hdDefined;
                }

                private void hdDefined_$eq(boolean z) {
                    this.hdDefined = z;
                }

                private void hd_$eq(A a) {
                    this.f1514hd = a;
                }

                private Iterator<A> tail() {
                    return this.tail;
                }

                private void tail_$eq(Iterator<A> iterator2) {
                    this.tail = iterator2;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    boolean z = true;
                    if (!hdDefined()) {
                        if (tail().hasNext()) {
                            hd_$eq(tail().next());
                            if (BoxesRunTime.unboxToBoolean(this.p$3.apply(m193hd()))) {
                                hdDefined_$eq(true);
                            } else {
                                tail_$eq(Iterator$.MODULE$.empty());
                            }
                            if (hdDefined()) {
                                z = true;
                            }
                        }
                        z = false;
                    }
                    return z;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // scala.collection.Iterator
                public A next() {
                    Nothing$ nothing$;
                    if (hasNext()) {
                        hdDefined_$eq(false);
                        nothing$ = m193hd();
                    } else {
                        nothing$ = Iterator$.MODULE$.empty().next();
                    }
                    return nothing$;
                }
            };
        }

        public static Iterator toIterator(Iterator iterator) {
            return iterator;
        }

        public static Stream toStream(Iterator iterator) {
            Stream.Cons cons;
            if (iterator.hasNext()) {
                Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
                cons = new Stream.Cons(iterator.next(), new Iterator$$anonfun$toStream$1(iterator));
            } else {
                Stream$ stream$ = Stream$.MODULE$;
                cons = Stream$Empty$.MODULE$;
            }
            return cons;
        }

        public static String toString(Iterator iterator) {
            return new StringBuilder().append(iterator.hasNext() ? "non-empty" : "empty").append((Object) " iterator").toString();
        }

        public static Traversable toTraversable(Iterator iterator) {
            return iterator.toStream();
        }

        public static Iterator withFilter(Iterator iterator, Function1 function1) {
            return iterator.filter(function1);
        }

        public static Iterator zip(Iterator iterator, Iterator iterator2) {
            return new AbstractIterator<Tuple2<A, B>>(iterator, iterator2) { // from class: scala.collection.Iterator$$anon$19
                private final /* synthetic */ Iterator $outer;
                private final Iterator that$3;

                {
                    Objects.requireNonNull(iterator);
                    this.$outer = iterator;
                    this.that$3 = iterator2;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return this.$outer.hasNext() && this.that$3.hasNext();
                }

                @Override // scala.collection.Iterator
                public Tuple2<A, B> next() {
                    return new Tuple2<>(this.$outer.next(), this.that$3.next());
                }
            };
        }

        public static Iterator zipAll(Iterator iterator, Iterator iterator2, Object obj, Object obj2) {
            return new AbstractIterator<Tuple2<A1, B1>>(iterator, iterator2, obj, obj2) { // from class: scala.collection.Iterator$$anon$22
                private final /* synthetic */ Iterator $outer;
                private final Iterator that$4;
                private final Object thatElem$1;
                private final Object thisElem$1;

                {
                    Objects.requireNonNull(iterator);
                    this.$outer = iterator;
                    this.that$4 = iterator2;
                    this.thisElem$1 = obj;
                    this.thatElem$1 = obj2;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return this.$outer.hasNext() || this.that$4.hasNext();
                }

                @Override // scala.collection.Iterator
                public Tuple2<A1, B1> next() {
                    return this.$outer.hasNext() ? this.that$4.hasNext() ? new Tuple2(this.$outer.next(), this.that$4.next()) : new Tuple2(this.$outer.next(), this.thatElem$1) : this.that$4.hasNext() ? new Tuple2(this.thisElem$1, this.that$4.next()) : (Tuple2) Iterator$.MODULE$.empty().next();
                }
            };
        }

        public static Iterator zipWithIndex(Iterator iterator) {
            return new AbstractIterator<Tuple2<A, Object>>(iterator) { // from class: scala.collection.Iterator$$anon$21
                private final /* synthetic */ Iterator $outer;
                private int idx = 0;

                {
                    Objects.requireNonNull(iterator);
                    this.$outer = iterator;
                }

                private int idx() {
                    return this.idx;
                }

                private void idx_$eq(int i) {
                    this.idx = i;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return this.$outer.hasNext();
                }

                @Override // scala.collection.Iterator
                public Tuple2<A, Object> next() {
                    Tuple2<A, Object> tuple2 = new Tuple2<>(this.$outer.next(), BoxesRunTime.boxToInteger(idx()));
                    idx_$eq(idx() + 1);
                    return tuple2;
                }
            };
        }
    }

    <B> Iterator<B> $plus$plus(Function0<GenTraversableOnce<B>> function0);

    BufferedIterator<A> buffered();

    <B> Iterator<B> collect(PartialFunction<A, B> partialFunction);

    boolean contains(Object obj);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    <B> void copyToArray(Object obj, int i, int i2);

    <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<A, B, Object> function2);

    Iterator<A> drop(int i);

    Iterator<A> dropWhile(Function1<A, Object> function1);

    Tuple2<Iterator<A>, Iterator<A>> duplicate();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    boolean exists(Function1<A, Object> function1);

    Iterator<A> filter(Function1<A, Object> function1);

    Iterator<A> filterNot(Function1<A, Object> function1);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    Option<A> find(Function1<A, Object> function1);

    <B> Iterator<B> flatMap(Function1<A, GenTraversableOnce<B>> function1);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    boolean forall(Function1<A, Object> function1);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    <U> void foreach(Function1<A, U> function1);

    <B> Iterator<A>.GroupedIterator<B> grouped(int i);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    boolean hasDefiniteSize();

    boolean hasNext();

    <B> int indexOf(B b);

    int indexWhere(Function1<A, Object> function1);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    boolean isEmpty();

    @Override // scala.collection.GenTraversableOnce
    boolean isTraversableAgain();

    int length();

    <B> Iterator<B> map(Function1<A, B> function1);

    A next();

    <A1> Iterator<A1> padTo(int i, A1 a1);

    Tuple2<Iterator<A>, Iterator<A>> partition(Function1<A, Object> function1);

    <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2);

    boolean sameElements(Iterator<?> iterator);

    <B> Iterator<B> scanLeft(B b, Function2<B, A, B> function2);

    <B> Iterator<B> scanRight(B b, Function2<A, B, B> function2);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Iterator<A> seq();

    Iterator<A> slice(int i, int i2);

    <B> Iterator<A>.GroupedIterator<B> sliding(int i, int i2);

    <B> int sliding$default$2();

    Tuple2<Iterator<A>, Iterator<A>> span(Function1<A, Object> function1);

    Iterator<A> take(int i);

    Iterator<A> takeWhile(Function1<A, Object> function1);

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    Iterator<A> toIterator();

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    Stream<A> toStream();

    String toString();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    Traversable<A> toTraversable();

    Iterator<A> withFilter(Function1<A, Object> function1);

    <B> Iterator<Tuple2<A, B>> zip(Iterator<B> iterator);

    <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1);

    Iterator<Tuple2<A, Object>> zipWithIndex();
}
