package scala.collection.immutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import scala.Array$;
import scala.Function1;
import scala.MatchError;
import scala.Predef$;
import scala.Serializable;
import scala.collection.AbstractSet;
import scala.collection.CustomParallelizable;
import scala.collection.GenSet;
import scala.collection.GenSetLike;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.Seq;
import scala.collection.SetLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.HashSet;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Set;
import scala.collection.immutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParHashSet;
import scala.collection.parallel.immutable.ParHashSet$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichInt$;
import scala.runtime.ScalaRunTime$;
import scala.sys.package$;
@ScalaSignature(bytes = "\u0006\u0001\u0015mc\u0001B\u0001\u0003\u0001%\u0011q\u0001S1tQN+GO\u0003\u0002\u0004\t\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0003\u0015E\u0019r\u0001A\u0006\u001c?\u0019RC\u0007E\u0002\r\u001b=i\u0011\u0001B\u0005\u0003\u001d\u0011\u00111\"\u00112tiJ\f7\r^*fiB\u0011\u0001#\u0005\u0007\u0001\t\u0015\u0011\u0002A1\u0001\u0014\u0005\u0005\t\u0015C\u0001\u000b\u0019!\t)b#D\u0001\u0007\u0013\t9bAA\u0004O_RD\u0017N\\4\u0011\u0005UI\u0012B\u0001\u000e\u0007\u0005\r\te.\u001f\t\u00049uyQ\"\u0001\u0002\n\u0005y\u0011!aA*fiB!\u0001eI\b&\u001b\u0005\t#B\u0001\u0012\u0005\u0003\u001d9WM\\3sS\u000eL!\u0001J\u0011\u0003%\u001d+g.\u001a:jGN+G\u000fV3na2\fG/\u001a\t\u00039\u0001\u0001B\u0001D\u0014\u0010S%\u0011\u0001\u0006\u0002\u0002\b'\u0016$H*[6f!\ra\u0002a\u0004\t\u0005\u0019-zQ&\u0003\u0002-\t\t!2)^:u_6\u0004\u0016M]1mY\u0016d\u0017N_1cY\u0016\u00042A\f\u001a\u0010\u001b\u0005y#BA\u00021\u0015\t\tD!\u0001\u0005qCJ\fG\u000e\\3m\u0013\t\u0019tF\u0001\u0006QCJD\u0015m\u001d5TKR\u0004\"!F\u001b\n\u0005Y2!\u0001D*fe&\fG.\u001b>bE2,\u0007\"\u0002\u001d\u0001\t\u0003I\u0014A\u0002\u001fj]&$h\bF\u0001*\u0011\u0015Y\u0004\u0001\"\u0011=\u0003%\u0019w.\u001c9b]&|g.F\u0001>!\r\u0001c(J\u0005\u0003\u007f\u0005\u0012\u0001cR3oKJL7mQ8na\u0006t\u0017n\u001c8\t\u000b\u0005\u0003A\u0011\t\"\u0002\u0007A\f'/F\u0001.\u0011\u0015!\u0005\u0001\"\u0011F\u0003\u0011\u0019\u0018N_3\u0016\u0003\u0019\u0003\"!F$\n\u0005!3!aA%oi\")!\n\u0001C!\u0017\u0006)Q-\u001c9usV\t\u0011\u0006C\u0003N\u0001\u0011\u0005a*\u0001\u0005ji\u0016\u0014\u0018\r^8s+\u0005y\u0005c\u0001\u0007Q\u001f%\u0011\u0011\u000b\u0002\u0002\t\u0013R,'/\u0019;pe\")1\u000b\u0001C!)\u00069am\u001c:fC\u000eDWCA+`)\t1\u0016\f\u0005\u0002\u0016/&\u0011\u0001L\u0002\u0002\u0005+:LG\u000fC\u0003[%\u0002\u00071,A\u0001g!\u0011)Bl\u00040\n\u0005u3!!\u0003$v]\u000e$\u0018n\u001c82!\t\u0001r\fB\u0003a%\n\u00071CA\u0001V\u0011\u0015\u0011\u0007\u0001\"\u0001d\u0003!\u0019wN\u001c;bS:\u001cHC\u00013h!\t)R-\u0003\u0002g\r\t9!i\\8mK\u0006t\u0007\"\u00025b\u0001\u0004y\u0011!A3\t\u000b)\u0004A\u0011I6\u0002\u0011M,(m]3u\u001f\u001a$\"\u0001\u001a7\t\u000b5L\u0007\u0019\u00018\u0002\tQD\u0017\r\u001e\t\u0004\u0019=|\u0011B\u00019\u0005\u0005\u00199UM\\*fi\")!\u000f\u0001C\tg\u0006I1/\u001e2tKR|e\r\r\u000b\u0004IR,\b\"B7r\u0001\u0004I\u0003\"\u0002<r\u0001\u00041\u0015!\u00027fm\u0016d\u0007\"\u0002=\u0001\t\u0003J\u0018!\u0002\u0013qYV\u001cHCA\u0015{\u0011\u0015Aw\u000f1\u0001\u0010\u0011\u0015A\b\u0001\"\u0011})\u0015ISp`A\u0002\u0011\u0015q8\u00101\u0001\u0010\u0003\u0015)G.Z72\u0011\u0019\t\ta\u001fa\u0001\u001f\u0005)Q\r\\3ne!9\u0011QA>A\u0002\u0005\u001d\u0011!B3mK6\u001c\b\u0003B\u000b\u0002\n=I1!a\u0003\u0007\u0005)a$/\u001a9fCR,GM\u0010\u0005\b\u0003\u001f\u0001A\u0011IA\t\u0003\u0015)h.[8o)\rI\u00131\u0003\u0005\u0007[\u00065\u0001\u0019\u00018\t\u000f\u0005]\u0001\u0001\"\u0011\u0002\u001a\u0005I\u0011N\u001c;feN,7\r\u001e\u000b\u0004S\u0005m\u0001BB7\u0002\u0016\u0001\u0007a\u000eC\u0004\u0002 \u0001!\t%!\t\u0002\t\u0011LgM\u001a\u000b\u0004S\u0005\r\u0002BB7\u0002\u001e\u0001\u0007a\u000e\u0003\u0005\u0002(\u0001!\tAAA\u0015\u0003\u0019)h.[8oaQ)\u0011&a\u000b\u0005\"\"9Q.!\nA\u0002\u00055\u0002#BA\u0018\u0003o|ab\u0001\u000f\u00022\u001d9\u00111\u0007\u0002\t\u0002\u0005U\u0012a\u0002%bg\"\u001cV\r\u001e\t\u00049\u0005]bAB\u0001\u0003\u0011\u0003\tIdE\u0003\u00028\u0005mB\u0007\u0005\u0003!\u0003{)\u0013bAA C\t\u0019\u0012*\\7vi\u0006\u0014G.Z*fi\u001a\u000b7\r^8ss\"9\u0001(a\u000e\u0005\u0002\u0005\rCCAA\u001b\u0011!\t9%a\u000e\u0005\u0004\u0005%\u0013\u0001D2b]\n+\u0018\u000e\u001c3Ge>lW\u0003BA&\u0003;*\"!!\u0014\u0011\u0013\u0001\ny%a\u0015\u0002\\\u0005}\u0013bAA)C\ta1)\u00198Ck&dGM\u0012:p[B!\u0011QKA,\u001b\t\t9$C\u0002\u0002Zy\u0012AaQ8mYB\u0019\u0001#!\u0018\u0005\rI\t)E1\u0001\u0014!\u0011a\u0002!a\u0017\b\u0011\u0005\r\u0014q\u0007E\u0005\u0003K\nA\"R7qifD\u0015m\u001d5TKR\u0004B!!\u0016\u0002h\u0019A\u0011\u0011NA\u001c\u0011\u0013\tYG\u0001\u0007F[B$\u0018\u0010S1tQN+Go\u0005\u0003\u0002h\u00055\u0004c\u0001\u000f\u00011!9\u0001(a\u001a\u0005\u0002\u0005EDCAA3\u0011)\t)(a\u001a\u0002\u0002\u0013%\u0011qO\u0001\fe\u0016\fGMU3t_24X\r\u0006\u0002\u0002zA!\u00111PAC\u001b\t\tiH\u0003\u0003\u0002��\u0005\u0005\u0015\u0001\u00027b]\u001eT!!a!\u0002\t)\fg/Y\u0005\u0005\u0003\u000f\u000biH\u0001\u0004PE*,7\r\u001e\u0005\n\u0003\u0017\u000b9\u0004\"\u0001\u0005\u0003\u001b\u000bQ\"Z7qifLen\u001d;b]\u000e,WCAA7\u0011!\t\t*a\u000e\u0005\n\u0005M\u0015aD7bW\u0016D\u0015m\u001d5Ue&,7+\u001a;\u0016\t\u0005U5\u0011\u001f\u000b\r\u0003/\u001b\u0019pa>\u0004~\u0012\u0005A1\u0001\t\u0007\u0003+\nIja<\u0007\u000f\u0005m\u0015q\u0007\u0001\u0002\u001e\nY\u0001*Y:i)JLWmU3u+\u0011\ty*!*\u0014\t\u0005e\u0015\u0011\u0015\t\u00059\u0001\t\u0019\u000bE\u0002\u0011\u0003K#aAEAM\u0005\u0004\u0019\u0002BCAU\u00033\u0013)\u0019!C\u0005\u000b\u00061!-\u001b;nCBD!\"!,\u0002\u001a\n\u0005\t\u0015!\u0003G\u0003\u001d\u0011\u0017\u000e^7ba\u0002BA\"!\u0002\u0002\u001a\n\u0015\r\u0011\"\u0001\u0005\u0003c+\"!a-\u0011\u000bU\t),!)\n\u0007\u0005]fAA\u0003BeJ\f\u0017\u0010C\u0006\u0002<\u0006e%\u0011!Q\u0001\n\u0005M\u0016AB3mK6\u001c\b\u0005\u0003\u0006\u0002@\u0006e%Q1A\u0005\n\u0015\u000bQa]5{KBB!\"a1\u0002\u001a\n\u0005\t\u0015!\u0003G\u0003\u0019\u0019\u0018N_31A!9\u0001(!'\u0005\u0002\u0005\u001dG\u0003CAe\u0003\u0017\fi-a4\u0011\r\u0005U\u0013\u0011TAR\u0011\u001d\tI+!2A\u0002\u0019C\u0001\"!\u0002\u0002F\u0002\u0007\u00111\u0017\u0005\b\u0003\u007f\u000b)\r1\u0001G\u0011\u0019!\u0015\u0011\u0014C!\u000b\"A\u0011Q[AM\t\u0003\n9.\u0001\u0003hKR\u0004Dc\u00023\u0002Z\u0006u\u0017\u0011\u001d\u0005\t\u00037\f\u0019\u000e1\u0001\u0002$\u0006\u00191.Z=\t\u000f\u0005}\u00171\u001ba\u0001\r\u0006!\u0001.Y:i\u0011\u00191\u00181\u001ba\u0001\r\"A\u0011Q]AM\t\u0003\n9/\u0001\u0005va\u0012\fG/\u001a31)!\t\t+!;\u0002l\u00065\b\u0002CAn\u0003G\u0004\r!a)\t\u000f\u0005}\u00171\u001da\u0001\r\"1a/a9A\u0002\u0019C\u0011\"a\n\u0002\u001a\u0012\u0005#!!=\u0015\r\u0005\u0005\u00161_BH\u0011\u001di\u0017q\u001ea\u0001\u0003k\u0004b!!\u0016\u0002x\u0006\rfACA}\u0003o\t\t#a\u000e\u0002|\nYA*Z1g\u0011\u0006\u001c\bnU3u+\u0011\tiPa\u0001\u0014\t\u0005]\u0018q \t\u00059\u0001\u0011\t\u0001E\u0002\u0011\u0005\u0007!aAEA|\u0005\u0004\u0019\u0002b\u0002\u001d\u0002x\u0012\u0005!q\u0001\u000b\u0003\u0005\u0013\u0001b!!\u0016\u0002x\n\u0005\u0001\"CAp\u0003o4\t!a\u000eFS\u0019\t9Pa\u0004\u0003B\u001a9!\u0011CA\u001c\u0001\tM!\u0001\u0003%bg\"\u001cV\r^\u0019\u0016\t\tU!1D\n\u0005\u0005\u001f\u00119\u0002\u0005\u0004\u0002V\u0005](\u0011\u0004\t\u0004!\tmAA\u0002\n\u0003\u0010\t\u00071\u0003C\u0007\u0002\\\n=!Q1A\u0005\u0002\u0005]\"qD\u000b\u0003\u00053A1Ba\t\u0003\u0010\t\u0005\t\u0015!\u0003\u0003\u001a\u0005!1.Z=!\u00111\tyNa\u0004\u0003\u0006\u0004%\t!a\u000eF\u0011)\u0011ICa\u0004\u0003\u0002\u0003\u0006IAR\u0001\u0006Q\u0006\u001c\b\u000e\t\u0005\bq\t=A\u0011\u0001B\u0017)\u0019\u0011yC!\r\u00034A1\u0011Q\u000bB\b\u00053A\u0001\"a7\u0003,\u0001\u0007!\u0011\u0004\u0005\b\u0003?\u0014Y\u00031\u0001G\u0011\u0019!%q\u0002C!\u000b\"A\u0011Q\u001bB\b\t\u0003\u0012I\u0004F\u0004e\u0005w\u0011iDa\u0010\t\u0011\u0005m'q\u0007a\u0001\u00053Aq!a8\u00038\u0001\u0007a\t\u0003\u0004w\u0005o\u0001\rA\u0012\u0005\be\n=A\u0011\tB\")\u0015!'Q\tB%\u0011\u001di'\u0011\ta\u0001\u0005\u000f\u0002B\u0001\b\u0001\u0003\u001a!1aO!\u0011A\u0002\u0019C\u0001\"!:\u0003\u0010\u0011\u0005#Q\n\u000b\t\u0005\u000f\u0012yE!\u0015\u0003T!A\u00111\u001cB&\u0001\u0004\u0011I\u0002C\u0004\u0002`\n-\u0003\u0019\u0001$\t\rY\u0014Y\u00051\u0001G\u0011%\t9Ca\u0004\u0005B\t\u00119\u0006\u0006\u0004\u0003H\te#1\f\u0005\b[\nU\u0003\u0019\u0001B\f\u0011\u00191(Q\u000ba\u0001\r\"I\u0011q\u0005B\b\t\u0003\u0012!q\f\u000b\u000b\u0005\u000f\u0012\tGa\u0019\u0003f\t-\u0004bB7\u0003^\u0001\u0007!q\t\u0005\u0007m\nu\u0003\u0019\u0001$\t\u0011\t\u001d$Q\fa\u0001\u0005S\naAY;gM\u0016\u0014\b#B\u000b\u00026\n\u001d\u0003b\u0002B7\u0005;\u0002\rAR\u0001\b_\u001a47/\u001a;1\u0011%\u0011\tHa\u0004\u0005B\t\u0011\u0019(\u0001\u0006j]R,'o]3diB\"\"Ba\u0012\u0003v\t]$\u0011\u0010B>\u0011\u001di'q\u000ea\u0001\u0005\u000fBaA\u001eB8\u0001\u00041\u0005\u0002\u0003B4\u0005_\u0002\rA!\u001b\t\u000f\t5$q\u000ea\u0001\r\"I!q\u0010B\b\t\u0003\u0012!\u0011Q\u0001\u0006I&4g\r\r\u000b\u000b\u0005\u000f\u0012\u0019I!\"\u0003\b\n%\u0005bB7\u0003~\u0001\u0007!q\t\u0005\u0007m\nu\u0004\u0019\u0001$\t\u0011\t\u001d$Q\u0010a\u0001\u0005SBqA!\u001c\u0003~\u0001\u0007a\t\u0003\u0005\u0003\u000e\n=A\u0011\tBH\u0003!\u0011X-\\8wK\u0012\u0004D\u0003\u0003B$\u0005#\u0013\u0019J!&\t\u0011\u0005m'1\u0012a\u0001\u00053Aq!a8\u0003\f\u0002\u0007a\t\u0003\u0004w\u0005\u0017\u0003\rA\u0012\u0005\t\u00053\u0013y\u0001\"\u0015\u0003\u001c\u00069a-\u001b7uKJ\u0004D\u0003\u0004B$\u0005;\u0013\u0019Ka*\u0003*\n-\u0006\u0002\u0003BP\u0005/\u0003\rA!)\u0002\u0003A\u0004R!\u0006/\u0003\u001a\u0011DqA!*\u0003\u0018\u0002\u0007A-\u0001\u0004oK\u001e\fG/\u001a\u0005\u0007m\n]\u0005\u0019\u0001$\t\u0011\t\u001d$q\u0013a\u0001\u0005SBqA!\u001c\u0003\u0018\u0002\u0007a\tC\u0004N\u0005\u001f!\tEa,\u0016\u0005\tE\u0006\u0003\u0002\u0007Q\u00053Aqa\u0015B\b\t\u0003\u0012),\u0006\u0003\u00038\n}Fc\u0001,\u0003:\"9!La-A\u0002\tm\u0006CB\u000b]\u00053\u0011i\fE\u0002\u0011\u0005\u007f#a\u0001\u0019BZ\u0005\u0004\u0019b\u0001\u0003Bb\u0003o\u0001!A!2\u0003#!\u000b7\u000f[*fi\u000e{G\u000e\\5tS>t\u0017'\u0006\u0003\u0003H\n57\u0003\u0002Ba\u0005\u0013\u0004b!!\u0016\u0002x\n-\u0007c\u0001\t\u0003N\u00121!C!1C\u0002MAA\"a8\u0003B\n\u0015\r\u0011\"\u0001\u00028\u0015C!B!\u000b\u0003B\n\u0005\t\u0015!\u0003G\u0011-\u0011)N!1\u0003\u0006\u0004%\tAa6\u0002\u0005-\u001cXC\u0001Bm!\u0015a\"1\u001cBf\u0013\r\u0011iN\u0001\u0002\b\u0019&\u001cHoU3u\u0011-\u0011\tO!1\u0003\u0002\u0003\u0006IA!7\u0002\u0007-\u001c\b\u0005C\u00049\u0005\u0003$\tA!:\u0015\r\t\u001d(\u0011\u001eBv!\u0019\t)F!1\u0003L\"9\u0011q\u001cBr\u0001\u00041\u0005\u0002\u0003Bk\u0005G\u0004\rA!7\t\r\u0011\u0013\t\r\"\u0011F\u0011!\t)N!1\u0005B\tEHc\u00023\u0003t\nU(q\u001f\u0005\t\u00037\u0014y\u000f1\u0001\u0003L\"9\u0011q\u001cBx\u0001\u00041\u0005B\u0002<\u0003p\u0002\u0007a\tC\u0004s\u0005\u0003$\tEa?\u0015\u000b\u0011\u0014ip!\u0001\t\u000f5\u0014I\u00101\u0001\u0003��B!A\u0004\u0001Bf\u0011\u00191(\u0011 a\u0001\r\"A\u0011Q\u001dBa\t\u0003\u001a)\u0001\u0006\u0005\u0003��\u000e\u001d1\u0011BB\u0006\u0011!\tYna\u0001A\u0002\t-\u0007bBAp\u0007\u0007\u0001\rA\u0012\u0005\u0007m\u000e\r\u0001\u0019\u0001$\t\u0011\u0005\u001d\"\u0011\u0019C!\u0007\u001f!bAa@\u0004\u0012\rM\u0001bB7\u0004\u000e\u0001\u0007!\u0011\u001a\u0005\u0007m\u000e5\u0001\u0019\u0001$\t\u0011\u0005\u001d\"\u0011\u0019C!\u0007/!\"Ba@\u0004\u001a\rm1QDB\u0011\u0011\u001di7Q\u0003a\u0001\u0005\u007fDaA^B\u000b\u0001\u00041\u0005\u0002\u0003B4\u0007+\u0001\raa\b\u0011\u000bU\t)La@\t\u000f\t54Q\u0003a\u0001\r\"I!\u0011\u000fBa\t\u0003\u00121Q\u0005\u000b\u000b\u0005\u007f\u001c9c!\u000b\u0004,\r5\u0002bB7\u0004$\u0001\u0007!q \u0005\u0007m\u000e\r\u0002\u0019\u0001$\t\u0011\t\u001d41\u0005a\u0001\u0007?AqA!\u001c\u0004$\u0001\u0007a\tC\u0005\u0003��\t\u0005G\u0011\t\u0002\u00042QQ!q`B\u001a\u0007k\u00199d!\u000f\t\u000f5\u001cy\u00031\u0001\u0003��\"1aoa\fA\u0002\u0019C\u0001Ba\u001a\u00040\u0001\u00071q\u0004\u0005\b\u0005[\u001ay\u00031\u0001G\u0011!\u0011iI!1\u0005B\ruB\u0003\u0003B��\u0007\u007f\u0019\tea\u0011\t\u0011\u0005m71\ba\u0001\u0005\u0017Dq!a8\u0004<\u0001\u0007a\t\u0003\u0004w\u0007w\u0001\rA\u0012\u0005\t\u00053\u0013\t\r\"\u0015\u0004HQa!q`B%\u0007\u001b\u001aye!\u0015\u0004T!A!qTB#\u0001\u0004\u0019Y\u0005E\u0003\u00169\n-G\rC\u0004\u0003&\u000e\u0015\u0003\u0019\u00013\t\rY\u001c)\u00051\u0001G\u0011!\u00119g!\u0012A\u0002\r}\u0001b\u0002B7\u0007\u000b\u0002\rA\u0012\u0005\b\u001b\n\u0005G\u0011IB,+\t\u0019I\u0006\u0005\u0003\r!\n-\u0007bB*\u0003B\u0012\u00053QL\u000b\u0005\u0007?\u001a9\u0007F\u0002W\u0007CBqAWB.\u0001\u0004\u0019\u0019\u0007\u0005\u0004\u00169\n-7Q\r\t\u0004!\r\u001dDA\u00021\u0004\\\t\u00071\u0003\u0003\u0005\u0004l\t\u0005G\u0011BB7\u0003-9(/\u001b;f\u001f\nTWm\u0019;\u0015\u0007Y\u001by\u0007\u0003\u0005\u0004r\r%\u0004\u0019AB:\u0003\ryW\u000f\u001e\t\u0005\u0007k\u001aY(\u0004\u0002\u0004x)!1\u0011PAA\u0003\tIw.\u0003\u0003\u0004~\r]$AE(cU\u0016\u001cGoT;uaV$8\u000b\u001e:fC6D\u0001b!!\u0003B\u0012%11Q\u0001\u000be\u0016\fGm\u00142kK\u000e$Hc\u0001,\u0004\u0006\"A1qQB@\u0001\u0004\u0019I)\u0001\u0002j]B!1QOBF\u0013\u0011\u0019iia\u001e\u0003#=\u0013'.Z2u\u0013:\u0004X\u000f^*ue\u0016\fW\u000e\u0003\u0004w\u0003_\u0004\rA\u0012\u0005\n\u0003O\tI\n\"\u0011\u0003\u0007'#\"\"!)\u0004\u0016\u000e]5\u0011TBN\u0011\u001di7\u0011\u0013a\u0001\u0003CCaA^BI\u0001\u00041\u0005\u0002\u0003B4\u0007#\u0003\r!a-\t\u000f\t54\u0011\u0013a\u0001\r\"I!\u0011OAM\t\u0003\u00121q\u0014\u000b\u000b\u0003C\u001b\tka)\u0004&\u000e\u001d\u0006bB7\u0004\u001e\u0002\u0007\u0011\u0011\u0015\u0005\u0007m\u000eu\u0005\u0019\u0001$\t\u0011\t\u001d4Q\u0014a\u0001\u0003gCqA!\u001c\u0004\u001e\u0002\u0007a\tC\u0005\u0003��\u0005eE\u0011\t\u0002\u0004,RQ\u0011\u0011UBW\u0007_\u001b\tla-\t\u000f5\u001cI\u000b1\u0001\u0002\"\"1ao!+A\u0002\u0019C\u0001Ba\u001a\u0004*\u0002\u0007\u00111\u0017\u0005\b\u0005[\u001aI\u000b1\u0001G\u0011!\u0011i)!'\u0005B\r]F\u0003CAQ\u0007s\u001bYl!0\t\u0011\u0005m7Q\u0017a\u0001\u0003GCq!a8\u00046\u0002\u0007a\t\u0003\u0004w\u0007k\u0003\rA\u0012\u0005\be\u0006eE\u0011IBa)\u0015!71YBc\u0011\u001di7q\u0018a\u0001\u0003CCaA^B`\u0001\u00041\u0005\u0002\u0003BM\u00033#\tf!3\u0015\u0019\u0005\u000561ZBh\u0007#\u001c\u0019n!6\t\u0011\t}5q\u0019a\u0001\u0007\u001b\u0004R!\u0006/\u0002$\u0012DqA!*\u0004H\u0002\u0007A\r\u0003\u0004w\u0007\u000f\u0004\rA\u0012\u0005\t\u0005O\u001a9\r1\u0001\u00024\"9!QNBd\u0001\u00041\u0005bB'\u0002\u001a\u0012\u00053\u0011\\\u000b\u0003\u00077\u0004R\u0001HBo\u0003GK1aa8\u0003\u00051!&/[3Ji\u0016\u0014\u0018\r^8s\u0011\u001d\u0019\u0016\u0011\u0014C!\u0007G,Ba!:\u0004nR\u0019aka:\t\u000fi\u001b\t\u000f1\u0001\u0004jB1Q\u0003XAR\u0007W\u00042\u0001EBw\t\u0019\u00017\u0011\u001db\u0001'A\u0019\u0001c!=\u0005\rI\tyI1\u0001\u0014\u0011\u001d\u0019)0a$A\u0002\u0019\u000bQ\u0001[1tQBB\u0001b!?\u0002\u0010\u0002\u000711`\u0001\u0006K2,W\u000e\r\t\u00059\u0001\u0019y\u000fC\u0004\u0004��\u0006=\u0005\u0019\u0001$\u0002\u000b!\f7\u000f[\u0019\t\u000fy\fy\t1\u0001\u0004|\"1a/a$A\u0002\u0019C\u0001\u0002b\u0002\u00028\u0011%A\u0011B\u0001\u000bEV4g-\u001a:TSj,Gc\u0001$\u0005\f!1A\t\"\u0002A\u0002\u0019CC\u0001\"\u0002\u0005\u0010A\u0019Q\u0003\"\u0005\n\u0007\u0011MaA\u0001\u0004j]2Lg.\u001a\u0005\t\t/\t9\u0004\"\u0003\u0005\u001a\u0005Ya.\u001e7m)>,U\u000e\u001d;z+\u0011!Y\u0002\"\t\u0015\t\u0011uA1\u0005\t\u00059\u0001!y\u0002E\u0002\u0011\tC!aA\u0005C\u000b\u0005\u0004\u0019\u0002\u0002\u0003C\u0013\t+\u0001\r\u0001\"\b\u0002\u0003MDC\u0001\"\u0006\u0005\u0010!AA1FA\u001c\t\u0013!i#\u0001\u0005lK\u0016\u0004()\u001b;t)\u00151Eq\u0006C\u0019\u0011\u001d\tI\u000b\"\u000bA\u0002\u0019Cq\u0001b\r\u0005*\u0001\u0007a)\u0001\u0003lK\u0016\u0004\b\"\u0003C\u001c\u0003o\u0001K\u0011\u0002C\u001d\u0003=)hn]5h]\u0016$7i\\7qCJ,G#\u00023\u0005<\u0011}\u0002b\u0002C\u001f\tk\u0001\rAR\u0001\u0002S\"9A\u0011\tC\u001b\u0001\u00041\u0015!\u00016)\t\u0011UBq\u0002\u0004\b\t\u000f\n9\u0004\u0002C%\u0005I\u0019VM]5bY&T\u0018\r^5p]B\u0013x\u000e_=\u0016\r\u0011-CQ\fC?'\u0015!)\u0005\"\u00145!\r)BqJ\u0005\u0004\t#2!AB!osJ+g\rC\u0006\u0005V\u0011\u0015#\u00111A\u0005\n\u0011]\u0013\u0001B8sS\u001e,\"\u0001\"\u0017\u0011\tq\u0001A1\f\t\u0004!\u0011uCA\u0002\n\u0005F\t\u00071\u0003C\u0006\u0005b\u0011\u0015#\u00111A\u0005\n\u0011\r\u0014\u0001C8sS\u001e|F%Z9\u0015\u0007Y#)\u0007\u0003\u0006\u0005h\u0011}\u0013\u0011!a\u0001\t3\n1\u0001\u001f\u00132\u0011-!Y\u0007\"\u0012\u0003\u0002\u0003\u0006K\u0001\"\u0017\u0002\u000b=\u0014\u0018n\u001a\u0011)\t\u0011%Dq\u000e\t\u0004+\u0011E\u0014b\u0001C:\r\tIAO]1og&,g\u000e\u001e\u0005\bq\u0011\u0015C\u0011\u0001C<)\u0011!I\b\"!\u0011\u0011\u0005UCQ\tC.\tw\u00022\u0001\u0005C?\t\u001d!y\b\"\u0012C\u0002M\u0011\u0011A\u0011\u0005\t\t+\")\b1\u0001\u0005Z!A11\u000eC#\t\u0013!)\tF\u0002W\t\u000fC\u0001b!\u001d\u0005\u0004\u0002\u000711\u000f\u0005\t\u0007\u0003#)\u0005\"\u0003\u0005\fR\u0019a\u000b\"$\t\u0011\r\u001dE\u0011\u0012a\u0001\u0007\u0013C\u0001\"!\u001e\u0005F\u0011%A\u0011\u0013\u000b\u0003\t\u001bB\u0003\u0002\"\u0012\u0005\u0016\u0012mEQ\u0014\t\u0004+\u0011]\u0015b\u0001CM\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\nR\u0001\u0006m\u0006dW/\u001a\u0010\u0002\u0005!Q\u0011QOA\u001c\u0003\u0003%I!a\u001e\t\rY\f)\u00031\u0001G\u0011!\t9\u0003\u0001C\u0001\u0005\u0011\u0015F#C\u0015\u0005(\u0012%F1\u0016CX\u0011\u0019iG1\u0015a\u0001S!1a\u000fb)A\u0002\u0019C\u0001Ba\u001a\u0005$\u0002\u0007AQ\u0016\t\u0005+\u0005U\u0016\u0006C\u0004\u0003n\u0011\r\u0006\u0019\u0001$\t\u0011\tE\u0004\u0001\"\u0001\u0003\tg#\u0012\"\u000bC[\to#I\fb/\t\r5$\t\f1\u0001*\u0011\u00191H\u0011\u0017a\u0001\r\"A!q\rCY\u0001\u0004!i\u000bC\u0004\u0003n\u0011E\u0006\u0019\u0001$\t\u0011\t}\u0004\u0001\"\u0001\u0003\t\u007f#\u0012\"\u000bCa\t\u0007$)\rb2\t\r5$i\f1\u0001*\u0011\u00191HQ\u0018a\u0001\r\"A!q\rC_\u0001\u0004!i\u000bC\u0004\u0003n\u0011u\u0006\u0019\u0001$\t\u000f\u0011-\u0007\u0001\"\u0001\u0005N\u00061A%\\5okN$2!\u000bCh\u0011\u0019AG\u0011\u001aa\u0001\u001f!9A1\u001b\u0001\u0005B\u0011U\u0017!\u0002;p'\u0016$X\u0003\u0002Cl\t;,\"\u0001\"7\u0011\tqiB1\u001c\t\u0004!\u0011uG\u0001\u0003C@\t#\u0014\r\u0001b8\u0012\u0005=A\u0002\u0006\u0003Ci\tG$I\u000f\"<\u0011\u0007U!)/C\u0002\u0005h\u001a\u0011A\u0003Z3qe\u0016\u001c\u0017\r^3e\u001fZ,'O]5eS:<\u0017E\u0001Cv\u00039KU.\\;uC\ndW\rI:fiN\u00043\u000f[8vY\u0012\u0004Cm\u001c\u0011o_RD\u0017N\\4!_:\u0004Co\\*fi\u0002\u0012W\u000f\u001e\u0011sKR,(O\u001c\u0011uQ\u0016l7/\u001a7wKN\u00043-Y:uA\u0005\u001c\b%\u0019\u0011TKRt\u0013E\u0001Cx\u0003\u0019\u0011d&M\u0019/a!9A1\u001f\u0001\u0005B\u0011U\u0018A\u00024jYR,'\u000fF\u0002*\toD\u0001Ba(\u0005r\u0002\u0007A\u0011 \t\u0005+q{A\rC\u0004\u0005~\u0002!\t\u0005b@\u0002\u0013\u0019LG\u000e^3s\u001d>$HcA\u0015\u0006\u0002!A!q\u0014C~\u0001\u0004!I\u0010C\u0004\u0003\u001a\u0002!\t\"\"\u0002\u0015\u0017%*9!\"\u0003\u0006\f\u00155Qq\u0002\u0005\t\u0005?+\u0019\u00011\u0001\u0005z\"9!QUC\u0002\u0001\u0004!\u0007B\u0002<\u0006\u0004\u0001\u0007a\t\u0003\u0005\u0003h\u0015\r\u0001\u0019\u0001CW\u0011\u001d\u0011i'b\u0001A\u0002\u0019Cq!b\u0005\u0001\t#))\"\u0001\u0007fY\u0016l\u0007*Y:i\u0007>$W\rF\u0002G\u000b/Aq!a7\u0006\u0012\u0001\u0007q\u0002C\u0004\u0006\u001c\u0001!)\"\"\b\u0002\u000f%l\u0007O]8wKR\u0019a)b\b\t\u000f\u0015\u0005R\u0011\u0004a\u0001\r\u0006)\u0001nY8eK\"AQQ\u0005\u0001\u0005\u0002\u0011)9#A\u0006d_6\u0004X\u000f^3ICNDGc\u0001$\u0006*!9\u00111\\C\u0012\u0001\u0004y\u0001bBAk\u0001\u0011EQQ\u0006\u000b\bI\u0016=R\u0011GC\u001a\u0011\u001d\tY.b\u000bA\u0002=Aq!a8\u0006,\u0001\u0007a\t\u0003\u0004w\u000bW\u0001\rA\u0012\u0005\b\u0003K\u0004A\u0011AC\u001c)\u001dIS\u0011HC\u001e\u000b{Aq!a7\u00066\u0001\u0007q\u0002C\u0004\u0002`\u0016U\u0002\u0019\u0001$\t\rY,)\u00041\u0001G\u0011\u001d\u0011i\t\u0001C\t\u000b\u0003\"r!KC\"\u000b\u000b*9\u0005C\u0004\u0002\\\u0016}\u0002\u0019A\b\t\u000f\u0005}Wq\ba\u0001\r\"1a/b\u0010A\u0002\u0019Cq!b\u0013\u0001\t#!\t*\u0001\u0007xe&$XMU3qY\u0006\u001cW\rK\u0004\u0001\u000b\u001f*)\u0006\"<\u0011\u0007U)\t&C\u0002\u0006T\u0019\u0011Q\u0003Z3qe\u0016\u001c\u0017\r^3e\u0013:DWM]5uC:\u001cW-\t\u0002\u0006X\u0005\u0019F\u000b[3!S6\u0004H.Z7f]R\fG/[8oA\u0011,G/Y5mg\u0002zg\rI5n[V$\u0018M\u00197fA!\f7\u000f\u001b\u0011tKR\u001c\b%\\1lK\u0002Jg\u000e[3sSRLgn\u001a\u0011ge>l\u0007\u0005\u001e5f[\u0002*hn^5tK:Bs\u0001\u0001CK\t7#i\n")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashSet.class */
public class HashSet<A> extends AbstractSet<A> implements Set<A>, CustomParallelizable<A, ParHashSet<A>>, Serializable {
    public static final long serialVersionUID = 2;

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashSet$HashSet1.class */
    public static class HashSet1<A> extends LeafHashSet<A> {
        private final int hash;
        private final A key;

