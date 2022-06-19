package scala.util.matching;

import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.AbstractIterator;
import scala.collection.BufferedIterator;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.Traversable;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.IndexedSeq$;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.immutable.Map;
import scala.collection.immutable.MapLike;
import scala.collection.immutable.Nil$;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.StringOps;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.StringBuilder;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ClassTag$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.RichInt$;
import scala.util.matching.Regex;
@ScalaSignature(bytes = "\u0006\u0001\r\u001de\u0001B\u0001\u0003\u0001%\u0011QAU3hKbT!a\u0001\u0003\u0002\u00115\fGo\u00195j]\u001eT!!\u0002\u0004\u0002\tU$\u0018\u000e\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u00011c\u0001\u0001\u000b\u001dA\u00111\u0002D\u0007\u0002\r%\u0011QB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0005-y\u0011B\u0001\t\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!\u0011\u0002A!b\u0001\n\u0003\u0019\u0012a\u00029biR,'O\\\u000b\u0002)A\u0011QcG\u0007\u0002-)\u0011q\u0003G\u0001\u0006e\u0016<W\r\u001f\u0006\u0003\u000beQ\u0011AG\u0001\u0005U\u00064\u0018-\u0003\u0002\u001d-\t9\u0001+\u0019;uKJt\u0007\u0002\u0003\u0010\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u000b\u0002\u0011A\fG\u000f^3s]\u0002B\u0001\u0002\t\u0001\u0003\u0002\u0003\u0006I!I\u0001\u000bOJ|W\u000f\u001d(b[\u0016\u001c\bcA\u0006#I%\u00111E\u0002\u0002\u000byI,\u0007/Z1uK\u0012t\u0004CA\u0013)\u001d\tYa%\u0003\u0002(\r\u00051\u0001K]3eK\u001aL!!\u000b\u0016\u0003\rM#(/\u001b8h\u0015\t9c\u0001\u0003\u0004-\u0001\u0011\u0005!!L\u0001\u0007y%t\u0017\u000e\u001e \u0015\u00079\u0002\u0014\u0007\u0005\u00020\u00015\t!\u0001C\u0003\u0013W\u0001\u0007A\u0003C\u0003!W\u0001\u0007\u0011\u0005C\u0003-\u0001\u0011\u00051\u0007F\u0002/iUBQa\u0006\u001aA\u0002\u0011BQ\u0001\t\u001aA\u0002\u0005BQa\u000e\u0001\u0005\u0002a\n!\"\u001e8baBd\u0017pU3r)\tI\u0004\nE\u0002\fuqJ!a\u000f\u0004\u0003\r=\u0003H/[8o!\riT\t\n\b\u0003}\rs!a\u0010\"\u000e\u0003\u0001S!!\u0011\u0005\u0002\rq\u0012xn\u001c;?\u0013\u00059\u0011B\u0001#\u0007\u0003\u001d\u0001\u0018mY6bO\u0016L!AR$\u0003\t1K7\u000f\u001e\u0006\u0003\t\u001aAQ!\u0013\u001cA\u0002)\u000b\u0011a\u001d\t\u0003\u0017:k\u0011\u0001\u0014\u0006\u0003\u001bf\tA\u0001\\1oO&\u0011q\n\u0014\u0002\r\u0007\"\f'oU3rk\u0016t7-\u001a\u0005\u0006o\u0001!\t!\u0015\u000b\u0003%^\u00032a\u0003\u001eT!\riT\t\u0016\t\u0003\u0017UK!A\u0016\u0004\u0003\t\rC\u0017M\u001d\u0005\u00061B\u0003\r\u0001V\u0001\u0002G\")q\u0007\u0001C\u00015R\u0011\u0011h\u0017\u0005\u00069f\u0003\r!X\u0001\u0002[B\u0019a,a\u0016\u000f\u0005=zv!\u00021\u0003\u0011\u0003\t\u0017!\u0002*fO\u0016D\bCA\u0018c\r\u0015\t!\u0001#\u0001d'\r\u0011'B\u0004\u0005\u0006Y\t$\t!\u001a\u000b\u0002C\u001a9qM\u0019I\u0001\u0004\u0003A'!C'bi\u000eDG)\u0019;b'\t1'\u0002C\u0003kM\u0012\u00051.\u0001\u0004%S:LG\u000f\n\u000b\u0002YB\u00111\"\\\u0005\u0003]\u001a\u0011A!\u00168ji\"9\u0001O\u001ab\u0001\u000e\u0003\t\u0018AB:pkJ\u001cW-F\u0001K\u0011\u001d\u0001cM1A\u0007\u0002M,\u0012\u0001\u001e\t\u0004{U$\u0013B\u0001<H\u0005\r\u0019V-\u001d\u0005\u0006q\u001a4\t!_\u0001\u000bOJ|W\u000f]\"pk:$X#\u0001>\u0011\u0005-Y\u0018B\u0001?\u0007\u0005\rIe\u000e\u001e\u0005\u0006}\u001a4\t!_\u0001\u0006gR\f'\u000f\u001e\u0005\u0007}\u001a4\t!!\u0001\u0015\u0007i\f\u0019\u0001\u0003\u0004\u0002\u0006}\u0004\rA_\u0001\u0002S\"1\u0011\u0011\u00024\u0007\u0002e\f1!\u001a8e\u0011\u001d\tIA\u001aD\u0001\u0003\u001b!2A_A\b\u0011\u001d\t)!a\u0003A\u0002iDq!a\u0005g\t\u0003\t)\"A\u0004nCR\u001c\u0007.\u001a3\u0016\u0003\u0011Bq!!\u0007g\t\u0003\tY\"A\u0003he>,\b\u000fF\u0002%\u0003;Aq!!\u0002\u0002\u0018\u0001\u0007!\u0010C\u0004\u0002\"\u0019$\t!a\t\u0002\u0013M,(m\u001a:pkB\u001cX#\u0001\u001f\t\r\u0005\u001db\r\"\u0001r\u0003\u0019\u0011WMZ8sK\"9\u0011q\u00054\u0005\u0002\u0005-Bc\u0001&\u0002.!9\u0011QAA\u0015\u0001\u0004Q\bBBA\u0019M\u0012\u0005\u0011/A\u0003bMR,'\u000fC\u0004\u00022\u0019$\t!!\u000e\u0015\u0007)\u000b9\u0004C\u0004\u0002\u0006\u0005M\u0002\u0019\u0001>\t\u0015\u0005mb\r#b\u0001\n\u0013\ti$A\u0006oC6,Gk\\%oI\u0016DXCAA !\u0015)\u0013\u0011\t\u0013{\u0013\r\t\u0019E\u000b\u0002\u0004\u001b\u0006\u0004\bBCA$M\"\u0005\t\u0015)\u0003\u0002@\u0005aa.Y7f)>Le\u000eZ3yA!9\u0011\u0011\u00044\u0005\u0002\u0005-Cc\u0001\u0013\u0002N!9\u0011qJA%\u0001\u0004!\u0013AA5e\u0011\u001d\t\u0019F\u001aC!\u0003+\n\u0001\u0002^8TiJLgn\u001a\u000b\u0002I\u00191\u0011\u0011\f2\u0001\u00037\u0012Q!T1uG\"\u001cR!a\u0016\u000b\u0003;\u00022!a\u0018g\u001b\u0005\u0011\u0007\"\u00039\u0002X\t\u0015\r\u0011\"\u0001r\u0011)\t)'a\u0016\u0003\u0002\u0003\u0006IAS\u0001\bg>,(oY3!\u00111\tI'a\u0016\u0003\u0006\u0004%\tAAA6\u0003\u001di\u0017\r^2iKJ,\"!!\u001c\u0011\u0007U\ty'C\u0002\u0002rY\u0011q!T1uG\",'\u000fC\u0006\u0002v\u0005]#\u0011!Q\u0001\n\u00055\u0014\u0001C7bi\u000eDWM\u001d\u0011\t\u0013\u0001\n9F!b\u0001\n\u0003\u0019\bBCA>\u0003/\u0012\t\u0011)A\u0005i\u0006YqM]8va:\u000bW.Z:!\u0011\u001da\u0013q\u000bC\u0001\u0003\u007f\"\u0002\"!!\u0002\u0004\u0006\u0015\u0015q\u0011\t\u0005\u0003?\n9\u0006\u0003\u0004q\u0003{\u0002\rA\u0013\u0005\t\u0003S\ni\b1\u0001\u0002n!1\u0001%! A\u0002QD\u0001B`A,\u0005\u0004%\t!\u001f\u0005\t\u0003\u001b\u000b9\u0006)A\u0005u\u000611\u000f^1si\u0002B\u0011\"!\u0003\u0002X\t\u0007I\u0011A=\t\u0011\u0005M\u0015q\u000bQ\u0001\ni\fA!\u001a8eA!1\u00010a\u0016\u0005\u0002eD1\"!'\u0002X!\u0015\r\u0011\"\u0003\u0002\u001c\u000611\u000f^1siN,\"!!(\u0011\t-\tyJ_\u0005\u0004\u0003C3!!B!se\u0006L\bbCAS\u0003/B\t\u0011)Q\u0005\u0003;\u000bqa\u001d;beR\u001c\b\u0005C\u0006\u0002*\u0006]\u0003R1A\u0005\n\u0005m\u0015\u0001B3oIND1\"!,\u0002X!\u0005\t\u0015)\u0003\u0002\u001e\u0006)QM\u001c3tA!9a0a\u0016\u0005\u0002\u0005EFc\u0001>\u00024\"9\u0011QAAX\u0001\u0004Q\b\u0002CA\u0005\u0003/\"\t!a.\u0015\u0007i\fI\fC\u0004\u0002\u0006\u0005U\u0006\u0019\u0001>\t\u0011\u0005u\u0016q\u000bC\u0001\u0003\u007f\u000bQAZ8sG\u0016,\"!!1\u000e\u0005\u0005]saBAcE\"\u0005\u0011qY\u0001\u0006\u001b\u0006$8\r\u001b\t\u0005\u0003?\nIMB\u0004\u0002Z\tD\t!a3\u0014\u0007\u0005%'\u0002C\u0004-\u0003\u0013$\t!a4\u0015\u0005\u0005\u001d\u0007\u0002CAj\u0003\u0013$\t!!6\u0002\u000fUt\u0017\r\u001d9msR!\u0011q[Ao!\u0011Y\u0011\u0011\u001c\u0013\n\u0007\u0005mgA\u0001\u0003T_6,\u0007b\u0002/\u0002R\u0002\u0007\u0011\u0011Q\u0004\b\u0003C\u0014\u0007\u0012AAr\u0003\u00199%o\\;qgB!\u0011qLAs\r\u001d\t9O\u0019E\u0001\u0003S\u0014aa\u0012:pkB\u001c8cAAs\u0015!9A&!:\u0005\u0002\u00055HCAAr\u0011\u001d9\u0014Q\u001dC\u0001\u0003c$B!a=\u0002vB\u00191B\u000f;\t\u000fq\u000by\u000f1\u0001\u0002\u0002\u001a1\u0011\u0011 2\u0001\u0003w\u0014Q\"T1uG\"LE/\u001a:bi>\u00148\u0003CA|\u0003{\u0014I!!\u0018\u0011\u000b\u0005}(Q\u0001\u0013\u000e\u0005\t\u0005!b\u0001B\u0002\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\n\t\t\u001d!\u0011\u0001\u0002\u0011\u0003\n\u001cHO]1di&#XM]1u_J\u0004B!\u0010B\u0006I%\u0019!QB$\u0003\u0011%#XM]1u_JD\u0011\u0002]A|\u0005\u000b\u0007I\u0011A9\t\u0015\u0005\u0015\u0014q\u001fB\u0001B\u0003%!\n\u0003\u0006\u0018\u0003o\u0014)\u0019!C\u0001\u0005+)\u0012A\f\u0005\u000b\u00053\t9P!A!\u0002\u0013q\u0013A\u0002:fO\u0016D\b\u0005C\u0005!\u0003o\u0014)\u0019!C\u0001g\"Q\u00111PA|\u0005\u0003\u0005\u000b\u0011\u0002;\t\u000f1\n9\u0010\"\u0001\u0003\"QA!1\u0005B\u0013\u0005O\u0011I\u0003\u0005\u0003\u0002`\u0005]\bB\u00029\u0003 \u0001\u0007!\n\u0003\u0004\u0018\u0005?\u0001\rA\f\u0005\u0007A\t}\u0001\u0019\u0001;\t\u0017\u0005%\u0014q\u001fb\u0001\n#\u0011\u00171\u000e\u0005\n\u0003k\n9\u0010)A\u0005\u0003[B!B!\r\u0002x\u0002\u0007I\u0011\u0002B\u001a\u0003!qW\r\u001f;TK\u0016tWC\u0001B\u001b!\rY!qG\u0005\u0004\u0005s1!a\u0002\"p_2,\u0017M\u001c\u0005\u000b\u0005{\t9\u00101A\u0005\n\t}\u0012\u0001\u00048fqR\u001cV-\u001a8`I\u0015\fHc\u00017\u0003B!Q!1\tB\u001e\u0003\u0003\u0005\rA!\u000e\u0002\u0007a$\u0013\u0007C\u0005\u0003H\u0005]\b\u0015)\u0003\u00036\u0005Ia.\u001a=u'\u0016,g\u000e\t\u0005\t\u0005\u0017\n9\u0010\"\u0001\u00034\u00059\u0001.Y:OKb$\b\u0002\u0003B(\u0003o$\t!!\u0016\u0002\t9,\u0007\u0010\u001e\u0005\t\u0003'\n9\u0010\"\u0011\u0003TQ\u0011!Q\u000b\t\u0004\u0017\n]\u0013BA\u0015M\u0011\u0019q\u0018q\u001fC\u0001s\"9a0a>\u0005\u0002\tuCc\u0001>\u0003`!9\u0011Q\u0001B.\u0001\u0004Q\bbBA\u0005\u0003o$\t!\u001f\u0005\t\u0003\u0013\t9\u0010\"\u0001\u0003fQ\u0019!Pa\u001a\t\u000f\u0005\u0015!1\ra\u0001u\"1\u00010a>\u0005\u0002eD\u0001B!\u001c\u0002x\u0012\u0005!qN\u0001\n[\u0006$8\r\u001b#bi\u0006,\"A!\u001d\u0011\u000bu\u0012Y!!!\t\u0013\tU\u0014q\u001fC\u0001\u0005\t]\u0014a\u0004:fa2\f7-Z7f]R$\u0015\r^1\u0016\u0005\te$C\u0002B>\u0005\u007f\u0012\tIB\u0004\u0003~\tM\u0004A!\u001f\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\r\u0005}(QAAA!\u0011\tyFa!\u0007\u0015\t\u0015%\r%A\u0002\u0002\t\u00119IA\u0006SKBd\u0017mY3nK:$8c\u0001BB\u0015!1!Na!\u0005\u0002-D\u0001\"!\u001b\u0003\u0004\u001aE\u00111\u000e\u0005\u000b\u0005\u001f\u0013\u0019I1A\u0005\n\tE\u0015AA:c+\t\u0011\u0019\nE\u0002L\u0005+K1Aa&M\u00051\u0019FO]5oO\n+hMZ3s\u0011%\u0011YJa!!\u0002\u0013\u0011\u0019*A\u0002tE\u0002B\u0001Ba(\u0003\u0004\u0012\u0005!\u0011U\u0001\te\u0016\u0004H.Y2fIV\u0011!Q\u000b\u0005\t\u0005K\u0013\u0019\t\"\u0001\u0003(\u00069!/\u001a9mC\u000e,G\u0003BA7\u0005SCqAa+\u0003$\u0002\u0007A%\u0001\u0002sg\"9!q\u00162\u0005\u0002\tE\u0016!B9v_R,Gc\u0001\u0013\u00034\"9!Q\u0017BW\u0001\u0004!\u0013\u0001\u0002;fqRDqA!/c\t\u0003\u0011Y,\u0001\trk>$XMU3qY\u0006\u001cW-\\3oiR\u0019AE!0\t\u000f\tU&q\u0017a\u0001I!I!\u0011\u00192\u0002\u0002\u0013%!1Y\u0001\fe\u0016\fGMU3t_24X\r\u0006\u0002\u0003FB\u00191Ja2\n\u0007\t%GJ\u0001\u0004PE*,7\r\u001e\u0005\u0007o\u0001!\tA!4\u0015\u0007e\u0012y\r\u0003\u0005\u0003R\n-\u0007\u0019\u0001Bj\u0003\u0019!\u0018M]4fiB\u00191B!6\n\u0007\t]gAA\u0002B]fD\u0003Ba3\u0003\\\n\u0005(Q\u001d\t\u0004\u0017\tu\u0017b\u0001Bp\r\tQA-\u001a9sK\u000e\fG/\u001a3\"\u0005\t\r\u0018!U#yiJ\f7\r^5oO\u0002\n\u0007%\\1uG\"\u0004#/Z:vYR\u0004cM]8nA\u0005t\u0017\u0010\u001e5j]\u001e\u0004#-\u001e;!C\u0002\u001a\u0005.\u0019:TKF,XM\\2fA=\u0014\b%T1uG\"\u0004\u0013n\u001d\u0011eKB\u0014XmY1uK\u0012\f#Aa:\u0002\rIr\u0013'\r\u00181\u0011\u001d\u0011Y\u000f\u0001C\t\u0005[\f!B];o\u001b\u0006$8\r[3s)\u0011\u0011)Da<\t\u000fq\u0013I\u000f1\u0001\u0002n!9!1\u001f\u0001\u0005\u0002\tU\u0018!\u00034j]\u0012\fE\u000e\\%o)\u0011\u00119P!?\u0011\u0007y\u000b9\u0010\u0003\u0004q\u0005c\u0004\rA\u0013\u0005\b\u0005{\u0004A\u0011\u0001B��\u000391\u0017N\u001c3BY2l\u0015\r^2i\u0013:$Ba!\u0001\u0004\u0004A!QHa\u0003^\u0011\u0019\u0001(1 a\u0001\u0015\"91q\u0001\u0001\u0005\u0002\r%\u0011a\u00034j]\u00124\u0015N]:u\u0013:$Baa\u0003\u0004\u000eA\u00191B\u000f\u0013\t\rA\u001c)\u00011\u0001K\u0011\u001d\u0019\t\u0002\u0001C\u0001\u0007'\t\u0001CZ5oI\u001aK'o\u001d;NCR\u001c\u0007.\u00138\u0015\t\rU1q\u0003\t\u0004\u0017ij\u0006B\u00029\u0004\u0010\u0001\u0007!\nC\u0004\u0004\u001c\u0001!\ta!\b\u0002\u0019\u0019Lg\u000e\u001a)sK\u001aL\u0007p\u00144\u0015\t\r-1q\u0004\u0005\u0007a\u000ee\u0001\u0019\u0001&\t\u000f\r\r\u0002\u0001\"\u0001\u0004&\u0005\tb-\u001b8e!J,g-\u001b=NCR\u001c\u0007n\u00144\u0015\t\rU1q\u0005\u0005\u0007a\u000e\u0005\u0002\u0019\u0001&\t\u000f\r-\u0002\u0001\"\u0001\u0004.\u0005a!/\u001a9mC\u000e,\u0017\t\u001c7J]R)Aea\f\u00042!9!\u0011[B\u0015\u0001\u0004Q\u0005bBB\u001a\u0007S\u0001\r\u0001J\u0001\fe\u0016\u0004H.Y2f[\u0016tG\u000fC\u0004\u0004,\u0001!\taa\u000e\u0015\u000b\u0011\u001aIda\u000f\t\u000f\tE7Q\u0007a\u0001\u0015\"A1QHB\u001b\u0001\u0004\u0019y$\u0001\u0005sKBd\u0017mY3s!\u0015Y1\u0011I/%\u0013\r\u0019\u0019E\u0002\u0002\n\rVt7\r^5p]FBqaa\u0012\u0001\t\u0003\u0019I%A\u0007sKBd\u0017mY3T_6,\u0017J\u001c\u000b\u0006I\r-3Q\n\u0005\b\u0005#\u001c)\u00051\u0001K\u0011!\u0019id!\u0012A\u0002\r=\u0003CB\u0006\u0004Bu\u001bY\u0001C\u0004\u0004T\u0001!\ta!\u0016\u0002\u001dI,\u0007\u000f\\1dK\u001aK'o\u001d;J]R)Aea\u0016\u0004Z!9!\u0011[B)\u0001\u0004Q\u0005bBB\u001a\u0007#\u0002\r\u0001\n\u0005\b\u0007;\u0002A\u0011AB0\u0003\u0015\u0019\b\u000f\\5u)\u0011\u0019\tga\u0019\u0011\t-\ty\n\n\u0005\b\u0007K\u001aY\u00061\u0001K\u0003\u001d!xn\u00159mSRDqa!\u001b\u0001\t\u0003\u0019Y'\u0001\u0006v]\u0006t7\r[8sK\u0012,\"a!\u001c\u0011\u0007=\u001ay'C\u0002\u0004r\t\u0011q\"\u00168b]\u000eDwN]3e%\u0016<W\r\u001f\u0005\b\u0007k\u0002A\u0011\u0001B\u000b\u0003!\tgn\u00195pe\u0016$\u0007BB\f\u0001\t\u0003\t)\u0002C\u0004\u0002T\u0001!\t%!\u0016)\u000f\u0001\u0019iha!\u0004\u0006B\u00191ba \n\u0007\r\u0005eA\u0001\tTKJL\u0017\r\u001c,feNLwN\\+J\t\u0006)a/\u00197vKzA!=|kk=C\u0010s\u0018")
/* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex.class */
public class Regex implements Serializable {
    public static final long serialVersionUID = -2094783597747625537L;
    private final Pattern pattern;
    public final Seq<String> scala$util$matching$Regex$$groupNames;

