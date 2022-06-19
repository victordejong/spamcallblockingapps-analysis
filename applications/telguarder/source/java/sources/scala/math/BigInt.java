package scala.math;

import java.math.BigInteger;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.ShortCompanionObject;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.immutable.NumericRange;
import scala.collection.immutable.Range$BigInt$;
import scala.math.ScalaNumericAnyConversions;
import scala.reflect.ScalaSignature;
import scala.runtime.ScalaRunTime$;
import scala.util.Random;
@ScalaSignature(bytes = "\u0006\u0001\rMs!B\u0001\u0003\u0011\u00039\u0011A\u0002\"jO&sGO\u0003\u0002\u0004\t\u0005!Q.\u0019;i\u0015\u0005)\u0011!B:dC2\f7\u0001\u0001\t\u0003\u0011%i\u0011A\u0001\u0004\u0006\u0015\tA\ta\u0003\u0002\u0007\u0005&<\u0017J\u001c;\u0014\u0007%a\u0001\u0003\u0005\u0002\u000e\u001d5\tA!\u0003\u0002\u0010\t\t1\u0011I\\=SK\u001a\u0004\"!D\t\n\u0005I!!\u0001D*fe&\fG.\u001b>bE2,\u0007\"\u0002\u000b\n\t\u0003)\u0012A\u0002\u001fj]&$h\bF\u0001\b\u0011\u001d9\u0012B1A\u0005\na\t\u0011\"\\5o\u0007\u0006\u001c\u0007.\u001a3\u0016\u0003e\u0001\"!\u0004\u000e\n\u0005m!!aA%oi\"1Q$\u0003Q\u0001\ne\t!\"\\5o\u0007\u0006\u001c\u0007.\u001a3!\u0011\u001dy\u0012B1A\u0005\na\t\u0011\"\\1y\u0007\u0006\u001c\u0007.\u001a3\t\r\u0005J\u0001\u0015!\u0003\u001a\u0003)i\u0017\r_\"bG\",G\r\t\u0005\bG%\u0011\r\u0011\"\u0003%\u0003\u0015\u0019\u0017m\u00195f+\u0005)\u0003cA\u0007'Q%\u0011q\u0005\u0002\u0002\u0006\u0003J\u0014\u0018-\u001f\t\u0003\u0011%2AA\u0003\u0002\u0003UM!\u0011f\u000b\u0018\u0011!\tAA&\u0003\u0002.\u0005\tY1kY1mC:+XNY3s!\tAq&\u0003\u00021\u0005\t92kY1mC:+X.\u001a:jG\u000e{gN^3sg&|gn\u001d\u0005\te%\u0012)\u0019!C\u0001g\u0005Q!-[4J]R,w-\u001a:\u0016\u0003Q\u0002\"!N\u001d\u000e\u0003YR!aA\u001c\u000b\u0003a\nAA[1wC&\u0011!H\u000e\u0002\u000b\u0005&<\u0017J\u001c;fO\u0016\u0014\b\u0002\u0003\u001f*\u0005\u0003\u0005\u000b\u0011\u0002\u001b\u0002\u0017\tLw-\u00138uK\u001e,'\u000f\t\u0005\u0006)%\"\tA\u0010\u000b\u0003Q}BQAM\u001fA\u0002QBQ!Q\u0015\u0005B\t\u000b\u0001\u0002[1tQ\u000e{G-\u001a\u000b\u00023!)A)\u000bC!\u000b\u00061Q-];bYN$\"AR%\u0011\u000559\u0015B\u0001%\u0005\u0005\u001d\u0011un\u001c7fC:DQAS\"A\u0002-\u000bA\u0001\u001e5biB\u0011Q\u0002T\u0005\u0003\u001b\u0012\u00111!\u00118z\u0011\u0015y\u0015\u0006\"\u0011Q\u0003-I7OV1mS\u0012\u0014\u0015\u0010^3\u0016\u0003\u0019CQAU\u0015\u0005BA\u000bA\"[:WC2LGm\u00155peRDQ\u0001V\u0015\u0005BA\u000b1\"[:WC2LGm\u00115be\")a+\u000bC!!\u0006Q\u0011n\u001d,bY&$\u0017J\u001c;\t\u000baKC\u0011\u0001)\u0002\u0017%\u001ch+\u00197jI2{gn\u001a\u0005\u00065&\"\t\u0001U\u0001\rSN4\u0016\r\\5e\r2|\u0017\r\u001e\u0005\u00069&\"\t\u0001U\u0001\u000eSN4\u0016\r\\5e\t>,(\r\\3\t\u000byKC\u0011\u0002)\u0002#\tLG\u000fT3oORDwJ^3sM2|w\u000fC\u0003aS\u0011\u0005\u0011-A\u0004jg^Cw\u000e\\3\u0015\u0003\u0019CQaY\u0015\u0005\u0002\u0011\f!\"\u001e8eKJd\u00170\u001b8h)\u0005!\u0004\"\u0002#*\t\u00031GC\u0001$h\u0011\u0015QU\r1\u0001)\u0011\u0015I\u0017\u0006\"\u0001k\u0003\u001d\u0019w.\u001c9be\u0016$\"!G6\t\u000b)C\u0007\u0019\u0001\u0015\t\u000b5LC\u0011\u00018\u0002\u0011\u0011bWm]:%KF$\"AR8\t\u000b)c\u0007\u0019\u0001\u0015\t\u000bELC\u0011\u0001:\u0002\u0017\u0011:'/Z1uKJ$S-\u001d\u000b\u0003\rNDQA\u00139A\u0002!BQ!^\u0015\u0005\u0002Y\fQ\u0001\n7fgN$\"AR<\t\u000b)#\b\u0019\u0001\u0015\t\u000beLC\u0011\u0001>\u0002\u0011\u0011:'/Z1uKJ$\"AR>\t\u000b)C\b\u0019\u0001\u0015\t\u000buLC\u0011\u0001@\u0002\u000b\u0011\u0002H.^:\u0015\u0005!z\b\"\u0002&}\u0001\u0004A\u0003bBA\u0002S\u0011\u0005\u0011QA\u0001\u0007I5Lg.^:\u0015\u0007!\n9\u0001\u0003\u0004K\u0003\u0003\u0001\r\u0001\u000b\u0005\b\u0003\u0017IC\u0011AA\u0007\u0003\u0019!C/[7fgR\u0019\u0001&a\u0004\t\r)\u000bI\u00011\u0001)\u0011\u001d\t\u0019\"\u000bC\u0001\u0003+\tA\u0001\n3jmR\u0019\u0001&a\u0006\t\r)\u000b\t\u00021\u0001)\u0011\u001d\tY\"\u000bC\u0001\u0003;\t\u0001\u0002\n9fe\u000e,g\u000e\u001e\u000b\u0004Q\u0005}\u0001B\u0002&\u0002\u001a\u0001\u0007\u0001\u0006C\u0004\u0002$%\"\t!!\n\u0002\u0019\u0011\"\u0017N\u001e\u0013qKJ\u001cWM\u001c;\u0015\t\u0005\u001d\u0012Q\u0006\t\u0006\u001b\u0005%\u0002\u0006K\u0005\u0004\u0003W!!A\u0002+va2,'\u0007\u0003\u0004K\u0003C\u0001\r\u0001\u000b\u0005\b\u0003cIC\u0011AA\u001a\u0003)!C.Z:tI1,7o\u001d\u000b\u0004Q\u0005U\u0002bBA\u001c\u0003_\u0001\r!G\u0001\u0002]\"9\u00111H\u0015\u0005\u0002\u0005u\u0012\u0001\u0005\u0013he\u0016\fG/\u001a:%OJ,\u0017\r^3s)\rA\u0013q\b\u0005\b\u0003o\tI\u00041\u0001\u001a\u0011\u001d\t\u0019%\u000bC\u0001\u0003\u000b\nA\u0001J1naR\u0019\u0001&a\u0012\t\r)\u000b\t\u00051\u0001)\u0011\u001d\tY%\u000bC\u0001\u0003\u001b\nA\u0001\n2beR\u0019\u0001&a\u0014\t\r)\u000bI\u00051\u0001)\u0011\u001d\t\u0019&\u000bC\u0001\u0003+\n1\u0001J;q)\rA\u0013q\u000b\u0005\u0007\u0015\u0006E\u0003\u0019\u0001\u0015\t\u000f\u0005m\u0013\u0006\"\u0001\u0002^\u0005QA%Y7qIQLG\u000eZ3\u0015\u0007!\ny\u0006\u0003\u0004K\u00033\u0002\r\u0001\u000b\u0005\b\u0003GJC\u0011AA3\u0003\r97\r\u001a\u000b\u0004Q\u0005\u001d\u0004B\u0002&\u0002b\u0001\u0007\u0001\u0006C\u0004\u0002l%\"\t!!\u001c\u0002\u00075|G\rF\u0002)\u0003_BaASA5\u0001\u0004A\u0003bBA:S\u0011\u0005\u0011QO\u0001\u0004[&tGc\u0001\u0015\u0002x!1!*!\u001dA\u0002!Bq!a\u001f*\t\u0003\ti(A\u0002nCb$2\u0001KA@\u0011\u0019Q\u0015\u0011\u0010a\u0001Q!9\u00111Q\u0015\u0005\u0002\u0005\u0015\u0015a\u00019poR\u0019\u0001&a\"\t\u000f\u0005%\u0015\u0011\u0011a\u00013\u0005\u0019Q\r\u001f9\t\u000f\u00055\u0015\u0006\"\u0001\u0002\u0010\u00061Qn\u001c3Q_^$R\u0001KAI\u0003'Cq!!#\u0002\f\u0002\u0007\u0001\u0006C\u0004\u0002\u0016\u0006-\u0005\u0019\u0001\u0015\u0002\u00035Dq!!'*\t\u0003\tY*\u0001\u0006n_\u0012LeN^3sg\u0016$2\u0001KAO\u0011\u001d\t)*a&A\u0002!Bq!!)*\t\u0003\t\u0019+\u0001\u0007v]\u0006\u0014\u0018p\u0018\u0013nS:,8/F\u0001)\u0011\u001d\t9+\u000bC\u0001\u0003G\u000b1!\u00192t\u0011\u0019\tY+\u000bC\u00011\u000511/[4ok6Dq!a,*\t\u0003\t\u0019+\u0001\u0007v]\u0006\u0014\u0018p\u0018\u0013uS2$W\rC\u0004\u00024&\"\t!!.\u0002\u000fQ,7\u000f\u001e\"jiR\u0019a)a.\t\u000f\u0005]\u0012\u0011\u0017a\u00013!9\u00111X\u0015\u0005\u0002\u0005u\u0016AB:fi\nKG\u000fF\u0002)\u0003\u007fCq!a\u000e\u0002:\u0002\u0007\u0011\u0004C\u0004\u0002D&\"\t!!2\u0002\u0011\rdW-\u0019:CSR$2\u0001KAd\u0011\u001d\t9$!1A\u0002eAq!a3*\t\u0003\ti-A\u0004gY&\u0004()\u001b;\u0015\u0007!\ny\rC\u0004\u00028\u0005%\u0007\u0019A\r\t\r\u0005M\u0017\u0006\"\u0001\u0019\u00031awn^3tiN+GOQ5u\u0011\u0019\t9.\u000bC\u00011\u0005I!-\u001b;MK:<G\u000f\u001b\u0005\u0007\u00037LC\u0011\u0001\r\u0002\u0011\tLGoQ8v]RDq!a8*\t\u0003\t\t/A\bjgB\u0013xNY1cY\u0016\u0004&/[7f)\r1\u00151\u001d\u0005\b\u0003K\fi\u000e1\u0001\u001a\u0003%\u0019WM\u001d;bS:$\u0018\u0010C\u0004\u0002j&\"\t%a;\u0002\u0013\tLH/\u001a,bYV,GCAAw!\ri\u0011q^\u0005\u0004\u0003c$!\u0001\u0002\"zi\u0016Dq!!>*\t\u0003\n90\u0001\u0006tQ>\u0014HOV1mk\u0016$\"!!?\u0011\u00075\tY0C\u0002\u0002~\u0012\u0011Qa\u00155peRDqA!\u0001*\t\u0003\u0011\u0019!A\u0005dQ\u0006\u0014h+\u00197vKV\u0011!Q\u0001\t\u0004\u001b\t\u001d\u0011b\u0001B\u0005\t\t!1\t[1s\u0011\u0019\u0011i!\u000bC\u0001\u0005\u0006A\u0011N\u001c;WC2,X\rC\u0004\u0003\u0012%\"\tAa\u0005\u0002\u00131|gn\u001a,bYV,GC\u0001B\u000b!\ri!qC\u0005\u0004\u00053!!\u0001\u0002'p]\u001eDqA!\b*\t\u0003\u0011y\"\u0001\u0006gY>\fGOV1mk\u0016$\"A!\t\u0011\u00075\u0011\u0019#C\u0002\u0003&\u0011\u0011QA\u00127pCRDqA!\u000b*\t\u0003\u0011Y#A\u0006e_V\u0014G.\u001a,bYV,GC\u0001B\u0017!\ri!qF\u0005\u0004\u0005c!!A\u0002#pk\ndW\rC\u0004\u00036%\"\tAa\u000e\u0002\u000bUtG/\u001b7\u0015\r\te\"Q\fB1!\u0019\u0011YDa\u0013\u0003R9!!Q\bB$\u001b\t\u0011yD\u0003\u0003\u0003B\t\r\u0013!C5n[V$\u0018M\u00197f\u0015\r\u0011)\u0005B\u0001\u000bG>dG.Z2uS>t\u0017\u0002\u0002B%\u0005\u007f\tABT;nKJL7MU1oO\u0016LAA!\u0014\u0003P\tIQ\t_2mkNLg/\u001a\u0006\u0005\u0005\u0013\u0012y\u0004\u0005\u0003\u0003T\tecbA\u0007\u0003V%\u0019!q\u000b\u0003\u0002\u000fA\f7m[1hK&\u0019!Ba\u0017\u000b\u0007\t]C\u0001C\u0004\u0003`\tM\u0002\u0019\u0001\u0015\u0002\u0007\u0015tG\rC\u0005\u0003d\tM\u0002\u0013!a\u0001Q\u0005!1\u000f^3q\u0011\u001d\u00119'\u000bC\u0001\u0005S\n!\u0001^8\u0015\r\t-$\u0011\u000fB:!\u0019\u0011YD!\u001c\u0003R%!!q\u000eB(\u0005%Ien\u00197vg&4X\rC\u0004\u0003`\t\u0015\u0004\u0019\u0001\u0015\t\u0013\t\r$Q\rI\u0001\u0002\u0004A\u0003b\u0002B<S\u0011\u0005#\u0011P\u0001\ti>\u001cFO]5oOR\u0011!1\u0010\t\u0005\u0005{\u0012\u0019ID\u0002\u000e\u0005\u007fJ1A!!\u0005\u0003\u0019\u0001&/\u001a3fM&!!Q\u0011BD\u0005\u0019\u0019FO]5oO*\u0019!\u0011\u0011\u0003\t\u000f\t]\u0014\u0006\"\u0001\u0003\fR!!1\u0010BG\u0011\u001d\u0011yI!#A\u0002e\tQA]1eSbDqAa%*\t\u0003\u0011)*A\u0006u_\nKH/Z!se\u0006LXC\u0001BL!\u0011ia%!<\t\u0013\tm\u0015&%A\u0005\u0002\tu\u0015aD;oi&dG\u0005Z3gCVdG\u000f\n\u001a\u0016\u0005\t}%f\u0001\u0015\u0003\".\u0012!1\u0015\t\u0005\u0005K\u0013y+\u0004\u0002\u0003(*!!\u0011\u0016BV\u0003%)hn\u00195fG.,GMC\u0002\u0003.\u0012\t!\"\u00198o_R\fG/[8o\u0013\u0011\u0011\tLa*\u0003#Ut7\r[3dW\u0016$g+\u0019:jC:\u001cW\rC\u0005\u00036&\n\n\u0011\"\u0001\u0003\u001e\u0006aAo\u001c\u0013eK\u001a\fW\u000f\u001c;%e!9!\u0011X\u0005!\u0002\u0013)\u0013AB2bG\",\u0007\u0005\u0003\u0005\u0003>&\u0011\r\u0011\"\u00034\u0003!i\u0017N\\;t\u001f:,\u0007b\u0002Ba\u0013\u0001\u0006I\u0001N\u0001\n[&tWo](oK\u0002BqA!2\n\t\u0003\u00119-A\u0003baBd\u0017\u0010F\u0002)\u0005\u0013DqAa3\u0003D\u0002\u0007\u0011$A\u0001j\u0011\u001d\u0011)-\u0003C\u0001\u0005\u001f$2\u0001\u000bBi\u0011!\u0011\u0019N!4A\u0002\tU\u0011!\u00017\t\u000f\t\u0015\u0017\u0002\"\u0001\u0003XR\u0019\u0001F!7\t\u0011\tm'Q\u001ba\u0001\u0005/\u000b\u0011\u0001\u001f\u0005\b\u0005\u000bLA\u0011\u0001Bp)\u0015A#\u0011\u001dBr\u0011\u001d\tYK!8A\u0002eA\u0001B!:\u0003^\u0002\u0007!qS\u0001\n[\u0006<g.\u001b;vI\u0016DqA!2\n\t\u0003\u0011I\u000fF\u0004)\u0005W\u0014yO!=\t\u000f\t5(q\u001da\u00013\u0005I!-\u001b;mK:<G\u000f\u001b\u0005\b\u0003K\u00149\u000f1\u0001\u001a\u0011!\u0011\u0019Pa:A\u0002\tU\u0018a\u0001:oIB!!q\u001fB\u007f\u001b\t\u0011IPC\u0002\u0003|\u0012\tA!\u001e;jY&!!q B}\u0005\u0019\u0011\u0016M\u001c3p[\"9!QY\u0005\u0005\u0002\r\rA#\u0002\u0015\u0004\u0006\r%\u0001bBB\u0004\u0007\u0003\u0001\r!G\u0001\b]Vl'-\u001b;t\u0011!\u0011\u0019p!\u0001A\u0002\tU\bb\u0002Bc\u0013\u0011\u00051Q\u0002\u000b\u0004Q\r=\u0001\u0002\u0003Bn\u0007\u0017\u0001\rAa\u001f\t\u000f\t\u0015\u0017\u0002\"\u0001\u0004\u0014Q)\u0001f!\u0006\u0004\u0018!A!1\\B\t\u0001\u0004\u0011Y\bC\u0004\u0003\u0010\u000eE\u0001\u0019A\r\t\u000f\t\u0015\u0017\u0002\"\u0001\u0004\u001cQ\u0019\u0001f!\b\t\u000f\tm7\u0011\u0004a\u0001i!91\u0011E\u0005\u0005\u0002\r\r\u0012!\u00049s_\n\f'\r\\3Qe&lW\rF\u0003)\u0007K\u00199\u0003C\u0004\u0002X\u000e}\u0001\u0019A\r\t\u0011\tM8q\u0004a\u0001\u0005kDqaa\u000b\n\t\u0007\u0019i#\u0001\u0006j]R\u0014$-[4J]R$2\u0001KB\u0018\u0011\u001d\u0011Ym!\u000bA\u0002eAqaa\r\n\t\u0007\u0019)$A\u0006m_:<'GY5h\u0013:$Hc\u0001\u0015\u00048!A!1[B\u0019\u0001\u0004\u0011)\u0002C\u0004\u0004<%!\u0019a!\u0010\u0002+)\fg/\u0019\"jO&sG/Z4feJ\u0012\u0017nZ%oiR\u0019\u0001fa\u0010\t\u000f\tm7\u0011\ba\u0001i!I11I\u0005\u0002\u0002\u0013%1QI\u0001\fe\u0016\fGMU3t_24X\r\u0006\u0002\u0004HA!1\u0011JB(\u001b\t\u0019YEC\u0002\u0004N]\nA\u0001\\1oO&!1\u0011KB&\u0005\u0019y%M[3di\u0002")
/* loaded from: classes3-dex2jar.jar:scala/math/BigInt.class */
public final class BigInt extends ScalaNumber implements ScalaNumericConversions, Serializable {
    private final BigInteger bigInteger;