        public HashSet1(A a, int i) {
            this.key = a;
            this.hash = i;
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> diff0(HashSet<A> hashSet, int i, HashSet<A>[] hashSetArr, int i2) {
            return hashSet.get0(key(), hash(), i) ? null : this;
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> filter0(Function1<A, Object> function1, boolean z, int i, HashSet<A>[] hashSetArr, int i2) {
            return BoxesRunTime.unboxToBoolean(function1.apply(key())) ^ z ? this : null;
        }

        @Override // scala.collection.immutable.HashSet, scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<A, U> function1) {
            function1.apply(key());
        }

        @Override // scala.collection.immutable.HashSet
        public boolean get0(A a, int i, int i2) {
            boolean z;
            if (i == hash()) {
                A key = key();
                if (a == key ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, key) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, key) : a.equals(key)) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        @Override // scala.collection.immutable.HashSet.LeafHashSet
        public int hash() {
            return this.hash;
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> intersect0(HashSet<A> hashSet, int i, HashSet<A>[] hashSetArr, int i2) {
            return hashSet.get0(key(), hash(), i) ? this : null;
        }

        @Override // scala.collection.immutable.HashSet, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<A> iterator() {
            return Iterator$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{key()}));
        }

        public A key() {
            return this.key;
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> removed0(A a, int i, int i2) {
            HashSet1<A> hashSet1;
            if (i == hash()) {
                A key = key();
                if (a == key ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, key) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, key) : a.equals(key)) {
                    hashSet1 = null;
                    return hashSet1;
                }
            }
            hashSet1 = this;
            return hashSet1;
        }

        @Override // scala.collection.immutable.HashSet, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return 1;
        }

        @Override // scala.collection.immutable.HashSet
        public boolean subsetOf0(HashSet<A> hashSet, int i) {
            return hashSet.get0(key(), hash(), i);
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> union0(LeafHashSet<A> leafHashSet, int i) {
            HashTrieSet<A> hashTrieSet;
            if (leafHashSet.hash() != hash()) {
                hashTrieSet = HashSet$.MODULE$.scala$collection$immutable$HashSet$$makeHashTrieSet(hash(), this, leafHashSet.hash(), leafHashSet, i);
            } else if (leafHashSet instanceof HashSet1) {
                HashSet1 hashSet1 = (HashSet1) leafHashSet;
                A key = key();
                Object key2 = hashSet1.key();
                hashTrieSet = key == key2 ? true : key == null ? false : key instanceof Number ? BoxesRunTime.equalsNumObject((Number) key, key2) : key instanceof Character ? BoxesRunTime.equalsCharObject((Character) key, key2) : key.equals(key2) ? this : new HashSetCollision1(hash(), ((ListSet) ListSet$.MODULE$.empty()).$plus((ListSet) key()).$plus((ListSet<A>) ((A) hashSet1.key())));
            } else if (!(leafHashSet instanceof HashSetCollision1)) {
                throw new MatchError(leafHashSet);
            } else {
                HashSetCollision1 hashSetCollision1 = (HashSetCollision1) leafHashSet;
                ListSet<A> $plus = hashSetCollision1.m158ks().$plus((ListSet<A>) key());
                int size = $plus.size();
                int size2 = hashSetCollision1.m158ks().size();
                hashTrieSet = hashSetCollision1;
                if (size != size2) {
                    hashTrieSet = new HashSetCollision1(hash(), $plus);
                }
            }
            return hashTrieSet;
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> union0(HashSet<A> hashSet, int i, HashSet<A>[] hashSetArr, int i2) {
            return hashSet.union0(this, i);
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> updated0(A a, int i, int i2) {
            HashSet hashSet;
            if (i == hash()) {
                A key = key();
                if (a == key ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, key) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, key) : a.equals(key)) {
                    hashSet = this;
                    return hashSet;
                }
            }
            hashSet = i != hash() ? HashSet$.MODULE$.scala$collection$immutable$HashSet$$makeHashTrieSet(hash(), this, i, new HashSet1(a, i), i2) : new HashSetCollision1(i, ((ListSet) ListSet$.MODULE$.empty()).$plus((ListSet) key()).$plus((ListSet<A>) a));
            return hashSet;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashSet$HashSetCollision1.class */
    public static class HashSetCollision1<A> extends LeafHashSet<A> {
        private final int hash;

        /* renamed from: ks */
        private final ListSet<A> f1547ks;

        public HashSetCollision1(int i, ListSet<A> listSet) {
            this.hash = i;
            this.f1547ks = listSet;
        }

        private void readObject(ObjectInputStream objectInputStream) {
            throw package$.MODULE$.error("cannot deserialize an immutable.HashSet where all items have the same 32-bit hash code");
        }

        private void writeObject(ObjectOutputStream objectOutputStream) {
            throw package$.MODULE$.error("cannot serialize an immutable.HashSet where all items have the same 32-bit hash code");
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> diff0(HashSet<A> hashSet, int i, HashSet<A>[] hashSetArr, int i2) {
            ListSet listSet = (ListSet) m158ks().filterNot(new HashSet$HashSetCollision1$$anonfun$2(this, hashSet, i));
            int size = listSet.size();
            return size == 0 ? null : size == size() ? this : 1 == size ? new HashSet1(listSet.head(), hash()) : new HashSetCollision1(hash(), listSet);
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> filter0(Function1<A, Object> function1, boolean z, int i, HashSet<A>[] hashSetArr, int i2) {
            ListSet listSet = (ListSet) (z ? m158ks().filterNot(function1) : m158ks().filter(function1));
            int size = listSet.size();
            return size != 0 ? size != 1 ? size == m158ks().size() ? this : new HashSetCollision1(hash(), listSet) : new HashSet1(listSet.head(), hash()) : null;
        }

        @Override // scala.collection.immutable.HashSet, scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<A, U> function1) {
            m158ks().foreach(function1);
        }

        @Override // scala.collection.immutable.HashSet
        public boolean get0(A a, int i, int i2) {
            return i == hash() ? m158ks().contains(a) : false;
        }

        @Override // scala.collection.immutable.HashSet.LeafHashSet
        public int hash() {
            return this.hash;
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> intersect0(HashSet<A> hashSet, int i, HashSet<A>[] hashSetArr, int i2) {
            ListSet listSet = (ListSet) m158ks().filter(new HashSet$HashSetCollision1$$anonfun$1(this, hashSet, i));
            int size = listSet.size();
            if (size == 0) {
                hashSet = null;
            } else if (size == size()) {
                hashSet = this;
            } else if (size != hashSet.size()) {
                hashSet = 1 == size ? new HashSet1(listSet.head(), hash()) : new HashSetCollision1(hash(), listSet);
            }
            return hashSet;
        }

        @Override // scala.collection.immutable.HashSet, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<A> iterator() {
            return m158ks().iterator();
        }

        /* renamed from: ks */
        public ListSet<A> m158ks() {
            return this.f1547ks;
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> removed0(A a, int i, int i2) {
            HashSet hashSet;
            if (i == hash()) {
                ListSet<A> $minus = m158ks().$minus((ListSet<A>) a);
                int size = $minus.size();
                if (size == 0) {
                    hashSet = null;
                } else if (size == 1) {
                    hashSet = new HashSet1($minus.head(), i);
                } else if (size != m158ks().size()) {
                    hashSet = new HashSetCollision1(i, $minus);
                }
                return hashSet;
            }
            hashSet = this;
            return hashSet;
        }

        @Override // scala.collection.immutable.HashSet, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return m158ks().size();
        }

        @Override // scala.collection.immutable.HashSet
        public boolean subsetOf0(HashSet<A> hashSet, int i) {
            return m158ks().forall(new HashSet$HashSetCollision1$$anonfun$subsetOf0$1(this, hashSet, i));
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> union0(LeafHashSet<A> leafHashSet, int i) {
            HashSetCollision1<A> hashSetCollision1;
            if (leafHashSet.hash() != hash()) {
                hashSetCollision1 = HashSet$.MODULE$.scala$collection$immutable$HashSet$$makeHashTrieSet(hash(), this, leafHashSet.hash(), leafHashSet, i);
            } else if (leafHashSet instanceof HashSet1) {
                ListSet<A> $plus = m158ks().$plus((ListSet<A>) ((A) ((HashSet1) leafHashSet).key()));
                if ($plus.size() != m158ks().size()) {
                    hashSetCollision1 = new HashSetCollision1<>(hash(), $plus);
                }
                hashSetCollision1 = this;
            } else if (!(leafHashSet instanceof HashSetCollision1)) {
                throw new MatchError(leafHashSet);
            } else {
                hashSetCollision1 = (HashSetCollision1) leafHashSet;
                ListSet<A> $plus$plus = m158ks().$plus$plus((GenTraversableOnce) hashSetCollision1.m158ks());
                int size = $plus$plus.size();
                if (size != m158ks().size()) {
                    if (size != hashSetCollision1.m158ks().size()) {
                        hashSetCollision1 = new HashSetCollision1<>(hash(), $plus$plus);
                    }
                }
                hashSetCollision1 = this;
            }
            return hashSetCollision1;
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> union0(HashSet<A> hashSet, int i, HashSet<A>[] hashSetArr, int i2) {
            return hashSet instanceof LeafHashSet ? union0((LeafHashSet) hashSet, i) : hashSet instanceof HashTrieSet ? ((HashTrieSet) hashSet).union0(this, i) : this;
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> updated0(A a, int i, int i2) {
            return i == hash() ? new HashSetCollision1(i, m158ks().$plus((ListSet<A>) a)) : HashSet$.MODULE$.scala$collection$immutable$HashSet$$makeHashTrieSet(hash(), this, i, new HashSet1(a, i), i2);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashSet$HashTrieSet.class */
    public static class HashTrieSet<A> extends HashSet<A> {
        private final int bitmap;
        private final HashSet<A>[] elems;
        private final int size0;

        public HashTrieSet(int i, HashSet<A>[] hashSetArr, int i2) {
            this.bitmap = i;
            this.elems = hashSetArr;
            this.size0 = i2;
            Predef$.MODULE$.m5971assert(Integer.bitCount(i) == hashSetArr.length);
        }

        private int bitmap() {
            return this.bitmap;
        }

        private final HashSet removeAll$1(HashSet hashSet, ListSet listSet, int i, HashSetCollision1 hashSetCollision1) {
            while (!listSet.isEmpty() && hashSet != null) {
                hashSet = hashSet.removed0(listSet.head(), hashSetCollision1.hash(), i);
                listSet = listSet.tail();
            }
            return hashSet;
        }

        private int size0() {
            return this.size0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // scala.collection.immutable.HashSet
        public HashSet<A> diff0(HashSet<A> hashSet, int i, HashSet<A>[] hashSetArr, int i2) {
            HashTrieSet hashTrieSet;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            if (hashSet == this) {
                hashTrieSet = null;
            } else if (hashSet instanceof HashSet1) {
                HashSet1 hashSet1 = (HashSet1) hashSet;
                hashTrieSet = removed0(hashSet1.key(), hashSet1.hash(), i);
            } else if (hashSet instanceof HashTrieSet) {
                HashTrieSet hashTrieSet2 = (HashTrieSet) hashSet;
                HashSet<A>[] elems = elems();
                int bitmap = bitmap();
                HashSet<A>[] elems2 = hashTrieSet2.elems();
                int bitmap2 = hashTrieSet2.bitmap();
                int i8 = i2;
                int i9 = 0;
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    boolean z = true;
                    if (bitmap == 0) {
                        break;
                    }
                    int i13 = bitmap ^ (bitmap & (bitmap - 1));
                    int i14 = bitmap2 ^ (bitmap2 & (bitmap2 - 1));
                    if (i13 == i14) {
                        HashSet<A> diff0 = elems[i11].diff0(elems2[i12], i + 5, hashSetArr, i8);
                        i3 = i9;
                        i4 = i10;
                        i5 = i8;
                        if (diff0 != null) {
                            i4 = i10 + diff0.size();
                            i3 = i9 | i13;
                            hashSetArr[i8] = diff0;
                            i5 = i8 + 1;
                        }
                        i6 = bitmap & (i13 ^ (-1));
                        i7 = i11 + 1;
                    } else {
                        HashSet$ hashSet$ = HashSet$.MODULE$;
                        int i15 = i13 - 1;
                        int i16 = i14 - 1;
                        boolean z2 = i15 < i16;
                        boolean z3 = i15 < 0;
                        if (i16 >= 0) {
                            z = false;
                        }
                        i6 = bitmap;
                        i3 = i9;
                        i4 = i10;
                        i7 = i11;
                        i5 = i8;
                        if ((z2 ^ z3) ^ z) {
                            HashSet<A> hashSet2 = elems[i11];
                            i10 += hashSet2.size();
                            i9 |= i13;
                            hashSetArr[i8] = hashSet2;
                            i8++;
                            bitmap &= i13 ^ (-1);
                            i11++;
                        }
                    }
                    bitmap2 &= i14 ^ (-1);
                    i12++;
                    i8 = i5;
                    i11 = i7;
                    i10 = i4;
                    i9 = i3;
                    bitmap = i6;
                }
                if (i9 == 0) {
                    hashTrieSet = null;
                } else if (i10 == size0()) {
                    hashTrieSet = this;
                } else {
                    int i17 = i8 - i2;
                    if (i17 != 1 || (hashSetArr[i2] instanceof HashTrieSet)) {
                        HashSet[] hashSetArr2 = new HashSet[i17];
                        System.arraycopy(hashSetArr, i2, hashSetArr2, 0, i17);
                        hashTrieSet = new HashTrieSet(i9, hashSetArr2, i10);
                    } else {
                        hashTrieSet = hashSetArr[i2];
                    }
                }
            } else if (hashSet instanceof HashSetCollision1) {
                HashSetCollision1 hashSetCollision1 = (HashSetCollision1) hashSet;
                hashTrieSet = removeAll$1(this, hashSetCollision1.m158ks(), i, hashSetCollision1);
            } else {
                hashTrieSet = this;
            }
            return hashTrieSet;
        }

        public HashSet<A>[] elems() {
            return this.elems;
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> filter0(Function1<A, Object> function1, boolean z, int i, HashSet<A>[] hashSetArr, int i2) {
            int i3;
            HashTrieSet hashTrieSet;
            int i4 = i2;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                i3 = i7;
                if (i5 >= elems().length) {
                    break;
                }
                HashSet<A> filter0 = elems()[i5].filter0(function1, z, i + 5, hashSetArr, i4);
                int i8 = i4;
                int i9 = i6;
                int i10 = i3;
                if (filter0 != null) {
                    hashSetArr[i4] = filter0;
                    i8 = i4 + 1;
                    i9 = i6 + filter0.size();
                    i10 = i3 | (1 << i5);
                }
                i5++;
                i4 = i8;
                i6 = i9;
                i7 = i10;
            }
            if (i4 == i2) {
                hashTrieSet = null;
            } else if (i6 == size0()) {
                hashTrieSet = this;
            } else if (i4 != i2 + 1 || (hashSetArr[i2] instanceof HashTrieSet)) {
                int i11 = i4 - i2;
                HashSet[] hashSetArr2 = new HashSet[i11];
                System.arraycopy(hashSetArr, i2, hashSetArr2, 0, i11);
                hashTrieSet = new HashTrieSet(i11 == elems().length ? bitmap() : HashSet$.MODULE$.scala$collection$immutable$HashSet$$keepBits(bitmap(), i3), hashSetArr2, i6);
            } else {
                hashTrieSet = hashSetArr[i2];
            }
            return hashTrieSet;
        }

        @Override // scala.collection.immutable.HashSet, scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<A, U> function1) {
            for (int i = 0; i < elems().length; i++) {
                elems()[i].foreach(function1);
            }
        }

        @Override // scala.collection.immutable.HashSet
        public boolean get0(A a, int i, int i2) {
            boolean z;
            int i3 = (i >>> i2) & 31;
            int i4 = 1 << i3;
            if (bitmap() == -1) {
                z = elems()[i3 & 31].get0(a, i, i2 + 5);
            } else if ((bitmap() & i4) != 0) {
                z = elems()[Integer.bitCount(bitmap() & (i4 - 1))].get0(a, i, i2 + 5);
            } else {
                z = false;
            }
            return z;
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> intersect0(HashSet<A> hashSet, int i, HashSet<A>[] hashSetArr, int i2) {
            HashTrieSet hashTrieSet;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            if (hashSet == this) {
                hashTrieSet = this;
            } else if (hashSet instanceof LeafHashSet) {
                hashTrieSet = ((LeafHashSet) hashSet).intersect0(this, i, hashSetArr, i2);
            } else {
                if (hashSet instanceof HashTrieSet) {
                    HashTrieSet<A> hashTrieSet2 = (HashTrieSet) hashSet;
                    HashSet<A>[] elems = elems();
                    int bitmap = bitmap();
                    HashSet<A>[] elems2 = hashTrieSet2.elems();
                    int bitmap2 = hashTrieSet2.bitmap();
                    if ((bitmap & bitmap2) == 0) {
                        return null;
                    }
                    int i8 = i2;
                    int i9 = 0;
                    int i10 = 0;
                    int i11 = 0;
                    int i12 = 0;
                    while ((bitmap & bitmap2) != 0) {
                        int i13 = bitmap ^ (bitmap & (bitmap - 1));
                        int i14 = bitmap2 ^ (bitmap2 & (bitmap2 - 1));
                        if (i13 == i14) {
                            HashSet<A> intersect0 = elems[i11].intersect0(elems2[i12], i + 5, hashSetArr, i8);
                            i3 = i9;
                            i4 = i10;
                            i5 = i8;
                            if (intersect0 != null) {
                                i4 = i10 + intersect0.size();
                                i3 = i9 | i13;
                                hashSetArr[i8] = intersect0;
                                i5 = i8 + 1;
                            }
                            i6 = bitmap & (i13 ^ (-1));
                            i7 = i11 + 1;
                        } else {
                            HashSet$ hashSet$ = HashSet$.MODULE$;
                            int i15 = i13 - 1;
                            int i16 = i14 - 1;
                            i6 = bitmap;
                            i3 = i9;
                            i4 = i10;
                            i7 = i11;
                            i5 = i8;
                            if (((i15 < 0) ^ (i15 < i16)) ^ (i16 < 0)) {
                                bitmap &= i13 ^ (-1);
                                i11++;
                            }
                        }
                        bitmap2 &= i14 ^ (-1);
                        i12++;
                        i8 = i5;
                        i11 = i7;
                        i10 = i4;
                        i9 = i3;
                        bitmap = i6;
                    }
                    if (i9 != 0) {
                        if (i10 == size0()) {
                            hashTrieSet = this;
                        } else if (i10 == hashTrieSet2.size0()) {
                            hashTrieSet = hashTrieSet2;
                        } else {
                            int i17 = i8 - i2;
                            if (i17 != 1 || (hashSetArr[i2] instanceof HashTrieSet)) {
                                HashSet[] hashSetArr2 = new HashSet[i17];
                                System.arraycopy(hashSetArr, i2, hashSetArr2, 0, i17);
                                hashTrieSet = new HashTrieSet(i9, hashSetArr2, i10);
                            } else {
                                hashTrieSet = hashSetArr[i2];
                            }
                        }
                    }
                }
                hashTrieSet = null;
            }
            return hashTrieSet;
        }

        @Override // scala.collection.immutable.HashSet, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public TrieIterator<A> iterator() {
            return new TrieIterator<A>(this) { // from class: scala.collection.immutable.HashSet$HashTrieSet$$anon$1
                {
                    super(this.elems());
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [A, java.lang.Object] */
                @Override // scala.collection.immutable.TrieIterator
                public final A getElem(Object obj) {
                    return ((HashSet.HashSet1) obj).key();
                }
            };
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> removed0(A a, int i, int i2) {
            HashTrieSet hashTrieSet;
            int i3 = 1 << ((i >>> i2) & 31);
            int bitCount = Integer.bitCount(bitmap() & (i3 - 1));
            if ((bitmap() & i3) != 0) {
                HashSet<A> hashSet = elems()[bitCount];
                hashTrieSet = hashSet.removed0(a, i, i2 + 5);
                if (hashSet != hashTrieSet) {
                    if (hashTrieSet == null) {
                        int bitmap = bitmap() ^ i3;
                        if (bitmap != 0) {
                            int length = elems().length - 1;
                            HashSet<A>[] hashSetArr = new HashSet[length];
                            Array$.MODULE$.copy(elems(), 0, hashSetArr, 0, bitCount);
                            Array$.MODULE$.copy(elems(), bitCount + 1, hashSetArr, bitCount, (elems().length - bitCount) - 1);
                            hashTrieSet = (length != 1 || (hashSetArr[0] instanceof HashTrieSet)) ? new HashTrieSet(bitmap, hashSetArr, size() - hashSet.size()) : hashSetArr[0];
                        } else {
                            hashTrieSet = null;
                        }
                    } else if (elems().length != 1 || (hashTrieSet instanceof HashTrieSet)) {
                        HashSet[] hashSetArr2 = new HashSet[elems().length];
                        Array$.MODULE$.copy(elems(), 0, hashSetArr2, 0, elems().length);
                        hashSetArr2[bitCount] = hashTrieSet;
                        hashTrieSet = new HashTrieSet(bitmap(), hashSetArr2, size() + (hashTrieSet.size() - hashSet.size()));
                    }
                    return hashTrieSet;
                }
            }
            hashTrieSet = this;
            return hashTrieSet;
        }

        @Override // scala.collection.immutable.HashSet, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return size0();
        }

        @Override // scala.collection.immutable.HashSet
        public boolean subsetOf0(HashSet<A> hashSet, int i) {
            boolean z;
            if (hashSet == this) {
                z = true;
            } else {
                if (hashSet instanceof HashTrieSet) {
                    HashTrieSet hashTrieSet = (HashTrieSet) hashSet;
                    if (size0() <= hashTrieSet.size0()) {
                        int bitmap = bitmap();
                        HashSet<A>[] elems = elems();
                        HashSet<A>[] elems2 = hashTrieSet.elems();
                        int bitmap2 = hashTrieSet.bitmap();
                        if ((bitmap & bitmap2) == bitmap) {
                            int i2 = 0;
                            int i3 = 0;
                            while (true) {
                                z = true;
                                if (bitmap == 0) {
                                    break;
                                }
                                int i4 = ((bitmap - 1) & bitmap) ^ bitmap;
                                int i5 = ((bitmap2 - 1) & bitmap2) ^ bitmap2;
                                int i6 = bitmap;
                                int i7 = i2;
                                if (i4 == i5) {
                                    if (!elems[i2].subsetOf0(elems2[i3], i + 5)) {
                                        return false;
                                    }
                                    i6 = bitmap & (i4 ^ (-1));
                                    i7 = i2 + 1;
                                }
                                bitmap2 &= i5 ^ (-1);
                                i3++;
                                bitmap = i6;
                                i2 = i7;
                            }
                        }
                    }
                }
                z = false;
            }
            return z;
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> union0(LeafHashSet<A> leafHashSet, int i) {
            HashTrieSet<A> hashTrieSet;
            int hash = 1 << ((leafHashSet.hash() >>> i) & 31);
            int bitCount = Integer.bitCount(bitmap() & (hash - 1));
            if ((bitmap() & hash) != 0) {
                HashSet<A> hashSet = elems()[bitCount];
                HashSet<A> union0 = hashSet.union0(leafHashSet, i + 5);
                if (hashSet == union0) {
                    hashTrieSet = this;
                } else {
                    HashSet[] hashSetArr = new HashSet[elems().length];
                    Array$.MODULE$.copy(elems(), 0, hashSetArr, 0, elems().length);
                    hashSetArr[bitCount] = union0;
                    hashTrieSet = new HashTrieSet<>(bitmap(), hashSetArr, size() + (union0.size() - hashSet.size()));
                }
            } else {
                HashSet[] hashSetArr2 = new HashSet[elems().length + 1];
                Array$.MODULE$.copy(elems(), 0, hashSetArr2, 0, bitCount);
                hashSetArr2[bitCount] = leafHashSet;
                Array$.MODULE$.copy(elems(), bitCount, hashSetArr2, bitCount + 1, elems().length - bitCount);
                hashTrieSet = new HashTrieSet<>(hash | bitmap(), hashSetArr2, size() + leafHashSet.size());
            }
            return hashTrieSet;
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> union0(HashSet<A> hashSet, int i, HashSet<A>[] hashSetArr, int i2) {
            HashTrieSet<A> hashTrieSet;
            if (hashSet != this) {
                if (hashSet instanceof LeafHashSet) {
                    hashTrieSet = union0((LeafHashSet) hashSet, i);
                } else if (hashSet instanceof HashTrieSet) {
                    hashTrieSet = (HashTrieSet) hashSet;
                    HashSet<A>[] elems = elems();
                    int bitmap = bitmap();
                    HashSet<A>[] elems2 = hashTrieSet.elems();
                    int bitmap2 = hashTrieSet.bitmap();
                    int i3 = i2;
                    int i4 = 0;
                    int i5 = 0;
                    int i6 = 0;
                    while ((bitmap | bitmap2) != 0) {
                        int i7 = ((bitmap - 1) & bitmap) ^ bitmap;
                        int i8 = ((bitmap2 - 1) & bitmap2) ^ bitmap2;
                        if (i7 == i8) {
                            HashSet<A> union0 = elems[i5].union0(elems2[i6], i + 5, hashSetArr, i3);
                            i4 += union0.size();
                            hashSetArr[i3] = union0;
                            i3++;
                            bitmap &= i7 ^ (-1);
                            i5++;
                        } else {
                            HashSet$ hashSet$ = HashSet$.MODULE$;
                            int i9 = i7 - 1;
                            int i10 = i8 - 1;
                            boolean z = true;
                            boolean z2 = i9 < i10;
                            boolean z3 = i9 < 0;
                            if (i10 >= 0) {
                                z = false;
                            }
                            if ((z2 ^ z3) ^ z) {
                                HashSet<A> hashSet2 = elems[i5];
                                i4 += hashSet2.size();
                                hashSetArr[i3] = hashSet2;
                                i3++;
                                bitmap &= i7 ^ (-1);
                                i5++;
                            } else {
                                HashSet<A> hashSet3 = elems2[i6];
                                i4 += hashSet3.size();
                                hashSetArr[i3] = hashSet3;
                                i3++;
                            }
                        }
                        bitmap2 &= i8 ^ (-1);
                        i6++;
                    }
                    if (i4 != size()) {
                        if (i4 != hashTrieSet.size()) {
                            int i11 = i3 - i2;
                            HashSet[] hashSetArr2 = new HashSet[i11];
                            System.arraycopy(hashSetArr, i2, hashSetArr2, 0, i11);
                            hashTrieSet = new HashTrieSet<>(hashTrieSet.bitmap() | bitmap(), hashSetArr2, i4);
                        }
                    }
                }
                return hashTrieSet;
            }
            hashTrieSet = this;
            return hashTrieSet;
        }

        @Override // scala.collection.immutable.HashSet
        public HashSet<A> updated0(A a, int i, int i2) {
            HashTrieSet<A> hashTrieSet;
            int i3 = 1 << ((i >>> i2) & 31);
            int bitCount = Integer.bitCount(bitmap() & (i3 - 1));
            if ((bitmap() & i3) != 0) {
                HashSet<A> hashSet = elems()[bitCount];
                HashSet<A> updated0 = hashSet.updated0(a, i, i2 + 5);
                if (hashSet == updated0) {
                    hashTrieSet = this;
                } else {
                    HashSet[] hashSetArr = new HashSet[elems().length];
                    Array$.MODULE$.copy(elems(), 0, hashSetArr, 0, elems().length);
                    hashSetArr[bitCount] = updated0;
                    hashTrieSet = new HashTrieSet<>(bitmap(), hashSetArr, size() + (updated0.size() - hashSet.size()));
                }
            } else {
                HashSet[] hashSetArr2 = new HashSet[elems().length + 1];
                Array$.MODULE$.copy(elems(), 0, hashSetArr2, 0, bitCount);
                hashSetArr2[bitCount] = new HashSet1(a, i);
                Array$.MODULE$.copy(elems(), bitCount, hashSetArr2, bitCount + 1, elems().length - bitCount);
                hashTrieSet = new HashTrieSet<>(bitmap() | i3, hashSetArr2, size() + 1);
            }
            return hashTrieSet;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashSet$LeafHashSet.class */
    public static abstract class LeafHashSet<A> extends HashSet<A> {
        public abstract int hash();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashSet$SerializationProxy.class */
    public static class SerializationProxy<A, B> implements Serializable {
        public static final long serialVersionUID = 2;
        private transient HashSet<A> scala$collection$immutable$HashSet$SerializationProxy$$orig;

        public SerializationProxy(HashSet<A> hashSet) {
            this.scala$collection$immutable$HashSet$SerializationProxy$$orig = hashSet;
        }

        private void readObject(ObjectInputStream objectInputStream) {
            HashSet$ hashSet$ = HashSet$.MODULE$;
            scala$collection$immutable$HashSet$SerializationProxy$$orig_$eq(HashSet$EmptyHashSet$.MODULE$);
            int readInt = objectInputStream.readInt();
            Predef$ predef$ = Predef$.MODULE$;
            Range$ range$ = Range$.MODULE$;
            Range range = new Range(0, readInt, 1);
            range.scala$collection$immutable$Range$$validateMaxLength();
            boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
            int start = range.start();
            int terminalElement = range.terminalElement();
            int step = range.step();
            int i = 0;
            while (true) {
                if (!z ? i < range.numRangeElements() : start != terminalElement) {
                    scala$collection$immutable$HashSet$SerializationProxy$$orig_$eq(scala$collection$immutable$HashSet$SerializationProxy$$orig().$plus((HashSet<A>) ((A) objectInputStream.readObject())));
                    i++;
                    start += step;
                } else {
                    return;
                }
            }
        }

        private Object readResolve() {
            return scala$collection$immutable$HashSet$SerializationProxy$$orig();
        }

        private void writeObject(ObjectOutputStream objectOutputStream) {
            objectOutputStream.writeInt(scala$collection$immutable$HashSet$SerializationProxy$$orig().size());
            scala$collection$immutable$HashSet$SerializationProxy$$orig().foreach(new HashSet$SerializationProxy$$anonfun$writeObject$1(this, objectOutputStream));
        }

        public HashSet<A> scala$collection$immutable$HashSet$SerializationProxy$$orig() {
            return this.scala$collection$immutable$HashSet$SerializationProxy$$orig;
        }

        public void scala$collection$immutable$HashSet$SerializationProxy$$orig_$eq(HashSet<A> hashSet) {
            this.scala$collection$immutable$HashSet$SerializationProxy$$orig = hashSet;
        }
    }

    public HashSet() {
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Set.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
    }

    public static <A> CanBuildFrom<HashSet<?>, A, HashSet<A>> canBuildFrom() {
        return HashSet$.MODULE$.canBuildFrom();
    }

    public static <A> Object setCanBuildFrom() {
        return HashSet$.MODULE$.setCanBuildFrom();
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
    public HashSet<A> $minus(A a) {
        HashSet$ hashSet$ = HashSet$.MODULE$;
        HashSet<A> removed0 = removed0(a, computeHash(a), 0);
        HashSet<A> hashSet = removed0;
        if (removed0 == null) {
            hashSet = (HashSet) hashSet$.empty();
        }
        return hashSet;
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public HashSet<A> $plus(A a) {
        return updated0(a, computeHash(a), 0);
    }

    @Override // scala.collection.AbstractSet, scala.collection.SetLike
    public HashSet<A> $plus(A a, A a2, Seq<A> seq) {
        return (HashSet) $plus((HashSet<A>) a).$plus((HashSet<A>) a2).$plus$plus(seq);
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(obj));
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<HashSet> companion() {
        return HashSet$.MODULE$;
    }

    public int computeHash(A a) {
        return improve(elemHashCode(a));
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public boolean contains(A a) {
        return get0(a, computeHash(a), 0);
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.collection.SetLike
    public HashSet<A> diff(GenSet<A> genSet) {
        HashSet<A> hashSet;
        if (genSet instanceof HashSet) {
            HashSet$ hashSet$ = HashSet$.MODULE$;
            int size = size();
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            HashSet<A>[] hashSetArr = new HashSet[richInt$.min$extension(size + 6, 224)];
            HashSet$ hashSet$2 = HashSet$.MODULE$;
            HashSet<A> diff0 = diff0((HashSet) genSet, 0, hashSetArr, 0);
            hashSet = diff0;
            if (diff0 == null) {
                hashSet = (HashSet) hashSet$2.empty();
            }
        } else {
            hashSet = (HashSet) SetLike.Cclass.diff(this, genSet);
        }
        return hashSet;
    }

    public HashSet<A> diff0(HashSet<A> hashSet, int i, HashSet<A>[] hashSetArr, int i2) {
        return null;
    }

    public int elemHashCode(A a) {
        return ScalaRunTime$.MODULE$.hash(a);
    }

    @Override // scala.collection.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
    public HashSet<A> empty() {
        return (HashSet) HashSet$.MODULE$.empty();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public HashSet<A> filter(Function1<A, Object> function1) {
        HashSet$ hashSet$ = HashSet$.MODULE$;
        int size = size();
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        HashSet<A>[] hashSetArr = new HashSet[richInt$.min$extension(size + 6, 224)];
        HashSet$ hashSet$2 = HashSet$.MODULE$;
        HashSet<A> filter0 = filter0(function1, false, 0, hashSetArr, 0);
        HashSet<A> hashSet = filter0;
        if (filter0 == null) {
            hashSet = (HashSet) hashSet$2.empty();
        }
        return hashSet;
    }

    public HashSet<A> filter0(Function1<A, Object> function1, boolean z, int i, HashSet<A>[] hashSetArr, int i2) {
        return null;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
    public HashSet<A> filterNot(Function1<A, Object> function1) {
        HashSet$ hashSet$ = HashSet$.MODULE$;
        int size = size();
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        HashSet<A>[] hashSetArr = new HashSet[richInt$.min$extension(size + 6, 224)];
        HashSet$ hashSet$2 = HashSet$.MODULE$;
        HashSet<A> filter0 = filter0(function1, true, 0, hashSetArr, 0);
        HashSet<A> hashSet = filter0;
        if (filter0 == null) {
            hashSet = (HashSet) hashSet$2.empty();
        }
        return hashSet;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<A, U> function1) {
    }

    public boolean get0(A a, int i, int i2) {
        return false;
    }

    public final int improve(int i) {
        int i2 = i + ((i << 9) ^ (-1));
        int i3 = i2 ^ (i2 >>> 14);
        int i4 = i3 + (i3 << 4);
        return i4 ^ (i4 >>> 10);
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike
    public HashSet<A> intersect(GenSet<A> genSet) {
        HashSet<A> hashSet;
        if (genSet instanceof HashSet) {
            HashSet<A> hashSet2 = (HashSet) genSet;
            HashSet$ hashSet$ = HashSet$.MODULE$;
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            int min$extension = richInt$.min$extension(size(), hashSet2.size());
            RichInt$ richInt$2 = RichInt$.MODULE$;
            Predef$ predef$2 = Predef$.MODULE$;
            HashSet<A>[] hashSetArr = new HashSet[richInt$2.min$extension(min$extension + 6, 224)];
            HashSet$ hashSet$2 = HashSet$.MODULE$;
            HashSet<A> intersect0 = intersect0(hashSet2, 0, hashSetArr, 0);
            hashSet = intersect0;
            if (intersect0 == null) {
                hashSet = (HashSet) hashSet$2.empty();
            }
        } else {
            hashSet = (HashSet) GenSetLike.Cclass.intersect(this, genSet);
        }
        return hashSet;
    }

    public HashSet<A> intersect0(HashSet<A> hashSet, int i, HashSet<A>[] hashSetArr, int i2) {
        return null;
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return (Iterator<A>) Iterator$.MODULE$.empty();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.Parallelizable
    public ParHashSet<A> par() {
        return ParHashSet$.MODULE$.fromTrie(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParHashSet<A>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    public HashSet<A> removed0(A a, int i, int i2) {
        return this;
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Set<A> seq() {
        return Set.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return 0;
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.collection.SortedSetLike
    public boolean subsetOf(GenSet<A> genSet) {
        return genSet instanceof HashSet ? subsetOf0((HashSet) genSet, 0) : GenSetLike.Cclass.subsetOf(this, genSet);
    }

    public boolean subsetOf0(HashSet<A> hashSet, int i) {
        return true;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <B> Set<B> toSet() {
        return this;
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.collection.SetLike
    public HashSet<A> union(GenSet<A> genSet) {
        HashSet<A> hashSet;
        if (genSet instanceof HashSet) {
            HashSet<A> hashSet2 = (HashSet) genSet;
            HashSet$ hashSet$ = HashSet$.MODULE$;
            int size = size();
            int size2 = hashSet2.size();
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            HashSet<A>[] hashSetArr = new HashSet[richInt$.min$extension(size + size2 + 6, 224)];
            HashSet$ hashSet$2 = HashSet$.MODULE$;
            HashSet<A> union0 = union0(hashSet2, 0, hashSetArr, 0);
            hashSet = union0;
            if (union0 == null) {
                hashSet = (HashSet) hashSet$2.empty();
            }
        } else {
            hashSet = (HashSet) SetLike.Cclass.union(this, genSet);
        }
        return hashSet;
    }

    public HashSet<A> union0(LeafHashSet<A> leafHashSet, int i) {
        return leafHashSet;
    }

    public HashSet<A> union0(HashSet<A> hashSet, int i, HashSet<A>[] hashSetArr, int i2) {
        return hashSet;
    }

    public HashSet<A> updated0(A a, int i, int i2) {
        return new HashSet1(a, i);
    }

    public Object writeReplace() {
        return new SerializationProxy(this);
    }
}
