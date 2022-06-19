package scala.collection.immutable;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Function3;
import scala.Function4;
import scala.Function5;
import scala.MatchError;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.AbstractIterator;
import scala.collection.AbstractSeq;
import scala.collection.CustomParallelizable;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.IndexedSeq;
import scala.collection.IndexedSeqLike;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.Seq$;
import scala.collection.SeqLike;
import scala.collection.TraversableLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.GenericCompanion;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Seq;
import scala.collection.immutable.Traversable;
import scala.collection.immutable.VectorPointer;
import scala.collection.mutable.Buffer;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParVector;
import scala.compat.Platform$;
import scala.math.Integral;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.ObjectRef;
@ScalaSignature(bytes = "\u0006\u0001\rut!B\u0001\u0003\u0011\u0003I\u0011A\u0002,fGR|'O\u0003\u0002\u0004\t\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001\u0001\t\u0003\u0015-i\u0011A\u0001\u0004\u0006\u0019\tA\t!\u0004\u0002\u0007-\u0016\u001cGo\u001c:\u0014\u0007-qq\bE\u0002\u0010%Qi\u0011\u0001\u0005\u0006\u0003#\u0011\tqaZ3oKJL7-\u0003\u0002\u0014!\t\t\u0012J\u001c3fq\u0016$7+Z9GC\u000e$xN]=\u0011\u0005))b!\u0002\u0007\u0003\u0005Y\tTCA\f\u001f'!)\u0002\u0004K\u0016/e}\u0012\u0005cA\r\u001b95\tA!\u0003\u0002\u001c\t\tY\u0011IY:ue\u0006\u001cGoU3r!\tib\u0004\u0004\u0001\u0005\r})BQ1\u0001!\u0005\u0005\t\u0015CA\u0011&!\t\u00113%D\u0001\u0007\u0013\t!cAA\u0004O_RD\u0017N\\4\u0011\u0005\t2\u0013BA\u0014\u0007\u0005\r\te.\u001f\t\u0004\u0015%b\u0012B\u0001\u0016\u0003\u0005)Ie\u000eZ3yK\u0012\u001cV-\u001d\t\u0005\u001f1bB#\u0003\u0002.!\tQr)\u001a8fe&\u001cGK]1wKJ\u001c\u0018M\u00197f)\u0016l\u0007\u000f\\1uKB!\u0011d\f\u000f2\u0013\t\u0001DA\u0001\bJ]\u0012,\u00070\u001a3TKFd\u0015n[3\u0011\u0007))B\u0004E\u0002\u000bgUJ!\u0001\u000e\u0002\u0003\u001bY+7\r^8s!>Lg\u000e^3sU\tabgK\u00018!\tAT(D\u0001:\u0015\tQ4(A\u0005v]\u000eDWmY6fI*\u0011AHB\u0001\u000bC:tw\u000e^1uS>t\u0017B\u0001 :\u0005E)hn\u00195fG.,GMV1sS\u0006t7-\u001a\t\u0003E\u0001K!!\u0011\u0004\u0003\u0019M+'/[1mSj\f'\r\\3\u0011\te\u0019E$R\u0005\u0003\t\u0012\u0011AcQ;ti>l\u0007+\u0019:bY2,G.\u001b>bE2,\u0007c\u0001$K95\tqI\u0003\u0002\u0004\u0011*\u0011\u0011\nB\u0001\ta\u0006\u0014\u0018\r\u001c7fY&\u00111j\u0012\u0002\n!\u0006\u0014h+Z2u_JD\u0011\"T\u000b\u0003\u0006\u0004%\t\u0001\u0002(\u0002\u0015M$\u0018M\u001d;J]\u0012,\u00070F\u0001P!\t\u0011\u0003+\u0003\u0002R\r\t\u0019\u0011J\u001c;\t\u0011M+\"\u0011!Q\u0001\n=\u000b1b\u001d;beRLe\u000eZ3yA!IQ+\u0006BC\u0002\u0013\u0005AAT\u0001\tK:$\u0017J\u001c3fq\"Aq+\u0006B\u0001B\u0003%q*A\u0005f]\u0012Le\u000eZ3yA!A\u0011,\u0006B\u0001B\u0003%q*A\u0003g_\u000e,8\u000f\u0003\u0004\\+\u0011\u0005!\u0001X\u0001\u0007y%t\u0017\u000e\u001e \u0015\tEjfl\u0018\u0005\u0006\u001bj\u0003\ra\u0014\u0005\u0006+j\u0003\ra\u0014\u0005\u00063j\u0003\ra\u0014\u0005\u0006CV!\tEY\u0001\nG>l\u0007/\u00198j_:,\u0012a\u0019\t\u0004\u001f\u0011$\u0012BA3\u0011\u0005A9UM\\3sS\u000e\u001cu.\u001c9b]&|g\u000e\u0003\u0005h+\u0001\u0007I\u0011\u0001\u0002i\u0003\u0015!\u0017N\u001d;z+\u0005I\u0007C\u0001\u0012k\u0013\tYgAA\u0004C_>dW-\u00198\t\u00115,\u0002\u0019!C\u0001\u00059\f\u0011\u0002Z5sif|F%Z9\u0015\u0005=\u0014\bC\u0001\u0012q\u0013\t\thA\u0001\u0003V]&$\bbB:m\u0003\u0003\u0005\r![\u0001\u0004q\u0012\n\u0004BB;\u0016A\u0003&\u0011.\u0001\u0004eSJ$\u0018\u0010\t\u0005\u0006oV!\tAT\u0001\u0007Y\u0016tw\r\u001e5\t\u000be,B\u0011\t>\u0002\u0007A\f'/F\u0001F\u0011\u0015aX\u0003\"\u0011~\u0003!!xNV3di>\u0014X#A\u0019\t\r},B\u0011IA\u0001\u00035aWM\\4uQ\u000e{W\u000e]1sKR\u0019q*a\u0001\t\r\u0005\u0015a\u00101\u0001P\u0003\raWM\u001c\u0005\t\u0003\u0013)BQ\u0001\u0003\u0002\f\u0005a\u0011N\\5u\u0013R,'/\u0019;peV!\u0011QBA\u000e)\ry\u0017q\u0002\u0005\t\u0003#\t9\u00011\u0001\u0002\u0014\u0005\t1\u000fE\u0003\u000b\u0003+\tI\"C\u0002\u0002\u0018\t\u0011aBV3di>\u0014\u0018\n^3sCR|'\u000fE\u0002\u001e\u00037!\u0001\"!\b\u0002\b\t\u0007\u0011q\u0004\u0002\u0002\u0005F\u0011A$\n\u0005\b\u0003G)B\u0011IA\u0013\u0003!IG/\u001a:bi>\u0014XCAA\u0014!\u0011Q\u0011Q\u0003\u000f\t\u000f\u0005-R\u0003\"\u0011\u0002.\u0005y!/\u001a<feN,\u0017\n^3sCR|'/\u0006\u0002\u00020A!\u0011$!\r\u001d\u0013\r\t\u0019\u0004\u0002\u0002\t\u0013R,'/\u0019;pe\"9\u0011qG\u000b\u0005\u0002\u0005e\u0012!B1qa2LHc\u0001\u000f\u0002<!9\u0011QHA\u001b\u0001\u0004y\u0015!B5oI\u0016D\bbBA!+\u0011%\u00111I\u0001\u0012G\",7m\u001b*b]\u001e,7i\u001c8wKJ$HcA(\u0002F!9\u0011QHA \u0001\u0004y\u0005\u0002CA%+\u0001&I!a\u0013\u0002\u0019%\u001cH)\u001a4bk2$8I\u0011$\u0016\u0011\u00055\u0013QLA1\u0003K\"2![A(\u0011!\t\t&a\u0012A\u0002\u0005M\u0013A\u00012g!%y\u0011QKA-\u0003?\n\u0019'C\u0002\u0002XA\u0011AbQ1o\u0005VLG\u000e\u001a$s_6\u0004BAC\u000b\u0002\\A\u0019Q$!\u0018\u0005\r}\t9E1\u0001!!\ri\u0012\u0011\r\u0003\b\u0003;\t9E1\u0001!!\ri\u0012Q\r\u0003\b\u0003O\n9E1\u0001!\u0005\u0011!\u0006.\u0019;)\t\u0005\u001d\u00131\u000e\t\u0004E\u00055\u0014bAA8\r\t1\u0011N\u001c7j]\u0016Dq!a\u001d\u0016\t\u0003\n)(A\u0004va\u0012\fG/\u001a3\u0016\r\u0005]\u0014QQA?)\u0019\tI(a\"\u0002\nR!\u00111PA@!\ri\u0012Q\u0010\u0003\b\u0003O\n\tH1\u0001!\u0011!\t\t&!\u001dA\u0004\u0005\u0005\u0005\u0003C\b\u0002VE\n\u0019)a\u001f\u0011\u0007u\t)\t\u0002\u0005\u0002\u001e\u0005E$\u0019AA\u0010\u0011\u001d\ti$!\u001dA\u0002=C\u0001\"a#\u0002r\u0001\u0007\u00111Q\u0001\u0005K2,W\u000eC\u0004\u0002\u0010V!\t%!%\u0002\u0017\u0011\u0002H.^:%G>dwN\\\u000b\u0007\u0003'\u000b\t+!'\u0015\t\u0005U\u00151\u0015\u000b\u0005\u0003/\u000bY\nE\u0002\u001e\u00033#q!a\u001a\u0002\u000e\n\u0007\u0001\u0005\u0003\u0005\u0002R\u00055\u00059AAO!!y\u0011QK\u0019\u0002 \u0006]\u0005cA\u000f\u0002\"\u0012A\u0011QDAG\u0005\u0004\ty\u0002\u0003\u0005\u0002\f\u00065\u0005\u0019AAP\u0011\u001d\t9+\u0006C!\u0003S\u000b1\u0002J2pY>tG\u0005\u001d7vgV1\u00111VA]\u0003c#B!!,\u0002<R!\u0011qVAZ!\ri\u0012\u0011\u0017\u0003\b\u0003O\n)K1\u0001!\u0011!\t\t&!*A\u0004\u0005U\u0006\u0003C\b\u0002VE\n9,a,\u0011\u0007u\tI\f\u0002\u0005\u0002\u001e\u0005\u0015&\u0019AA\u0010\u0011!\tY)!*A\u0002\u0005]\u0006bBA`+\u0011\u0005\u0013\u0011Y\u0001\u0005i\u0006\\W\rF\u00022\u0003\u0007Dq!!2\u0002>\u0002\u0007q*A\u0001o\u0011\u001d\tI-\u0006C!\u0003\u0017\fA\u0001\u001a:paR\u0019\u0011'!4\t\u000f\u0005\u0015\u0017q\u0019a\u0001\u001f\"9\u0011\u0011[\u000b\u0005B\u0005M\u0017!\u0003;bW\u0016\u0014\u0016n\u001a5u)\r\t\u0014Q\u001b\u0005\b\u0003\u000b\fy\r1\u0001P\u0011\u001d\tI.\u0006C!\u00037\f\u0011\u0002\u001a:paJKw\r\u001b;\u0015\u0007E\ni\u000eC\u0004\u0002F\u0006]\u0007\u0019A(\t\u000f\u0005\u0005X\u0003\"\u0011\u0002d\u0006!\u0001.Z1e+\u0005a\u0002BBAt+\u0011\u0005S0\u0001\u0003uC&d\u0007bBAv+\u0011\u0005\u00131]\u0001\u0005Y\u0006\u001cH\u000f\u0003\u0004\u0002pV!\t%`\u0001\u0005S:LG\u000fC\u0004\u0002tV!\t%!>\u0002\u000bMd\u0017nY3\u0015\u000bE\n90a?\t\u000f\u0005e\u0018\u0011\u001fa\u0001\u001f\u0006!aM]8n\u0011\u001d\ti0!=A\u0002=\u000bQ!\u001e8uS2DqA!\u0001\u0016\t\u0003\u0012\u0019!A\u0004ta2LG/\u0011;\u0015\t\t\u0015!1\u0002\t\u0006E\t\u001d\u0011'M\u0005\u0004\u0005\u00131!A\u0002+va2,'\u0007C\u0004\u0002F\u0006}\b\u0019A(\t\u000f\t=Q\u0003\"\u0011\u0003\u0012\u0005QA\u0005\u001d7vg\u0012\u0002H.^:\u0016\r\tM!\u0011\u0005B\r)\u0011\u0011)Ba\t\u0015\t\t]!1\u0004\t\u0004;\teAaBA4\u0005\u001b\u0011\r\u0001\t\u0005\t\u0003#\u0012i\u0001q\u0001\u0003\u001eAAq\"!\u00162\u0005?\u00119\u0002E\u0002\u001e\u0005C!\u0001\"!\b\u0003\u000e\t\u0007\u0011q\u0004\u0005\t\u0005K\u0011i\u00011\u0001\u0003(\u0005!A\u000f[1u!\u0015I\"\u0011\u0006B\u0010\u0013\r\u0011Y\u0003\u0002\u0002\u0013\u000f\u0016tGK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cW\r\u0003\u0005\u00030U!\tA\u0001B\u0019\u0003!)\b\u000fZ1uK\u0006#X\u0003\u0002B\u001a\u0005s!bA!\u000e\u0003<\tu\u0002\u0003\u0002\u0006\u0016\u0005o\u00012!\bB\u001d\t!\tiB!\fC\u0002\u0005}\u0001bBA\u001f\u0005[\u0001\ra\u0014\u0005\t\u0003\u0017\u0013i\u00031\u0001\u00038!9!\u0011I\u000b\u0005\n\t\r\u0013aD4pi>\u0004vn],sSR\f'\r\\3\u0015\u000f=\u0014)E!\u0013\u0003N!9!q\tB \u0001\u0004y\u0015\u0001C8mI&sG-\u001a=\t\u000f\t-#q\ba\u0001\u001f\u0006Aa.Z<J]\u0012,\u0007\u0010C\u0004\u0003P\t}\u0002\u0019A(\u0002\u0007a|'\u000fC\u0004\u0003TU!IA!\u0016\u0002)\u001d|Go\u001c$sKND\u0007k\\:Xe&$\u0018M\u00197f)\u001dy'q\u000bB-\u00057BqAa\u0012\u0003R\u0001\u0007q\nC\u0004\u0003L\tE\u0003\u0019A(\t\u000f\t=#\u0011\u000ba\u0001\u001f\"A!qL\u000b\u0005\u0002\t\u0011\t'A\u0006baB,g\u000e\u001a$s_:$X\u0003\u0002B2\u0005S\"BA!\u001a\u0003lA!!\"\u0006B4!\ri\"\u0011\u000e\u0003\t\u0003;\u0011iF1\u0001\u0002 !A!Q\u000eB/\u0001\u0004\u00119'A\u0003wC2,X\r\u0003\u0005\u0003rU!\tA\u0001B:\u0003)\t\u0007\u000f]3oI\n\u000b7m[\u000b\u0005\u0005k\u0012Y\b\u0006\u0003\u0003x\tu\u0004\u0003\u0002\u0006\u0016\u0005s\u00022!\bB>\t!\tiBa\u001cC\u0002\u0005}\u0001\u0002\u0003B7\u0005_\u0002\rA!\u001f\t\u000f\t\u0005U\u0003\"\u0003\u0003\u0004\u0006i1\u000f[5giR{\u0007\u000fT3wK2$Ra\u001cBC\u0005\u0013CqAa\"\u0003��\u0001\u0007q*A\u0004pY\u0012dUM\u001a;\t\u000f\t-%q\u0010a\u0001\u001f\u00069a.Z<MK\u001a$\bb\u0002BH+\u0011%!\u0011S\u0001\tu\u0016\u0014x\u000eT3giR)qNa%\u0003$\"A!Q\u0013BG\u0001\u0004\u00119*A\u0003beJ\f\u0017\u0010E\u0003#\u00053\u0013i*C\u0002\u0003\u001c\u001a\u0011Q!\u0011:sCf\u00042A\tBP\u0013\r\u0011\tK\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000f\u0005u\"Q\u0012a\u0001\u001f\"9!qU\u000b\u0005\n\t%\u0016!\u0003>fe>\u0014\u0016n\u001a5u)\u0015y'1\u0016BW\u0011!\u0011)J!*A\u0002\t]\u0005bBA\u001f\u0005K\u0003\ra\u0014\u0005\b\u0005c+B\u0011\u0002BZ\u0003!\u0019w\u000e]=MK\u001a$HC\u0002BL\u0005k\u00139\f\u0003\u0005\u0003\u0016\n=\u0006\u0019\u0001BL\u0011\u001d\u0011ILa,A\u0002=\u000bQA]5hQRDqA!0\u0016\t\u0013\u0011y,A\u0005d_BL(+[4iiR1!q\u0013Ba\u0005\u0007D\u0001B!&\u0003<\u0002\u0007!q\u0013\u0005\b\u0005\u000b\u0014Y\f1\u0001P\u0003\u0011aWM\u001a;\t\u000f\t%W\u0003\"\u0003\u0003L\u0006A\u0001O]3DY\u0016\fg\u000eF\u0002p\u0005\u001bDqAa4\u0003H\u0002\u0007q*A\u0003eKB$\b\u000eC\u0004\u0003TV!IA!6\u0002\u001b\rdW-\u00198MK\u001a$X\tZ4f)\ry'q\u001b\u0005\b\u00053\u0014\t\u000e1\u0001P\u0003!\u0019W\u000f^%oI\u0016D\bb\u0002Bo+\u0011%!q\\\u0001\u000fG2,\u0017M\u001c*jO\"$X\tZ4f)\ry'\u0011\u001d\u0005\b\u00053\u0014Y\u000e1\u0001P\u0011\u001d\u0011)/\u0006C\u0005\u0005O\fQB]3rk&\u0014X\r\u001a#faRDGcA(\u0003j\"9!q\nBr\u0001\u0004y\u0005b\u0002Bw+\u0011%!q^\u0001\u000bIJ|\u0007O\u0012:p]R\u0004DcA\u0019\u0003r\"9!\u0011\u001cBv\u0001\u0004y\u0005b\u0002B{+\u0011%!q_\u0001\nIJ|\u0007OQ1dWB\"2!\rB}\u0011\u001d\u0011INa=A\u0002=CaaW\u0006\u0005\u0002\tuH#A\u0005\t\u000f\r\u00051\u0002\"\u0001\u0004\u0004\u0005Qa.Z<Ck&dG-\u001a:\u0016\t\r\u00151QC\u000b\u0003\u0007\u000f\u0001\u0002b!\u0003\u0004\u0010\rM1qC\u0007\u0003\u0007\u0017Q1a!\u0004\u0005\u0003\u001diW\u000f^1cY\u0016LAa!\u0005\u0004\f\t9!)^5mI\u0016\u0014\bcA\u000f\u0004\u0016\u00111qDa@C\u0002\u0001\u0002BAC\u000b\u0004\u0014!911D\u0006\u0005\u0004\ru\u0011\u0001D2b]\n+\u0018\u000e\u001c3Ge>lW\u0003BB\u0010\u0007[)\"a!\t\u0011\u0013=\t)fa\t\u0004,\r=\u0002\u0003BB\u0013\u0007Oi\u0011aC\u0005\u0004\u0007S!'\u0001B\"pY2\u00042!HB\u0017\t\u0019y2\u0011\u0004b\u0001AA!!\"FB\u0016\u0011)\u0019\u0019d\u0003b\u0001\n\u0003\u00111QG\u0001\u0004\u001d&cUCAB\u001c!\rQQ#\t\u0005\t\u0007wY\u0001\u0015!\u0003\u00048\u0005!a*\u0013'!\u0011\u001d\u0019yd\u0003C!\u0007\u0003\nQ!Z7qif,Baa\u0011\u0004JU\u00111Q\t\t\u0005\u0015U\u00199\u0005E\u0002\u001e\u0007\u0013\"aaHB\u001f\u0005\u0004\u0001\u0003\"CB'\u0017\t\u0007IQBB(\u0003Aaun\u001a\u001aD_:\u001c\u0017\r\u001e$bgR,'/\u0006\u0002\u0004R=\u001111K\u000f\u0002\u000b!A1qK\u0006!\u0002\u001b\u0019\t&A\tM_\u001e\u00144i\u001c8dCR4\u0015m\u001d;fe\u0002B\u0011ba\u0017\f\u0005\u0004%ia!\u0018\u0002!QKg._!qa\u0016tGMR1ti\u0016\u0014XCAB0\u001f\t\u0019\t'H\u0001\u0003\u0011!\u0019)g\u0003Q\u0001\u000e\r}\u0013!\u0005+j]f\f\u0005\u000f]3oI\u001a\u000b7\u000f^3sA!I1\u0011N\u0006\u0002\u0002\u0013%11N\u0001\fe\u0016\fGMU3t_24X\r\u0006\u0002\u0004nA!1qNB=\u001b\t\u0019\tH\u0003\u0003\u0004t\rU\u0014\u0001\u00027b]\u001eT!aa\u001e\u0002\t)\fg/Y\u0005\u0005\u0007w\u001a\tH\u0001\u0004PE*,7\r\u001e")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Vector.class */
public final class Vector<A> extends AbstractSeq<A> implements IndexedSeq<A>, VectorPointer<A>, Serializable, CustomParallelizable<A, ParVector<A>> {
    private int depth;
    private boolean dirty = false;
    private Object[] display0;
    private Object[] display1;
    private Object[] display2;
    private Object[] display3;
    private Object[] display4;
    private Object[] display5;
    private final int endIndex;
    private final int focus;
    private final int startIndex;

