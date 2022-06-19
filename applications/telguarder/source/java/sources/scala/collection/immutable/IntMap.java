package scala.collection.immutable;

import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Function3;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Product;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.generic.Subtractable;
import scala.collection.mutable.ListBuffer;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
import scala.sys.package$;
@ScalaSignature(bytes = "\u0006\u0001\u0011\u0005t!B\u0001\u0003\u0011\u0003I\u0011AB%oi6\u000b\u0007O\u0003\u0002\u0004\t\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001\u0001\t\u0003\u0015-i\u0011A\u0001\u0004\u0006\u0019\tA\t!\u0004\u0002\u0007\u0013:$X*\u00199\u0014\u0005-q\u0001CA\b\u0011\u001b\u00051\u0011BA\t\u0007\u0005\u0019\te.\u001f*fM\")1c\u0003C\u0001)\u00051A(\u001b8jiz\"\u0012!\u0003\u0005\u0006--!\u0019aF\u0001\rG\u0006t')^5mI\u001a\u0013x.\\\u000b\u00061\ru5QU\u000b\u00023I\u0019!D\u0004\u000f\u0007\tm)\u0002!\u0007\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\b;\u0001\u00123\u0011UBU\u001b\u0005q\"BA\u0010\u0005\u0003\u001d9WM\\3sS\u000eL!!\t\u0010\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\t)\u001931\u0014\u0004\u0006\u0019\t\t\t\u0003J\u000b\u0003KQ\u001aBa\t\u0014>\u0001B!!bJ\u00153\u0013\tA#AA\u0006BEN$(/Y2u\u001b\u0006\u0004\bC\u0001\u0016.\u001d\tQ1&\u0003\u0002-\u0005\u0005Y\u0011J\u001c;NCB,F/\u001b7t\u0013\tqsFA\u0002J]RL!A\f\u0019\u000b\u0005Er\u0012!\u0004\"ji>\u0003XM]1uS>t7\u000f\u0005\u00024i1\u0001AAB\u001b$\t\u000b\u0007aGA\u0001U#\t9$\b\u0005\u0002\u0010q%\u0011\u0011H\u0002\u0002\b\u001d>$\b.\u001b8h!\ty1(\u0003\u0002=\r\t\u0019\u0011I\\=\u0011\t)q\u0014FM\u0005\u0003\u007f\t\u00111!T1q!\u0015Q\u0011)\u000b\u001aD\u0013\t\u0011%AA\u0004NCBd\u0015n[3\u0011\u0007)\u0019#\u0007C\u0003\u0014G\u0011\u0005Q\tF\u0001D\u0011\u001595\u0005\"\u0011I\u0003\u0015)W\u000e\u001d;z+\u0005\u0019\u0005\"\u0002&$\t\u0003Z\u0015A\u0002;p\u0019&\u001cH/F\u0001M!\rQQjT\u0005\u0003\u001d\n\u0011A\u0001T5tiB!q\u0002U\u00153\u0013\t\tfA\u0001\u0004UkBdWM\r\u0005\u0006'\u000e\"\t\u0001V\u0001\tSR,'/\u0019;peV\tQ\u000bE\u0002W/>k\u0011\u0001B\u0005\u00031\u0012\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\u00065\u000e\")eW\u0001\bM>\u0014X-Y2i+\taf\r\u0006\u0002^AB\u0011qBX\u0005\u0003?\u001a\u0011A!\u00168ji\")\u0011-\u0017a\u0001E\u0006\ta\r\u0005\u0003\u0010G>+\u0017B\u00013\u0007\u0005%1UO\\2uS>t\u0017\u0007\u0005\u00024M\u0012)q-\u0017b\u0001m\t\tQ\u000bC\u0003jG\u0011\u0005#.\u0001\u0007lKf\u001c\u0018\n^3sCR|'/F\u0001l!\r1v+\u000b\u0005\u0006[\u000e\")A\\\u0001\u000bM>\u0014X-Y2i\u0017\u0016LHCA/p\u0011\u0015\tG\u000e1\u0001q!\u0011y1-K/\t\u000bI\u001cC\u0011I:\u0002\u001dY\fG.^3t\u0013R,'/\u0019;peV\tA\u000fE\u0002W/JBQA^\u0012\u0005\u0006]\fABZ8sK\u0006\u001c\u0007NV1mk\u0016$\"!\u0018=\t\u000b\u0005,\b\u0019A=\u0011\t=\u0019''\u0018\u0005\u0006w\u000e\"\t\u0005`\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0002{B\u0019a0a\u0002\u000e\u0003}TA!!\u0001\u0002\u0004\u0005!A.\u00198h\u0015\t\t)!\u0001\u0003kCZ\f\u0017bAA\u0005\u007f\n11\u000b\u001e:j]\u001eDq!!\u0004$\t\u0003\ny!A\u0004jg\u0016k\u0007\u000f^=\u0016\u0005\u0005E\u0001cA\b\u0002\u0014%\u0019\u0011Q\u0003\u0004\u0003\u000f\t{w\u000e\\3b]\"9\u0011\u0011D\u0012\u0005B\u0005m\u0011A\u00024jYR,'\u000fF\u0002D\u0003;Aq!YA\f\u0001\u0004\ty\u0002E\u0003\u0010G>\u000b\t\u0002C\u0004\u0002$\r\"\t!!\n\u0002\u0013Q\u0014\u0018M\\:g_JlW\u0003BA\u0014\u0003[!B!!\u000b\u00022A!!bIA\u0016!\r\u0019\u0014Q\u0006\u0003\b\u0003_\t\tC1\u00017\u0005\u0005\u0019\u0006bB1\u0002\"\u0001\u0007\u00111\u0007\t\b\u001f\u0005U\u0012FMA\u0016\u0013\r\t9D\u0002\u0002\n\rVt7\r^5p]JBq!a\u000f$\t\u000b\ni$\u0001\u0003tSj,W#A\u0015\t\u000f\u0005\u00053\u0005\"\u0002\u0002D\u0005\u0019q-\u001a;\u0015\t\u0005\u0015\u00131\n\t\u0005\u001f\u0005\u001d#'C\u0002\u0002J\u0019\u0011aa\u00149uS>t\u0007bBA'\u0003\u007f\u0001\r!K\u0001\u0004W\u0016L\bbBA)G\u0011\u0015\u00131K\u0001\nO\u0016$xJ]#mg\u0016,B!!\u0016\u0002ZQ1\u0011qKA/\u0003?\u00022aMA-\t!\ty#a\u0014C\u0002\u0005m\u0013C\u0001\u001a;\u0011\u001d\ti%a\u0014A\u0002%B\u0011\"!\u0019\u0002P\u0011\u0005\r!a\u0019\u0002\u000f\u0011,g-Y;miB)q\"!\u001a\u0002X%\u0019\u0011q\r\u0004\u0003\u0011q\u0012\u0017P\\1nKzBq!a\u001b$\t\u000b\ni'A\u0003baBd\u0017\u0010F\u00023\u0003_Bq!!\u0014\u0002j\u0001\u0007\u0011\u0006C\u0004\u0002t\r\"\t!!\u001e\u0002\u000b\u0011\u0002H.^:\u0016\t\u0005]\u0014Q\u0010\u000b\u0005\u0003s\ny\b\u0005\u0003\u000bG\u0005m\u0004cA\u001a\u0002~\u0011A\u0011qFA9\u0005\u0004\tY\u0006\u0003\u0005\u0002\u0002\u0006E\u0004\u0019AAB\u0003\tYg\u000fE\u0003\u0010!&\nY\bC\u0004\u0002\b\u000e\"\t%!#\u0002\u000fU\u0004H-\u0019;fIV!\u00111RAI)\u0019\ti)a%\u0002\u0016B!!bIAH!\r\u0019\u0014\u0011\u0013\u0003\t\u0003_\t)I1\u0001\u0002\\!9\u0011QJAC\u0001\u0004I\u0003\u0002CAL\u0003\u000b\u0003\r!a$\u0002\u000bY\fG.^3\t\u000f\u0005m5\u0005\"\u0001\u0002\u001e\u0006QQ\u000f\u001d3bi\u0016<\u0016\u000e\u001e5\u0016\t\u0005}\u0015Q\u0015\u000b\t\u0003C\u000b9+!+\u0002,B!!bIAR!\r\u0019\u0014Q\u0015\u0003\t\u0003_\tIJ1\u0001\u0002\\!9\u0011QJAM\u0001\u0004I\u0003\u0002CAL\u00033\u0003\r!a)\t\u000f\u0005\fI\n1\u0001\u0002.BAq\"!\u000e3\u0003G\u000b\u0019\u000bC\u0004\u00022\u000e\"\t!a-\u0002\r\u0011j\u0017N\\;t)\r\u0019\u0015Q\u0017\u0005\b\u0003\u001b\ny\u000b1\u0001*\u0011\u001d\tIl\tC\u0001\u0003w\u000ba\"\\8eS\u001aLxJ\u001d*f[>4X-\u0006\u0003\u0002>\u0006\rG\u0003BA`\u0003\u000b\u0004BAC\u0012\u0002BB\u00191'a1\u0005\u000f\u0005=\u0012q\u0017b\u0001m!9\u0011-a.A\u0002\u0005\u001d\u0007cB\b\u00026%\u0012\u0014\u0011\u001a\t\u0006\u001f\u0005\u001d\u0013\u0011\u0019\u0005\b\u0003\u001b\u001cC\u0011AAh\u0003%)h.[8o/&$\b.\u0006\u0003\u0002R\u0006]GCBAj\u00033\fi\u000e\u0005\u0003\u000bG\u0005U\u0007cA\u001a\u0002X\u0012A\u0011qFAf\u0005\u0004\tY\u0006\u0003\u0005\u0002\\\u0006-\u0007\u0019AAj\u0003\u0011!\b.\u0019;\t\u000f\u0005\fY\r1\u0001\u0002`BQq\"!9*\u0003+\f).!6\n\u0007\u0005\rhAA\u0005Gk:\u001cG/[8og!9\u0011q]\u0012\u0005\u0002\u0005%\u0018\u0001E5oi\u0016\u00148/Z2uS>tw+\u001b;i+\u0019\tY/a?\u0002rR1\u0011Q^A{\u0003{\u0004BAC\u0012\u0002pB\u00191'!=\u0005\u000f\u0005M\u0018Q\u001db\u0001m\t\t!\u000b\u0003\u0005\u0002\\\u0006\u0015\b\u0019AA|!\u0011Q1%!?\u0011\u0007M\nY\u0010B\u0004\u00020\u0005\u0015(\u0019\u0001\u001c\t\u000f\u0005\f)\u000f1\u0001\u0002��BIq\"!9*e\u0005e\u0018q\u001e\u0005\b\u0005\u0007\u0019C\u0011\u0001B\u0003\u00031Ig\u000e^3sg\u0016\u001cG/[8o+\u0011\u00119Aa\u0004\u0015\u0007\r\u0013I\u0001\u0003\u0005\u0002\\\n\u0005\u0001\u0019\u0001B\u0006!\u0011Q1E!\u0004\u0011\u0007M\u0012y\u0001B\u0004\u0002t\n\u0005!\u0019\u0001\u001c\t\u000f\tM1\u0005\"\u0001\u0003\u0016\u0005QA\u0005\u001d7vg\u0012\u0002H.^:\u0016\t\t]!Q\u0004\u000b\u0005\u00053\u0011y\u0002\u0005\u0003\u000bG\tm\u0001cA\u001a\u0003\u001e\u0011A\u0011q\u0006B\t\u0005\u0004\tY\u0006\u0003\u0005\u0002\\\nE\u0001\u0019\u0001B\r\u0011\u001d\u0011\u0019c\tC\u0003\u0003{\t\u0001BZ5sgR\\U-\u001f\u0015\u0005\u0005C\u00119\u0003\u0005\u0003\u0003*\t=RB\u0001B\u0016\u0015\r\u0011iCB\u0001\u000bC:tw\u000e^1uS>t\u0017\u0002\u0002B\u0019\u0005W\u0011q\u0001^1jYJ,7\rC\u0004\u00036\r\")!!\u0010\u0002\u000f1\f7\u000f^&fs\"\"!1\u0007B\u0014S\u001d\u0019#1HB\u0004\u0007k1qA!\u0010\f\u0001\n\u0011yDA\u0002CS:,BA!\u0011\u0003HMA!1\bB\"\u0005\u0013\u0012y\u0005\u0005\u0003\u000bG\t\u0015\u0003cA\u001a\u0003H\u00119QGa\u000f\u0005\u0006\u00041\u0004cA\b\u0003L%\u0019!Q\n\u0004\u0003\u000fA\u0013x\u000eZ;diB\u0019qB!\u0015\n\u0007\tMcA\u0001\u0007TKJL\u0017\r\\5{C\ndW\rC\u0006\u0003X\tm\"Q3A\u0005\u0002\u0005u\u0012A\u00029sK\u001aL\u0007\u0010\u0003\u0006\u0003\\\tm\"\u0011#Q\u0001\n%\nq\u0001\u001d:fM&D\b\u0005C\u0006\u0003`\tm\"Q3A\u0005\u0002\u0005u\u0012\u0001B7bg.D!Ba\u0019\u0003<\tE\t\u0015!\u0003*\u0003\u0015i\u0017m]6!\u0011-\u00119Ga\u000f\u0003\u0016\u0004%\tA!\u001b\u0002\t1,g\r^\u000b\u0003\u0005\u0007B1B!\u001c\u0003<\tE\t\u0015!\u0003\u0003D\u0005)A.\u001a4uA!Y!\u0011\u000fB\u001e\u0005+\u0007I\u0011\u0001B5\u0003\u0015\u0011\u0018n\u001a5u\u0011-\u0011)Ha\u000f\u0003\u0012\u0003\u0006IAa\u0011\u0002\rILw\r\u001b;!\u0011\u001d\u0019\"1\bC\u0001\u0005s\"\"Ba\u001f\u0003��\t\u0005%1\u0011BC!\u0019\u0011iHa\u000f\u0003F5\t1\u0002C\u0004\u0003X\t]\u0004\u0019A\u0015\t\u000f\t}#q\u000fa\u0001S!A!q\rB<\u0001\u0004\u0011\u0019\u0005\u0003\u0005\u0003r\t]\u0004\u0019\u0001B\"\u0011!\u0011IIa\u000f\u0005\u0002\t-\u0015a\u00012j]V!!Q\u0012BJ)\u0019\u0011yI!&\u0003\u0018B!!b\tBI!\r\u0019$1\u0013\u0003\b\u0003_\u00119I1\u00017\u0011!\u00119Ga\"A\u0002\t=\u0005\u0002\u0003B9\u0005\u000f\u0003\rAa$\t\u0015\tm%1HA\u0001\n\u0003\u0011i*\u0001\u0003d_BLX\u0003\u0002BP\u0005K#\"B!)\u0003(\n%&1\u0016BX!\u0019\u0011iHa\u000f\u0003$B\u00191G!*\u0005\rU\u0012IJ1\u00017\u0011%\u00119F!'\u0011\u0002\u0003\u0007\u0011\u0006C\u0005\u0003`\te\u0005\u0013!a\u0001S!Q!q\rBM!\u0003\u0005\rA!,\u0011\t)\u0019#1\u0015\u0005\u000b\u0005c\u0012I\n%AA\u0002\t5\u0006B\u0003BZ\u0005w\t\n\u0011\"\u0001\u00036\u0006q1m\u001c9zI\u0011,g-Y;mi\u0012\nT\u0003\u0002B\\\u0005\u0013,\"A!/+\u0007%\u0012Yl\u000b\u0002\u0003>B!!q\u0018Bc\u001b\t\u0011\tM\u0003\u0003\u0003D\n-\u0012!C;oG\",7m[3e\u0013\u0011\u00119M!1\u0003#Ut7\r[3dW\u0016$g+\u0019:jC:\u001cW\r\u0002\u00046\u0005c\u0013\rA\u000e\u0005\u000b\u0005\u001b\u0014Y$%A\u0005\u0002\t=\u0017AD2paf$C-\u001a4bk2$HEM\u000b\u0005\u0005o\u0013\t\u000e\u0002\u00046\u0005\u0017\u0014\rA\u000e\u0005\u000b\u0005+\u0014Y$%A\u0005\u0002\t]\u0017AD2paf$C-\u001a4bk2$HeM\u000b\u0005\u00053\u0014i.\u0006\u0002\u0003\\*\"!1\tB^\t\u0019)$1\u001bb\u0001m!Q!\u0011\u001dB\u001e#\u0003%\tAa9\u0002\u001d\r|\u0007/\u001f\u0013eK\u001a\fW\u000f\u001c;%iU!!\u0011\u001cBs\t\u0019)$q\u001cb\u0001m!I!\u0011\u001eB\u001e\u0003\u0003%\t\u0005`\u0001\u000eaJ|G-^2u!J,g-\u001b=\t\u0015\t5(1HA\u0001\n\u0003\u0011y/\u0001\u0007qe>$Wo\u0019;Be&$\u00180\u0006\u0002\u0003rB\u0019qBa=\n\u000592\u0001B\u0003B|\u0005w\t\t\u0011\"\u0001\u0003z\u0006q\u0001O]8ek\u000e$X\t\\3nK:$Hc\u0001\u001e\u0003|\"Q!Q B{\u0003\u0003\u0005\rA!=\u0002\u0007a$\u0013\u0007\u0003\u0006\u0004\u0002\tm\u0012\u0011!C!\u0007\u0007\tq\u0002\u001d:pIV\u001cG/\u0013;fe\u0006$xN]\u000b\u0003\u0007\u000b\u00012AV,;\r!\u0019Ia\u0003EA\u0005\r-!a\u0001(jYNA1qAB\u0007\u0005\u0013\u0012y\u0005E\u0002\u000bG]BqaEB\u0004\t\u0003\u0019\t\u0002\u0006\u0002\u0004\u0014A!!QPB\u0004\u0011!\u00199ba\u0002\u0005B\re\u0011AB3rk\u0006d7\u000f\u0006\u0003\u0002\u0012\rm\u0001bBAn\u0007+\u0001\rA\u000f\u0005\n\u0005S\u001c9!!A\u0005BqD!B!<\u0004\b\u0005\u0005I\u0011\u0001Bx\u0011)\u00119pa\u0002\u0002\u0002\u0013\u000511\u0005\u000b\u0004u\r\u0015\u0002B\u0003B\u007f\u0007C\t\t\u00111\u0001\u0003r\"Q1\u0011AB\u0004\u0003\u0003%\tea\u0001\t\u0015\r-2qAA\u0001\n\u0013\u0019i#A\u0006sK\u0006$'+Z:pYZ,GCAB\u0018!\rq8\u0011G\u0005\u0004\u0007gy(AB(cU\u0016\u001cGOB\u0004\u00048-\u0001%a!\u000f\u0003\u0007QK\u0007/\u0006\u0003\u0004<\r\u00053\u0003CB\u001b\u0007{\u0011IEa\u0014\u0011\t)\u00193q\b\t\u0004g\r\u0005CaB\u001b\u00046\u0011\u0015\rA\u000e\u0005\f\u0003\u001b\u001a)D!f\u0001\n\u0003\ti\u0004\u0003\u0006\u0004H\rU\"\u0011#Q\u0001\n%\nAa[3zA!Y\u0011qSB\u001b\u0005+\u0007I\u0011AB&+\t\u0019y\u0004C\u0006\u0004P\rU\"\u0011#Q\u0001\n\r}\u0012A\u0002<bYV,\u0007\u0005C\u0004\u0014\u0007k!\taa\u0015\u0015\r\rU3qKB-!\u0019\u0011ih!\u000e\u0004@!9\u0011QJB)\u0001\u0004I\u0003\u0002CAL\u0007#\u0002\raa\u0010\t\u0011\ru3Q\u0007C\u0001\u0007?\n\u0011b^5uQZ\u000bG.^3\u0016\t\r\u00054\u0011\u000e\u000b\u0005\u0007G\u001aY\u0007\u0005\u0004\u0004f\rU2q\r\b\u0003\u0015\u0001\u00012aMB5\t\u001d\tyca\u0017C\u0002YB\u0001b!\u001c\u0004\\\u0001\u00071qM\u0001\u0002g\"Q!1TB\u001b\u0003\u0003%\ta!\u001d\u0016\t\rM4\u0011\u0010\u000b\u0007\u0007k\u001aYh! \u0011\r\tu4QGB<!\r\u00194\u0011\u0010\u0003\u0007k\r=$\u0019\u0001\u001c\t\u0013\u000553q\u000eI\u0001\u0002\u0004I\u0003BCAL\u0007_\u0002\n\u00111\u0001\u0004x!Q!1WB\u001b#\u0003%\ta!!\u0016\t\t]61\u0011\u0003\u0007k\r}$\u0019\u0001\u001c\t\u0015\t57QGI\u0001\n\u0003\u00199)\u0006\u0003\u0004\n\u000e5UCABFU\u0011\u0019yDa/\u0005\rU\u001a)I1\u00017\u0011%\u0011Io!\u000e\u0002\u0002\u0013\u0005C\u0010\u0003\u0006\u0003n\u000eU\u0012\u0011!C\u0001\u0005_D!Ba>\u00046\u0005\u0005I\u0011ABK)\rQ4q\u0013\u0005\u000b\u0005{\u001c\u0019*!AA\u0002\tE\bBCB\u0001\u0007k\t\t\u0011\"\u0011\u0004\u0004A\u00191g!(\u0005\r\r}UC1\u00017\u0005\u0005\t\u0005#B\bQS\r\r\u0006cA\u001a\u0004&\u001211qU\u000bC\u0002Y\u0012\u0011A\u0011\t\u0005\u0015\r\u001a\u0019\u000b\u0003\u0004H\u0017\u0011\u00051QV\u000b\u0005\u0007_\u001b),\u0006\u0002\u00042B!!bIBZ!\r\u00194Q\u0017\u0003\u0007k\r-&\u0019\u0001\u001c\t\u000f\re6\u0002\"\u0001\u0004<\u0006I1/\u001b8hY\u0016$xN\\\u000b\u0005\u0007{\u001b\u0019\r\u0006\u0004\u0004@\u000e\u00157q\u0019\t\u0005\u0015\r\u001a\t\rE\u00024\u0007\u0007$a!NB\\\u0005\u00041\u0004bBA'\u0007o\u0003\r!\u000b\u0005\t\u0003/\u001b9\f1\u0001\u0004B\"9\u00111N\u0006\u0005\u0002\r-W\u0003BBg\u0007'$Baa4\u0004VB!!bIBi!\r\u001941\u001b\u0003\u0007k\r%'\u0019\u0001\u001c\t\u0011\r]7\u0011\u001aa\u0001\u00073\fQ!\u001a7f[N\u0004RaDBn\u0007?L1a!8\u0007\u0005)a$/\u001a9fCR,GM\u0010\t\u0006\u001fAK3\u0011[\u0004\t\u0007G\\\u0001\u0012\u0011\u0002\u0004\u0014\u0005\u0019a*\u001b7\b\u0015\r\u001d8\"!A\t\u0002\t\u0019I/A\u0002USB\u0004BA! \u0004l\u001aQ1qG\u0006\u0002\u0002#\u0005!a!<\u0014\u000b\r-hBa\u0014\t\u000fM\u0019Y\u000f\"\u0001\u0004rR\u00111\u0011\u001e\u0005\u000b\u0007k\u001cY/!A\u0005F\r]\u0018\u0001\u0003;p'R\u0014\u0018N\\4\u0015\u0003uD!\"a\u001b\u0004l\u0006\u0005I\u0011QB~+\u0011\u0019i\u0010b\u0001\u0015\r\r}HQ\u0001C\u0004!\u0019\u0011ih!\u000e\u0005\u0002A\u00191\u0007b\u0001\u0005\rU\u001aIP1\u00017\u0011\u001d\tie!?A\u0002%B\u0001\"a&\u0004z\u0002\u0007A\u0011\u0001\u0005\u000b\t\u0017\u0019Y/!A\u0005\u0002\u00125\u0011aB;oCB\u0004H._\u000b\u0005\t\u001f!9\u0002\u0006\u0003\u0005\u0012\u0011e\u0001#B\b\u0002H\u0011M\u0001#B\bQS\u0011U\u0001cA\u001a\u0005\u0018\u00111Q\u0007\"\u0003C\u0002YB!\u0002b\u0007\u0005\n\u0005\u0005\t\u0019\u0001C\u000f\u0003\rAH\u0005\r\t\u0007\u0005{\u001a)\u0004\"\u0006\t\u0015\r-21^A\u0001\n\u0013\u0019ic\u0002\u0006\u0005$-\t\t\u0011#\u0001\u0003\tK\t1AQ5o!\u0011\u0011i\bb\n\u0007\u0015\tu2\"!A\t\u0002\t!IcE\u0003\u0005(9\u0011y\u0005C\u0004\u0014\tO!\t\u0001\"\f\u0015\u0005\u0011\u0015\u0002BCB{\tO\t\t\u0011\"\u0012\u0004x\"Q\u00111\u000eC\u0014\u0003\u0003%\t\tb\r\u0016\t\u0011UB1\b\u000b\u000b\to!i\u0004b\u0010\u0005B\u0011\u0015\u0003C\u0002B?\u0005w!I\u0004E\u00024\tw!a!\u000eC\u0019\u0005\u00041\u0004b\u0002B,\tc\u0001\r!\u000b\u0005\b\u0005?\"\t\u00041\u0001*\u0011!\u00119\u0007\"\rA\u0002\u0011\r\u0003\u0003\u0002\u0006$\tsA\u0001B!\u001d\u00052\u0001\u0007A1\t\u0005\u000b\t\u0017!9#!A\u0005\u0002\u0012%S\u0003\u0002C&\t3\"B\u0001\"\u0014\u0005\\A)q\"a\u0012\u0005PAIq\u0002\"\u0015*S\u0011UCQK\u0005\u0004\t'2!A\u0002+va2,G\u0007\u0005\u0003\u000bG\u0011]\u0003cA\u001a\u0005Z\u00111Q\u0007b\u0012C\u0002YB!\u0002b\u0007\u0005H\u0005\u0005\t\u0019\u0001C/!\u0019\u0011iHa\u000f\u0005X!Q11\u0006C\u0014\u0003\u0003%Ia!\f")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IntMap.class */
public abstract class IntMap<T> extends AbstractMap<Object, T> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IntMap$Bin.class */
    public static class Bin<T> extends IntMap<T> implements Product, Serializable {
        private final IntMap<T> left;
        private final int mask;
        private final int prefix;
        private final IntMap<T> right;

        public Bin(int i, int i2, IntMap<T> intMap, IntMap<T> intMap2) {
            this.prefix = i;
            this.mask = i2;
            this.left = intMap;
            this.right = intMap2;
            Product.Cclass.$init$(this);
        }

        public <S> IntMap<S> bin(IntMap<S> intMap, IntMap<S> intMap2) {
            return (left() == intMap && right() == intMap2) ? this : new Bin<>(prefix(), mask(), intMap, intMap2);
        }

        public <T> Bin<T> copy(int i, int i2, IntMap<T> intMap, IntMap<T> intMap2) {
            return new Bin<>(i, i2, intMap, intMap2);
        }

        public <T> int copy$default$1() {
            return prefix();
        }

        public <T> int copy$default$2() {
            return mask();
        }

        public <T> IntMap<T> copy$default$3() {
            return left();
        }

        public <T> IntMap<T> copy$default$4() {
            return right();
        }

        public IntMap<T> left() {
            return this.left;
        }

        public int mask() {
            return this.mask;
        }

        public int prefix() {
            return this.prefix;
        }

        @Override // scala.Product
        public int productArity() {
            return 4;
        }

        @Override // scala.Product
        public Object productElement(int i) {
            Object obj;
            int i2;
            if (i == 0) {
                i2 = prefix();
            } else if (i != 1) {
                if (i == 2) {
                    obj = left();
                } else if (i != 3) {
                    throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
                } else {
                    obj = right();
                }
                return obj;
            } else {
                i2 = mask();
            }
            obj = BoxesRunTime.boxToInteger(i2);
            return obj;
        }

        @Override // scala.Product
        public Iterator<Object> productIterator() {
            return ScalaRunTime$.MODULE$.typedProductIterator(this);
        }

        @Override // scala.Product
        public String productPrefix() {
            return "Bin";
        }

        public IntMap<T> right() {
            return this.right;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IntMap$Tip.class */
    public static class Tip<T> extends IntMap<T> implements Product, Serializable {
        private final int key;
        private final T value;

        public Tip(int i, T t) {
            this.key = i;
            this.value = t;
            Product.Cclass.$init$(this);
        }

        public <T> Tip<T> copy(int i, T t) {
            return new Tip<>(i, t);
        }

        public <T> int copy$default$1() {
            return key();
        }

        public <T> T copy$default$2() {
            return value();
        }

        public int key() {
            return this.key;
        }

        @Override // scala.Product
        public int productArity() {
            return 2;
        }

        @Override // scala.Product
        public Object productElement(int i) {
            Object obj;
            if (i == 0) {
                obj = BoxesRunTime.boxToInteger(key());
            } else if (i != 1) {
                throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
            } else {
                obj = value();
            }
            return obj;
        }

        @Override // scala.Product
        public Iterator<Object> productIterator() {
            return ScalaRunTime$.MODULE$.typedProductIterator(this);
        }

        @Override // scala.Product
        public String productPrefix() {
            return "Tip";
        }

        public T value() {
            return this.value;
        }

        public <S> Tip<S> withValue(S s) {
            return s == value() ? this : new Tip<>(key(), s);
        }
    }

    public static <A, B> Object canBuildFrom() {
        return IntMap$.MODULE$.canBuildFrom();
    }

    public static <T> IntMap<T> singleton(int i, T t) {
        return IntMap$.MODULE$.singleton(i, t);
    }

    public IntMap<T> $minus(int i) {
        IntMap$Nil$ intMap$Nil$;
        if (this instanceof Bin) {
            Bin bin = (Bin) this;
            if (IntMapUtils$.MODULE$.hasMatch(i, bin.prefix(), bin.mask())) {
                intMap$Nil$ = IntMapUtils$.MODULE$.zero(i, bin.mask()) ? IntMapUtils$.MODULE$.bin(bin.prefix(), bin.mask(), bin.left().$minus(i), bin.right()) : IntMapUtils$.MODULE$.bin(bin.prefix(), bin.mask(), bin.left(), bin.right().$minus(i));
                return intMap$Nil$;
            }
            intMap$Nil$ = this;
            return intMap$Nil$;
        }
        if (this instanceof Tip) {
            if (i == ((Tip) this).key()) {
                intMap$Nil$ = IntMap$Nil$.MODULE$;
            }
            intMap$Nil$ = this;
        } else if (!IntMap$Nil$.MODULE$.equals(this)) {
            throw new MatchError(this);
        } else {
            intMap$Nil$ = IntMap$Nil$.MODULE$;
        }
        return intMap$Nil$;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <S> IntMap<S> $plus(Tuple2<Object, S> tuple2) {
        return updated(tuple2._1$mcI$sp(), (int) tuple2.mo268_2());
    }

    public <S> IntMap<S> $plus$plus(IntMap<S> intMap) {
        return unionWith(intMap, new IntMap$$anonfun$$plus$plus$1(this));
    }

    public final T apply(int i) {
        IntMap<T> intMap;
        IntMap<T> intMap2 = this;
        while (true) {
            intMap = intMap2;
            if (!(intMap instanceof Bin)) {
                break;
            }
            Bin bin = (Bin) intMap;
            intMap2 = IntMapUtils$.MODULE$.zero(i, bin.mask()) ? bin.left() : bin.right();
        }
        if (!(intMap instanceof Tip)) {
            if (!IntMap$Nil$.MODULE$.equals(intMap)) {
                throw new MatchError(intMap);
            }
            throw package$.MODULE$.error("key not found");
        }
        Tip tip = (Tip) intMap;
        if (i != tip.key()) {
            throw package$.MODULE$.error("Key not found");
        }
        return (T) tip.value();
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public IntMap<T> empty() {
        return IntMap$Nil$.MODULE$;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public IntMap<T> filter(Function1<Tuple2<Object, T>, Object> function1) {
        IntMap$Nil$ intMap$Nil$;
        if (!(this instanceof Bin)) {
            if (this instanceof Tip) {
                Tip tip = (Tip) this;
                if (!BoxesRunTime.unboxToBoolean(function1.apply(new Tuple2<>(BoxesRunTime.boxToInteger(tip.key()), tip.value())))) {
                    intMap$Nil$ = IntMap$Nil$.MODULE$;
                }
                intMap$Nil$ = this;
            } else if (!IntMap$Nil$.MODULE$.equals(this)) {
                throw new MatchError(this);
            } else {
                intMap$Nil$ = IntMap$Nil$.MODULE$;
            }
            return intMap$Nil$;
        }
        Bin bin = (Bin) this;
        Tuple2 tuple2 = new Tuple2(bin.left().filter((Function1) function1), bin.right().filter((Function1) function1));
        Tuple2 tuple22 = new Tuple2(tuple2.mo269_1(), tuple2.mo268_2());
        IntMap<T> intMap = (IntMap) tuple22.mo269_1();
        IntMap<T> intMap2 = (IntMap) tuple22.mo268_2();
        if (bin.left() != intMap || bin.right() != intMap2) {
            intMap$Nil$ = IntMapUtils$.MODULE$.bin(bin.prefix(), bin.mask(), intMap, intMap2);
            return intMap$Nil$;
        }
        intMap$Nil$ = this;
        return intMap$Nil$;
    }

    public final int firstKey() {
        IntMap<T> intMap;
        IntMap<T> intMap2 = this;
        while (true) {
            intMap = intMap2;
            if (!(intMap instanceof Bin)) {
                break;
            }
            intMap2 = ((Bin) intMap).left();
        }
        if (intMap instanceof Tip) {
            return ((Tip) intMap).key();
        }
        if (!IntMap$Nil$.MODULE$.equals(intMap)) {
            throw new MatchError(intMap);
        }
        throw package$.MODULE$.error("Empty set");
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public final <U> void foreach(Function1<Tuple2<Object, T>, U> function1) {
        IntMap<T> intMap;
        IntMap<T> intMap2 = this;
        while (true) {
            intMap = intMap2;
            if (!(intMap instanceof Bin)) {
                break;
            }
            Bin bin = (Bin) intMap;
            bin.left().foreach(function1);
            intMap2 = bin.right();
        }
        if (intMap instanceof Tip) {
            Tip tip = (Tip) intMap;
            function1.apply(new Tuple2<>(BoxesRunTime.boxToInteger(tip.key()), tip.value()));
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        } else if (!IntMap$Nil$.MODULE$.equals(intMap)) {
            throw new MatchError(intMap);
        } else {
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
        BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
    }

    public final void foreachKey(Function1<Object, BoxedUnit> function1) {
        IntMap<T> intMap;
        IntMap<T> intMap2 = this;
        while (true) {
            intMap = intMap2;
            if (!(intMap instanceof Bin)) {
                break;
            }
            Bin bin = (Bin) intMap;
            bin.left().foreachKey(function1);
            intMap2 = bin.right();
        }
        if (intMap instanceof Tip) {
            function1.apply$mcVI$sp(((Tip) intMap).key());
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        } else if (!IntMap$Nil$.MODULE$.equals(intMap)) {
            throw new MatchError(intMap);
        } else {
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
        BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void foreachValue(Function1<T, BoxedUnit> function1) {
        IntMap<T> intMap;
        IntMap<T> intMap2 = this;
        while (true) {
            intMap = intMap2;
            if (!(intMap instanceof Bin)) {
                break;
            }
            Bin bin = (Bin) intMap;
            bin.left().foreachValue(function1);
            intMap2 = bin.right();
        }
        if (intMap instanceof Tip) {
            BoxedUnit boxedUnit = (BoxedUnit) function1.apply(((Tip) intMap).value());
        } else if (!IntMap$Nil$.MODULE$.equals(intMap)) {
            throw new MatchError(intMap);
        } else {
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
        BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
    }

    public final Option<T> get(int i) {
        IntMap<T> intMap;
        Some some;
        IntMap<T> intMap2 = this;
        while (true) {
            intMap = intMap2;
            if (!(intMap instanceof Bin)) {
                break;
            }
            Bin bin = (Bin) intMap;
            intMap2 = IntMapUtils$.MODULE$.zero(i, bin.mask()) ? bin.left() : bin.right();
        }
        if (intMap instanceof Tip) {
            Tip tip = (Tip) intMap;
            some = i == tip.key() ? new Some(tip.value()) : None$.MODULE$;
        } else if (!IntMap$Nil$.MODULE$.equals(intMap)) {
            throw new MatchError(intMap);
        } else {
            some = None$.MODULE$;
        }
        return some;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public final /* bridge */ /* synthetic */ Option get(Object obj) {
        return get(BoxesRunTime.unboxToInt(obj));
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003a, code lost:
        return r6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <S> S getOrElse(int r5, scala.Function0<S> r6) {
        /*
            r4 = this;
            r0 = r4
            r7 = r0
        L2:
            scala.collection.immutable.IntMap$Nil$ r0 = scala.collection.immutable.IntMap$Nil$.MODULE$
            r1 = r7
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L16
            r0 = r6
            java.lang.Object r0 = r0.apply()
            r6 = r0
            goto L39
        L16:
            r0 = r7
            boolean r0 = r0 instanceof scala.collection.immutable.IntMap.Tip
            if (r0 == 0) goto L3b
            r0 = r7
            scala.collection.immutable.IntMap$Tip r0 = (scala.collection.immutable.IntMap.Tip) r0
            r7 = r0
            r0 = r5
            r1 = r7
            int r1 = r1.key()
            if (r0 != r1) goto L32
            r0 = r7
            java.lang.Object r0 = r0.value()
            r6 = r0
            goto L39
        L32:
            r0 = r6
            java.lang.Object r0 = r0.apply()
            r6 = r0
        L39:
            r0 = r6
            return r0
        L3b:
            r0 = r7
            boolean r0 = r0 instanceof scala.collection.immutable.IntMap.Bin
            if (r0 == 0) goto L65
            r0 = r7
            scala.collection.immutable.IntMap$Bin r0 = (scala.collection.immutable.IntMap.Bin) r0
            r7 = r0
            scala.collection.immutable.IntMapUtils$ r0 = scala.collection.immutable.IntMapUtils$.MODULE$
            r1 = r5
            r2 = r7
            int r2 = r2.mask()
            boolean r0 = r0.zero(r1, r2)
            if (r0 == 0) goto L5d
            r0 = r7
            scala.collection.immutable.IntMap r0 = r0.left()
            r7 = r0
            goto L2
        L5d:
            r0 = r7
            scala.collection.immutable.IntMap r0 = r0.right()
            r7 = r0
            goto L2
        L65:
            scala.MatchError r0 = new scala.MatchError
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.immutable.IntMap.getOrElse(int, scala.Function0):java.lang.Object");
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public final /* bridge */ /* synthetic */ Object getOrElse(Object obj, Function0 function0) {
        return getOrElse(BoxesRunTime.unboxToInt(obj), function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <R> IntMap<T> intersection(IntMap<R> intMap) {
        return (IntMap<R>) intersectionWith(intMap, new IntMap$$anonfun$intersection$1(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <S, R> IntMap<R> intersectionWith(IntMap<S> intMap, Function3<Object, T, S, R> function3) {
        IntMap$Nil$ intMap$Nil$;
        Tuple2 tuple2 = new Tuple2(this, intMap);
        if (tuple2.mo269_1() instanceof Bin) {
            Bin bin = (Bin) tuple2.mo269_1();
            if (tuple2.mo268_2() instanceof Bin) {
                Bin bin2 = (Bin) tuple2.mo268_2();
                intMap$Nil$ = IntMapUtils$.MODULE$.shorter(bin.mask(), bin2.mask()) ? IntMapUtils$.MODULE$.hasMatch(bin2.prefix(), bin.prefix(), bin.mask()) ? IntMapUtils$.MODULE$.zero(bin2.prefix(), bin.mask()) ? bin.left().intersectionWith(bin2, function3) : bin.right().intersectionWith(bin2, function3) : IntMap$Nil$.MODULE$ : bin.mask() == bin2.mask() ? IntMapUtils$.MODULE$.bin(bin.prefix(), bin.mask(), bin.left().intersectionWith(bin2.left(), function3), bin.right().intersectionWith(bin2.right(), function3)) : IntMapUtils$.MODULE$.hasMatch(bin.prefix(), bin2.prefix(), bin2.mask()) ? IntMapUtils$.MODULE$.zero(bin.prefix(), bin2.mask()) ? intersectionWith(bin2.left(), function3) : intersectionWith(bin2.right(), function3) : IntMap$Nil$.MODULE$;
                return intMap$Nil$;
            }
        }
        if (tuple2.mo269_1() instanceof Tip) {
            Tip tip = (Tip) tuple2.mo269_1();
            Option<T> option = ((IntMap) tuple2.mo268_2()).get(tip.key());
            if (None$.MODULE$.equals(option)) {
                intMap$Nil$ = IntMap$Nil$.MODULE$;
            } else if (!(option instanceof Some)) {
                throw new MatchError(option);
            } else {
                intMap$Nil$ = new Tip(tip.key(), function3.apply(BoxesRunTime.boxToInteger(tip.key()), tip.value(), ((Some) option).m362x()));
            }
        } else if (tuple2.mo268_2() instanceof Tip) {
            Tip tip2 = (Tip) tuple2.mo268_2();
            Option<T> option2 = get(tip2.key());
            if (None$.MODULE$.equals(option2)) {
                intMap$Nil$ = IntMap$Nil$.MODULE$;
            } else if (!(option2 instanceof Some)) {
                throw new MatchError(option2);
            } else {
                intMap$Nil$ = new Tip(tip2.key(), function3.apply(BoxesRunTime.boxToInteger(tip2.key()), ((Some) option2).m362x(), tip2.value()));
            }
        } else {
            intMap$Nil$ = IntMap$Nil$.MODULE$;
        }
        return intMap$Nil$;
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return equals(IntMap$Nil$.MODULE$);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<Object, T>> iterator() {
        return IntMap$Nil$.MODULE$.equals(this) ? Iterator$.MODULE$.empty() : new IntMapEntryIterator(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<Object> keysIterator() {
        return IntMap$Nil$.MODULE$.equals(this) ? Iterator$.MODULE$.empty() : new IntMapKeyIterator(this);
    }

    public final int lastKey() {
        IntMap<T> intMap;
        IntMap<T> intMap2 = this;
        while (true) {
            intMap = intMap2;
            if (!(intMap instanceof Bin)) {
                break;
            }
            intMap2 = ((Bin) intMap).right();
        }
        if (intMap instanceof Tip) {
            return ((Tip) intMap).key();
        }
        if (!IntMap$Nil$.MODULE$.equals(intMap)) {
            throw new MatchError(intMap);
        }
        throw package$.MODULE$.error("Empty set");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <S> IntMap<S> modifyOrRemove(Function2<Object, T, Option<S>> function2) {
        IntMap$Nil$ intMap$Nil$;
        if (this instanceof Bin) {
            Bin bin = (Bin) this;
            IntMap<S> modifyOrRemove = bin.left().modifyOrRemove(function2);
            IntMap<S> modifyOrRemove2 = bin.right().modifyOrRemove(function2);
            intMap$Nil$ = (bin.left() == modifyOrRemove && bin.right() == modifyOrRemove2) ? this : IntMapUtils$.MODULE$.bin(bin.prefix(), bin.mask(), modifyOrRemove, modifyOrRemove2);
        } else if (this instanceof Tip) {
            Tip tip = (Tip) this;
            Option option = (Option) function2.apply(BoxesRunTime.boxToInteger(tip.key()), tip.value());
            if (None$.MODULE$.equals(option)) {
                intMap$Nil$ = IntMap$Nil$.MODULE$;
            } else if (!(option instanceof Some)) {
                throw new MatchError(option);
            } else {
                Some some = (Some) option;
                intMap$Nil$ = tip.value() == some.m362x() ? this : new Tip(tip.key(), some.m362x());
            }
        } else if (!IntMap$Nil$.MODULE$.equals(this)) {
            throw new MatchError(this);
        } else {
            intMap$Nil$ = IntMap$Nil$.MODULE$;
        }
        return intMap$Nil$;
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public final int size() {
        int i;
        if (IntMap$Nil$.MODULE$.equals(this)) {
            i = 0;
        } else if (this instanceof Tip) {
            i = 1;
        } else if (!(this instanceof Bin)) {
            throw new MatchError(this);
        } else {
            Bin bin = (Bin) this;
            i = bin.right().size() + bin.left().size();
        }
        return i;
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "IntMap";
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<Tuple2<Object, T>> toList() {
        ListBuffer listBuffer = new ListBuffer();
        foreach(new IntMap$$anonfun$toList$1(this, listBuffer));
        return listBuffer.toList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <S> IntMap<S> transform(Function2<Object, T, S> function2) {
        Tip<S> tip;
        if (this instanceof Bin) {
            Bin bin = (Bin) this;
            tip = bin.bin(bin.left().transform(function2), bin.right().transform(function2));
        } else if (this instanceof Tip) {
            Tip tip2 = (Tip) this;
            tip = tip2.withValue(function2.apply(BoxesRunTime.boxToInteger(tip2.key()), tip2.value()));
        } else if (!IntMap$Nil$.MODULE$.equals(this)) {
            throw new MatchError(this);
        } else {
            tip = IntMap$Nil$.MODULE$;
        }
        return tip;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <S> IntMap<S> unionWith(IntMap<S> intMap, Function3<Object, S, S, S> function3) {
        Bin bin;
        Tuple2 tuple2 = new Tuple2(this, intMap);
        if (tuple2.mo269_1() instanceof Bin) {
            Bin bin2 = (Bin) tuple2.mo269_1();
            if (tuple2.mo268_2() instanceof Bin) {
                Bin bin3 = (Bin) tuple2.mo268_2();
                bin = IntMapUtils$.MODULE$.shorter(bin2.mask(), bin3.mask()) ? IntMapUtils$.MODULE$.hasMatch(bin3.prefix(), bin2.prefix(), bin2.mask()) ? IntMapUtils$.MODULE$.zero(bin3.prefix(), bin2.mask()) ? new Bin(bin2.prefix(), bin2.mask(), bin2.left().unionWith(bin3, function3), bin2.right()) : new Bin(bin2.prefix(), bin2.mask(), bin2.left(), bin2.right().unionWith(bin3, function3)) : IntMapUtils$.MODULE$.join(bin2.prefix(), this, bin3.prefix(), bin3) : IntMapUtils$.MODULE$.shorter(bin3.mask(), bin2.mask()) ? IntMapUtils$.MODULE$.hasMatch(bin2.prefix(), bin3.prefix(), bin3.mask()) ? IntMapUtils$.MODULE$.zero(bin2.prefix(), bin3.mask()) ? new Bin(bin3.prefix(), bin3.mask(), unionWith(bin3.left(), function3), bin3.right()) : new Bin(bin3.prefix(), bin3.mask(), bin3.left(), unionWith(bin3.right(), function3)) : IntMapUtils$.MODULE$.join(bin2.prefix(), this, bin3.prefix(), bin3) : bin2.prefix() == bin3.prefix() ? new Bin(bin2.prefix(), bin2.mask(), bin2.left().unionWith(bin3.left(), function3), bin2.right().unionWith(bin3.right(), function3)) : IntMapUtils$.MODULE$.join(bin2.prefix(), this, bin3.prefix(), bin3);
                return bin;
            }
        }
        if (tuple2.mo269_1() instanceof Tip) {
            Tip tip = (Tip) tuple2.mo269_1();
            bin = ((IntMap) tuple2.mo268_2()).updateWith(tip.key(), tip.value(), new IntMap$$anonfun$unionWith$1(this, function3, tip));
        } else if (tuple2.mo268_2() instanceof Tip) {
            Tip tip2 = (Tip) tuple2.mo268_2();
            bin = ((IntMap) tuple2.mo269_1()).updateWith(tip2.key(), tip2.value(), new IntMap$$anonfun$unionWith$2(this, function3, tip2));
        } else if (IntMap$Nil$.MODULE$.equals(tuple2.mo269_1())) {
            bin = (IntMap) tuple2.mo268_2();
        } else if (!IntMap$Nil$.MODULE$.equals(tuple2.mo268_2())) {
            throw new MatchError(tuple2);
        } else {
            bin = (IntMap) tuple2.mo269_1();
        }
        return bin;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <S> IntMap<S> updateWith(int i, S s, Function2<T, S, S> function2) {
        Bin bin;
        if (this instanceof Bin) {
            Bin bin2 = (Bin) this;
            bin = IntMapUtils$.MODULE$.hasMatch(i, bin2.prefix(), bin2.mask()) ? IntMapUtils$.MODULE$.zero(i, bin2.mask()) ? new Bin(bin2.prefix(), bin2.mask(), bin2.left().updateWith(i, s, function2), bin2.right()) : new Bin(bin2.prefix(), bin2.mask(), bin2.left(), bin2.right().updateWith(i, s, function2)) : IntMapUtils$.MODULE$.join(i, new Tip(i, s), bin2.prefix(), this);
        } else if (this instanceof Tip) {
            Tip tip = (Tip) this;
            bin = i == tip.key() ? new Tip(i, function2.apply(tip.value(), s)) : IntMapUtils$.MODULE$.join(i, new Tip(i, s), tip.key(), this);
        } else if (!IntMap$Nil$.MODULE$.equals(this)) {
            throw new MatchError(this);
        } else {
            bin = new Tip(i, s);
        }
        return bin;
    }

    public <S> IntMap<S> updated(int i, S s) {
        Bin bin;
        if (this instanceof Bin) {
            Bin bin2 = (Bin) this;
            bin = IntMapUtils$.MODULE$.hasMatch(i, bin2.prefix(), bin2.mask()) ? IntMapUtils$.MODULE$.zero(i, bin2.mask()) ? new Bin(bin2.prefix(), bin2.mask(), bin2.left().updated(i, (int) s), bin2.right()) : new Bin(bin2.prefix(), bin2.mask(), bin2.left(), bin2.right().updated(i, (int) s)) : IntMapUtils$.MODULE$.join(i, new Tip(i, s), bin2.prefix(), this);
        } else if (this instanceof Tip) {
            Tip tip = (Tip) this;
            bin = i == tip.key() ? new Tip(i, s) : IntMapUtils$.MODULE$.join(i, new Tip(i, s), tip.key(), this);
        } else if (!IntMap$Nil$.MODULE$.equals(this)) {
            throw new MatchError(this);
        } else {
            bin = new Tip(i, s);
        }
        return bin;
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<T> valuesIterator() {
        return IntMap$Nil$.MODULE$.equals(this) ? Iterator$.MODULE$.empty() : new IntMapValueIterator(this);
    }
}
