package scala.collection;

import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\r\u001deaB\u0001\u0003!\u0003\r\na\u0002\u0002\u0013\u000f\u0016tGK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cWM\u0003\u0002\u0004\t\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\t7M\u0011\u0001!\u0003\t\u0003\u0015-i\u0011\u0001B\u0005\u0003\u0019\u0011\u00111!\u00118z\u0011\u0015q\u0001A\"\u0001\u0010\u0003\u001d1wN]3bG\",\"\u0001\u0005\u0012\u0015\u0005E!\u0002C\u0001\u0006\u0013\u0013\t\u0019BA\u0001\u0003V]&$\b\"B\u000b\u000e\u0001\u00041\u0012!\u00014\u0011\t)9\u0012$I\u0005\u00031\u0011\u0011\u0011BR;oGRLwN\\\u0019\u0011\u0005iYB\u0002\u0001\u0003\u00079\u0001!)\u0019A\u000f\u0003\u0003\u0005\u000b\"AH\u0005\u0011\u0005)y\u0012B\u0001\u0011\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"A\u0007\u0012\u0005\u000b\rj!\u0019A\u000f\u0003\u0003UCQ!\n\u0001\u0007\u0002\u0019\nq\u0002[1t\t\u00164\u0017N\\5uKNK'0Z\u000b\u0002OA\u0011!\u0002K\u0005\u0003S\u0011\u0011qAQ8pY\u0016\fg\u000eC\u0003,\u0001\u0019\u0005A&A\u0002tKF,\u0012!\f\t\u0004]=JR\"\u0001\u0002\n\u0005A\u0012!a\u0004+sCZ,'o]1cY\u0016|enY3\t\u000bI\u0002a\u0011A\u001a\u0002\tML'0Z\u000b\u0002iA\u0011!\"N\u0005\u0003m\u0011\u00111!\u00138u\u0011\u0015A\u0004A\"\u0001'\u0003\u001dI7/R7qifDQA\u000f\u0001\u0007\u0002\u0019\n\u0001B\\8o\u000b6\u0004H/\u001f\u0005\u0006y\u00011\tAJ\u0001\u0013SN$&/\u0019<feN\f'\r\\3BO\u0006Lg\u000eC\u0003?\u0001\u0019\u0005q(\u0001\u0004sK\u0012,8-Z\u000b\u0003\u0001\n#\"!Q#\u0011\u0005i\u0011E!B\">\u0005\u0004!%AA!2#\tI\u0012\u0002C\u0003G{\u0001\u0007q)\u0001\u0002paB)!\u0002S!B\u0003&\u0011\u0011\n\u0002\u0002\n\rVt7\r^5p]JBQa\u0013\u0001\u0007\u00021\u000bAB]3ek\u000e,w\n\u001d;j_:,\"!\u0014*\u0015\u00059\u001b\u0006c\u0001\u0006P#&\u0011\u0001\u000b\u0002\u0002\u0007\u001fB$\u0018n\u001c8\u0011\u0005i\u0011F!B\"K\u0005\u0004!\u0005\"\u0002$K\u0001\u0004!\u0006#\u0002\u0006I#F\u000b\u0006\"\u0002,\u0001\r\u00039\u0016\u0001\u00024pY\u0012,\"\u0001W.\u0015\u0005esFC\u0001.]!\tQ2\fB\u0003D+\n\u0007A\tC\u0003G+\u0002\u0007Q\fE\u0003\u000b\u0011jS&\fC\u0003`+\u0002\u0007!,A\u0001{\u0011\u0015\t\u0007A\"\u0001c\u0003)!C-\u001b<%G>dwN\\\u000b\u0003G\u001a$\"\u0001\u001a6\u0015\u0005\u0015D\u0007C\u0001\u000eg\t\u00159\u0007M1\u0001\u001e\u0005\u0005\u0011\u0005\"\u0002$a\u0001\u0004I\u0007#\u0002\u0006IKf)\u0007\"B0a\u0001\u0004)\u0007\"\u00027\u0001\r\u0003i\u0017!\u0004\u0013d_2|g\u000e\n2tY\u0006\u001c\b.\u0006\u0002ocR\u0011q\u000e\u001e\u000b\u0003aJ\u0004\"AG9\u0005\u000b\u001d\\'\u0019A\u000f\t\u000b\u0019[\u0007\u0019A:\u0011\u000b)A\u0015\u0004\u001d9\t\u000b}[\u0007\u0019\u00019\t\u000bY\u0004a\u0011A<\u0002\u0011\u0019|G\u000e\u001a'fMR,\"\u0001_>\u0015\u0005etHC\u0001>}!\tQ2\u0010B\u0003hk\n\u0007Q\u0004C\u0003Gk\u0002\u0007Q\u0010E\u0003\u000b\u0011jL\"\u0010C\u0003`k\u0002\u0007!\u0010C\u0004\u0002\u0002\u00011\t!a\u0001\u0002\u0013\u0019|G\u000e\u001a*jO\"$X\u0003BA\u0003\u0003\u0017!B!a\u0002\u0002\u0012Q!\u0011\u0011BA\u0007!\rQ\u00121\u0002\u0003\u0006O~\u0014\r!\b\u0005\u0007\r~\u0004\r!a\u0004\u0011\u000f)A\u0015$!\u0003\u0002\n!1ql a\u0001\u0003\u0013Aq!!\u0006\u0001\r\u0003\t9\"A\u0005bO\u001e\u0014XmZ1uKV!\u0011\u0011DA\u0010)\u0011\tY\"!\f\u0015\r\u0005u\u0011\u0011EA\u0014!\rQ\u0012q\u0004\u0003\u0007O\u0006M!\u0019A\u000f\t\u0011\u0005\r\u00121\u0003a\u0001\u0003K\tQa]3r_B\u0004rA\u0003%\u0002\u001ee\ti\u0002\u0003\u0005\u0002*\u0005M\u0001\u0019AA\u0016\u0003\u0019\u0019w.\u001c2paBA!\u0002SA\u000f\u0003;\ti\u0002\u0003\u0005`\u0003'!\t\u0019AA\u0018!\u0015Q\u0011\u0011GA\u000f\u0013\r\t\u0019\u0004\u0002\u0002\ty\tLh.Y7f}!9\u0011q\u0007\u0001\u0007\u0002\u0005e\u0012a\u0003:fIV\u001cWMU5hQR,B!a\u000f\u0002@Q!\u0011QHA!!\rQ\u0012q\b\u0003\u0007O\u0006U\"\u0019\u0001#\t\u000f\u0019\u000b)\u00041\u0001\u0002DA9!\u0002S\r\u0002>\u0005u\u0002bBA$\u0001\u0019\u0005\u0011\u0011J\u0001\u0011e\u0016$WoY3MK\u001a$x\n\u001d;j_:,B!a\u0013\u0002RQ!\u0011QJA*!\u0011Qq*a\u0014\u0011\u0007i\t\t\u0006\u0002\u0004h\u0003\u000b\u0012\r\u0001\u0012\u0005\b\r\u0006\u0015\u0003\u0019AA+!\u001dQ\u0001*a\u0014\u001a\u0003\u001fBq!!\u0017\u0001\r\u0003\tY&A\tsK\u0012,8-\u001a*jO\"$x\n\u001d;j_:,B!!\u0018\u0002dQ!\u0011qLA3!\u0011Qq*!\u0019\u0011\u0007i\t\u0019\u0007\u0002\u0004h\u0003/\u0012\r\u0001\u0012\u0005\b\r\u0006]\u0003\u0019AA4!\u001dQ\u0001*GA1\u0003CBq!a\u001b\u0001\r\u0003\ti'A\u0003d_VtG\u000fF\u00025\u0003_B\u0001\"!\u001d\u0002j\u0001\u0007\u00111O\u0001\u0002aB!!bF\r(\u0011\u001d\t9\b\u0001D\u0001\u0003s\n1a];n+\u0011\tY(a \u0015\t\u0005u\u0014\u0011\u0011\t\u00045\u0005}DAB\"\u0002v\t\u0007A\t\u0003\u0005\u0002\u0004\u0006U\u00049AAC\u0003\rqW/\u001c\t\u0007\u0003\u000f\u000bi)! \u000f\u0007)\tI)C\u0002\u0002\f\u0012\tq\u0001]1dW\u0006<W-\u0003\u0003\u0002\u0010\u0006E%a\u0002(v[\u0016\u0014\u0018n\u0019\u0006\u0004\u0003\u0017#\u0001bBAK\u0001\u0019\u0005\u0011qS\u0001\baJ|G-^2u+\u0011\tI*!(\u0015\t\u0005m\u0015q\u0014\t\u00045\u0005uEAB\"\u0002\u0014\n\u0007A\t\u0003\u0005\u0002\u0004\u0006M\u00059AAQ!\u0019\t9)!$\u0002\u001c\"9\u0011Q\u0015\u0001\u0007\u0002\u0005\u001d\u0016aA7j]V!\u0011\u0011VA\\)\rI\u00121\u0016\u0005\t\u0003[\u000b\u0019\u000bq\u0001\u00020\u0006\u0019qN\u001d3\u0011\r\u0005\u001d\u0015\u0011WA[\u0013\u0011\t\u0019,!%\u0003\u0011=\u0013H-\u001a:j]\u001e\u00042AGA\\\t\u0019\u0019\u00151\u0015b\u0001\t\"9\u00111\u0018\u0001\u0007\u0002\u0005u\u0016aA7bqV!\u0011qXAd)\rI\u0012\u0011\u0019\u0005\t\u0003[\u000bI\fq\u0001\u0002DB1\u0011qQAY\u0003\u000b\u00042AGAd\t\u0019\u0019\u0015\u0011\u0018b\u0001\t\"9\u00111\u001a\u0001\u0007\u0002\u00055\u0017!B7bq\nKX\u0003BAh\u00037$B!!5\u0002^R\u0019\u0011$a5\t\u0011\u0005U\u0017\u0011\u001aa\u0002\u0003/\f1aY7q!\u0019\t9)!-\u0002ZB\u0019!$a7\u0005\r\u001d\fIM1\u0001\u001e\u0011\u001d)\u0012\u0011\u001aa\u0001\u0003?\u0004RAC\f\u001a\u00033Dq!a9\u0001\r\u0003\t)/A\u0003nS:\u0014\u00150\u0006\u0003\u0002h\u0006EH\u0003BAu\u0003g$2!GAv\u0011!\t).!9A\u0004\u00055\bCBAD\u0003c\u000by\u000fE\u0002\u001b\u0003c$aaZAq\u0005\u0004i\u0002bB\u000b\u0002b\u0002\u0007\u0011Q\u001f\t\u0006\u0015]I\u0012q\u001e\u0005\b\u0003s\u0004a\u0011AA~\u0003\u00191wN]1mYR\u0019q%!@\t\u0011\u0005}\u0018q\u001fa\u0001\u0003g\nA\u0001\u001d:fI\"9!1\u0001\u0001\u0007\u0002\t\u0015\u0011AB3ySN$8\u000fF\u0002(\u0005\u000fA\u0001\"a@\u0003\u0002\u0001\u0007\u00111\u000f\u0005\b\u0005\u0017\u0001a\u0011\u0001B\u0007\u0003\u00111\u0017N\u001c3\u0015\t\t=!\u0011\u0003\t\u0004\u0015=K\u0002\u0002CA��\u0005\u0013\u0001\r!a\u001d\t\u000f\tU\u0001A\"\u0001\u0003\u0018\u0005Y1m\u001c9z)>\f%O]1z+\u0011\u0011IBa\n\u0015\u0007E\u0011Y\u0002\u0003\u0005\u0003\u001e\tM\u0001\u0019\u0001B\u0010\u0003\tA8\u000fE\u0003\u000b\u0005C\u0011)#C\u0002\u0003$\u0011\u0011Q!\u0011:sCf\u00042A\u0007B\u0014\t\u00199'1\u0003b\u0001\t\"9!Q\u0003\u0001\u0007\u0002\t-R\u0003\u0002B\u0017\u0005k!R!\u0005B\u0018\u0005oA\u0001B!\b\u0003*\u0001\u0007!\u0011\u0007\t\u0006\u0015\t\u0005\"1\u0007\t\u00045\tUBAB4\u0003*\t\u0007A\tC\u0004\u0003:\t%\u0002\u0019\u0001\u001b\u0002\u000bM$\u0018M\u001d;\t\u000f\tU\u0001A\"\u0001\u0003>U!!q\bB$)\u001d\t\"\u0011\tB%\u0005\u0017B\u0001B!\b\u0003<\u0001\u0007!1\t\t\u0006\u0015\t\u0005\"Q\t\t\u00045\t\u001dCAB4\u0003<\t\u0007A\tC\u0004\u0003:\tm\u0002\u0019\u0001\u001b\t\u000f\t5#1\ba\u0001i\u0005\u0019A.\u001a8\t\u000f\tE\u0003A\"\u0001\u0003T\u0005AQn[*ue&tw\r\u0006\u0005\u0003V\t\r$Q\rB5!\u0011\u00119F!\u0018\u000f\u0007)\u0011I&C\u0002\u0003\\\u0011\ta\u0001\u0015:fI\u00164\u0017\u0002\u0002B0\u0005C\u0012aa\u0015;sS:<'b\u0001B.\t!A!\u0011\bB(\u0001\u0004\u0011)\u0006\u0003\u0005\u0003h\t=\u0003\u0019\u0001B+\u0003\r\u0019X\r\u001d\u0005\t\u0005W\u0012y\u00051\u0001\u0003V\u0005\u0019QM\u001c3\t\u000f\tE\u0003A\"\u0001\u0003pQ!!Q\u000bB9\u0011!\u00119G!\u001cA\u0002\tU\u0003b\u0002B)\u0001\u0019\u0005!QO\u000b\u0003\u0005+BqA!\u001f\u0001\r\u0003\u0011Y(A\u0004u_\u0006\u0013(/Y=\u0016\t\tu$1\u0011\u000b\u0005\u0005\u007f\u0012)\tE\u0003\u000b\u0005C\u0011\t\tE\u0002\u001b\u0005\u0007#aa\u0011B<\u0005\u0004!\u0005B\u0003BD\u0005o\n\t\u0011q\u0001\u0003\n\u0006QQM^5eK:\u001cW\rJ\u0019\u0011\r\t-%\u0011\u0013BA\u001b\t\u0011iIC\u0002\u0003\u0010\u0012\tqA]3gY\u0016\u001cG/\u0003\u0003\u0003\u0014\n5%\u0001C\"mCN\u001cH+Y4\t\u000f\t]\u0005A\"\u0001\u0003\u001a\u00061Ao\u001c'jgR,\"Aa'\u0011\u000b\u0005\u001d%QT\r\n\t\t}\u0015\u0011\u0013\u0002\u0005\u0019&\u001cH\u000fC\u0004\u0003$\u00021\tA!*\u0002\u0019Q|\u0017J\u001c3fq\u0016$7+Z9\u0016\u0005\t\u001d\u0006#\u0002BU\u0005_KRB\u0001BV\u0015\r\u0011iKA\u0001\nS6lW\u000f^1cY\u0016LAA!-\u0003,\nQ\u0011J\u001c3fq\u0016$7+Z9\t\u000f\tU\u0006A\"\u0001\u00038\u0006AAo\\*ue\u0016\fW.\u0006\u0002\u0003:B)\u0011q\u0011B^3%!!QXAI\u0005\u0019\u0019FO]3b[\"9!\u0011\u0019\u0001\u0007\u0002\t\r\u0017A\u0003;p\u0013R,'/\u0019;peV\u0011!Q\u0019\t\u0005]\t\u001d\u0017$C\u0002\u0003J\n\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\b\u0005\u001b\u0004a\u0011\u0001Bh\u0003!!xNQ;gM\u0016\u0014X\u0003\u0002Bi\u0005C,\"Aa5\u0011\r\tU'1\u001cBp\u001b\t\u00119NC\u0002\u0003Z\n\tq!\\;uC\ndW-\u0003\u0003\u0003^\n]'A\u0002\"vM\u001a,'\u000fE\u0002\u001b\u0005C$aa\u0011Bf\u0005\u0004!\u0005b\u0002Bs\u0001\u0019\u0005!q]\u0001\u000ei>$&/\u0019<feN\f'\r\\3\u0016\u0005\t%\b\u0003\u0002\u0018\u0003lfI1A!<\u0003\u000599UM\u001c+sCZ,'o]1cY\u0016DqA!=\u0001\r\u0003\u0011\u00190\u0001\u0006u_&#XM]1cY\u0016,\"A!>\u0011\t9\u001290G\u0005\u0004\u0005s\u0014!aC$f]&#XM]1cY\u0016DqA!@\u0001\r\u0003\u0011y0A\u0003u_N+\u0017/\u0006\u0002\u0004\u0002A!afa\u0001\u001a\u0013\r\u0019)A\u0001\u0002\u0007\u000f\u0016t7+Z9\t\u000f\r%\u0001A\"\u0001\u0004\f\u0005)Ao\\*fiV!1QBB\f+\t\u0019y\u0001E\u0003/\u0007#\u0019)\"C\u0002\u0004\u0014\t\u0011aaR3o'\u0016$\bc\u0001\u000e\u0004\u0018\u001111ia\u0002C\u0002\u0011Cqaa\u0007\u0001\r\u0003\u0019i\"A\u0003u_6\u000b\u0007/\u0006\u0004\u0004 \r%2q\u0006\u000b\u0005\u0007C\u0019\u0019\u0004E\u0004/\u0007G\u00199c!\f\n\u0007\r\u0015\"A\u0001\u0004HK:l\u0015\r\u001d\t\u00045\r%BaBB\u0016\u00073\u0011\r!\b\u0002\u0002\u0017B\u0019!da\f\u0005\u000f\rE2\u0011\u0004b\u0001;\t\ta\u000b\u0003\u0005\u00046\re\u00019AB\u001c\u0003\t)g\u000fE\u0004\u0003X\re\u0012d!\u0010\n\t\rm\"\u0011\r\u0002\u0011I1,7o\u001d\u0013d_2|g\u000e\n7fgN\u0004rACB \u0007O\u0019i#C\u0002\u0004B\u0011\u0011a\u0001V;qY\u0016\u0014\u0004bBB#\u0001\u0019\u00051qI\u0001\ti>4Vm\u0019;peV\u00111\u0011\n\t\u0006\u0003\u000f\u001bY%G\u0005\u0005\u0007\u001b\n\tJ\u0001\u0004WK\u000e$xN\u001d\u0005\b\u0007#\u0002a\u0011AB*\u0003\t!x.\u0006\u0003\u0004V\reC\u0003BB,\u0007o\u0002RAGB-\u0007G\"\u0001ba\u0017\u0004P\t\u00071Q\f\u0002\u0004\u0007>dWcA\u000f\u0004`\u001191\u0011MB-\u0005\u0004i\"!A0+\u0007e\u0019)g\u000b\u0002\u0004hA!1\u0011NB:\u001b\t\u0019YG\u0003\u0003\u0004n\r=\u0014!C;oG\",7m[3e\u0015\r\u0019\t\bB\u0001\u000bC:tw\u000e^1uS>t\u0017\u0002BB;\u0007W\u0012\u0011#\u001e8dQ\u0016\u001c7.\u001a3WCJL\u0017M\\2f\u0011!\u0019Iha\u0014A\u0004\rm\u0014aA2cMBA1QPBB=e\u00199&\u0004\u0002\u0004��)\u00191\u0011\u0011\u0002\u0002\u000f\u001d,g.\u001a:jG&!1QQB@\u00051\u0019\u0015M\u001c\"vS2$gI]8n\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/GenTraversableOnce.class */
public interface GenTraversableOnce<A> {
    <B> B $colon$bslash(B b, Function2<A, B, B> function2);