    /* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$Match.class */
    public static class Match implements MatchData {
        private volatile byte bitmap$0;
        private final int end;
        private int[] ends;
        private final Seq<String> groupNames;
        private final Matcher matcher;
        private final Map<String, Object> scala$util$matching$Regex$MatchData$$nameToIndex;
        private final CharSequence source;
        private final int start;
        private int[] starts;

        public Match(CharSequence charSequence, Matcher matcher, Seq<String> seq) {
            this.source = charSequence;
            this.matcher = matcher;
            this.groupNames = seq;
            MatchData.Cclass.$init$(this);
            this.start = matcher.start();
            this.end = matcher.end();
        }

        private int[] ends() {
            return ((byte) (this.bitmap$0 & 2)) == 0 ? ends$lzycompute() : this.ends;
        }

        private int[] ends$lzycompute() {
            synchronized (this) {
                if (((byte) (this.bitmap$0 & 2)) == 0) {
                    RichInt$ richInt$ = RichInt$.MODULE$;
                    Predef$ predef$ = Predef$.MODULE$;
                    this.ends = (int[]) ((TraversableOnce) richInt$.to$extension0(0, groupCount()).map(new Regex$Match$$anonfun$ends$1(this), IndexedSeq$.MODULE$.canBuildFrom())).toArray(ClassTag$.MODULE$.Int());
                    this.bitmap$0 = (byte) (this.bitmap$0 | 2);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.ends;
        }

        private Map scala$util$matching$Regex$MatchData$$nameToIndex$lzycompute() {
            synchronized (this) {
                if (((byte) (this.bitmap$0 & 4)) == 0) {
                    this.scala$util$matching$Regex$MatchData$$nameToIndex = MatchData.Cclass.scala$util$matching$Regex$MatchData$$nameToIndex(this);
                    this.bitmap$0 = (byte) (this.bitmap$0 | 4);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.scala$util$matching$Regex$MatchData$$nameToIndex;
        }

        private int[] starts() {
            return ((byte) (this.bitmap$0 & 1)) == 0 ? starts$lzycompute() : this.starts;
        }

        private int[] starts$lzycompute() {
            synchronized (this) {
                if (((byte) (this.bitmap$0 & 1)) == 0) {
                    RichInt$ richInt$ = RichInt$.MODULE$;
                    Predef$ predef$ = Predef$.MODULE$;
                    this.starts = (int[]) ((TraversableOnce) richInt$.to$extension0(0, groupCount()).map(new Regex$Match$$anonfun$starts$1(this), IndexedSeq$.MODULE$.canBuildFrom())).toArray(ClassTag$.MODULE$.Int());
                    this.bitmap$0 = (byte) (this.bitmap$0 | 1);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.starts;
        }

        @Override // scala.util.matching.Regex.MatchData
        public CharSequence after() {
            return MatchData.Cclass.after(this);
        }

        @Override // scala.util.matching.Regex.MatchData
        public CharSequence after(int i) {
            return MatchData.Cclass.after(this, i);
        }

        @Override // scala.util.matching.Regex.MatchData
        public CharSequence before() {
            return MatchData.Cclass.before(this);
        }

        @Override // scala.util.matching.Regex.MatchData
        public CharSequence before(int i) {
            return MatchData.Cclass.before(this, i);
        }

        @Override // scala.util.matching.Regex.MatchData
        public int end() {
            return this.end;
        }

        @Override // scala.util.matching.Regex.MatchData
        public int end(int i) {
            return ends()[i];
        }

        public Match force() {
            starts();
            ends();
            return this;
        }

        @Override // scala.util.matching.Regex.MatchData
        public String group(int i) {
            return MatchData.Cclass.group(this, i);
        }

        @Override // scala.util.matching.Regex.MatchData
        public String group(String str) {
            return MatchData.Cclass.group(this, str);
        }

        @Override // scala.util.matching.Regex.MatchData
        public int groupCount() {
            return matcher().groupCount();
        }

        @Override // scala.util.matching.Regex.MatchData
        public Seq<String> groupNames() {
            return this.groupNames;
        }

        @Override // scala.util.matching.Regex.MatchData
        public String matched() {
            return MatchData.Cclass.matched(this);
        }

        public Matcher matcher() {
            return this.matcher;
        }

        @Override // scala.util.matching.Regex.MatchData
        public Map<String, Object> scala$util$matching$Regex$MatchData$$nameToIndex() {
            return ((byte) (this.bitmap$0 & 4)) == 0 ? scala$util$matching$Regex$MatchData$$nameToIndex$lzycompute() : this.scala$util$matching$Regex$MatchData$$nameToIndex;
        }

        @Override // scala.util.matching.Regex.MatchData
        public CharSequence source() {
            return this.source;
        }

        @Override // scala.util.matching.Regex.MatchData
        public int start() {
            return this.start;
        }

        @Override // scala.util.matching.Regex.MatchData
        public int start(int i) {
            return starts()[i];
        }

        @Override // scala.util.matching.Regex.MatchData
        public List<String> subgroups() {
            return MatchData.Cclass.subgroups(this);
        }

        @Override // scala.util.matching.Regex.MatchData
        public String toString() {
            return MatchData.Cclass.toString(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$MatchData.class */
    public interface MatchData {

        /* renamed from: scala.util.matching.Regex$MatchData$class */
        /* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$MatchData$class.class */
        public abstract class Cclass {
            public static void $init$(MatchData matchData) {
            }

            public static CharSequence after(MatchData matchData) {
                return matchData.end() >= 0 ? matchData.source().subSequence(matchData.end(), matchData.source().length()) : null;
            }

            public static CharSequence after(MatchData matchData, int i) {
                return matchData.end(i) >= 0 ? matchData.source().subSequence(matchData.end(i), matchData.source().length()) : null;
            }

            public static CharSequence before(MatchData matchData) {
                return matchData.start() >= 0 ? matchData.source().subSequence(0, matchData.start()) : null;
            }

            public static CharSequence before(MatchData matchData, int i) {
                return matchData.start(i) >= 0 ? matchData.source().subSequence(0, matchData.start(i)) : null;
            }

            public static String group(MatchData matchData, int i) {
                return matchData.start(i) >= 0 ? matchData.source().subSequence(matchData.start(i), matchData.end(i)).toString() : null;
            }

            public static String group(MatchData matchData, String str) {
                Option<Object> option = matchData.scala$util$matching$Regex$MatchData$$nameToIndex().get(str);
                if (!None$.MODULE$.equals(option)) {
                    if (!(option instanceof Some)) {
                        throw new MatchError(option);
                    }
                    return matchData.group(BoxesRunTime.unboxToInt(((Some) option).m362x()));
                }
                throw new NoSuchElementException(new StringBuilder().append((Object) "group name ").append((Object) str).append((Object) " not defined").toString());
            }

            public static String matched(MatchData matchData) {
                return matchData.start() >= 0 ? matchData.source().subSequence(matchData.start(), matchData.end()).toString() : null;
            }

            public static Map scala$util$matching$Regex$MatchData$$nameToIndex(MatchData matchData) {
                return ((MapLike) Predef$.MODULE$.Map().apply(Nil$.MODULE$)).$plus$plus((GenTraversableOnce) matchData.groupNames().toList().$colon$colon("").zipWithIndex(List$.MODULE$.canBuildFrom()));
            }

            public static List subgroups(MatchData matchData) {
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                return (List) richInt$.to$extension0(1, matchData.groupCount()).toList().map(new Regex$MatchData$$anonfun$subgroups$1(matchData), List$.MODULE$.canBuildFrom());
            }

            public static String toString(MatchData matchData) {
                return matchData.matched();
            }
        }

        CharSequence after();

        CharSequence after(int i);

        CharSequence before();

        CharSequence before(int i);

        int end();

        int end(int i);

        String group(int i);

        String group(String str);

        int groupCount();

        Seq<String> groupNames();

        String matched();

        Map<String, Object> scala$util$matching$Regex$MatchData$$nameToIndex();

        CharSequence source();

        int start();

        int start(int i);

        List<String> subgroups();

        String toString();
    }

    /* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$MatchIterator.class */
    public static class MatchIterator extends AbstractIterator<String> implements MatchData {
        private volatile boolean bitmap$0;
        private final Seq<String> groupNames;
        private final Matcher matcher;
        private boolean nextSeen = false;
        private final Regex regex;
        private final Map<String, Object> scala$util$matching$Regex$MatchData$$nameToIndex;
        private final CharSequence source;

        public MatchIterator(CharSequence charSequence, Regex regex, Seq<String> seq) {
            this.source = charSequence;
            this.regex = regex;
            this.groupNames = seq;
            MatchData.Cclass.$init$(this);
            this.matcher = regex.pattern().matcher(charSequence);
        }

        private boolean nextSeen() {
            return this.nextSeen;
        }

        private void nextSeen_$eq(boolean z) {
            this.nextSeen = z;
        }

        private Map scala$util$matching$Regex$MatchData$$nameToIndex$lzycompute() {
            synchronized (this) {
                if (!this.bitmap$0) {
                    this.scala$util$matching$Regex$MatchData$$nameToIndex = MatchData.Cclass.scala$util$matching$Regex$MatchData$$nameToIndex(this);
                    this.bitmap$0 = true;
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.scala$util$matching$Regex$MatchData$$nameToIndex;
        }

        @Override // scala.util.matching.Regex.MatchData
        public CharSequence after() {
            return MatchData.Cclass.after(this);
        }

        @Override // scala.util.matching.Regex.MatchData
        public CharSequence after(int i) {
            return MatchData.Cclass.after(this, i);
        }

        @Override // scala.util.matching.Regex.MatchData
        public CharSequence before() {
            return MatchData.Cclass.before(this);
        }

        @Override // scala.util.matching.Regex.MatchData
        public CharSequence before(int i) {
            return MatchData.Cclass.before(this, i);
        }

        @Override // scala.util.matching.Regex.MatchData
        public int end() {
            return matcher().end();
        }

        @Override // scala.util.matching.Regex.MatchData
        public int end(int i) {
            return matcher().end(i);
        }

        @Override // scala.util.matching.Regex.MatchData
        public String group(int i) {
            return MatchData.Cclass.group(this, i);
        }

        @Override // scala.util.matching.Regex.MatchData
        public String group(String str) {
            return MatchData.Cclass.group(this, str);
        }

        @Override // scala.util.matching.Regex.MatchData
        public int groupCount() {
            return matcher().groupCount();
        }

        @Override // scala.util.matching.Regex.MatchData
        public Seq<String> groupNames() {
            return this.groupNames;
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            if (!nextSeen()) {
                nextSeen_$eq(matcher().find());
            }
            return nextSeen();
        }

        public Iterator<Match> matchData() {
            return new AbstractIterator<Match>(this) { // from class: scala.util.matching.Regex$MatchIterator$$anon$3
                private final /* synthetic */ Regex.MatchIterator $outer;

                {
                    Objects.requireNonNull(this);
                    this.$outer = this;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return this.$outer.hasNext();
                }

                @Override // scala.collection.Iterator
                public Regex.Match next() {
                    this.$outer.next();
                    return new Regex.Match(this.$outer.source(), this.$outer.matcher(), this.$outer.groupNames()).force();
                }
            };
        }

        @Override // scala.util.matching.Regex.MatchData
        public String matched() {
            return MatchData.Cclass.matched(this);
        }

        public Matcher matcher() {
            return this.matcher;
        }

        @Override // scala.collection.Iterator
        public String next() {
            if (hasNext()) {
                nextSeen_$eq(false);
                return matcher().group();
            }
            throw new NoSuchElementException();
        }

        public Regex regex() {
            return this.regex;
        }

        public AbstractIterator<Match> replacementData() {
            return new Regex$MatchIterator$$anon$1(this);
        }

        @Override // scala.util.matching.Regex.MatchData
        public Map<String, Object> scala$util$matching$Regex$MatchData$$nameToIndex() {
            return this.bitmap$0 ? this.scala$util$matching$Regex$MatchData$$nameToIndex : scala$util$matching$Regex$MatchData$$nameToIndex$lzycompute();
        }

        @Override // scala.util.matching.Regex.MatchData
        public CharSequence source() {
            return this.source;
        }

        @Override // scala.util.matching.Regex.MatchData
        public int start() {
            return matcher().start();
        }

        @Override // scala.util.matching.Regex.MatchData
        public int start(int i) {
            return matcher().start(i);
        }

        @Override // scala.util.matching.Regex.MatchData
        public List<String> subgroups() {
            return MatchData.Cclass.subgroups(this);
        }

        @Override // scala.collection.AbstractIterator, scala.collection.Iterator
        public String toString() {
            return Iterator.Cclass.toString(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$Replacement.class */
    public interface Replacement {

        /* renamed from: scala.util.matching.Regex$Replacement$class */
        /* loaded from: classes3-dex2jar.jar:scala/util/matching/Regex$Replacement$class.class */
        public abstract class Cclass {
            public static Matcher replace(Replacement replacement, String str) {
                return replacement.matcher().appendReplacement(replacement.scala$util$matching$Regex$Replacement$$sb(), str);
            }

            public static String replaced(Replacement replacement) {
                StringBuffer stringBuffer = new StringBuffer(replacement.scala$util$matching$Regex$Replacement$$sb());
                replacement.matcher().appendTail(stringBuffer);
                return stringBuffer.toString();
            }
        }

        Matcher matcher();

        Matcher replace(String str);

        String replaced();

        StringBuffer scala$util$matching$Regex$Replacement$$sb();

        /* renamed from: scala$util$matching$Regex$Replacement$_setter_$scala$util$matching$Regex$Replacement$$sb_$eq */
        void mo0x275edc61(StringBuffer stringBuffer);
    }

    public Regex(String str, Seq<String> seq) {
        this(Pattern.compile(str), seq);
    }

    public Regex(Pattern pattern, Seq<String> seq) {
        this.pattern = pattern;
        this.scala$util$matching$Regex$$groupNames = seq;
    }

    public static String quote(String str) {
        return Regex$.MODULE$.quote(str);
    }

    public static String quoteReplacement(String str) {
        return Regex$.MODULE$.quoteReplacement(str);
    }

    public Regex anchored() {
        return this;
    }

    public MatchIterator findAllIn(CharSequence charSequence) {
        return new MatchIterator(charSequence, this, this.scala$util$matching$Regex$$groupNames);
    }

    public Iterator<Match> findAllMatchIn(CharSequence charSequence) {
        return new Iterator<Match>(this, findAllIn(charSequence)) { // from class: scala.util.matching.Regex$$anon$4
            private final Regex.MatchIterator matchIterator$1;

            {
                this.matchIterator$1 = findAllIn;
                TraversableOnce.Cclass.$init$(this);
                Iterator.Cclass.$init$(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B $colon$bslash(B b, Function2<Regex.Match, B, B> function2) {
                Object foldRight;
                foldRight = foldRight(b, function2);
                return (B) foldRight;
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B $div$colon(B b, Function2<B, Regex.Match, B> function2) {
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
            public <B> B aggregate(Function0<B> function0, Function2<B, Regex.Match, B> function2, Function2<B, B, B> function22) {
                return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
            }

            @Override // scala.collection.Iterator
            public BufferedIterator<Regex.Match> buffered() {
                return Iterator.Cclass.buffered(this);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> collect(PartialFunction<Regex.Match, B> partialFunction) {
                return Iterator.Cclass.collect(this, partialFunction);
            }

            @Override // scala.collection.TraversableOnce
            public <B> Option<B> collectFirst(PartialFunction<Regex.Match, B> partialFunction) {
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
            public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<Regex.Match, B, Object> function2) {
                return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public int count(Function1<Regex.Match, Object> function1) {
                return TraversableOnce.Cclass.count(this, function1);
            }

            @Override // scala.collection.Iterator
            public Iterator<Regex.Match> drop(int i) {
                return Iterator.Cclass.drop(this, i);
            }

            @Override // scala.collection.Iterator
            public Iterator<Regex.Match> dropWhile(Function1<Regex.Match, Object> function1) {
                return Iterator.Cclass.dropWhile(this, function1);
            }

            @Override // scala.collection.Iterator
            public Tuple2<Iterator<Regex.Match>, Iterator<Regex.Match>> duplicate() {
                return Iterator.Cclass.duplicate(this);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public boolean exists(Function1<Regex.Match, Object> function1) {
                return Iterator.Cclass.exists(this, function1);
            }

            @Override // scala.collection.Iterator
            public Iterator<Regex.Match> filter(Function1<Regex.Match, Object> function1) {
                return Iterator.Cclass.filter(this, function1);
            }

            @Override // scala.collection.Iterator
            public Iterator<Regex.Match> filterNot(Function1<Regex.Match, Object> function1) {
                return Iterator.Cclass.filterNot(this, function1);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Option<Regex.Match> find(Function1<Regex.Match, Object> function1) {
                return Iterator.Cclass.find(this, function1);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> flatMap(Function1<Regex.Match, GenTraversableOnce<B>> function1) {
                return Iterator.Cclass.flatMap(this, function1);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
                return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B foldLeft(B b, Function2<B, Regex.Match, B> function2) {
                return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public <B> B foldRight(B b, Function2<Regex.Match, B, B> function2) {
                return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public boolean forall(Function1<Regex.Match, Object> function1) {
                return Iterator.Cclass.forall(this, function1);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
            public <U> void foreach(Function1<Regex.Match, U> function1) {
                Iterator.Cclass.foreach(this, function1);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<Regex.Match>.GroupedIterator<B> grouped(int i) {
                return Iterator.Cclass.grouped(this, i);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public boolean hasDefiniteSize() {
                return Iterator.Cclass.hasDefiniteSize(this);
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return this.matchIterator$1.hasNext();
            }

            @Override // scala.collection.Iterator
            public <B> int indexOf(B b) {
                return Iterator.Cclass.indexOf(this, b);
            }

            @Override // scala.collection.Iterator
            public int indexWhere(Function1<Regex.Match, Object> function1) {
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
            public <B> Iterator<B> map(Function1<Regex.Match, B> function1) {
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
            public Regex.Match next() {
                this.matchIterator$1.next();
                return new Regex.Match(this.matchIterator$1.source(), this.matchIterator$1.matcher(), this.matchIterator$1.groupNames()).force();
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
            public Tuple2<Iterator<Regex.Match>, Iterator<Regex.Match>> partition(Function1<Regex.Match, Object> function1) {
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
            public <B> B reduceLeft(Function2<B, Regex.Match, B> function2) {
                return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> Option<B> reduceLeftOption(Function2<B, Regex.Match, B> function2) {
                return TraversableOnce.Cclass.reduceLeftOption(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
                return TraversableOnce.Cclass.reduceOption(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public <B> B reduceRight(Function2<Regex.Match, B, B> function2) {
                return (B) TraversableOnce.Cclass.reduceRight(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> Option<B> reduceRightOption(Function2<Regex.Match, B, B> function2) {
                return TraversableOnce.Cclass.reduceRightOption(this, function2);
            }

            @Override // scala.collection.TraversableOnce
            public List<Regex.Match> reversed() {
                return TraversableOnce.Cclass.reversed(this);
            }

            @Override // scala.collection.Iterator
            public boolean sameElements(Iterator<?> iterator) {
                return Iterator.Cclass.sameElements(this, iterator);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> scanLeft(B b, Function2<B, Regex.Match, B> function2) {
                return Iterator.Cclass.scanLeft(this, b, function2);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> scanRight(B b, Function2<Regex.Match, B, B> function2) {
                return Iterator.Cclass.scanRight(this, b, function2);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
            public Iterator<Regex.Match> seq() {
                return Iterator.Cclass.seq(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public int size() {
                return TraversableOnce.Cclass.size(this);
            }

            @Override // scala.collection.Iterator
            public Iterator<Regex.Match> slice(int i, int i2) {
                return Iterator.Cclass.slice(this, i, i2);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<Regex.Match>.GroupedIterator<B> sliding(int i, int i2) {
                return Iterator.Cclass.sliding(this, i, i2);
            }

            @Override // scala.collection.Iterator
            public <B> int sliding$default$2() {
                return Iterator.Cclass.sliding$default$2(this);
            }

            @Override // scala.collection.Iterator
            public Tuple2<Iterator<Regex.Match>, Iterator<Regex.Match>> span(Function1<Regex.Match, Object> function1) {
                return Iterator.Cclass.span(this, function1);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B sum(Numeric<B> numeric) {
                return (B) TraversableOnce.Cclass.sum(this, numeric);
            }

            @Override // scala.collection.Iterator
            public Iterator<Regex.Match> take(int i) {
                return Iterator.Cclass.take(this, i);
            }

            @Override // scala.collection.Iterator
            public Iterator<Regex.Match> takeWhile(Function1<Regex.Match, Object> function1) {
                return Iterator.Cclass.takeWhile(this, function1);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            /* renamed from: to */
            public <Col> Col mo1to(CanBuildFrom<Nothing$, Regex.Match, Col> canBuildFrom) {
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
            public IndexedSeq<Regex.Match> toIndexedSeq() {
                return TraversableOnce.Cclass.toIndexedSeq(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Iterable<Regex.Match> toIterable() {
                return TraversableOnce.Cclass.toIterable(this);
            }

            @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Iterator<Regex.Match> toIterator() {
                return Iterator.Cclass.toIterator(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public List<Regex.Match> toList() {
                return TraversableOnce.Cclass.toList(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Regex.Match, Tuple2<T, U>> predef$$less$colon$less) {
                return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
            public Seq<Regex.Match> toSeq() {
                return TraversableOnce.Cclass.toSeq(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
            public <B> Set<B> toSet() {
                return TraversableOnce.Cclass.toSet(this);
            }

            @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Stream<Regex.Match> toStream() {
                return Iterator.Cclass.toStream(this);
            }

            @Override // scala.collection.Iterator
            public String toString() {
                return Iterator.Cclass.toString(this);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public Traversable<Regex.Match> toTraversable() {
                return Iterator.Cclass.toTraversable(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public Vector<Regex.Match> toVector() {
                return TraversableOnce.Cclass.toVector(this);
            }

            @Override // scala.collection.Iterator
            public Iterator<Regex.Match> withFilter(Function1<Regex.Match, Object> function1) {
                return Iterator.Cclass.withFilter(this, function1);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<Tuple2<Regex.Match, B>> zip(Iterator<B> iterator) {
                return Iterator.Cclass.zip(this, iterator);
            }

            @Override // scala.collection.Iterator
            public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
                return Iterator.Cclass.zipAll(this, iterator, a1, b1);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<Regex.Match, Object>> zipWithIndex() {
                return Iterator.Cclass.zipWithIndex(this);
            }
        };
    }

    public Option<String> findFirstIn(CharSequence charSequence) {
        Matcher matcher = pattern().matcher(charSequence);
        return matcher.find() ? new Some(matcher.group()) : None$.MODULE$;
    }

    public Option<Match> findFirstMatchIn(CharSequence charSequence) {
        Matcher matcher = pattern().matcher(charSequence);
        return matcher.find() ? new Some(new Match(charSequence, matcher, this.scala$util$matching$Regex$$groupNames)) : None$.MODULE$;
    }

    public Option<Match> findPrefixMatchOf(CharSequence charSequence) {
        Matcher matcher = pattern().matcher(charSequence);
        return matcher.lookingAt() ? new Some(new Match(charSequence, matcher, this.scala$util$matching$Regex$$groupNames)) : None$.MODULE$;
    }

    public Option<String> findPrefixOf(CharSequence charSequence) {
        Matcher matcher = pattern().matcher(charSequence);
        return matcher.lookingAt() ? new Some(matcher.group()) : None$.MODULE$;
    }

    public Pattern pattern() {
        return this.pattern;
    }

    public String regex() {
        return pattern().pattern();
    }

    public String replaceAllIn(CharSequence charSequence, String str) {
        return pattern().matcher(charSequence).replaceAll(str);
    }

    public String replaceAllIn(CharSequence charSequence, Function1<Match, String> function1) {
        AbstractIterator<Match> replacementData = new MatchIterator(charSequence, this, this.scala$util$matching$Regex$$groupNames).replacementData();
        replacementData.foreach(new Regex$$anonfun$replaceAllIn$1(this, function1, replacementData));
        return ((Replacement) replacementData).replaced();
    }

    public String replaceFirstIn(CharSequence charSequence, String str) {
        return pattern().matcher(charSequence).replaceFirst(str);
    }

    public String replaceSomeIn(CharSequence charSequence, Function1<Match, Option<String>> function1) {
        AbstractIterator<Match> replacementData = new MatchIterator(charSequence, this, this.scala$util$matching$Regex$$groupNames).replacementData();
        replacementData.foreach(new Regex$$anonfun$replaceSomeIn$1(this, function1, replacementData));
        return ((Replacement) replacementData).replaced();
    }

    public boolean runMatcher(Matcher matcher) {
        return matcher.matches();
    }

    public String[] split(CharSequence charSequence) {
        return pattern().split(charSequence);
    }

    public String toString() {
        return regex();
    }

    public UnanchoredRegex unanchored() {
        return new Regex$$anon$2(this);
    }

    public Option<List<Object>> unapplySeq(char c) {
        Some some;
        Matcher matcher = pattern().matcher(BoxesRunTime.boxToCharacter(c).toString());
        if (!runMatcher(matcher)) {
            some = None$.MODULE$;
        } else if (matcher.groupCount() > 0) {
            Predef$ predef$ = Predef$.MODULE$;
            some = new Some(new StringOps(matcher.group(1)).toList());
        } else {
            some = new Some(Nil$.MODULE$);
        }
        return some;
    }

    public Option<List<String>> unapplySeq(CharSequence charSequence) {
        None$ none$;
        if (charSequence == null) {
            none$ = None$.MODULE$;
        } else {
            Matcher matcher = pattern().matcher(charSequence);
            if (runMatcher(matcher)) {
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                none$ = new Some(richInt$.to$extension0(1, matcher.groupCount()).toList().map(new Regex$$anonfun$unapplySeq$1(this, matcher), List$.MODULE$.canBuildFrom()));
            } else {
                none$ = None$.MODULE$;
            }
        }
        return none$;
    }

    public Option<List<String>> unapplySeq(Object obj) {
        Some some;
        if (obj instanceof CharSequence) {
            Matcher matcher = pattern().matcher((CharSequence) obj);
            if (runMatcher(matcher)) {
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                some = new Some(richInt$.to$extension0(1, matcher.groupCount()).toList().map(new Regex$$anonfun$unapplySeq$3(this, matcher), List$.MODULE$.canBuildFrom()));
            } else {
                some = None$.MODULE$;
            }
        } else {
            some = obj instanceof Match ? unapplySeq((CharSequence) ((Match) obj).matched()) : None$.MODULE$;
        }
        return some;
    }

    public Option<List<String>> unapplySeq(Match match) {
        Some some;
        if (match == null || match.matched() == null) {
            some = None$.MODULE$;
        } else {
            Pattern pattern = match.matcher().pattern();
            Pattern pattern2 = pattern();
            if (pattern != null ? !pattern.equals(pattern2) : pattern2 != null) {
                some = unapplySeq((CharSequence) match.matched());
            } else {
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                some = new Some(richInt$.to$extension0(1, match.groupCount()).toList().map(new Regex$$anonfun$unapplySeq$2(this, match), List$.MODULE$.canBuildFrom()));
            }
        }
        return some;
    }
}