    public BigInt(BigInteger bigInteger) {
        this.bigInteger = bigInteger;
        ScalaNumericAnyConversions.Cclass.$init$(this);
    }

    public static BigInt apply(int i) {
        return BigInt$.MODULE$.apply(i);
    }

    public static BigInt apply(int i, int i2, Random random) {
        return BigInt$.MODULE$.apply(i, i2, random);
    }

    public static BigInt apply(int i, Random random) {
        return BigInt$.MODULE$.apply(i, random);
    }

    public static BigInt apply(int i, byte[] bArr) {
        return BigInt$.MODULE$.apply(i, bArr);
    }

    public static BigInt apply(long j) {
        return BigInt$.MODULE$.apply(j);
    }

    public static BigInt apply(String str) {
        return BigInt$.MODULE$.apply(str);
    }

    public static BigInt apply(String str, int i) {
        return BigInt$.MODULE$.apply(str, i);
    }

    public static BigInt apply(BigInteger bigInteger) {
        return BigInt$.MODULE$.apply(bigInteger);
    }

    public static BigInt apply(byte[] bArr) {
        return BigInt$.MODULE$.apply(bArr);
    }

    private boolean bitLengthOverflow() {
        BigInteger shiftRight = bigInteger().shiftRight(Integer.MAX_VALUE);
        return shiftRight.signum() != 0 && !shiftRight.equals(BigInt$.MODULE$.scala$math$BigInt$$minusOne());
    }