    <B> B $div$colon(B b, Function2<B, A, B> function2);

    <B> B aggregate(Function0<B> function0, Function2<B, A, B> function2, Function2<B, B, B> function22);

    <B> void copyToArray(Object obj);

    <B> void copyToArray(Object obj, int i);

    <B> void copyToArray(Object obj, int i, int i2);

    int count(Function1<A, Object> function1);

    boolean exists(Function1<A, Object> function1);

    Option<A> find(Function1<A, Object> function1);

    <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2);

    <B> B foldLeft(B b, Function2<B, A, B> function2);

    <B> B foldRight(B b, Function2<A, B, B> function2);

    boolean forall(Function1<A, Object> function1);

    <U> void foreach(Function1<A, U> function1);

    boolean hasDefiniteSize();

    boolean isEmpty();

    boolean isTraversableAgain();

    <A1> A max(Ordering<A1> ordering);

    <B> A maxBy(Function1<A, B> function1, Ordering<B> ordering);

    <A1> A min(Ordering<A1> ordering);

    <B> A minBy(Function1<A, B> function1, Ordering<B> ordering);

    String mkString();

    String mkString(String str);

    String mkString(String str, String str2, String str3);

    boolean nonEmpty();

    <A1> A1 product(Numeric<A1> numeric);

    <A1> A1 reduce(Function2<A1, A1, A1> function2);

    <B> Option<B> reduceLeftOption(Function2<B, A, B> function2);

    <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2);

    <B> B reduceRight(Function2<A, B, B> function2);

    <B> Option<B> reduceRightOption(Function2<A, B, B> function2);

    TraversableOnce<A> seq();

    int size();

    <A1> A1 sum(Numeric<A1> numeric);

    /* renamed from: to */
    <Col> Col mo1to(CanBuildFrom<Nothing$, A, Col> canBuildFrom);

    <A1> Object toArray(ClassTag<A1> classTag);

    <A1> Buffer<A1> toBuffer();

    IndexedSeq<A> toIndexedSeq();

    GenIterable<A> toIterable();

    Iterator<A> toIterator();

    List<A> toList();

    <K, V> GenMap<K, V> toMap(Predef$$less$colon$less<A, Tuple2<K, V>> predef$$less$colon$less);

    GenSeq<A> toSeq();

    <A1> GenSet<A1> toSet();

    Stream<A> toStream();

    GenTraversable<A> toTraversable();

    Vector<A> toVector();
}