    public Vector(int i, int i2, int i3) {
        this.startIndex = i;
        this.endIndex = i2;
        this.focus = i3;
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Seq.Cclass.$init$(this);
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        VectorPointer.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
    }

    public static GenTraversableFactory<Vector>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) Vector$.MODULE$.ReusableCBF();
    }

    public static <A> CanBuildFrom<Vector<?>, A, Vector<A>> canBuildFrom() {
        return Vector$.MODULE$.canBuildFrom();
    }

    private int checkRangeConvert(int i) {
        int startIndex = startIndex() + i;
        if (i < 0 || startIndex >= endIndex()) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }
        return startIndex;
    }

    private void cleanLeftEdge(int i) {
        if (i < 32) {
            zeroLeft(display0(), i);
        } else if (i < 1024) {
            zeroLeft(display0(), i & 31);
            display1_$eq(copyRight(display1(), i >>> 5));
        } else if (i < 32768) {
            zeroLeft(display0(), i & 31);
            display1_$eq(copyRight(display1(), (i >>> 5) & 31));
            display2_$eq(copyRight(display2(), i >>> 10));
        } else if (i < 1048576) {
            zeroLeft(display0(), i & 31);
            display1_$eq(copyRight(display1(), (i >>> 5) & 31));
            display2_$eq(copyRight(display2(), (i >>> 10) & 31));
            display3_$eq(copyRight(display3(), i >>> 15));
        } else if (i < 33554432) {
            zeroLeft(display0(), i & 31);
            display1_$eq(copyRight(display1(), (i >>> 5) & 31));
            display2_$eq(copyRight(display2(), (i >>> 10) & 31));
            display3_$eq(copyRight(display3(), (i >>> 15) & 31));
            display4_$eq(copyRight(display4(), i >>> 20));
        } else if (i >= 1073741824) {
            throw new IllegalArgumentException();
        } else {
            zeroLeft(display0(), i & 31);
            display1_$eq(copyRight(display1(), (i >>> 5) & 31));
            display2_$eq(copyRight(display2(), (i >>> 10) & 31));
            display3_$eq(copyRight(display3(), (i >>> 15) & 31));
            display4_$eq(copyRight(display4(), (i >>> 20) & 31));
            display5_$eq(copyRight(display5(), i >>> 25));
        }
    }

    private void cleanRightEdge(int i) {
        if (i <= 32) {
            zeroRight(display0(), i);
        } else if (i <= 1024) {
            zeroRight(display0(), ((i - 1) & 31) + 1);
            display1_$eq(copyLeft(display1(), i >>> 5));
        } else if (i <= 32768) {
            int i2 = i - 1;
            zeroRight(display0(), (i2 & 31) + 1);
            display1_$eq(copyLeft(display1(), ((i2 >>> 5) & 31) + 1));
            display2_$eq(copyLeft(display2(), i >>> 10));
        } else if (i <= 1048576) {
            int i3 = i - 1;
            zeroRight(display0(), (i3 & 31) + 1);
            display1_$eq(copyLeft(display1(), ((i3 >>> 5) & 31) + 1));
            display2_$eq(copyLeft(display2(), ((i3 >>> 10) & 31) + 1));
            display3_$eq(copyLeft(display3(), i >>> 15));
        } else if (i <= 33554432) {
            int i4 = i - 1;
            zeroRight(display0(), (i4 & 31) + 1);
            display1_$eq(copyLeft(display1(), ((i4 >>> 5) & 31) + 1));
            display2_$eq(copyLeft(display2(), ((i4 >>> 10) & 31) + 1));
            display3_$eq(copyLeft(display3(), ((i4 >>> 15) & 31) + 1));
            display4_$eq(copyLeft(display4(), i >>> 20));
        } else if (i > 1073741824) {
            throw new IllegalArgumentException();
        } else {
            int i5 = i - 1;
            zeroRight(display0(), (i5 & 31) + 1);
            display1_$eq(copyLeft(display1(), ((i5 >>> 5) & 31) + 1));
            display2_$eq(copyLeft(display2(), ((i5 >>> 10) & 31) + 1));
            display3_$eq(copyLeft(display3(), ((i5 >>> 15) & 31) + 1));
            display4_$eq(copyLeft(display4(), ((i5 >>> 20) & 31) + 1));
            display5_$eq(copyLeft(display5(), i >>> 25));
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable concat(scala.collection.Seq seq) {
        return Vector$.MODULE$.concat(seq);
    }

    private Object[] copyLeft(Object[] objArr, int i) {
        Object[] objArr2 = new Object[objArr.length];
        Platform$ platform$ = Platform$.MODULE$;
        System.arraycopy(objArr, 0, objArr2, 0, i);
        return objArr2;
    }

    private Object[] copyRight(Object[] objArr, int i) {
        int length = objArr.length;
        Object[] objArr2 = new Object[length];
        Platform$ platform$ = Platform$.MODULE$;
        System.arraycopy(objArr, i, objArr2, i, length - i);
        return objArr2;
    }

    private Vector<A> dropBack0(int i) {
        int i2 = i - 1;
        int i3 = i2 & (-32);
        int requiredDepth = requiredDepth(i2 ^ startIndex());
        int startIndex = startIndex() & (((1 << (requiredDepth * 5)) - 1) ^ (-1));
        int i4 = i - startIndex;
        Vector<A> vector = new Vector<>(startIndex() - startIndex, i4, i3 - startIndex);
        vector.initFrom(this);
        vector.dirty_$eq(dirty());
        int i5 = this.focus;
        vector.gotoPosWritable(i5, i3, i5 ^ i3);
        vector.preClean(requiredDepth);
        vector.cleanRightEdge(i4);
        return vector;
    }

    private Vector<A> dropFront0(int i) {
        int i2 = i & (-32);
        int requiredDepth = requiredDepth((endIndex() - 1) ^ i);
        int i3 = (((1 << (requiredDepth * 5)) - 1) ^ (-1)) & i;
        int i4 = i - i3;
        Vector<A> vector = new Vector<>(i4, endIndex() - i3, i2 - i3);
        vector.initFrom(this);
        vector.dirty_$eq(dirty());
        int i5 = this.focus;
        vector.gotoPosWritable(i5, i2, i5 ^ i2);
        vector.preClean(requiredDepth);
        vector.cleanLeftEdge(i4);
        return vector;
    }

    public static GenTraversable empty() {
        return Vector$.MODULE$.empty();
    }

    /* renamed from: empty */
    public static <A> Vector<A> m6184empty() {
        return Vector$.MODULE$.empty();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, int i5, Function0 function0) {
        return Vector$.MODULE$.fill(i, i2, i3, i4, i5, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, Function0 function0) {
        return Vector$.MODULE$.fill(i, i2, i3, i4, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, Function0 function0) {
        return Vector$.MODULE$.fill(i, i2, i3, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, Function0 function0) {
        return Vector$.MODULE$.fill(i, i2, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, Function0 function0) {
        return Vector$.MODULE$.fill(i, function0);
    }

    private void gotoFreshPosWritable(int i, int i2, int i3) {
        if (dirty()) {
            gotoFreshPosWritable1(i, i2, i3);
            return;
        }
        gotoFreshPosWritable0(i, i2, i3);
        dirty_$eq(true);
    }

    private void gotoPosWritable(int i, int i2, int i3) {
        if (dirty()) {
            gotoPosWritable1(i, i2, i3);
            return;
        }
        gotoPosWritable0(i2, i3);
        dirty_$eq(true);
    }

    private <A, B, That> boolean isDefaultCBF(CanBuildFrom<Vector<A>, B, That> canBuildFrom) {
        return canBuildFrom == IndexedSeq$.MODULE$.ReusableCBF() || canBuildFrom == Seq$.MODULE$.ReusableCBF() || canBuildFrom == Seq$.MODULE$.ReusableCBF();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable iterate(Object obj, int i, Function1 function1) {
        return Vector$.MODULE$.iterate(obj, i, function1);
    }

    private void preClean(int i) {
        depth_$eq(i);
        int i2 = i - 1;
        if (i2 == 0) {
            display1_$eq(null);
            display2_$eq(null);
            display3_$eq(null);
            display4_$eq(null);
            display5_$eq(null);
        } else if (i2 == 1) {
            display2_$eq(null);
            display3_$eq(null);
            display4_$eq(null);
            display5_$eq(null);
        } else if (i2 == 2) {
            display3_$eq(null);
            display4_$eq(null);
            display5_$eq(null);
        } else if (i2 == 3) {
            display4_$eq(null);
            display5_$eq(null);
        } else if (i2 == 4) {
            display5_$eq(null);
        } else if (i2 != 5) {
            throw new MatchError(BoxesRunTime.boxToInteger(i2));
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Object obj3, Integral integral) {
        return Vector$.MODULE$.range(obj, obj2, obj3, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Integral integral) {
        return Vector$.MODULE$.range(obj, obj2, integral);
    }

    private int requiredDepth(int i) {
        int i2;
        if (i < 32) {
            i2 = 1;
        } else if (i < 1024) {
            i2 = 2;
        } else if (i < 32768) {
            i2 = 3;
        } else if (i < 1048576) {
            i2 = 4;
        } else if (i < 33554432) {
            i2 = 5;
        } else if (i >= 1073741824) {
            throw new IllegalArgumentException();
        } else {
            i2 = 6;
        }
        return i2;
    }

    private void shiftTopLevel(int i, int i2) {
        int depth = depth() - 1;
        if (depth == 0) {
            display0_$eq(copyRange(display0(), i, i2));
        } else if (depth == 1) {
            display1_$eq(copyRange(display1(), i, i2));
        } else if (depth == 2) {
            display2_$eq(copyRange(display2(), i, i2));
        } else if (depth == 3) {
            display3_$eq(copyRange(display3(), i, i2));
        } else if (depth == 4) {
            display4_$eq(copyRange(display4(), i, i2));
        } else if (depth != 5) {
            throw new MatchError(BoxesRunTime.boxToInteger(depth));
        } else {
            display5_$eq(copyRange(display5(), i, i2));
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, int i5, Function5 function5) {
        return Vector$.MODULE$.tabulate(i, i2, i3, i4, i5, function5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, Function4 function4) {
        return Vector$.MODULE$.tabulate(i, i2, i3, i4, function4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, Function3 function3) {
        return Vector$.MODULE$.tabulate(i, i2, i3, function3);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, Function2 function2) {
        return Vector$.MODULE$.tabulate(i, i2, function2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, Function1 function1) {
        return Vector$.MODULE$.tabulate(i, function1);
    }

    public static Some unapplySeq(scala.collection.Seq seq) {
        return Vector$.MODULE$.unapplySeq(seq);
    }

    private void zeroLeft(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
    }

    private void zeroRight(Object[] objArr, int i) {
        while (i < objArr.length) {
            objArr[i] = null;
            i++;
        }
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That $colon$plus(B b, CanBuildFrom<Vector<A>, B, That> canBuildFrom) {
        return (That) (canBuildFrom == IndexedSeq$.MODULE$.ReusableCBF() || canBuildFrom == Seq$.MODULE$.ReusableCBF() || canBuildFrom == Seq$.MODULE$.ReusableCBF() ? appendBack(b) : SeqLike.Cclass.$colon$plus(this, b, canBuildFrom));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That $plus$colon(B b, CanBuildFrom<Vector<A>, B, That> canBuildFrom) {
        return (That) (canBuildFrom == IndexedSeq$.MODULE$.ReusableCBF() || canBuildFrom == Seq$.MODULE$.ReusableCBF() || canBuildFrom == Seq$.MODULE$.ReusableCBF() ? appendFront(b) : SeqLike.Cclass.$plus$colon(this, b, canBuildFrom));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<Vector<A>, B, That> canBuildFrom) {
        Object obj;
        if (!(canBuildFrom == IndexedSeq$.MODULE$.ReusableCBF() || canBuildFrom == Seq$.MODULE$.ReusableCBF() || canBuildFrom == Seq$.MODULE$.ReusableCBF())) {
            obj = TraversableLike.Cclass.$plus$plus(this, genTraversableOnce.seq(), canBuildFrom);
        } else if (!genTraversableOnce.isEmpty()) {
            Object seq = genTraversableOnce.isTraversableAgain() ? genTraversableOnce.seq() : genTraversableOnce.toVector();
            int size = seq.size();
            if (size > 2 && size >= (size() >> 5)) {
                if (size() < (size >> 5) && (seq instanceof Vector)) {
                    Object obj2 = (Vector) seq;
                    Iterator<A> reverseIterator = reverseIterator();
                    while (true) {
                        obj = obj2;
                        if (!reverseIterator.hasNext()) {
                            break;
                        }
                        obj2 = (Vector) obj2.$plus$colon(reverseIterator.next(), Vector$.MODULE$.canBuildFrom());
                    }
                } else {
                    obj = TraversableLike.Cclass.$plus$plus(this, seq, canBuildFrom);
                }
            } else {
                ObjectRef create = ObjectRef.create(this);
                seq.foreach(new Vector$$anonfun$$plus$plus$1(this, create));
                obj = (Vector) create.elem;
            }
        } else {
            obj = this;
        }
        return (That) obj;
    }

    public <B> Vector<B> appendBack(B b) {
        Vector<B> vector;
        if (endIndex() != startIndex()) {
            int endIndex = endIndex() & (-32);
            int endIndex2 = endIndex() & 31;
            if (endIndex() != endIndex) {
                Vector<B> vector2 = new Vector<>(startIndex(), endIndex() + 1, endIndex);
                vector2.initFrom(this);
                vector2.dirty_$eq(dirty());
                int i = this.focus;
                vector2.gotoPosWritable(i, endIndex, i ^ endIndex);
                vector2.display0()[endIndex2] = b;
                vector = vector2;
            } else {
                int startIndex = startIndex() & (((1 << ((depth() - 1) * 5)) - 1) ^ (-1));
                int startIndex2 = startIndex() >>> ((depth() - 1) * 5);
                if (startIndex != 0) {
                    debug();
                    if (depth() > 1) {
                        int i2 = endIndex - startIndex;
                        int i3 = this.focus - startIndex;
                        Vector<B> vector3 = new Vector<>(startIndex() - startIndex, (endIndex() + 1) - startIndex, i2);
                        vector3.initFrom(this);
                        vector3.dirty_$eq(dirty());
                        vector3.shiftTopLevel(startIndex2, 0);
                        vector3.debug();
                        vector3.gotoFreshPosWritable(i3, i2, i3 ^ i2);
                        vector3.display0()[endIndex2] = b;
                        vector3.debug();
                        vector = vector3;
                    } else {
                        int i4 = endIndex - 32;
                        int i5 = this.focus;
                        Vector<B> vector4 = new Vector<>(startIndex() - startIndex, (endIndex() + 1) - startIndex, i4);
                        vector4.initFrom(this);
                        vector4.dirty_$eq(dirty());
                        vector4.shiftTopLevel(startIndex2, 0);
                        vector4.gotoPosWritable(i5, i4, i5 ^ i4);
                        vector4.display0()[32 - startIndex] = b;
                        vector4.debug();
                        vector = vector4;
                    }
                } else {
                    int i6 = this.focus;
                    Vector<B> vector5 = new Vector<>(startIndex(), endIndex() + 1, endIndex);
                    vector5.initFrom(this);
                    vector5.dirty_$eq(dirty());
                    vector5.gotoFreshPosWritable(i6, endIndex, i6 ^ endIndex);
                    vector5.display0()[endIndex2] = b;
                    if (vector5.depth() == depth() + 1) {
                        vector5.debug();
                    }
                    vector = vector5;
                }
            }
        } else {
            Object[] objArr = new Object[32];
            objArr[0] = b;
            vector = new Vector<>(0, 1, 0);
            vector.depth_$eq(1);
            vector.display0_$eq(objArr);
        }
        return vector;
    }

    public <B> Vector<B> appendFront(B b) {
        Vector<B> vector;
        if (endIndex() != startIndex()) {
            int startIndex = (startIndex() - 1) & (-32);
            int startIndex2 = (startIndex() - 1) & 31;
            int i = startIndex + 32;
            if (startIndex() != i) {
                Vector<B> vector2 = new Vector<>(startIndex() - 1, endIndex(), startIndex);
                vector2.initFrom(this);
                vector2.dirty_$eq(dirty());
                int i2 = this.focus;
                vector2.gotoPosWritable(i2, startIndex, i2 ^ startIndex);
                vector2.display0()[startIndex2] = b;
                vector = vector2;
            } else {
                int depth = (1 << (depth() * 5)) - endIndex();
                int depth2 = (((1 << ((depth() - 1) * 5)) - 1) ^ (-1)) & depth;
                int depth3 = depth >>> ((depth() - 1) * 5);
                if (depth2 != 0) {
                    debug();
                    if (depth() > 1) {
                        int i3 = startIndex + depth2;
                        int i4 = this.focus + depth2;
                        Vector<B> vector3 = new Vector<>((startIndex() - 1) + depth2, endIndex() + depth2, i3);
                        vector3.initFrom(this);
                        vector3.dirty_$eq(dirty());
                        vector3.shiftTopLevel(0, depth3);
                        vector3.debug();
                        vector3.gotoFreshPosWritable(i4, i3, i4 ^ i3);
                        vector3.display0()[startIndex2] = b;
                        vector = vector3;
                    } else {
                        int i5 = this.focus;
                        Vector<B> vector4 = new Vector<>((startIndex() - 1) + depth2, endIndex() + depth2, i);
                        vector4.initFrom(this);
                        vector4.dirty_$eq(dirty());
                        vector4.shiftTopLevel(0, depth3);
                        vector4.gotoPosWritable(i5, i, i5 ^ i);
                        vector4.display0()[depth2 - 1] = b;
                        vector4.debug();
                        vector = vector4;
                    }
                } else if (startIndex < 0) {
                    int depth4 = (1 << ((depth() + 1) * 5)) - (1 << (depth() * 5));
                    int i6 = startIndex + depth4;
                    int i7 = this.focus + depth4;
                    Vector<B> vector5 = new Vector<>((startIndex() - 1) + depth4, endIndex() + depth4, i6);
                    vector5.initFrom(this);
                    vector5.dirty_$eq(dirty());
                    vector5.debug();
                    vector5.gotoFreshPosWritable(i7, i6, i7 ^ i6);
                    vector5.display0()[startIndex2] = b;
                    vector5.debug();
                    vector = vector5;
                } else {
                    int i8 = this.focus;
                    Vector<B> vector6 = new Vector<>(startIndex() - 1, endIndex(), startIndex);
                    vector6.initFrom(this);
                    vector6.dirty_$eq(dirty());
                    vector6.gotoFreshPosWritable(i8, startIndex, i8 ^ startIndex);
                    vector6.display0()[startIndex2] = b;
                    vector = vector6;
                }
            }
        } else {
            Object[] objArr = new Object[32];
            objArr[31] = b;
            vector = new Vector<>(31, 32, 0);
            vector.depth_$eq(1);
            vector.display0_$eq(objArr);
        }
        return vector;
    }

    @Override // scala.collection.GenSeqLike
    public A apply(int i) {
        int checkRangeConvert = checkRangeConvert(i);
        return getElem(checkRangeConvert, this.focus ^ checkRangeConvert);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Vector> companion() {
        return Vector$.MODULE$;
    }

    @Override // scala.collection.immutable.VectorPointer
    public final Object[] copyOf(Object[] objArr) {
        return VectorPointer.Cclass.copyOf(this, objArr);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final Object[] copyRange(Object[] objArr, int i, int i2) {
        return VectorPointer.Cclass.copyRange(this, objArr, i, i2);
    }

    @Override // scala.collection.immutable.VectorPointer
    public void debug() {
        VectorPointer.Cclass.debug(this);
    }

    @Override // scala.collection.immutable.VectorPointer
    public int depth() {
        return this.depth;
    }

    @Override // scala.collection.immutable.VectorPointer
    public void depth_$eq(int i) {
        this.depth = i;
    }

    public boolean dirty() {
        return this.dirty;
    }

    public void dirty_$eq(boolean z) {
        this.dirty = z;
    }

    @Override // scala.collection.immutable.VectorPointer
    public Object[] display0() {
        return this.display0;
    }

    @Override // scala.collection.immutable.VectorPointer
    public void display0_$eq(Object[] objArr) {
        this.display0 = objArr;
    }

    @Override // scala.collection.immutable.VectorPointer
    public Object[] display1() {
        return this.display1;
    }

    @Override // scala.collection.immutable.VectorPointer
    public void display1_$eq(Object[] objArr) {
        this.display1 = objArr;
    }

    @Override // scala.collection.immutable.VectorPointer
    public Object[] display2() {
        return this.display2;
    }

    @Override // scala.collection.immutable.VectorPointer
    public void display2_$eq(Object[] objArr) {
        this.display2 = objArr;
    }

    @Override // scala.collection.immutable.VectorPointer
    public Object[] display3() {
        return this.display3;
    }

    @Override // scala.collection.immutable.VectorPointer
    public void display3_$eq(Object[] objArr) {
        this.display3 = objArr;
    }

    @Override // scala.collection.immutable.VectorPointer
    public Object[] display4() {
        return this.display4;
    }

    @Override // scala.collection.immutable.VectorPointer
    public void display4_$eq(Object[] objArr) {
        this.display4 = objArr;
    }

    @Override // scala.collection.immutable.VectorPointer
    public Object[] display5() {
        return this.display5;
    }

    @Override // scala.collection.immutable.VectorPointer
    public void display5_$eq(Object[] objArr) {
        this.display5 = objArr;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Vector<A> drop(int i) {
        return i <= 0 ? this : startIndex() + i < endIndex() ? dropFront0(startIndex() + i) : Vector$.MODULE$.empty();
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public Vector<A> dropRight(int i) {
        return i <= 0 ? this : endIndex() - i > startIndex() ? dropBack0(endIndex() - i) : Vector$.MODULE$.empty();
    }

    public int endIndex() {
        return this.endIndex;
    }

    @Override // scala.collection.immutable.VectorPointer
    public final A getElem(int i, int i2) {
        return (A) VectorPointer.Cclass.getElem(this, i, i2);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void gotoFreshPosWritable0(int i, int i2, int i3) {
        VectorPointer.Cclass.gotoFreshPosWritable0(this, i, i2, i3);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void gotoFreshPosWritable1(int i, int i2, int i3) {
        VectorPointer.Cclass.gotoFreshPosWritable1(this, i, i2, i3);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void gotoNextBlockStart(int i, int i2) {
        VectorPointer.Cclass.gotoNextBlockStart(this, i, i2);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void gotoNextBlockStartWritable(int i, int i2) {
        VectorPointer.Cclass.gotoNextBlockStartWritable(this, i, i2);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void gotoPos(int i, int i2) {
        VectorPointer.Cclass.gotoPos(this, i, i2);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void gotoPosWritable0(int i, int i2) {
        VectorPointer.Cclass.gotoPosWritable0(this, i, i2);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void gotoPosWritable1(int i, int i2, int i3) {
        VectorPointer.Cclass.gotoPosWritable1(this, i, i2, i3);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return IndexedSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public A head() {
        if (!isEmpty()) {
            return apply(0);
        }
        throw new UnsupportedOperationException("empty.head");
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Vector<A> init() {
        if (!isEmpty()) {
            return dropRight(1);
        }
        throw new UnsupportedOperationException("empty.init");
    }

    @Override // scala.collection.immutable.VectorPointer
    public final <U> void initFrom(VectorPointer<U> vectorPointer) {
        VectorPointer.Cclass.initFrom(this, vectorPointer);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final <U> void initFrom(VectorPointer<U> vectorPointer, int i) {
        VectorPointer.Cclass.initFrom(this, vectorPointer, i);
    }

    public final <B> void initIterator(VectorIterator<B> vectorIterator) {
        vectorIterator.initFrom(this);
        if (dirty()) {
            vectorIterator.stabilize(this.focus);
        }
        if (vectorIterator.depth() > 1) {
            vectorIterator.gotoPos(startIndex(), startIndex() ^ this.focus);
        }
    }

    @Override // scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public VectorIterator<A> iterator() {
        VectorIterator vectorIterator = (VectorIterator<A>) new VectorIterator(startIndex(), endIndex());
        initIterator(vectorIterator);
        return vectorIterator;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public A last() {
        if (!isEmpty()) {
            return apply(length() - 1);
        }
        throw new UnsupportedOperationException("empty.last");
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return endIndex() - startIndex();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public int lengthCompare(int i) {
        return length() - i;
    }

    @Override // scala.collection.immutable.VectorPointer
    public final Object[] nullSlotAndCopy(Object[] objArr, int i) {
        return VectorPointer.Cclass.nullSlotAndCopy(this, objArr, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.Parallelizable
    public ParVector<A> par() {
        return new ParVector<>(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParVector<A>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public Iterator<A> reverseIterator() {
        return new AbstractIterator<A>(this) { // from class: scala.collection.immutable.Vector$$anon$1
            private final /* synthetic */ Vector $outer;

            /* renamed from: i */
            private int f1559i;

            {
                Objects.requireNonNull(this);
                this.$outer = this;
                this.f1559i = this.length();
            }

            /* renamed from: i */
            private int m139i() {
                return this.f1559i;
            }

            private void i_$eq(int i) {
                this.f1559i = i;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return m139i() > 0;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // scala.collection.Iterator
            public A next() {
                Nothing$ nothing$;
                if (m139i() > 0) {
                    i_$eq(m139i() - 1);
                    nothing$ = this.$outer.apply(m139i());
                } else {
                    nothing$ = Iterator$.MODULE$.empty().next();
                }
                return nothing$;
            }
        };
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public IndexedSeq<A> seq() {
        return IndexedSeq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Vector<A> slice(int i, int i2) {
        return take(i2).drop(i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<Vector<A>, Vector<A>> splitAt(int i) {
        return new Tuple2<>(take(i), drop(i));
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void stabilize(int i) {
        VectorPointer.Cclass.stabilize(this, i);
    }

    public int startIndex() {
        return this.startIndex;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Vector<A> tail() {
        if (!isEmpty()) {
            return drop(1);
        }
        throw new UnsupportedOperationException("empty.tail");
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Vector<A> take(int i) {
        return i <= 0 ? Vector$.MODULE$.empty() : startIndex() + i < endIndex() ? dropBack0(startIndex() + i) : this;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public Vector<A> takeRight(int i) {
        return i <= 0 ? Vector$.MODULE$.empty() : endIndex() - i > startIndex() ? dropFront0(endIndex() - i) : this;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.IndexedSeq<A> thisCollection() {
        return IndexedSeqLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Buffer<A1> toBuffer() {
        return IndexedSeqLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.IndexedSeq toCollection(Object obj) {
        return IndexedSeqLike.Cclass.toCollection(this, obj);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public IndexedSeq<A> toIndexedSeq() {
        return IndexedSeq.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<A> toSeq() {
        return Seq.Cclass.toSeq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Vector<A> toVector() {
        return this;
    }

    public <B> Vector<B> updateAt(int i, B b) {
        int checkRangeConvert = checkRangeConvert(i);
        Vector<B> vector = new Vector<>(startIndex(), endIndex(), checkRangeConvert);
        vector.initFrom(this);
        vector.dirty_$eq(dirty());
        int i2 = this.focus;
        vector.gotoPosWritable(i2, checkRangeConvert, i2 ^ checkRangeConvert);
        vector.display0()[checkRangeConvert & 31] = b;
        return vector;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That updated(int i, B b, CanBuildFrom<Vector<A>, B, That> canBuildFrom) {
        return (That) (canBuildFrom == IndexedSeq$.MODULE$.ReusableCBF() || canBuildFrom == Seq$.MODULE$.ReusableCBF() || canBuildFrom == Seq$.MODULE$.ReusableCBF() ? updateAt(i, b) : SeqLike.Cclass.updated(this, i, b, canBuildFrom));
    }
}