    public static BigInt int2bigInt(int i) {
        return BigInt$.MODULE$.int2bigInt(i);
    }

    public static BigInt javaBigInteger2bigInt(BigInteger bigInteger) {
        return BigInt$.MODULE$.javaBigInteger2bigInt(bigInteger);
    }

    public static BigInt long2bigInt(long j) {
        return BigInt$.MODULE$.long2bigInt(j);
    }

    public static BigInt probablePrime(int i, Random random) {
        return BigInt$.MODULE$.probablePrime(i, random);
    }

    public BigInt $amp(BigInt bigInt) {
        return new BigInt(bigInteger().and(bigInt.bigInteger()));
    }

    public BigInt $amp$tilde(BigInt bigInt) {
        return new BigInt(bigInteger().andNot(bigInt.bigInteger()));
    }

    public BigInt $bar(BigInt bigInt) {
        return new BigInt(bigInteger().or(bigInt.bigInteger()));
    }

    public BigInt $div(BigInt bigInt) {
        return new BigInt(bigInteger().divide(bigInt.bigInteger()));
    }

    public Tuple2<BigInt, BigInt> $div$percent(BigInt bigInt) {
        BigInteger[] divideAndRemainder = bigInteger().divideAndRemainder(bigInt.bigInteger());
        return new Tuple2<>(new BigInt(divideAndRemainder[0]), new BigInt(divideAndRemainder[1]));
    }

