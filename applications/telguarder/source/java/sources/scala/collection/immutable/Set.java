package scala.collection.immutable;

import scala.Function1;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Serializable;
import scala.Some;
import scala.collection.AbstractSet;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.Seq;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSet;
import scala.collection.parallel.immutable.ParSet$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\r\u0015daB\u0001\u0003!\u0003\r\t!\u0003\u0002\u0004'\u0016$(BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b+M9\u0001aC\b\u001fC!b\u0003C\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\b\u0007\u0005\u0019\te.\u001f*fMB\u0019\u0001#E\n\u000e\u0003\tI!A\u0005\u0002\u0003\u0011%#XM]1cY\u0016\u0004\"\u0001F\u000b\r\u0001\u0011)a\u0003\u0001b\u0001/\t\t\u0011)\u0005\u0002\u00197A\u0011A\"G\u0005\u00035\u0019\u0011qAT8uQ&tw\r\u0005\u0002\r9%\u0011QD\u0002\u0002\u0004\u0003:L\bcA\u0010!'5\tA!\u0003\u0002\u0002\tA!!%J\n(\u001b\u0005\u0019#B\u0001\u0013\u0005\u0003\u001d9WM\\3sS\u000eL!AJ\u0012\u0003%\u001d+g.\u001a:jGN+G\u000fV3na2\fG/\u001a\t\u0003!\u0001\u0001BaH\u0015\u0014W%\u0011!\u0006\u0002\u0002\b'\u0016$H*[6f!\r\u0001\u0002a\u0005\t\u0005?5\u001ar&\u0003\u0002/\t\tq\u0001+\u0019:bY2,G.\u001b>bE2,\u0007c\u0001\u00195'5\t\u0011G\u0003\u0002\u0004e)\u00111\u0007B\u0001\ta\u0006\u0014\u0018\r\u001c7fY&\u0011Q'\r\u0002\u0007!\u0006\u00148+\u001a;\t\u000b]\u0002A\u0011\u0001\u001d\u0002\r\u0011Jg.\u001b;%)\u0005I\u0004C\u0001\u0007;\u0013\tYdA\u0001\u0003V]&$\b\"B\u001f\u0001\t\u0003r\u0014!C2p[B\fg.[8o+\u0005y\u0004c\u0001\u0012AO%\u0011\u0011i\t\u0002\u0011\u000f\u0016tWM]5d\u0007>l\u0007/\u00198j_:DQa\u0011\u0001\u0005B\u0011\u000bQ\u0001^8TKR,\"!\u0012%\u0016\u0003\u0019\u00032\u0001\u0005\u0001H!\t!\u0002\nB\u0003J\u0005\n\u0007!JA\u0001C#\t\u00192\u0004C\u0003M\u0001\u0011\u0005S*A\u0002tKF,\u0012a\u000b\u0005\u0006\u001f\u0002!\t\u0006U\u0001\fa\u0006\u00148i\\7cS:,'/F\u0001R!\u0011\u00116kE\u0018\u000e\u0003IJ!\u0001\u0016\u001a\u0003\u0011\r{WNY5oKJ<QA\u0016\u0002\t\u0002]\u000b1aU3u!\t\u0001\u0002LB\u0003\u0002\u0005!\u0005\u0011l\u0005\u0002Y5B\u0019!eW\u0014\n\u0005q\u001b#aE%n[V$\u0018M\u00197f'\u0016$h)Y2u_JL\b\"\u00020Y\t\u0003y\u0016A\u0002\u001fj]&$h\bF\u0001X\u0011\u0015\t\u0007\fb\u0001c\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\t\u0019G.F\u0001e!\u0015\u0011SmZ6n\u0013\t17E\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\u0005\u0002iS6\t\u0001,\u0003\u0002k\u0001\n!1i\u001c7m!\t!B\u000eB\u0003\u0017A\n\u0007q\u0003E\u0002\u0011\u0001-<Qa\u001c-\t\nA\f\u0001\"R7qif\u001cV\r\u001e\t\u0003QF4QA\u001d-\t\nM\u0014\u0001\"R7qif\u001cV\r^\n\u0005cR<\b\u0010E\u0002 knI!A\u001e\u0003\u0003\u0017\u0005\u00137\u000f\u001e:bGR\u001cV\r\u001e\t\u0004!\u0001Y\u0002C\u0001\u0007z\u0013\tQhA\u0001\u0007TKJL\u0017\r\\5{C\ndW\rC\u0003_c\u0012\u0005A\u0010F\u0001q\u0011\u0015q\u0018\u000f\"\u0011��\u0003\u0011\u0019\u0018N_3\u0016\u0005\u0005\u0005\u0001c\u0001\u0007\u0002\u0004%\u0019\u0011Q\u0001\u0004\u0003\u0007%sG\u000fC\u0004\u0002\nE$\t!a\u0003\u0002\u0011\r|g\u000e^1j]N$B!!\u0004\u0002\u0014A\u0019A\"a\u0004\n\u0007\u0005EaAA\u0004C_>dW-\u00198\t\u000f\u0005U\u0011q\u0001a\u00017\u0005!Q\r\\3n\u0011\u001d\tI\"\u001dC\u0001\u00037\tQ\u0001\n9mkN$2a^A\u000f\u0011\u001d\t)\"a\u0006A\u0002mAq!!\tr\t\u0003\t\u0019#\u0001\u0004%[&tWo\u001d\u000b\u0004o\u0006\u0015\u0002bBA\u000b\u0003?\u0001\ra\u0007\u0005\b\u0003S\tH\u0011AA\u0016\u0003!IG/\u001a:bi>\u0014XCAA\u0017!\u0011y\u0012qF\u000e\n\u0007\u0005EBA\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u001d\t)$\u001dC!\u0003o\tqAZ8sK\u0006\u001c\u0007.\u0006\u0003\u0002:\u0005\u001dCcA\u001d\u0002<!A\u0011QHA\u001a\u0001\u0004\ty$A\u0001g!\u0019a\u0011\u0011I\u000e\u0002F%\u0019\u00111\t\u0004\u0003\u0013\u0019+hn\u0019;j_:\f\u0004c\u0001\u000b\u0002H\u00119\u0011\u0011JA\u001a\u0005\u00049\"!A+\t\r\r\u000bH\u0011IA'+\u0011\ty%!\u0016\u0016\u0005\u0005E\u0003\u0003\u0002\t\u0001\u0003'\u00022\u0001FA+\t\u001dI\u00151\nb\u0001\u0003/\n\"aG\u000e\t\u0013\u0005m\u0013/!A\u0005\n\u0005u\u0013a\u0003:fC\u0012\u0014Vm]8mm\u0016$\"!a\u0018\u0011\t\u0005\u0005\u00141N\u0007\u0003\u0003GRA!!\u001a\u0002h\u0005!A.\u00198h\u0015\t\tI'\u0001\u0003kCZ\f\u0017\u0002BA7\u0003G\u0012aa\u00142kK\u000e$\b\u0002CA91\u0012\u0005A!a\u001d\u0002\u001b\u0015l\u0007\u000f^=J]N$\u0018M\\2f+\u00059hABA<1\u0002\tIH\u0001\u0003TKR\fT\u0003BA>\u0003\u0003\u001br!!\u001e\u0002~\u0005\r\u0005\u0010\u0005\u0003 k\u0006}\u0004c\u0001\u000b\u0002\u0002\u00121a#!\u001eC\u0002]\u0001B\u0001\u0005\u0001\u0002��!Y\u0011qQA;\u0005\u0003\u0005\u000b\u0011BA@\u0003\u0015)G.Z72\u0011!q\u0016Q\u000fC\u0001\t\u0005-E\u0003BAG\u0003\u001f\u0003R\u0001[A;\u0003\u007fB\u0001\"a\"\u0002\n\u0002\u0007\u0011q\u0010\u0005\u0007}\u0006UD\u0011I@\t\u0011\u0005%\u0011Q\u000fC\u0001\u0003+#B!!\u0004\u0002\u0018\"A\u0011QCAJ\u0001\u0004\ty\b\u0003\u0005\u0002\u001a\u0005UD\u0011AAN)\u0011\t\u0019)!(\t\u0011\u0005U\u0011\u0011\u0014a\u0001\u0003\u007fB\u0001\"!\t\u0002v\u0011\u0005\u0011\u0011\u0015\u000b\u0005\u0003\u0007\u000b\u0019\u000b\u0003\u0005\u0002\u0016\u0005}\u0005\u0019AA@\u0011!\tI#!\u001e\u0005\u0002\u0005\u001dVCAAU!\u0015y\u0012qFA@\u0011!\t)$!\u001e\u0005B\u00055V\u0003BAX\u0003o#2!OAY\u0011!\ti$a+A\u0002\u0005M\u0006c\u0002\u0007\u0002B\u0005}\u0014Q\u0017\t\u0004)\u0005]FaBA%\u0003W\u0013\ra\u0006\u0005\t\u0003w\u000b)\b\"\u0011\u0002>\u00061Q\r_5tiN$B!!\u0004\u0002@\"A\u0011QHA]\u0001\u0004\t\t\rE\u0004\r\u0003\u0003\ny(!\u0004\t\u0011\u0005\u0015\u0017Q\u000fC!\u0003\u000f\faAZ8sC2dG\u0003BA\u0007\u0003\u0013D\u0001\"!\u0010\u0002D\u0002\u0007\u0011\u0011\u0019\u0005\t\u0003\u001b\f)\b\"\u0011\u0002P\u0006!a-\u001b8e)\u0011\t\t.a6\u0011\u000b1\t\u0019.a \n\u0007\u0005UgA\u0001\u0004PaRLwN\u001c\u0005\t\u0003{\tY\r1\u0001\u0002B\"91)!\u001e\u0005B\u0005mW\u0003BAo\u0003G,\"!a8\u0011\tA\u0001\u0011\u0011\u001d\t\u0004)\u0005\rHaB%\u0002Z\n\u0007\u0011Q]\t\u0004\u0003\u007fZ\u0002\u0006CAm\u0003S\fy/a=\u0011\u00071\tY/C\u0002\u0002n\u001a\u0011A\u0003Z3qe\u0016\u001c\u0017\r^3e\u001fZ,'O]5eS:<\u0017EAAy\u00039KU.\\;uC\ndW\rI:fiN\u00043\u000f[8vY\u0012\u0004Cm\u001c\u0011o_RD\u0017N\\4!_:\u0004Co\\*fi\u0002\u0012W\u000f\u001e\u0011sKR,(O\u001c\u0011uQ\u0016l7/\u001a7wKN\u00043-Y:uA\u0005\u001c\b%\u0019\u0011TKRt\u0013EAA{\u0003\u0019\u0011d&M\u0019/a!B\u0011QOA}\u0003\u007f\u0014\t\u0001E\u0002\r\u0003wL1!!@\u0007\u0005A\u0019VM]5bYZ+'o]5p]VKE)A\u0003wC2,XM\b\u0005\u0012;uw-Gkk\u0014\u000e\u0019\u0011)\u0001\u0017\u0001\u0003\b\t!1+\u001a;3+\u0011\u0011IAa\u0004\u0014\u000f\t\r!1\u0002B\tqB!q$\u001eB\u0007!\r!\"q\u0002\u0003\u0007-\t\r!\u0019A\f\u0011\tA\u0001!Q\u0002\u0005\f\u0003\u000f\u0013\u0019A!A!\u0002\u0013\u0011i\u0001C\u0006\u0003\u0018\t\r!\u0011!Q\u0001\n\t5\u0011!B3mK6\u0014\u0004\u0002\u00030\u0003\u0004\u0011\u0005AAa\u0007\u0015\r\tu!q\u0004B\u0011!\u0015A'1\u0001B\u0007\u0011!\t9I!\u0007A\u0002\t5\u0001\u0002\u0003B\f\u00053\u0001\rA!\u0004\t\ry\u0014\u0019\u0001\"\u0011��\u0011!\tIAa\u0001\u0005\u0002\t\u001dB\u0003BA\u0007\u0005SA\u0001\"!\u0006\u0003&\u0001\u0007!Q\u0002\u0005\t\u00033\u0011\u0019\u0001\"\u0001\u0003.Q!!\u0011\u0003B\u0018\u0011!\t)Ba\u000bA\u0002\t5\u0001\u0002CA\u0011\u0005\u0007!\tAa\r\u0015\t\tE!Q\u0007\u0005\t\u0003+\u0011\t\u00041\u0001\u0003\u000e!A\u0011\u0011\u0006B\u0002\t\u0003\u0011I$\u0006\u0002\u0003<A)q$a\f\u0003\u000e!A\u0011Q\u0007B\u0002\t\u0003\u0012y$\u0006\u0003\u0003B\t%CcA\u001d\u0003D!A\u0011Q\bB\u001f\u0001\u0004\u0011)\u0005E\u0004\r\u0003\u0003\u0012iAa\u0012\u0011\u0007Q\u0011I\u0005B\u0004\u0002J\tu\"\u0019A\f\t\u0011\u0005m&1\u0001C!\u0005\u001b\"B!!\u0004\u0003P!A\u0011Q\bB&\u0001\u0004\u0011\t\u0006E\u0004\r\u0003\u0003\u0012i!!\u0004\t\u0011\u0005\u0015'1\u0001C!\u0005+\"B!!\u0004\u0003X!A\u0011Q\bB*\u0001\u0004\u0011\t\u0006\u0003\u0005\u0002N\n\rA\u0011\tB.)\u0011\u0011iFa\u0018\u0011\u000b1\t\u0019N!\u0004\t\u0011\u0005u\"\u0011\fa\u0001\u0005#Bqa\u0011B\u0002\t\u0003\u0012\u0019'\u0006\u0003\u0003f\t-TC\u0001B4!\u0011\u0001\u0002A!\u001b\u0011\u0007Q\u0011Y\u0007B\u0004J\u0005C\u0012\rA!\u001c\u0012\u0007\t51\u0004\u000b\u0005\u0003b\u0005%\u0018q^AzQ!\u0011\u0019!!?\u0002��\nMd\u0004\u0003T\u0016(0L2)\u000e;\u0007\r\t]\u0004\f\u0001B=\u0005\u0011\u0019V\r^\u001a\u0016\t\tm$\u0011Q\n\b\u0005k\u0012iHa!y!\u0011yROa \u0011\u0007Q\u0011\t\t\u0002\u0004\u0017\u0005k\u0012\ra\u0006\t\u0005!\u0001\u0011y\bC\u0006\u0002\b\nU$\u0011!Q\u0001\n\t}\u0004b\u0003B\f\u0005k\u0012\t\u0011)A\u0005\u0005\u007fB1Ba#\u0003v\t\u0005\t\u0015!\u0003\u0003��\u0005)Q\r\\3ng!AaL!\u001e\u0005\u0002\u0011\u0011y\t\u0006\u0005\u0003\u0012\nM%Q\u0013BL!\u0015A'Q\u000fB@\u0011!\t9I!$A\u0002\t}\u0004\u0002\u0003B\f\u0005\u001b\u0003\rAa \t\u0011\t-%Q\u0012a\u0001\u0005\u007fBaA B;\t\u0003z\b\u0002CA\u0005\u0005k\"\tA!(\u0015\t\u00055!q\u0014\u0005\t\u0003+\u0011Y\n1\u0001\u0003��!A\u0011\u0011\u0004B;\t\u0003\u0011\u0019\u000b\u0006\u0003\u0003\u0004\n\u0015\u0006\u0002CA\u000b\u0005C\u0003\rAa \t\u0011\u0005\u0005\"Q\u000fC\u0001\u0005S#BAa!\u0003,\"A\u0011Q\u0003BT\u0001\u0004\u0011y\b\u0003\u0005\u0002*\tUD\u0011\u0001BX+\t\u0011\t\fE\u0003 \u0003_\u0011y\b\u0003\u0005\u00026\tUD\u0011\tB[+\u0011\u00119La0\u0015\u0007e\u0012I\f\u0003\u0005\u0002>\tM\u0006\u0019\u0001B^!\u001da\u0011\u0011\tB@\u0005{\u00032\u0001\u0006B`\t\u001d\tIEa-C\u0002]A\u0001\"a/\u0003v\u0011\u0005#1\u0019\u000b\u0005\u0003\u001b\u0011)\r\u0003\u0005\u0002>\t\u0005\u0007\u0019\u0001Bd!\u001da\u0011\u0011\tB@\u0003\u001bA\u0001\"!2\u0003v\u0011\u0005#1\u001a\u000b\u0005\u0003\u001b\u0011i\r\u0003\u0005\u0002>\t%\u0007\u0019\u0001Bd\u0011!\tiM!\u001e\u0005B\tEG\u0003\u0002Bj\u0005+\u0004R\u0001DAj\u0005\u007fB\u0001\"!\u0010\u0003P\u0002\u0007!q\u0019\u0005\b\u0007\nUD\u0011\tBm+\u0011\u0011YN!9\u0016\u0005\tu\u0007\u0003\u0002\t\u0001\u0005?\u00042\u0001\u0006Bq\t\u001dI%q\u001bb\u0001\u0005G\f2Aa \u001cQ!\u00119.!;\u0002p\u0006M\b\u0006\u0003B;\u0003s\fyP!;\u001f\u00119g\u0013:P\u001dl\n\u00026aA!<Y\u0001\t=(\u0001B*fiR*BA!=\u0003xN9!1\u001eBz\u0005sD\b\u0003B\u0010v\u0005k\u00042\u0001\u0006B|\t\u00191\"1\u001eb\u0001/A!\u0001\u0003\u0001B{\u0011-\t9Ia;\u0003\u0002\u0003\u0006IA!>\t\u0017\t]!1\u001eB\u0001B\u0003%!Q\u001f\u0005\f\u0005\u0017\u0013YO!A!\u0002\u0013\u0011)\u0010C\u0006\u0004\u0004\t-(\u0011!Q\u0001\n\tU\u0018!B3mK6$\u0004\u0002\u00030\u0003l\u0012\u0005Aaa\u0002\u0015\u0015\r%11BB\u0007\u0007\u001f\u0019\t\u0002E\u0003i\u0005W\u0014)\u0010\u0003\u0005\u0002\b\u000e\u0015\u0001\u0019\u0001B{\u0011!\u00119b!\u0002A\u0002\tU\b\u0002\u0003BF\u0007\u000b\u0001\rA!>\t\u0011\r\r1Q\u0001a\u0001\u0005kDaA Bv\t\u0003z\b\u0002CA\u0005\u0005W$\taa\u0006\u0015\t\u000551\u0011\u0004\u0005\t\u0003+\u0019)\u00021\u0001\u0003v\"A\u0011\u0011\u0004Bv\t\u0003\u0019i\u0002\u0006\u0003\u0003z\u000e}\u0001\u0002CA\u000b\u00077\u0001\rA!>\t\u0011\u0005\u0005\"1\u001eC\u0001\u0007G!BA!?\u0004&!A\u0011QCB\u0011\u0001\u0004\u0011)\u0010\u0003\u0005\u0002*\t-H\u0011AB\u0015+\t\u0019Y\u0003E\u0003 \u0003_\u0011)\u0010\u0003\u0005\u00026\t-H\u0011IB\u0018+\u0011\u0019\td!\u000f\u0015\u0007e\u001a\u0019\u0004\u0003\u0005\u0002>\r5\u0002\u0019AB\u001b!\u001da\u0011\u0011\tB{\u0007o\u00012\u0001FB\u001d\t\u001d\tIe!\fC\u0002]A\u0001\"a/\u0003l\u0012\u00053Q\b\u000b\u0005\u0003\u001b\u0019y\u0004\u0003\u0005\u0002>\rm\u0002\u0019AB!!\u001da\u0011\u0011\tB{\u0003\u001bA\u0001\"!2\u0003l\u0012\u00053Q\t\u000b\u0005\u0003\u001b\u00199\u0005\u0003\u0005\u0002>\r\r\u0003\u0019AB!\u0011!\tiMa;\u0005B\r-C\u0003BB'\u0007\u001f\u0002R\u0001DAj\u0005kD\u0001\"!\u0010\u0004J\u0001\u00071\u0011\t\u0005\b\u0007\n-H\u0011IB*+\u0011\u0019)fa\u0017\u0016\u0005\r]\u0003\u0003\u0002\t\u0001\u00073\u00022\u0001FB.\t\u001dI5\u0011\u000bb\u0001\u0007;\n2A!>\u001cQ!\u0019\t&!;\u0002p\u0006M\b\u0006\u0003Bv\u0003s\fypa\u0019\u001f\u00115Wl\u0015r)nQX\u0006")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Set.class */
public interface Set<A> extends Iterable<A>, scala.collection.Set<A> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Set$Set1.class */
    public static class Set1<A> extends AbstractSet<A> implements Set<A>, Serializable {
        public static final long serialVersionUID = 1233385750652442003L;
        private final A elem1;

        public Set1(A a) {
            this.elem1 = a;
            Traversable.Cclass.$init$(this);
            Iterable.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
        public Set<A> $minus(A a) {
            A a2 = this.elem1;
            return a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2) ? Set$.MODULE$.empty() : this;
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike
        public Set<A> $plus(A a) {
            return contains(a) ? this : new Set2(this.elem1, a);
        }

        @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToBoolean(apply(obj));
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<Set> companion() {
            return Cclass.companion(this);
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike
        public boolean contains(A a) {
            A a2 = this.elem1;
            return a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2);
        }

        @Override // scala.collection.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
        public /* bridge */ /* synthetic */ scala.collection.Set empty() {
            return (scala.collection.Set) empty();
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<A, Object> function1) {
            return BoxesRunTime.unboxToBoolean(function1.apply(this.elem1));
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<A> find(Function1<A, Object> function1) {
            return BoxesRunTime.unboxToBoolean(function1.apply(this.elem1)) ? new Some(this.elem1) : None$.MODULE$;
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<A, Object> function1) {
            return BoxesRunTime.unboxToBoolean(function1.apply(this.elem1));
        }

        @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<A, U> function1) {
            function1.apply(this.elem1);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<A> iterator() {
            return Iterator$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{this.elem1}));
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<A, ParSet<A>> parCombiner() {
            return Cclass.parCombiner(this);
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
        public /* bridge */ /* synthetic */ Subtractable repr() {
            return (Subtractable) repr();
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Set<A> seq() {
            return Cclass.seq(this);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return 1;
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Set$Set2.class */
    public static class Set2<A> extends AbstractSet<A> implements Set<A>, Serializable {
        public static final long serialVersionUID = -6443011234944830092L;
        private final A elem1;
        private final A elem2;

        public Set2(A a, A a2) {
            this.elem1 = a;
            this.elem2 = a2;
            Traversable.Cclass.$init$(this);
            Iterable.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
        public Set<A> $minus(A a) {
            Set set;
            A a2 = this.elem1;
            if (a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2)) {
                set = new Set1(this.elem2);
            } else {
                A a3 = this.elem2;
                set = a == a3 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a3) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a3) : a.equals(a3) ? new Set1(this.elem1) : this;
            }
            return set;
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike
        public Set<A> $plus(A a) {
            return contains(a) ? this : new Set3(this.elem1, this.elem2, a);
        }

        @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToBoolean(apply(obj));
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<Set> companion() {
            return Cclass.companion(this);
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x009b, code lost:
            if ((r4 == r0 ? true : r4 == null ? false : r4 instanceof java.lang.Number ? scala.runtime.BoxesRunTime.equalsNumObject((java.lang.Number) r4, r0) : r4 instanceof java.lang.Character ? scala.runtime.BoxesRunTime.equalsCharObject((java.lang.Character) r4, r0) : r4.equals(r0)) != false) goto L32;
         */
        @Override // scala.collection.GenSetLike, scala.collection.SetLike
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean contains(A r4) {
            /*
                r3 = this;
                r0 = r3
                A r0 = r0.elem1
                r5 = r0
                r0 = 0
                r6 = r0
                r0 = r4
                r1 = r5
                if (r0 != r1) goto L12
                r0 = 1
                r7 = r0
                goto L4b
            L12:
                r0 = r4
                if (r0 != 0) goto L1c
                r0 = 0
                r7 = r0
                goto L4b
            L1c:
                r0 = r4
                boolean r0 = r0 instanceof java.lang.Number
                if (r0 == 0) goto L30
                r0 = r4
                java.lang.Number r0 = (java.lang.Number) r0
                r1 = r5
                boolean r0 = scala.runtime.BoxesRunTime.equalsNumObject(r0, r1)
                r7 = r0
                goto L4b
            L30:
                r0 = r4
                boolean r0 = r0 instanceof java.lang.Character
                if (r0 == 0) goto L44
                r0 = r4
                java.lang.Character r0 = (java.lang.Character) r0
                r1 = r5
                boolean r0 = scala.runtime.BoxesRunTime.equalsCharObject(r0, r1)
                r7 = r0
                goto L4b
            L44:
                r0 = r4
                r1 = r5
                boolean r0 = r0.equals(r1)
                r7 = r0
            L4b:
                r0 = r7
                if (r0 != 0) goto L9e
                r0 = r3
                A r0 = r0.elem2
                r5 = r0
                r0 = r4
                r1 = r5
                if (r0 != r1) goto L60
                r0 = 1
                r7 = r0
                goto L99
            L60:
                r0 = r4
                if (r0 != 0) goto L6a
                r0 = 0
                r7 = r0
                goto L99
            L6a:
                r0 = r4
                boolean r0 = r0 instanceof java.lang.Number
                if (r0 == 0) goto L7e
                r0 = r4
                java.lang.Number r0 = (java.lang.Number) r0
                r1 = r5
                boolean r0 = scala.runtime.BoxesRunTime.equalsNumObject(r0, r1)
                r7 = r0
                goto L99
            L7e:
                r0 = r4
                boolean r0 = r0 instanceof java.lang.Character
                if (r0 == 0) goto L92
                r0 = r4
                java.lang.Character r0 = (java.lang.Character) r0
                r1 = r5
                boolean r0 = scala.runtime.BoxesRunTime.equalsCharObject(r0, r1)
                r7 = r0
                goto L99
            L92:
                r0 = r4
                r1 = r5
                boolean r0 = r0.equals(r1)
                r7 = r0
            L99:
                r0 = r7
                if (r0 == 0) goto La0
            L9e:
                r0 = 1
                r6 = r0
            La0:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.immutable.Set.Set2.contains(java.lang.Object):boolean");
        }

        @Override // scala.collection.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
        public /* bridge */ /* synthetic */ scala.collection.Set empty() {
            return (scala.collection.Set) empty();
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<A, Object> function1) {
            return BoxesRunTime.unboxToBoolean(function1.apply(this.elem1)) || BoxesRunTime.unboxToBoolean(function1.apply(this.elem2));
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<A> find(Function1<A, Object> function1) {
            return BoxesRunTime.unboxToBoolean(function1.apply(this.elem1)) ? new Some(this.elem1) : BoxesRunTime.unboxToBoolean(function1.apply(this.elem2)) ? new Some(this.elem2) : None$.MODULE$;
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<A, Object> function1) {
            return BoxesRunTime.unboxToBoolean(function1.apply(this.elem1)) && BoxesRunTime.unboxToBoolean(function1.apply(this.elem2));
        }

        @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<A, U> function1) {
            function1.apply(this.elem1);
            function1.apply(this.elem2);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<A> iterator() {
            return Iterator$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{this.elem1, this.elem2}));
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<A, ParSet<A>> parCombiner() {
            return Cclass.parCombiner(this);
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
        public /* bridge */ /* synthetic */ Subtractable repr() {
            return (Subtractable) repr();
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Set<A> seq() {
            return Cclass.seq(this);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return 2;
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Set$Set3.class */
    public static class Set3<A> extends AbstractSet<A> implements Set<A>, Serializable {
        public static final long serialVersionUID = -3590273538119220064L;
        private final A elem1;
        private final A elem2;
        private final A elem3;

        public Set3(A a, A a2, A a3) {
            this.elem1 = a;
            this.elem2 = a2;
            this.elem3 = a3;
            Traversable.Cclass.$init$(this);
            Iterable.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
        public Set<A> $minus(A a) {
            Set set;
            A a2 = this.elem1;
            if (a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2)) {
                set = new Set2(this.elem2, this.elem3);
            } else {
                A a3 = this.elem2;
                if (a == a3 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a3) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a3) : a.equals(a3)) {
                    set = new Set2(this.elem1, this.elem3);
                } else {
                    A a4 = this.elem3;
                    set = a == a4 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a4) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a4) : a.equals(a4) ? new Set2(this.elem1, this.elem2) : this;
                }
            }
            return set;
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike
        public Set<A> $plus(A a) {
            return contains(a) ? this : new Set4(this.elem1, this.elem2, this.elem3, a);
        }

        @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToBoolean(apply(obj));
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<Set> companion() {
            return Cclass.companion(this);
        }

        /* JADX WARN: Code restructure failed: missing block: B:46:0x00e9, code lost:
            if ((r4 == r0 ? true : r4 == null ? false : r4 instanceof java.lang.Number ? scala.runtime.BoxesRunTime.equalsNumObject((java.lang.Number) r4, r0) : r4 instanceof java.lang.Character ? scala.runtime.BoxesRunTime.equalsCharObject((java.lang.Character) r4, r0) : r4.equals(r0)) != false) goto L47;
         */
        @Override // scala.collection.GenSetLike, scala.collection.SetLike
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean contains(A r4) {
            /*
                Method dump skipped, instructions count: 240
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.immutable.Set.Set3.contains(java.lang.Object):boolean");
        }

        @Override // scala.collection.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
        public /* bridge */ /* synthetic */ scala.collection.Set empty() {
            return (scala.collection.Set) empty();
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<A, Object> function1) {
            return BoxesRunTime.unboxToBoolean(function1.apply(this.elem1)) || BoxesRunTime.unboxToBoolean(function1.apply(this.elem2)) || BoxesRunTime.unboxToBoolean(function1.apply(this.elem3));
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<A> find(Function1<A, Object> function1) {
            return BoxesRunTime.unboxToBoolean(function1.apply(this.elem1)) ? new Some(this.elem1) : BoxesRunTime.unboxToBoolean(function1.apply(this.elem2)) ? new Some(this.elem2) : BoxesRunTime.unboxToBoolean(function1.apply(this.elem3)) ? new Some(this.elem3) : None$.MODULE$;
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<A, Object> function1) {
            return BoxesRunTime.unboxToBoolean(function1.apply(this.elem1)) && BoxesRunTime.unboxToBoolean(function1.apply(this.elem2)) && BoxesRunTime.unboxToBoolean(function1.apply(this.elem3));
        }

        @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<A, U> function1) {
            function1.apply(this.elem1);
            function1.apply(this.elem2);
            function1.apply(this.elem3);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<A> iterator() {
            return Iterator$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{this.elem1, this.elem2, this.elem3}));
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<A, ParSet<A>> parCombiner() {
            return Cclass.parCombiner(this);
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
        public /* bridge */ /* synthetic */ Subtractable repr() {
            return (Subtractable) repr();
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Set<A> seq() {
            return Cclass.seq(this);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return 3;
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Set$Set4.class */
    public static class Set4<A> extends AbstractSet<A> implements Set<A>, Serializable {
        public static final long serialVersionUID = -3622399588156184395L;
        private final A elem1;
        private final A elem2;
        private final A elem3;
        private final A elem4;

        public Set4(A a, A a2, A a3, A a4) {
            this.elem1 = a;
            this.elem2 = a2;
            this.elem3 = a3;
            this.elem4 = a4;
            Traversable.Cclass.$init$(this);
            Iterable.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
        public Set<A> $minus(A a) {
            Set set;
            A a2 = this.elem1;
            if (a == a2 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a2) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a2) : a.equals(a2)) {
                set = new Set3(this.elem2, this.elem3, this.elem4);
            } else {
                A a3 = this.elem2;
                if (a == a3 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a3) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a3) : a.equals(a3)) {
                    set = new Set3(this.elem1, this.elem3, this.elem4);
                } else {
                    A a4 = this.elem3;
                    if (a == a4 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a4) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a4) : a.equals(a4)) {
                        set = new Set3(this.elem1, this.elem2, this.elem4);
                    } else {
                        A a5 = this.elem4;
                        set = a == a5 ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, a5) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, a5) : a.equals(a5) ? new Set3(this.elem1, this.elem2, this.elem3) : this;
                    }
                }
            }
            return set;
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike
        public Set<A> $plus(A a) {
            return contains(a) ? this : new HashSet().$plus((Object) this.elem1, (Object) this.elem2, (Seq) Predef$.MODULE$.genericWrapArray(new Object[]{this.elem3, this.elem4, a}));
        }

        @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToBoolean(apply(obj));
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<Set> companion() {
            return Cclass.companion(this);
        }

        /* JADX WARN: Code restructure failed: missing block: B:61:0x0137, code lost:
            if ((r4 == r0 ? true : r4 == null ? false : r4 instanceof java.lang.Number ? scala.runtime.BoxesRunTime.equalsNumObject((java.lang.Number) r4, r0) : r4 instanceof java.lang.Character ? scala.runtime.BoxesRunTime.equalsCharObject((java.lang.Character) r4, r0) : r4.equals(r0)) != false) goto L62;
         */
        @Override // scala.collection.GenSetLike, scala.collection.SetLike
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean contains(A r4) {
            /*
                Method dump skipped, instructions count: 318
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.immutable.Set.Set4.contains(java.lang.Object):boolean");
        }

        @Override // scala.collection.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
        public /* bridge */ /* synthetic */ scala.collection.Set empty() {
            return (scala.collection.Set) empty();
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<A, Object> function1) {
            return BoxesRunTime.unboxToBoolean(function1.apply(this.elem1)) || BoxesRunTime.unboxToBoolean(function1.apply(this.elem2)) || BoxesRunTime.unboxToBoolean(function1.apply(this.elem3)) || BoxesRunTime.unboxToBoolean(function1.apply(this.elem4));
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<A> find(Function1<A, Object> function1) {
            return BoxesRunTime.unboxToBoolean(function1.apply(this.elem1)) ? new Some(this.elem1) : BoxesRunTime.unboxToBoolean(function1.apply(this.elem2)) ? new Some(this.elem2) : BoxesRunTime.unboxToBoolean(function1.apply(this.elem3)) ? new Some(this.elem3) : BoxesRunTime.unboxToBoolean(function1.apply(this.elem4)) ? new Some(this.elem4) : None$.MODULE$;
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<A, Object> function1) {
            return BoxesRunTime.unboxToBoolean(function1.apply(this.elem1)) && BoxesRunTime.unboxToBoolean(function1.apply(this.elem2)) && BoxesRunTime.unboxToBoolean(function1.apply(this.elem3)) && BoxesRunTime.unboxToBoolean(function1.apply(this.elem4));
        }

        @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<A, U> function1) {
            function1.apply(this.elem1);
            function1.apply(this.elem2);
            function1.apply(this.elem3);
            function1.apply(this.elem4);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<A> iterator() {
            return Iterator$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{this.elem1, this.elem2, this.elem3, this.elem4}));
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<A, ParSet<A>> parCombiner() {
            return Cclass.parCombiner(this);
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
        public /* bridge */ /* synthetic */ Subtractable repr() {
            return (Subtractable) repr();
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Set<A> seq() {
            return Cclass.seq(this);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return 4;
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return this;
        }
    }

    /* renamed from: scala.collection.immutable.Set$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Set$class.class */
    public abstract class Cclass {
        public static void $init$(Set set) {
        }

        public static GenericCompanion companion(Set set) {
            return Set$.MODULE$;
        }

        public static Combiner parCombiner(Set set) {
            return ParSet$.MODULE$.newCombiner();
        }

        public static Set seq(Set set) {
            return set;
        }

        public static Set toSet(Set set) {
            return (Set) set.mo1to(Set$.MODULE$.canBuildFrom());
        }
    }

    @Override // scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<Set> companion();

    @Override // scala.collection.immutable.Iterable
    Combiner<A, ParSet<A>> parCombiner();

    @Override // scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Set<A> seq();

    <B> Set<B> toSet();
}