    public boolean $greater(BigInt bigInt) {
        return compare(bigInt) > 0;
    }

    public boolean $greater$eq(BigInt bigInt) {
        return compare(bigInt) >= 0;
    }

    public BigInt $greater$greater(int i) {
        return new BigInt(bigInteger().shiftRight(i));
    }

    public boolean $less(BigInt bigInt) {
        return compare(bigInt) < 0;
    }

    public boolean $less$eq(BigInt bigInt) {
        return compare(bigInt) <= 0;
    }

    public BigInt $less$less(int i) {
        return new BigInt(bigInteger().shiftLeft(i));
    }

    public BigInt $minus(BigInt bigInt) {
        return new BigInt(bigInteger().subtract(bigInt.bigInteger()));
    }

    public BigInt $percent(BigInt bigInt) {
        return new BigInt(bigInteger().remainder(bigInt.bigInteger()));
    }

    public BigInt $plus(BigInt bigInt) {
        return new BigInt(bigInteger().add(bigInt.bigInteger()));
    }

    public BigInt $times(BigInt bigInt) {
        return new BigInt(bigInteger().multiply(bigInt.bigInteger()));
    }

    public BigInt $up(BigInt bigInt) {
        return new BigInt(bigInteger().xor(bigInt.bigInteger()));
    }

    public BigInt abs() {
        return new BigInt(bigInteger().abs());
    }

    public BigInteger bigInteger() {
        return this.bigInteger;
    }

    public int bitCount() {
        return bigInteger().bitCount();
    }

    public int bitLength() {
        return bigInteger().bitLength();
    }

    @Override // java.lang.Number, scala.math.ScalaNumericAnyConversions
    public byte byteValue() {
        return (byte) intValue();
    }

    public char charValue() {
        return (char) intValue();
    }

    public BigInt clearBit(int i) {
        return new BigInt(bigInteger().clearBit(i));
    }

    public int compare(BigInt bigInt) {
        return bigInteger().compareTo(bigInt.bigInteger());
    }

    @Override // java.lang.Number, scala.math.ScalaNumericAnyConversions
    public double doubleValue() {
        return bigInteger().doubleValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003f, code lost:
        if (toDouble() == r0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0067, code lost:
        if (toFloat() == r0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0079, code lost:
        if (unifiedPrimitiveEquals(r6) != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof scala.math.BigInt
            if (r0 == 0) goto L13
            r0 = r5
            r1 = r6
            scala.math.BigInt r1 = (scala.math.BigInt) r1
            boolean r0 = r0.equals(r1)
            r7 = r0
            goto L7f
        L13:
            r0 = r6
            boolean r0 = r0 instanceof scala.math.BigDecimal
            if (r0 == 0) goto L26
            r0 = r6
            scala.math.BigDecimal r0 = (scala.math.BigDecimal) r0
            r1 = r5
            boolean r0 = r0.equals(r1)
            r7 = r0
            goto L7f
        L26:
            r0 = r6
            boolean r0 = r0 instanceof java.lang.Double
            if (r0 == 0) goto L4c
            r0 = r6
            double r0 = scala.runtime.BoxesRunTime.unboxToDouble(r0)
            r8 = r0
            r0 = r5
            boolean r0 = r0.isValidDouble()
            if (r0 == 0) goto L47
            r0 = r5
            double r0 = r0.toDouble()
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L47
        L42:
            r0 = 1
            r7 = r0
            goto L7f
        L47:
            r0 = 0
            r7 = r0
            goto L7f
        L4c:
            r0 = r6
            boolean r0 = r0 instanceof java.lang.Float
            if (r0 == 0) goto L6d
            r0 = r6
            float r0 = scala.runtime.BoxesRunTime.unboxToFloat(r0)
            r10 = r0
            r0 = r5
            boolean r0 = r0.isValidFloat()
            if (r0 == 0) goto L47
            r0 = r5
            float r0 = r0.toFloat()
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L47
            goto L42
        L6d:
            r0 = r5
            boolean r0 = r0.isValidLong()
            if (r0 == 0) goto L47
            r0 = r5
            r1 = r6
            boolean r0 = r0.unifiedPrimitiveEquals(r1)
            if (r0 == 0) goto L47
            goto L42
        L7f:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.math.BigInt.equals(java.lang.Object):boolean");
    }

    public boolean equals(BigInt bigInt) {
        return compare(bigInt) == 0;
    }

    public BigInt flipBit(int i) {
        return new BigInt(bigInteger().flipBit(i));
    }

    @Override // java.lang.Number, scala.math.ScalaNumericAnyConversions
    public float floatValue() {
        return bigInteger().floatValue();
    }

    public BigInt gcd(BigInt bigInt) {
        return new BigInt(bigInteger().gcd(bigInt.bigInteger()));
    }

    public int hashCode() {
        return isValidLong() ? unifiedPrimitiveHashcode() : ScalaRunTime$.MODULE$.hash((Object) bigInteger());
    }

    @Override // java.lang.Number, scala.math.ScalaNumericAnyConversions
    public int intValue() {
        return bigInteger().intValue();
    }

    public boolean isProbablePrime(int i) {
        return bigInteger().isProbablePrime(i);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidByte() {
        return $greater$eq(BigInt$.MODULE$.int2bigInt(ByteCompanionObject.MIN_VALUE)) && $less$eq(BigInt$.MODULE$.int2bigInt(127));
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidChar() {
        boolean z = false;
        if ($greater$eq(BigInt$.MODULE$.int2bigInt(0))) {
            z = false;
            if ($less$eq(BigInt$.MODULE$.int2bigInt(65535))) {
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0030, code lost:
        if ((r0 <= 1024 && r0 >= r0 - 53 && r0 < 1024) != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0037, code lost:
        if (bitLengthOverflow() == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003d, code lost:
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0040, code lost:
        return r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isValidDouble() {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.bitLength()
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            r1 = 53
            if (r0 <= r1) goto L33
            r0 = r4
            int r0 = r0.lowestSetBit()
            r7 = r0
            r0 = r5
            r1 = 1024(0x400, float:1.435E-42)
            if (r0 > r1) goto L2d
            r0 = r7
            r1 = r5
            r2 = 53
            int r1 = r1 - r2
            if (r0 < r1) goto L2d
            r0 = r7
            r1 = 1024(0x400, float:1.435E-42)
            if (r0 >= r1) goto L2d
            r0 = 1
            r7 = r0
            goto L2f
        L2d:
            r0 = 0
            r7 = r0
        L2f:
            r0 = r7
            if (r0 == 0) goto L3d
        L33:
            r0 = r4
            boolean r0 = r0.bitLengthOverflow()
            if (r0 != 0) goto L3d
            goto L3f
        L3d:
            r0 = 0
            r6 = r0
        L3f:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.math.BigInt.isValidDouble():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0030, code lost:
        if ((r0 <= 128 && r0 >= r0 - 24 && r0 < 128) != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0037, code lost:
        if (bitLengthOverflow() == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003d, code lost:
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0040, code lost:
        return r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isValidFloat() {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.bitLength()
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            r1 = 24
            if (r0 <= r1) goto L33
            r0 = r4
            int r0 = r0.lowestSetBit()
            r7 = r0
            r0 = r5
            r1 = 128(0x80, float:1.794E-43)
            if (r0 > r1) goto L2d
            r0 = r7
            r1 = r5
            r2 = 24
            int r1 = r1 - r2
            if (r0 < r1) goto L2d
            r0 = r7
            r1 = 128(0x80, float:1.794E-43)
            if (r0 >= r1) goto L2d
            r0 = 1
            r5 = r0
            goto L2f
        L2d:
            r0 = 0
            r5 = r0
        L2f:
            r0 = r5
            if (r0 == 0) goto L3d
        L33:
            r0 = r4
            boolean r0 = r0.bitLengthOverflow()
            if (r0 != 0) goto L3d
            goto L3f
        L3d:
            r0 = 0
            r6 = r0
        L3f:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.math.BigInt.isValidFloat():boolean");
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidInt() {
        return $greater$eq(BigInt$.MODULE$.int2bigInt(Integer.MIN_VALUE)) && $less$eq(BigInt$.MODULE$.int2bigInt(Integer.MAX_VALUE));
    }

    public boolean isValidLong() {
        return $greater$eq(BigInt$.MODULE$.long2bigInt(Long.MIN_VALUE)) && $less$eq(BigInt$.MODULE$.long2bigInt(LongCompanionObject.MAX_VALUE));
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidShort() {
        return $greater$eq(BigInt$.MODULE$.int2bigInt(ShortCompanionObject.MIN_VALUE)) && $less$eq(BigInt$.MODULE$.int2bigInt(ShortCompanionObject.MAX_VALUE));
    }

    @Override // scala.math.ScalaNumber, scala.math.ScalaNumericAnyConversions
    public boolean isWhole() {
        return true;
    }

    @Override // java.lang.Number, scala.math.ScalaNumericAnyConversions
    public long longValue() {
        return bigInteger().longValue();
    }

    public int lowestSetBit() {
        return bigInteger().getLowestSetBit();
    }

    public BigInt max(BigInt bigInt) {
        return new BigInt(bigInteger().max(bigInt.bigInteger()));
    }

    public BigInt min(BigInt bigInt) {
        return new BigInt(bigInteger().min(bigInt.bigInteger()));
    }

    public BigInt mod(BigInt bigInt) {
        return new BigInt(bigInteger().mod(bigInt.bigInteger()));
    }

    public BigInt modInverse(BigInt bigInt) {
        return new BigInt(bigInteger().modInverse(bigInt.bigInteger()));
    }

    public BigInt modPow(BigInt bigInt, BigInt bigInt2) {
        return new BigInt(bigInteger().modPow(bigInt.bigInteger(), bigInt2.bigInteger()));
    }

    public BigInt pow(int i) {
        return new BigInt(bigInteger().pow(i));
    }

    public BigInt setBit(int i) {
        return new BigInt(bigInteger().setBit(i));
    }

    @Override // java.lang.Number, scala.math.ScalaNumericAnyConversions
    public short shortValue() {
        return (short) intValue();
    }

    public int signum() {
        return bigInteger().signum();
    }

    public boolean testBit(int i) {
        return bigInteger().testBit(i);
    }

    /* renamed from: to */
    public NumericRange.Inclusive<BigInt> m52to(BigInt bigInt, BigInt bigInt2) {
        return Range$BigInt$.MODULE$.inclusive(this, bigInt, bigInt2);
    }

    public BigInt to$default$2() {
        return BigInt$.MODULE$.apply(1);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public byte toByte() {
        return ScalaNumericAnyConversions.Cclass.toByte(this);
    }

    public byte[] toByteArray() {
        return bigInteger().toByteArray();
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public char toChar() {
        return ScalaNumericAnyConversions.Cclass.toChar(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public double toDouble() {
        return ScalaNumericAnyConversions.Cclass.toDouble(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public float toFloat() {
        return ScalaNumericAnyConversions.Cclass.toFloat(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public int toInt() {
        return ScalaNumericAnyConversions.Cclass.toInt(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public long toLong() {
        return ScalaNumericAnyConversions.Cclass.toLong(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public short toShort() {
        return ScalaNumericAnyConversions.Cclass.toShort(this);
    }

    public String toString() {
        return bigInteger().toString();
    }

    public String toString(int i) {
        return bigInteger().toString(i);
    }

    public BigInt unary_$minus() {
        return new BigInt(bigInteger().negate());
    }

    public BigInt unary_$tilde() {
        return new BigInt(bigInteger().not());
    }

    @Override // scala.math.ScalaNumber, scala.math.ScalaNumericConversions, scala.math.ScalaNumericAnyConversions
    public BigInteger underlying() {
        return bigInteger();
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean unifiedPrimitiveEquals(Object obj) {
        return ScalaNumericAnyConversions.Cclass.unifiedPrimitiveEquals(this, obj);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public int unifiedPrimitiveHashcode() {
        return ScalaNumericAnyConversions.Cclass.unifiedPrimitiveHashcode(this);
    }

    public NumericRange.Exclusive<BigInt> until(BigInt bigInt, BigInt bigInt2) {
        return Range$BigInt$.MODULE$.apply(this, bigInt, bigInt2);
    }

    public BigInt until$default$2() {
        return BigInt$.MODULE$.apply(1);
    }
}
