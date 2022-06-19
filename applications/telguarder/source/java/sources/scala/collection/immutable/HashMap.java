package scala.collection.immutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import scala.Array$;
import scala.Function1;
import scala.Function2;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.CustomParallelizable;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.Seq;
import scala.collection.Traversable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.HashMap;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParHashMap;
import scala.collection.parallel.immutable.ParHashMap$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ObjectRef;
import scala.runtime.RichInt$;
import scala.runtime.ScalaRunTime$;
import scala.sys.package$;
@ScalaSignature(bytes = "\u0006\u0001\u0019}a\u0001B\u0001\u0003\u0001%\u0011q\u0001S1tQ6\u000b\u0007O\u0003\u0002\u0004\t\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0004\u0015Ea2C\u0002\u0001\f=\u0005*\u0003\u0006\u0005\u0003\r\u001b=YR\"\u0001\u0002\n\u00059\u0011!aC!cgR\u0014\u0018m\u0019;NCB\u0004\"\u0001E\t\r\u0001\u0011)!\u0003\u0001b\u0001'\t\t\u0011)\u0005\u0002\u00151A\u0011QCF\u0007\u0002\r%\u0011qC\u0002\u0002\b\u001d>$\b.\u001b8h!\t)\u0012$\u0003\u0002\u001b\r\t\u0019\u0011I\\=\u0011\u0005AaBAB\u000f\u0001\t\u000b\u00071CA\u0001C!\u0011aqdD\u000e\n\u0005\u0001\u0012!aA'baB)ABI\b\u001cI%\u00111E\u0001\u0002\b\u001b\u0006\u0004H*[6f!\u0011a\u0001aD\u000e\u0011\u0005U1\u0013BA\u0014\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f!\u0011I#\u0006L\u0018\u000e\u0003\u0011I!a\u000b\u0003\u0003)\r+8\u000f^8n!\u0006\u0014\u0018\r\u001c7fY&T\u0018M\u00197f!\u0011)RfD\u000e\n\u000592!A\u0002+va2,'\u0007\u0005\u00031i=YR\"A\u0019\u000b\u0005\r\u0011$BA\u001a\u0005\u0003!\u0001\u0018M]1mY\u0016d\u0017BA\u001b2\u0005)\u0001\u0016M\u001d%bg\"l\u0015\r\u001d\u0005\u0006o\u0001!\t\u0001O\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003\u0011BQA\u000f\u0001\u0005Bm\nAa]5{KV\tA\b\u0005\u0002\u0016{%\u0011aH\u0002\u0002\u0004\u0013:$\b\"\u0002!\u0001\t\u0003\n\u0015!B3naRLX#\u0001\u0013\t\u000b\r\u0003A\u0011\u0001#\u0002\u0011%$XM]1u_J,\u0012!\u0012\t\u0004S\u0019c\u0013BA$\u0005\u0005!IE/\u001a:bi>\u0014\b\"B%\u0001\t\u0003R\u0015a\u00024pe\u0016\f7\r[\u000b\u0003\u0017V#\"\u0001T(\u0011\u0005Ui\u0015B\u0001(\u0007\u0005\u0011)f.\u001b;\t\u000bAC\u0005\u0019A)\u0002\u0003\u0019\u0004B!\u0006*-)&\u00111K\u0002\u0002\n\rVt7\r^5p]F\u0002\"\u0001E+\u0005\u000bYC%\u0019A\n\u0003\u0003UCQ\u0001\u0017\u0001\u0005\u0002e\u000b1aZ3u)\tQV\fE\u0002\u00167nI!\u0001\u0018\u0004\u0003\r=\u0003H/[8o\u0011\u0015qv\u000b1\u0001\u0010\u0003\rYW-\u001f\u0005\u0006A\u0002!\t%Y\u0001\bkB$\u0017\r^3e+\t\u0011W\rF\u0002dQ&\u0004B\u0001\u0004\u0001\u0010IB\u0011\u0001#\u001a\u0003\u0006M~\u0013\ra\u001a\u0002\u0003\u0005F\n\"a\u0007\r\t\u000by{\u0006\u0019A\b\t\u000b)|\u0006\u0019\u00013\u0002\u000bY\fG.^3\t\u000b1\u0004A\u0011I7\u0002\u000b\u0011\u0002H.^:\u0016\u00059\fHCA8s!\u0011a\u0001a\u00049\u0011\u0005A\tH!\u00024l\u0005\u00049\u0007\"B:l\u0001\u0004!\u0018AA6w!\u0011)Rf\u00049\t\u000b1\u0004A\u0011\t<\u0016\u0005]TH#\u0002=|}\u0006\u0005\u0001\u0003\u0002\u0007\u0001\u001fe\u0004\"\u0001\u0005>\u0005\u000b\u0019,(\u0019A4\t\u000bq,\b\u0019A?\u0002\u000b\u0015dW-\\\u0019\u0011\tUis\"\u001f\u0005\u0006\u007fV\u0004\r!`\u0001\u0006K2,WN\r\u0005\b\u0003\u0007)\b\u0019AA\u0003\u0003\u0015)G.Z7t!\u0011)\u0012qA?\n\u0007\u0005%aA\u0001\u0006=e\u0016\u0004X-\u0019;fIzBq!!\u0004\u0001\t\u0003\ty!\u0001\u0004%[&tWo\u001d\u000b\u0004I\u0005E\u0001B\u00020\u0002\f\u0001\u0007q\u0002C\u0004\u0002\u0016\u0001!\t%a\u0006\u0002\r\u0019LG\u000e^3s)\r!\u0013\u0011\u0004\u0005\t\u00037\t\u0019\u00021\u0001\u0002\u001e\u0005\t\u0001\u000fE\u0003\u0016%2\ny\u0002E\u0002\u0016\u0003CI1!a\t\u0007\u0005\u001d\u0011un\u001c7fC:Dq!a\n\u0001\t\u0003\nI#A\u0005gS2$XM\u001d(piR\u0019A%a\u000b\t\u0011\u0005m\u0011Q\u0005a\u0001\u0003;Aq!a\f\u0001\t#\t\t$A\u0004gS2$XM\u001d\u0019\u0015\u0017\u0011\n\u0019$!\u000e\u0002:\u0005u\u0012Q\f\u0005\t\u00037\ti\u00031\u0001\u0002\u001e!A\u0011qGA\u0017\u0001\u0004\ty\"\u0001\u0004oK\u001e\fG/\u001a\u0005\b\u0003w\ti\u00031\u0001=\u0003\u0015aWM^3m\u0011!\ty$!\fA\u0002\u0005\u0005\u0013A\u00022vM\u001a,'\u000fE\u0003\u0016\u0003\u0007\n9%C\u0002\u0002F\u0019\u0011Q!\u0011:sCf\u0004R\u0001\u0004\u0001\u0010\u0003\u0013R3aGA&W\t\ti\u0005\u0005\u0003\u0002P\u0005eSBAA)\u0015\u0011\t\u0019&!\u0016\u0002\u0013Ut7\r[3dW\u0016$'bAA,\r\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\t\u0005m\u0013\u0011\u000b\u0002\u0012k:\u001c\u0007.Z2lK\u00124\u0016M]5b]\u000e,\u0007bBA0\u0003[\u0001\r\u0001P\u0001\b_\u001a47/\u001a;1\u0011\u001d\t\u0019\u0007\u0001C\t\u0003K\nA\"\u001a7f[\"\u000b7\u000f[\"pI\u0016$2\u0001PA4\u0011\u0019q\u0016\u0011\ra\u0001\u001f!9\u00111\u000e\u0001\u0005\u0016\u00055\u0014aB5naJ|g/\u001a\u000b\u0004y\u0005=\u0004bBA9\u0003S\u0002\r\u0001P\u0001\u0006Q\u000e|G-\u001a\u0005\t\u0003k\u0002A\u0011\u0001\u0003\u0002x\u0005Y1m\\7qkR,\u0007*Y:i)\ra\u0014\u0011\u0010\u0005\u0007=\u0006M\u0004\u0019A\b\t\u0011\u0005u\u0004\u0001\"\u0001\u0005\u0003\u007f\nAaZ3uaQ9!,!!\u0002\u0004\u0006\u001d\u0005B\u00020\u0002|\u0001\u0007q\u0002C\u0004\u0002\u0006\u0006m\u0004\u0019\u0001\u001f\u0002\t!\f7\u000f\u001b\u0005\b\u0003w\tY\b1\u0001=\u0011!\tY\t\u0001C\u0001\t\u00055\u0015\u0001C;qI\u0006$X\r\u001a\u0019\u0016\t\u0005=\u0015Q\u0013\u000b\u000f\u0003#\u000b9*!'\u0002\u001c\u0006u\u0015qTAR!\u0015a\u0001aDAJ!\r\u0001\u0012Q\u0013\u0003\u0007M\u0006%%\u0019A4\t\ry\u000bI\t1\u0001\u0010\u0011\u001d\t))!#A\u0002qBq!a\u000f\u0002\n\u0002\u0007A\bC\u0004k\u0003\u0013\u0003\r!a%\t\u000fM\fI\t1\u0001\u0002\"B)Q#L\b\u0002\u0014\"A\u0011QUAE\u0001\u0004\t9+\u0001\u0004nKJ<WM\u001d\t\b\u0003S\u000b\u0019nDAJ\u001d\ra\u00111V\u0004\b\u0003[\u0013\u0001\u0012AAX\u0003\u001dA\u0015m\u001d5NCB\u00042\u0001DAY\r\u0019\t!\u0001#\u0001\u00024N9\u0011\u0011WA[\u0003\u0007,\u0003CBA\\\u0003{\u000b\t-\u0004\u0002\u0002:*\u0019\u00111\u0018\u0003\u0002\u000f\u001d,g.\u001a:jG&!\u0011qXA]\u0005MIU.\\;uC\ndW-T1q\r\u0006\u001cGo\u001c:z!\ta\u0001\u0001\u0005\u0003\u0002F\u0006-g\u0002BA\\\u0003\u000fLA!!3\u0002:\u0006i!)\u001b;Pa\u0016\u0014\u0018\r^5p]NL1APAg\u0015\u0011\tI-!/\t\u000f]\n\t\f\"\u0001\u0002RR\u0011\u0011q\u0016\u0004\n\u0003+\f\t,!\u0001\u0005\u0003/\u0014a!T3sO\u0016\u0014XCBAm\u0003W\fyo\u0005\u0003\u0002T\u0006m\u0007cA\u000b\u0002^&\u0019\u0011q\u001c\u0004\u0003\r\u0005s\u0017PU3g\u0011\u001d9\u00141\u001bC\u0001\u0003G$\"!!:\u0011\u0011\u0005\u001d\u00181[Au\u0003[l!!!-\u0011\u0007A\tY\u000f\u0002\u0004\u0013\u0003'\u0014\ra\u0005\t\u0004!\u0005=HAB\u000f\u0002T\n\u00071\u0003\u0003\u0005\u0002t\u0006Mg\u0011AA{\u0003\u0015\t\u0007\u000f\u001d7z)\u0019\t90!?\u0002~B1Q#LAu\u0003[D\u0001\"a?\u0002r\u0002\u0007\u0011q_\u0001\u0004WZ\f\u0004\u0002CA��\u0003c\u0004\r!a>\u0002\u0007-4(\u0007\u0003\u0005\u0003\u0004\u0005Mg\u0011\u0001B\u0003\u0003\u0019IgN^3siV\u0011\u0011Q]\u0003\b\u0005\u0013\t\t\f\u0002B\u0006\u00055iUM]4f\rVt7\r^5p]V1!Q\u0002B\f\u0005;\u0001\u0012\"\u0006B\b\u0005'\u0011\u0019Ba\u0005\n\u0007\tEaAA\u0005Gk:\u001cG/[8oeA1Q#\fB\u000b\u00057\u00012\u0001\u0005B\f\t\u001d\u0011IBa\u0002C\u0002M\u0011!!Q\u0019\u0011\u0007A\u0011i\u0002\u0002\u0004g\u0005\u000f\u0011\ra\u0005\u0005\t\u0005C\t\t\f\"\u0003\u0003$\u0005QA.\u001b4u\u001b\u0016\u0014x-\u001a:\u0016\r\t\u0015\"1\u0006B\u0018)\u0011\u00119C!\r\u0011\u0011\u0005\u001d\u00181\u001bB\u0015\u0005[\u00012\u0001\u0005B\u0016\t\u001d\u0011IBa\bC\u0002M\u00012\u0001\u0005B\u0018\t\u00191'q\u0004b\u0001'!A!1\u0007B\u0010\u0001\u0004\u0011)$\u0001\u0004nKJ<WM\u001a\t\t\u0003O\u00149A!\u000b\u0003.!I!\u0011HAYA\u0003%!1H\u0001\u000eI\u00164\u0017-\u001e7u\u001b\u0016\u0014x-\u001a:\u0011\r\u0005\u001d\u00181\u001b\r\u0019\u0011%\u0011y$!-!\n\u0013\u0011\t%A\u0006mS\u001a$X*\u001a:hKJ\u0004TC\u0002B\"\u0005\u0013\u0012i\u0005\u0006\u0003\u0003F\t=\u0003\u0003CAt\u0003'\u00149Ea\u0013\u0011\u0007A\u0011I\u0005B\u0004\u0003\u001a\tu\"\u0019A\n\u0011\u0007A\u0011i\u0005\u0002\u0004g\u0005{\u0011\ra\u0005\u0005\t\u0005g\u0011i\u00041\u0001\u0003RAA\u0011q\u001dB\u0004\u0005\u000f\u0012Y\u0005\u0003\u0005\u0003V\u0005EF1\u0001B,\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\u0019\u0011IFa\u001c\u0003tU\u0011!1\f\t\u000b\u0003o\u0013iF!\u0019\u0003l\tU\u0014\u0002\u0002B0\u0003s\u0013AbQ1o\u0005VLG\u000e\u001a$s_6\u0004B!a:\u0003d%!!Q\rB4\u0005\u0011\u0019u\u000e\u001c7\n\t\t%\u0014\u0011\u0018\u0002\u000e\u000f\u0016tW*\u00199GC\u000e$xN]=\u0011\rUi#Q\u000eB9!\r\u0001\"q\u000e\u0003\u0007%\tM#\u0019A\n\u0011\u0007A\u0011\u0019\b\u0002\u0004\u001e\u0005'\u0012\ra\u0005\t\u0007\u0019\u0001\u0011iG!\u001d\t\u000f\u0001\u000b\t\f\"\u0001\u0003zU1!1\u0010BA\u0005\u000b+\"A! \u0011\r1\u0001!q\u0010BB!\r\u0001\"\u0011\u0011\u0003\u0007%\t]$\u0019A\n\u0011\u0007A\u0011)\t\u0002\u0004\u001e\u0005o\u0012\raE\u0004\t\u0005\u0013\u000b\t\f#\u0003\u0003\f\u0006aQ)\u001c9us\"\u000b7\u000f['baB!\u0011q\u001dBG\r!\u0011y)!-\t\n\tE%\u0001D#naRL\b*Y:i\u001b\u0006\u00048\u0003\u0002BG\u0005'\u0003B\u0001\u0004\u0001\u0019)!9qG!$\u0005\u0002\t]EC\u0001BF\u0011)\u0011YJ!$\u0002\u0002\u0013%!QT\u0001\fe\u0016\fGMU3t_24X\r\u0006\u0002\u0003 B!!\u0011\u0015BV\u001b\t\u0011\u0019K\u0003\u0003\u0003&\n\u001d\u0016\u0001\u00027b]\u001eT!A!+\u0002\t)\fg/Y\u0005\u0005\u0005[\u0013\u0019K\u0001\u0004PE*,7\r\u001e\u0005\t\u0005c\u000b\t\f\"\u0003\u00034\u0006yQ.Y6f\u0011\u0006\u001c\b\u000e\u0016:jK6\u000b\u0007/\u0006\u0004\u00036\u000e55\u0011\u0013\u000b\u000f\u0005o\u001b\u0019ja&\u0004\u001e\u000e\u000561UBS!!\t9O!/\u0004\f\u000e=ea\u0002B^\u0003c\u0003!Q\u0018\u0002\f\u0011\u0006\u001c\b\u000e\u0016:jK6\u000b\u0007/\u0006\u0004\u0003@\n\u0015'1Z\n\u0005\u0005s\u0013\t\r\u0005\u0004\r\u0001\t\r'q\u0019\t\u0004!\t\u0015GA\u0002\n\u0003:\n\u00071C\u000b\u0003\u0003J\u0006-\u0003c\u0001\t\u0003L\u00129QD!/\u0005\u0006\u0004\u0019\u0002\u0002\u0004Bh\u0005s\u0013)\u0019!C\u0001\t\tE\u0017A\u00022ji6\f\u0007/\u0006\u0002\u0003TB!\u0011q\u001dBk\u0013\rq\u00141\u001a\u0005\f\u00053\u0014IL!A!\u0002\u0013\u0011\u0019.A\u0004cSRl\u0017\r\u001d\u0011\t\u0019\u0005\r!\u0011\u0018BC\u0002\u0013\u0005AA!8\u0016\u0005\t}\u0007#B\u000b\u0002D\t\u0005\u0007b\u0003Br\u0005s\u0013\t\u0011)A\u0005\u0005?\fa!\u001a7f[N\u0004\u0003\u0002\u0004Bt\u0005s\u0013)\u0019!C\u0001\t\tE\u0017!B:ju\u0016\u0004\u0004b\u0003Bv\u0005s\u0013\t\u0011)A\u0005\u0005'\faa]5{KB\u0002\u0003bB\u001c\u0003:\u0012\u0005!q\u001e\u000b\t\u0005c\u0014\u0019P!>\u0003xBA\u0011q\u001dB]\u0005\u0007\u0014I\r\u0003\u0005\u0003P\n5\b\u0019\u0001Bj\u0011!\t\u0019A!<A\u0002\t}\u0007\u0002\u0003Bt\u0005[\u0004\rAa5\t\u000fi\u0012I\f\"\u0011\u0003R\"A\u0011Q\u0010B]\t\u0003\u0012i\u0010\u0006\u0005\u0003��\u000e\u000511AB\u0003!\u0011)2L!3\t\u000fy\u0013Y\u00101\u0001\u0003D\"A\u0011Q\u0011B~\u0001\u0004\u0011\u0019\u000e\u0003\u0005\u0002<\tm\b\u0019\u0001Bj\u0011%\tYI!/\u0005B\u0011\u0019I!\u0006\u0003\u0004\f\rEACDB\u0007\u0007+\u00199b!\u0007\u0004\u001c\ru1\u0011\u0005\t\u0007\u0019\u0001\u0011\u0019ma\u0004\u0011\u0007A\u0019\t\u0002B\u0004g\u0007\u000f\u0011\raa\u0005\u0012\u0007\t%\u0007\u0004C\u0004_\u0007\u000f\u0001\rAa1\t\u0011\u0005\u00155q\u0001a\u0001\u0005'D\u0001\"a\u000f\u0004\b\u0001\u0007!1\u001b\u0005\bU\u000e\u001d\u0001\u0019AB\b\u0011\u001d\u00198q\u0001a\u0001\u0007?\u0001b!F\u0017\u0003D\u000e=\u0001\u0002CAS\u0007\u000f\u0001\raa\t\u0011\u0011\u0005\u001d\u00181\u001bBb\u0007\u001fA\u0001ba\n\u0003:\u0012\u00053\u0011F\u0001\te\u0016lwN^3eaQA11FB\u0017\u0007_\u0019\t\u0004\u0005\u0004\r\u0001\t\r'\u0011\u001a\u0005\b=\u000e\u0015\u0002\u0019\u0001Bb\u0011!\t)i!\nA\u0002\tM\u0007\u0002CA\u001e\u0007K\u0001\rAa5\t\u0011\u0005=\"\u0011\u0018C)\u0007k!Bba\u000b\u00048\ru2qHB!\u0007\u0007B\u0001\"a\u0007\u00044\u0001\u00071\u0011\b\t\u0007+I\u001bY$a\b\u0011\rUi#1\u0019Be\u0011!\t9da\rA\u0002\u0005}\u0001\u0002CA\u001e\u0007g\u0001\rAa5\t\u0011\u0005}21\u0007a\u0001\u0005?D\u0001\"a\u0018\u00044\u0001\u0007!1\u001b\u0005\b\u0007\neF\u0011IB$+\t\u0019I\u0005\u0005\u0003*\r\u000em\u0002bB%\u0003:\u0012\u00053QJ\u000b\u0005\u0007\u001f\u001a9\u0006F\u0002M\u0007#Bq\u0001UB&\u0001\u0004\u0019\u0019\u0006\u0005\u0004\u0016%\u000em2Q\u000b\t\u0004!\r]CA\u0002,\u0004L\t\u00071\u0003\u0003\u0005\u0004\\\teF\u0011BB/\u0003\u0015\u0001xn](g)\u0015a4qLB2\u0011!\u0019\tg!\u0017A\u0002\tM\u0017!\u00018\t\u0011\r\u00154\u0011\fa\u0001\u0005'\f!AY7\t\u0011\r%$\u0011\u0018C!\u0007W\nQa\u001d9mSR,\"a!\u001c\u0011\u000b1\u0019yga\u000b\n\u0007\rE$AA\u0002TKFD\u0001b!\u001e\u0003:\u0012E3qO\u0001\u0007[\u0016\u0014x-\u001a\u0019\u0016\t\re4q\u0010\u000b\t\u0007w\u001a\ti!\"\u0004\bB1A\u0002\u0001Bb\u0007{\u00022\u0001EB@\t\u001d171\u000fb\u0001\u0007'A\u0001ba!\u0004t\u0001\u000711P\u0001\u0005i\"\fG\u000f\u0003\u0005\u0002<\rM\u0004\u0019\u0001Bj\u0011!\t)ka\u001dA\u0002\r%\u0005\u0003CAt\u0003'\u0014\u0019m! \u0011\u0007A\u0019i\t\u0002\u0004\u0013\u0005_\u0013\ra\u0005\t\u0004!\rEEAB\u000f\u00030\n\u00071\u0003\u0003\u0005\u0004\u0016\n=\u0006\u0019\u0001Bj\u0003\u0015A\u0017m\u001d51\u0011!\u0019IJa,A\u0002\rm\u0015!B3mK6\u0004\u0004C\u0002\u0007\u0001\u0007\u0017\u001by\t\u0003\u0005\u0004 \n=\u0006\u0019\u0001Bj\u0003\u0015A\u0017m\u001d52\u0011\u001da(q\u0016a\u0001\u00077C\u0001\"a\u000f\u00030\u0002\u0007!1\u001b\u0005\bu\t=\u0006\u0019\u0001Bj\r\u001d\u0019I+!-\u0001\u0007W\u0013\u0001\u0002S1tQ6\u000b\u0007/M\u000b\u0007\u0007[\u001b\u0019la.\u0014\t\r\u001d6q\u0016\t\u0007\u0019\u0001\u0019\tl!.\u0011\u0007A\u0019\u0019\f\u0002\u0004\u0013\u0007O\u0013\ra\u0005\t\u0004!\r]FaB\u000f\u0004(\u0012\u0015\ra\u0005\u0005\f=\u000e\u001d&Q1A\u0005\u0002\u0011\u0019Y,\u0006\u0002\u00042\"Y1qXBT\u0005\u0003\u0005\u000b\u0011BBY\u0003\u0011YW-\u001f\u0011\t\u0019\u0005\u00155q\u0015BC\u0002\u0013\u0005AA!5\t\u0017\r\u00157q\u0015B\u0001B\u0003%!1[\u0001\u0006Q\u0006\u001c\b\u000e\t\u0005\fU\u000e\u001d&Q1A\u0005\u0002\u0011\u0019I-\u0006\u0002\u0004L*\"1QWA&\u0011-\u0019yma*\u0003\u0002\u0003\u0006Iaa3\u0002\rY\fG.^3!\u0011-\u00198q\u0015BA\u0002\u0013\u0005Aaa5\u0016\u0005\rU\u0007CB\u000b.\u0007c\u001bY\r\u0003\u0007\u0004Z\u000e\u001d&\u00111A\u0005\u0002\u0011\u0019Y.\u0001\u0004lm~#S-\u001d\u000b\u0004\u0019\u000eu\u0007BCBp\u0007/\f\t\u00111\u0001\u0004V\u0006\u0019\u0001\u0010J\u0019\t\u0017\r\r8q\u0015B\u0001B\u0003&1Q[\u0001\u0004WZ\u0004\u0003bB\u001c\u0004(\u0012\u00051q\u001d\u000b\u000b\u0007S\u001cYo!<\u0004p\u000eE\b\u0003CAt\u0007O\u001b\tl!.\t\u000fy\u001b)\u000f1\u0001\u00042\"A\u0011QQBs\u0001\u0004\u0011\u0019\u000eC\u0004k\u0007K\u0004\raa3\t\u000fM\u001c)\u000f1\u0001\u0004V\"1!ha*\u0005BmB\u0011ba>\u0004(\u0012\u0005Aaa/\u0002\r\u001d,GoS3z\u0011%\u0019Ypa*\u0005\u0002\u0011\u0011\t.A\u0004hKRD\u0015m\u001d5\t\u0013\r}8q\u0015C\u0001\t\u0011\u0005\u0011AD2p[B,H/\u001a%bg\"4uN\u001d\u000b\u0004y\u0011\r\u0001\u0002\u0003C\u0003\u0007{\u0004\ra!-\u0002\u0003-D\u0001\"! \u0004(\u0012\u0005C\u0011\u0002\u000b\t\t\u0017!i\u0001b\u0004\u0005\u0012A!QcWB[\u0011\u001dqFq\u0001a\u0001\u0007cC\u0001\"!\"\u0005\b\u0001\u0007!1\u001b\u0005\t\u0003w!9\u00011\u0001\u0003T\"I\u00111RBT\t\u0003\"AQC\u000b\u0005\t/!i\u0002\u0006\b\u0005\u001a\u0011\u0005B1\u0005C\u0013\tO!I\u0003\"\f\u0011\r1\u00011\u0011\u0017C\u000e!\r\u0001BQ\u0004\u0003\bM\u0012M!\u0019\u0001C\u0010#\r\u0019)\f\u0007\u0005\b=\u0012M\u0001\u0019ABY\u0011!\t)\tb\u0005A\u0002\tM\u0007\u0002CA\u001e\t'\u0001\rAa5\t\u000f)$\u0019\u00021\u0001\u0005\u001c!91\u000fb\u0005A\u0002\u0011-\u0002CB\u000b.\u0007c#Y\u0002\u0003\u0005\u0002&\u0012M\u0001\u0019\u0001C\u0018!!\t9/a5\u00042\u0012m\u0001\u0002CB\u0014\u0007O#\t\u0005b\r\u0015\u0011\r=FQ\u0007C\u001c\tsAqA\u0018C\u0019\u0001\u0004\u0019\t\f\u0003\u0005\u0002\u0006\u0012E\u0002\u0019\u0001Bj\u0011!\tY\u0004\"\rA\u0002\tM\u0007\u0002CA\u0018\u0007O#\t\u0006\"\u0010\u0015\u0019\r=Fq\bC#\t\u000f\"I\u0005b\u0014\t\u0011\u0005mA1\ba\u0001\t\u0003\u0002b!\u0006*\u0005D\u0005}\u0001CB\u000b.\u0007c\u001b)\f\u0003\u0005\u00028\u0011m\u0002\u0019AA\u0010\u0011!\tY\u0004b\u000fA\u0002\tM\u0007\u0002CA \tw\u0001\r\u0001b\u0013\u0011\u000bU\t\u0019\u0005\"\u0014\u0011\r1\u00011\u0011WBf\u0011!\ty\u0006b\u000fA\u0002\tM\u0007bB\"\u0004(\u0012\u0005C1K\u000b\u0003\t+\u0002B!\u000b$\u0005D!9\u0011ja*\u0005B\u0011eS\u0003\u0002C.\tG\"2\u0001\u0014C/\u0011\u001d\u0001Fq\u000ba\u0001\t?\u0002b!\u0006*\u0005D\u0011\u0005\u0004c\u0001\t\u0005d\u00111a\u000bb\u0016C\u0002MA!\u0002b\u001a\u0004(\u0012\u0005\u0011\u0011\u0017C5\u0003))gn];sKB\u000b\u0017N]\u000b\u0003\t\u0007B\u0001b!\u001e\u0004(\u0012ECQN\u000b\u0005\t_\")\b\u0006\u0005\u0005r\u0011]D\u0011\u0010C>!\u0019a\u0001a!-\u0005tA\u0019\u0001\u0003\"\u001e\u0005\u000f\u0019$YG1\u0001\u0005 !A11\u0011C6\u0001\u0004!\t\b\u0003\u0005\u0002<\u0011-\u0004\u0019\u0001Bj\u0011!\t)\u000bb\u001bA\u0002\u0011u\u0004\u0003CAt\u0003'\u001c\t\fb\u001d\u0007\u0011\u0011\u0005\u0015\u0011\u0017\u0001\u0005\t\u0007\u0013\u0011\u0003S1tQ6\u000b\u0007oQ8mY&\u001c\u0018n\u001c82+\u0019!)\tb#\u0005\u0012N!Aq\u0010CD!\u0019a\u0001\u0001\"#\u0005\u000eB\u0019\u0001\u0003b#\u0005\rI!yH1\u0001\u0014U\u0011!y)a\u0013\u0011\u0007A!\t\nB\u0004\u001e\t\u007f\")\u0019A\n\t\u0019\u0005\u0015Eq\u0010BC\u0002\u0013\u0005AA!5\t\u0017\r\u0015Gq\u0010B\u0001B\u0003%!1\u001b\u0005\f\t3#yH!b\u0001\n\u0003!Y*A\u0002lmN,\"\u0001\"(\u0011\u000f1!y\n\"#\u0005\u000e&\u0019A\u0011\u0015\u0002\u0003\u000f1K7\u000f^'ba\"YAQ\u0015C@\u0005\u0003\u0005\u000b\u0011\u0002CO\u0003\u0011Ygo\u001d\u0011\t\u000f]\"y\b\"\u0001\u0005*R1A1\u0016CW\t_\u0003\u0002\"a:\u0005��\u0011%Eq\u0012\u0005\t\u0003\u000b#9\u000b1\u0001\u0003T\"AA\u0011\u0014CT\u0001\u0004!i\n\u0003\u0004;\t\u007f\"\te\u000f\u0005\t\u0003{\"y\b\"\u0011\u00056RAAq\u0017C]\tw#i\f\u0005\u0003\u00167\u0012=\u0005b\u00020\u00054\u0002\u0007A\u0011\u0012\u0005\t\u0003\u000b#\u0019\f1\u0001\u0003T\"A\u00111\bCZ\u0001\u0004\u0011\u0019\u000eC\u0005\u0002\f\u0012}D\u0011\t\u0003\u0005BV!A1\u0019Ce)9!)\r\"4\u0005P\u0012EG1\u001bCk\t3\u0004b\u0001\u0004\u0001\u0005\n\u0012\u001d\u0007c\u0001\t\u0005J\u00129a\rb0C\u0002\u0011-\u0017c\u0001CH1!9a\fb0A\u0002\u0011%\u0005\u0002CAC\t\u007f\u0003\rAa5\t\u0011\u0005mBq\u0018a\u0001\u0005'DqA\u001bC`\u0001\u0004!9\rC\u0004t\t\u007f\u0003\r\u0001b6\u0011\rUiC\u0011\u0012Cd\u0011!\t)\u000bb0A\u0002\u0011m\u0007\u0003CAt\u0003'$I\tb2\t\u0011\r\u001dBq\u0010C!\t?$\u0002\u0002\"9\u0005d\u0012\u0015Hq\u001d\t\u0007\u0019\u0001!I\tb$\t\u000fy#i\u000e1\u0001\u0005\n\"A\u0011Q\u0011Co\u0001\u0004\u0011\u0019\u000e\u0003\u0005\u0002<\u0011u\u0007\u0019\u0001Bj\u0011!\ty\u0003b \u0005R\u0011-H\u0003\u0004Cq\t[$\u0019\u0010\">\u0005x\u0012m\b\u0002CA\u000e\tS\u0004\r\u0001b<\u0011\rU\u0011F\u0011_A\u0010!\u0019)R\u0006\"#\u0005\u0010\"A\u0011q\u0007Cu\u0001\u0004\ty\u0002\u0003\u0005\u0002<\u0011%\b\u0019\u0001Bj\u0011!\ty\u0004\";A\u0002\u0011e\b#B\u000b\u0002D\u0011\u001d\u0005\u0002CA0\tS\u0004\rAa5\t\u000f\r#y\b\"\u0011\u0005��V\u0011Q\u0011\u0001\t\u0005S\u0019#\t\u0010C\u0004J\t\u007f\"\t%\"\u0002\u0016\t\u0015\u001dQq\u0002\u000b\u0004\u0019\u0016%\u0001b\u0002)\u0006\u0004\u0001\u0007Q1\u0002\t\u0007+I#\t0\"\u0004\u0011\u0007A)y\u0001\u0002\u0004W\u000b\u0007\u0011\ra\u0005\u0005\t\u0007S\"y\b\"\u0011\u0006\u0014U\u0011QQ\u0003\t\u0006\u0019\r=D\u0011\u001d\u0005\t\u0007k\"y\b\"\u0015\u0006\u001aU!Q1DC\u0011)!)i\"b\t\u0006&\u0015\u001d\u0002C\u0002\u0007\u0001\t\u0013+y\u0002E\u0002\u0011\u000bC!qAZC\f\u0005\u0004!Y\r\u0003\u0005\u0004\u0004\u0016]\u0001\u0019AC\u000f\u0011!\tY$b\u0006A\u0002\tM\u0007\u0002CAS\u000b/\u0001\r!\"\u000b\u0011\u0011\u0005\u001d\u00181\u001bCE\u000b?A\u0001\"\"\f\u00022\u0012%QqF\u0001\u000bEV4g-\u001a:TSj,G\u0003\u0002Bj\u000bcAqAOC\u0016\u0001\u0004\u0011\u0019\u000e\u000b\u0003\u0006,\u0015U\u0002cA\u000b\u00068%\u0019Q\u0011\b\u0004\u0003\r%tG.\u001b8f\u0011!)i$!-\u0005\n\u0015}\u0012a\u00038vY2$v.R7qif,b!\"\u0011\u0006H\u0015-C\u0003BC\"\u000b\u001b\u0002b\u0001\u0004\u0001\u0006F\u0015%\u0003c\u0001\t\u0006H\u00111!#b\u000fC\u0002M\u00012\u0001EC&\t\u0019iR1\bb\u0001'!AQqJC\u001e\u0001\u0004)\u0019%A\u0001nQ\u0011)Y$\"\u000e\t\u0011\u0015U\u0013\u0011\u0017C\u0005\u000b/\n\u0001b[3fa\nKGo\u001d\u000b\u0007\u0005',I&b\u0017\t\u0011\t=W1\u000ba\u0001\u0005'D\u0001\"\"\u0018\u0006T\u0001\u0007!1[\u0001\u0005W\u0016,\u0007OB\u0004\u0006b\u0005EF!b\u0019\u0003%M+'/[1mSj\fG/[8o!J|\u00070_\u000b\u0007\u000bK*\t(\"\u001e\u0014\u000b\u0015}\u00131\\\u0013\t\u0017\u0015%Tq\fBA\u0002\u0013%Q1N\u0001\u0005_JLw-\u0006\u0002\u0006nA1A\u0002AC8\u000bg\u00022\u0001EC9\t\u0019\u0011Rq\fb\u0001'A\u0019\u0001#\"\u001e\u0005\ru)yF1\u0001\u0014\u0011-)I(b\u0018\u0003\u0002\u0004%I!b\u001f\u0002\u0011=\u0014\u0018nZ0%KF$2\u0001TC?\u0011)\u0019y.b\u001e\u0002\u0002\u0003\u0007QQ\u000e\u0005\f\u000b\u0003+yF!A!B\u0013)i'A\u0003pe&<\u0007\u0005\u000b\u0003\u0006��\u0015\u0015\u0005cA\u000b\u0006\b&\u0019Q\u0011\u0012\u0004\u0003\u0013Q\u0014\u0018M\\:jK:$\bbB\u001c\u0006`\u0011\u0005QQ\u0012\u000b\u0005\u000b\u001f+\t\n\u0005\u0005\u0002h\u0016}SqNC:\u0011!)I'b#A\u0002\u00155\u0004\u0002CCK\u000b?\"I!b&\u0002\u0017]\u0014\u0018\u000e^3PE*,7\r\u001e\u000b\u0004\u0019\u0016e\u0005\u0002CCN\u000b'\u0003\r!\"(\u0002\u0007=,H\u000f\u0005\u0003\u0006 \u0016\u0015VBACQ\u0015\u0011)\u0019Ka*\u0002\u0005%|\u0017\u0002BCT\u000bC\u0013!c\u00142kK\u000e$x*\u001e;qkR\u001cFO]3b[\"AQ1VC0\t\u0013)i+\u0001\u0006sK\u0006$wJ\u00196fGR$2\u0001TCX\u0011!)\t,\"+A\u0002\u0015M\u0016AA5o!\u0011)y*\".\n\t\u0015]V\u0011\u0015\u0002\u0012\u001f\nTWm\u0019;J]B,Ho\u0015;sK\u0006l\u0007\u0002\u0003BN\u000b?\"I!b/\u0015\u0005\u0005m\u0007fBC0\u000b\u007fSWQ\u0019\t\u0004+\u0015\u0005\u0017bACb\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\n\u0012\u0010\u0002\u0005!Q!1TAY\u0003\u0003%IA!(\t\u000f\r\u001d\u0002\u0001\"\u0005\u0006LR9A%\"4\u0006P\u0016E\u0007B\u00020\u0006J\u0002\u0007q\u0002C\u0004\u0002\u0006\u0016%\u0007\u0019\u0001\u001f\t\u000f\u0005mR\u0011\u001aa\u0001y!9QQ\u001b\u0001\u0005\u0012\u0015m\u0016\u0001D<sSR,'+\u001a9mC\u000e,\u0007bBB5\u0001\u0011\u0005Q\u0011\\\u000b\u0003\u000b7\u0004B\u0001DB8I!9Qq\u001c\u0001\u0005\u0002\u0015\u0005\u0018AB7fe\u001e,G-\u0006\u0003\u0006d\u0016-H\u0003BCs\u000bc$B!b:\u0006nB)A\u0002A\b\u0006jB\u0019\u0001#b;\u0005\r\u0019,iN1\u0001h\u0011!\u0011\u0019$\"8A\u0002\u0015=\bcBAU\u0005\u000fyQ\u0011\u001e\u0005\t\u0007\u0007+i\u000e1\u0001\u0006h\"91Q\u000f\u0001\u0005\u0012\u0015UX\u0003BC|\u000b{$\u0002\"\"?\u0006��\u001a\u0005a1\u0001\t\u0006\u0019\u0001yQ1 \t\u0004!\u0015uHA\u00024\u0006t\n\u0007q\r\u0003\u0005\u0004\u0004\u0016M\b\u0019AC}\u0011\u001d\tY$b=A\u0002qB\u0001\"!*\u0006t\u0002\u0007aQ\u0001\t\b\u0003S\u000b\u0019nDC~\u0011\u001d1I\u0001\u0001C!\r\u0017\t1\u0001]1s+\u0005y\u0003f\u0002\u0001\u0007\u0010\u0019Ua\u0011\u0004\t\u0004+\u0019E\u0011b\u0001D\n\r\t)B-\u001a9sK\u000e\fG/\u001a3J]\",'/\u001b;b]\u000e,\u0017E\u0001D\f\u0003M#\u0006.\u001a\u0011j[BdW-\\3oi\u0006$\u0018n\u001c8!I\u0016$\u0018-\u001b7tA=4\u0007%[7nkR\f'\r\\3!Q\u0006\u001c\b\u000eI7baN\u0004S.Y6fA%t\u0007.\u001a:ji&tw\r\t4s_6\u0004C\u000f[3nAUtw/[:f]\u0005\u0012a1D\u0001\u0007e9\n\u0014G\f\u0019)\r\u0001)yL[Cc\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashMap.class */
public class HashMap<A, B> extends AbstractMap<A, B> implements Serializable, CustomParallelizable<Tuple2<A, B>, ParHashMap<A, B>> {
    public static final long serialVersionUID = 2;

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashMap$HashMap1.class */
    public static class HashMap1<A, B> extends HashMap<A, B> {
        private final int hash;
        private final A key;

        /* renamed from: kv */
        private Tuple2<A, B> f1546kv;
        private final B value;

        public HashMap1(A a, int i, B b, Tuple2<A, B> tuple2) {
            this.key = a;
            this.hash = i;
            this.value = b;
            this.f1546kv = tuple2;
        }

        public int computeHashFor(A a) {
            return computeHash(a);
        }

        public Tuple2<A, B> ensurePair() {
            if (m159kv() == null) {
                kv_$eq(new Tuple2<>(key(), value()));
            }
            return m159kv();
        }

        @Override // scala.collection.immutable.HashMap
        public HashMap<A, B> filter0(Function1<Tuple2<A, B>, Object> function1, boolean z, int i, HashMap<A, B>[] hashMapArr, int i2) {
            return BoxesRunTime.unboxToBoolean(function1.apply(ensurePair())) ^ z ? this : null;
        }

        @Override // scala.collection.immutable.HashMap, scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<Tuple2<A, B>, U> function1) {
            function1.apply(ensurePair());
        }

        @Override // scala.collection.immutable.HashMap
        public Option<B> get0(A a, int i, int i2) {
            Some some;
            if (i == hash()) {
                A key = key();
                if (a == key ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, key) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, key) : a.equals(key)) {
                    some = new Some(value());
                    return some;
                }
            }
            some = None$.MODULE$;
            return some;
        }

        public int getHash() {
            return hash();
        }

        public A getKey() {
            return key();
        }

        public int hash() {
            return this.hash;
        }

        @Override // scala.collection.immutable.HashMap, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<Tuple2<A, B>> iterator() {
            return Iterator$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new Tuple2[]{ensurePair()}));
        }

        public A key() {
            return this.key;
        }

        /* renamed from: kv */
        public Tuple2<A, B> m159kv() {
            return this.f1546kv;
        }

        public void kv_$eq(Tuple2<A, B> tuple2) {
            this.f1546kv = tuple2;
        }

        @Override // scala.collection.immutable.HashMap
        public <B1> HashMap<A, B1> merge0(HashMap<A, B1> hashMap, int i, Merger<A, B1> merger) {
            return hashMap.updated0(key(), hash(), i, value(), m159kv(), merger.invert());
        }

        @Override // scala.collection.immutable.HashMap
        public HashMap<A, B> removed0(A a, int i, int i2) {
            HashMap1<A, B> hashMap1;
            if (i == hash()) {
                A key = key();
                if (a == key ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, key) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, key) : a.equals(key)) {
                    hashMap1 = HashMap$.MODULE$.empty();
                    return hashMap1;
                }
            }
            hashMap1 = this;
            return hashMap1;
        }

        @Override // scala.collection.immutable.HashMap, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return 1;
        }

        @Override // scala.collection.immutable.HashMap
        public <B1> HashMap<A, B1> updated0(A a, int i, int i2, B1 b1, Tuple2<A, B1> tuple2, Merger<A, B1> merger) {
            HashMap hashMap;
            if (i == hash()) {
                A key = key();
                if (a == key ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, key) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, key) : a.equals(key)) {
                    if (merger == null) {
                        hashMap = value() == b1 ? this : new HashMap1(a, i, b1, tuple2);
                    } else {
                        Tuple2<A, B1> apply = merger.apply(m159kv(), tuple2);
                        hashMap = new HashMap1(apply.mo269_1(), i, apply.mo268_2(), apply);
                    }
                    return hashMap;
                }
            }
            hashMap = i != hash() ? HashMap$.MODULE$.scala$collection$immutable$HashMap$$makeHashTrieMap(hash(), this, i, new HashMap1(a, i, b1, tuple2), i2, 2) : new HashMapCollision1(i, ListMap$.MODULE$.empty().updated((ListMap<A, B>) key(), (A) value()).updated((ListMap<A, B1>) a, (A) b1));
            return hashMap;
        }

        public B value() {
            return this.value;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashMap$HashMapCollision1.class */
    public static class HashMapCollision1<A, B> extends HashMap<A, B> {
        private final int hash;
        private final ListMap<A, B> kvs;

        public HashMapCollision1(int i, ListMap<A, B> listMap) {
            this.hash = i;
            this.kvs = listMap;
        }

        private final HashMapCollision1 newhm$1(ListMap listMap) {
            return new HashMapCollision1(hash(), listMap);
        }

        @Override // scala.collection.immutable.HashMap
        public HashMap<A, B> filter0(Function1<Tuple2<A, B>, Object> function1, boolean z, int i, HashMap<A, B>[] hashMapArr, int i2) {
            HashMap hashMap;
            ListMap listMap = (ListMap) (z ? kvs().filterNot((Function1) function1) : kvs().filter(function1));
            int size = listMap.size();
            if (size == 0) {
                hashMap = null;
            } else if (size != 1) {
                hashMap = size == kvs().size() ? this : new HashMapCollision1(hash(), listMap);
            } else {
                Tuple2<A, B> head = listMap.head();
                if (head == null) {
                    throw new MatchError(head);
                }
                Tuple3 tuple3 = new Tuple3(head, head.mo269_1(), head.mo268_2());
                hashMap = new HashMap1(tuple3.mo239_2(), hash(), tuple3.mo238_3(), (Tuple2) tuple3.mo240_1());
            }
            return hashMap;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // scala.collection.immutable.HashMap, scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<Tuple2<A, B>, U> function1) {
            kvs().foreach(function1);
        }

        @Override // scala.collection.immutable.HashMap
        public Option<B> get0(A a, int i, int i2) {
            return i == hash() ? kvs().get(a) : None$.MODULE$;
        }

        public int hash() {
            return this.hash;
        }

        @Override // scala.collection.immutable.HashMap, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<Tuple2<A, B>> iterator() {
            return kvs().iterator();
        }

        public ListMap<A, B> kvs() {
            return this.kvs;
        }

        @Override // scala.collection.immutable.HashMap
        public <B1> HashMap<A, B1> merge0(HashMap<A, B1> hashMap, int i, Merger<A, B1> merger) {
            ObjectRef create = ObjectRef.create(hashMap);
            kvs().foreach(new HashMap$HashMapCollision1$$anonfun$merge0$1(this, i, merger, create));
            return (HashMap) create.elem;
        }

        @Override // scala.collection.immutable.HashMap
        public HashMap<A, B> removed0(A a, int i, int i2) {
            HashMap hashMap;
            if (i == hash()) {
                ListMap<A, B> $minus = kvs().$minus((ListMap<A, B>) a);
                int size = $minus.size();
                if (size == 0) {
                    hashMap = HashMap$.MODULE$.empty();
                } else if (size == 1) {
                    Tuple2 tuple2 = (Tuple2) $minus.head();
                    hashMap = new HashMap1(tuple2.mo269_1(), i, tuple2.mo268_2(), tuple2);
                } else if (size != kvs().size()) {
                    hashMap = new HashMapCollision1(i, $minus);
                }
                return hashMap;
            }
            hashMap = this;
            return hashMap;
        }

        @Override // scala.collection.immutable.HashMap, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return kvs().size();
        }

        @Override // scala.collection.immutable.HashMap
        public Seq<HashMap<A, B>> split() {
            Tuple2<Traversable<A>, Traversable<A>> splitAt = kvs().splitAt(kvs().size() / 2);
            if (splitAt != null) {
                Tuple2 tuple2 = new Tuple2(splitAt.mo269_1(), splitAt.mo268_2());
                return List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new HashMapCollision1[]{newhm$1((ListMap) tuple2.mo269_1()), newhm$1((ListMap) tuple2.mo268_2())}));
            }
            throw new MatchError(splitAt);
        }

        @Override // scala.collection.immutable.HashMap
        public <B1> HashMap<A, B1> updated0(A a, int i, int i2, B1 b1, Tuple2<A, B1> tuple2, Merger<A, B1> merger) {
            return i == hash() ? (merger == null || !kvs().contains(a)) ? new HashMapCollision1(i, kvs().updated((ListMap<A, B>) a, (A) b1)) : new HashMapCollision1(i, kvs().$plus((Tuple2) merger.apply(new Tuple2<>(a, kvs().apply(a)), tuple2))) : HashMap$.MODULE$.scala$collection$immutable$HashMap$$makeHashTrieMap(hash(), this, i, new HashMap1(a, i, b1, tuple2), i2, size() + 1);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashMap$HashTrieMap.class */
    public static class HashTrieMap<A, B> extends HashMap<A, B> {
        private final int bitmap;
        private final HashMap<A, B>[] elems;
        private final int size0;

        public HashTrieMap(int i, HashMap<A, B>[] hashMapArr, int i2) {
            this.bitmap = i;
            this.elems = hashMapArr;
            this.size0 = i2;
        }

        private int posOf(int i, int i2) {
            int i3 = -1;
            while (i >= 0) {
                i3++;
                int i4 = i;
                if ((i2 & 1) != 0) {
                    i4 = i - 1;
                }
                i2 >>>= 1;
                i = i4;
            }
            return i3;
        }

        public int bitmap() {
            return this.bitmap;
        }

        public HashMap<A, B>[] elems() {
            return this.elems;
        }

        @Override // scala.collection.immutable.HashMap
        public HashMap<A, B> filter0(Function1<Tuple2<A, B>, Object> function1, boolean z, int i, HashMap<A, B>[] hashMapArr, int i2) {
            int i3;
            HashTrieMap hashTrieMap;
            int i4 = i2;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                i3 = i7;
                if (i5 >= elems().length) {
                    break;
                }
                HashMap<A, B> filter0 = elems()[i5].filter0(function1, z, i + 5, hashMapArr, i4);
                int i8 = i4;
                int i9 = i6;
                int i10 = i3;
                if (filter0 != null) {
                    hashMapArr[i4] = filter0;
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
                hashTrieMap = null;
            } else if (i6 == size0()) {
                hashTrieMap = this;
            } else if (i4 != i2 + 1 || (hashMapArr[i2] instanceof HashTrieMap)) {
                int i11 = i4 - i2;
                HashMap[] hashMapArr2 = new HashMap[i11];
                System.arraycopy(hashMapArr, i2, hashMapArr2, 0, i11);
                hashTrieMap = new HashTrieMap(i11 == elems().length ? bitmap() : HashMap$.MODULE$.scala$collection$immutable$HashMap$$keepBits(bitmap(), i3), hashMapArr2, i6);
            } else {
                hashTrieMap = hashMapArr[i2];
            }
            return hashTrieMap;
        }

        @Override // scala.collection.immutable.HashMap, scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<Tuple2<A, B>, U> function1) {
            for (int i = 0; i < elems().length; i++) {
                elems()[i].foreach(function1);
            }
        }

        @Override // scala.collection.immutable.HashMap
        public Option<B> get0(A a, int i, int i2) {
            None$ none$;
            int i3 = (i >>> i2) & 31;
            int i4 = 1 << i3;
            if (bitmap() == -1) {
                none$ = elems()[i3 & 31].get0(a, i, i2 + 5);
            } else if ((bitmap() & i4) != 0) {
                none$ = elems()[Integer.bitCount(bitmap() & (i4 - 1))].get0(a, i, i2 + 5);
            } else {
                none$ = None$.MODULE$;
            }
            return none$;
        }

        @Override // scala.collection.immutable.HashMap, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<Tuple2<A, B>> iterator() {
            return new TrieIterator<Tuple2<A, B>>(this) { // from class: scala.collection.immutable.HashMap$HashTrieMap$$anon$1
                {
                    super(this.elems());
                }

                @Override // scala.collection.immutable.TrieIterator
                public final Tuple2<A, B> getElem(Object obj) {
                    return ((HashMap.HashMap1) obj).ensurePair();
                }
            };
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // scala.collection.immutable.HashMap
        public <B1> HashMap<A, B1> merge0(HashMap<A, B1> hashMap, int i, Merger<A, B1> merger) {
            HashTrieMap hashTrieMap;
            if (hashMap instanceof HashMap1) {
                HashMap1 hashMap1 = (HashMap1) hashMap;
                hashTrieMap = updated0(hashMap1.key(), hashMap1.hash(), i, hashMap1.value(), hashMap1.m159kv(), merger);
            } else if (hashMap instanceof HashTrieMap) {
                HashTrieMap hashTrieMap2 = (HashTrieMap) hashMap;
                HashMap[] elems = elems();
                HashMap<A, B>[] elems2 = hashTrieMap2.elems();
                int bitmap = bitmap();
                int bitmap2 = hashTrieMap2.bitmap();
                int bitCount = Integer.bitCount(bitmap | bitmap2);
                HashMap[] hashMapArr = new HashMap[bitCount];
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < bitCount; i5++) {
                    int i6 = ((bitmap - 1) & bitmap) ^ bitmap;
                    int i7 = ((bitmap2 - 1) & bitmap2) ^ bitmap2;
                    if (i6 == i7) {
                        HashMap<A, B1> merge0 = elems[i3].merge0(elems2[i4], i + 5, merger);
                        i2 += merge0.size();
                        hashMapArr[i5] = merge0;
                        bitmap &= i6 ^ (-1);
                        bitmap2 &= i7 ^ (-1);
                        i4++;
                    } else if (HashMap$.MODULE$.unsignedCompare(i6 - 1, i7 - 1)) {
                        HashMap hashMap2 = elems[i3];
                        i2 += hashMap2.size();
                        hashMapArr[i5] = hashMap2;
                        bitmap &= i6 ^ (-1);
                    } else {
                        HashMap<A, B> hashMap3 = elems2[i4];
                        i2 += hashMap3.size();
                        hashMapArr[i5] = hashMap3;
                        bitmap2 &= i7 ^ (-1);
                        i4++;
                    }
                    i3++;
                }
                hashTrieMap = new HashTrieMap(hashTrieMap2.bitmap() | bitmap(), hashMapArr, i2);
            } else if (hashMap instanceof HashMapCollision1) {
                hashTrieMap = hashMap.merge0(this, i, merger.invert());
            } else if (!(hashMap instanceof HashMap)) {
                throw package$.MODULE$.error("section supposed to be unreachable.");
            } else {
                hashTrieMap = this;
            }
            return hashTrieMap;
        }

        @Override // scala.collection.immutable.HashMap
        public HashMap<A, B> removed0(A a, int i, int i2) {
            HashTrieMap hashTrieMap;
            int i3 = 1 << ((i >>> i2) & 31);
            int bitCount = Integer.bitCount(bitmap() & (i3 - 1));
            if ((bitmap() & i3) != 0) {
                HashMap<A, B> hashMap = elems()[bitCount];
                hashTrieMap = hashMap.removed0(a, i, i2 + 5);
                if (hashTrieMap != hashMap) {
                    if (hashTrieMap.isEmpty()) {
                        int bitmap = bitmap() ^ i3;
                        if (bitmap != 0) {
                            int length = elems().length - 1;
                            HashMap<A, B>[] hashMapArr = new HashMap[length];
                            Array$.MODULE$.copy(elems(), 0, hashMapArr, 0, bitCount);
                            Array$.MODULE$.copy(elems(), bitCount + 1, hashMapArr, bitCount, (elems().length - bitCount) - 1);
                            hashTrieMap = (length != 1 || (hashMapArr[0] instanceof HashTrieMap)) ? new HashTrieMap(bitmap, hashMapArr, size() - hashMap.size()) : hashMapArr[0];
                        } else {
                            hashTrieMap = HashMap$.MODULE$.empty();
                        }
                    } else if (elems().length != 1 || (hashTrieMap instanceof HashTrieMap)) {
                        HashMap[] hashMapArr2 = new HashMap[elems().length];
                        Array$.MODULE$.copy(elems(), 0, hashMapArr2, 0, elems().length);
                        hashMapArr2[bitCount] = hashTrieMap;
                        hashTrieMap = new HashTrieMap(bitmap(), hashMapArr2, size() + (hashTrieMap.size() - hashMap.size()));
                    }
                    return hashTrieMap;
                }
            }
            hashTrieMap = this;
            return hashTrieMap;
        }

        @Override // scala.collection.immutable.HashMap, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return size0();
        }

        public int size0() {
            return this.size0;
        }

        @Override // scala.collection.immutable.HashMap
        public Seq<HashMap<A, B>> split() {
            List<A> list;
            if (size() == 1) {
                list = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new HashTrieMap[]{this}));
            } else {
                int bitCount = Integer.bitCount(bitmap());
                if (bitCount > 1) {
                    int i = bitCount / 2;
                    int posOf = posOf(i, bitmap());
                    int bitmap = bitmap();
                    int bitmap2 = bitmap();
                    Tuple2<Object, Object> splitAt = Predef$.MODULE$.refArrayOps(elems()).splitAt(i);
                    if (splitAt == null) {
                        throw new MatchError(splitAt);
                    }
                    Tuple2 tuple2 = new Tuple2(splitAt.mo269_1(), splitAt.mo268_2());
                    HashMap[] hashMapArr = (HashMap[]) tuple2.mo269_1();
                    HashMap[] hashMapArr2 = (HashMap[]) tuple2.mo268_2();
                    list = List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new HashTrieMap[]{new HashTrieMap(bitmap & ((-1) << posOf), hashMapArr, BoxesRunTime.unboxToInt(Predef$.MODULE$.refArrayOps(hashMapArr).foldLeft(BoxesRunTime.boxToInteger(0), new HashMap$HashTrieMap$$anonfun$2(this)))), new HashTrieMap(((-1) >>> (32 - posOf)) & bitmap2, hashMapArr2, BoxesRunTime.unboxToInt(Predef$.MODULE$.refArrayOps(hashMapArr2).foldLeft(BoxesRunTime.boxToInteger(0), new HashMap$HashTrieMap$$anonfun$3(this))))}));
                } else {
                    list = elems()[0].split();
                }
            }
            return list;
        }

        @Override // scala.collection.immutable.HashMap
        public <B1> HashMap<A, B1> updated0(A a, int i, int i2, B1 b1, Tuple2<A, B1> tuple2, Merger<A, B1> merger) {
            HashTrieMap<A, B> hashTrieMap;
            int i3 = 1 << ((i >>> i2) & 31);
            int bitCount = Integer.bitCount(bitmap() & (i3 - 1));
            if ((bitmap() & i3) != 0) {
                HashMap<A, B1> hashMap = elems()[bitCount];
                HashMap<A, B1> updated0 = hashMap.updated0(a, i, i2 + 5, b1, tuple2, merger);
                if (updated0 == hashMap) {
                    hashTrieMap = this;
                } else {
                    HashMap[] hashMapArr = new HashMap[elems().length];
                    Array$.MODULE$.copy(elems(), 0, hashMapArr, 0, elems().length);
                    hashMapArr[bitCount] = updated0;
                    hashTrieMap = new HashTrieMap<>(bitmap(), hashMapArr, size() + (updated0.size() - hashMap.size()));
                }
            } else {
                HashMap[] hashMapArr2 = new HashMap[elems().length + 1];
                Array$.MODULE$.copy(elems(), 0, hashMapArr2, 0, bitCount);
                hashMapArr2[bitCount] = new HashMap1(a, i, b1, tuple2);
                Array$.MODULE$.copy(elems(), bitCount, hashMapArr2, bitCount + 1, elems().length - bitCount);
                hashTrieMap = new HashTrieMap<>(i3 | bitmap(), hashMapArr2, size() + 1);
            }
            return hashTrieMap;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashMap$Merger.class */
    public static abstract class Merger<A, B> {
        public abstract Tuple2<A, B> apply(Tuple2<A, B> tuple2, Tuple2<A, B> tuple22);

        public abstract Merger<A, B> invert();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashMap$SerializationProxy.class */
    public static class SerializationProxy<A, B> implements Serializable {
        public static final long serialVersionUID = 2;
        private transient HashMap<A, B> scala$collection$immutable$HashMap$SerializationProxy$$orig;

        public SerializationProxy(HashMap<A, B> hashMap) {
            this.scala$collection$immutable$HashMap$SerializationProxy$$orig = hashMap;
        }

        private void readObject(ObjectInputStream objectInputStream) {
            HashMap$ hashMap$ = HashMap$.MODULE$;
            scala$collection$immutable$HashMap$SerializationProxy$$orig_$eq(HashMap$EmptyHashMap$.MODULE$);
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
                    scala$collection$immutable$HashMap$SerializationProxy$$orig_$eq(scala$collection$immutable$HashMap$SerializationProxy$$orig().updated((HashMap<A, B>) ((A) objectInputStream.readObject()), (A) objectInputStream.readObject()));
                    i++;
                    start += step;
                } else {
                    return;
                }
            }
        }

        private Object readResolve() {
            return scala$collection$immutable$HashMap$SerializationProxy$$orig();
        }

        private void writeObject(ObjectOutputStream objectOutputStream) {
            objectOutputStream.writeInt(scala$collection$immutable$HashMap$SerializationProxy$$orig().size());
            scala$collection$immutable$HashMap$SerializationProxy$$orig().withFilter(new HashMap$SerializationProxy$$anonfun$writeObject$1(this)).foreach(new HashMap$SerializationProxy$$anonfun$writeObject$2(this, objectOutputStream));
        }

        public HashMap<A, B> scala$collection$immutable$HashMap$SerializationProxy$$orig() {
            return this.scala$collection$immutable$HashMap$SerializationProxy$$orig;
        }

        public void scala$collection$immutable$HashMap$SerializationProxy$$orig_$eq(HashMap<A, B> hashMap) {
            this.scala$collection$immutable$HashMap$SerializationProxy$$orig = hashMap;
        }
    }

    public HashMap() {
        CustomParallelizable.Cclass.$init$(this);
    }

    public static String bitString(int i, String str) {
        return HashMap$.MODULE$.bitString(i, str);
    }

    public static IndexedSeq<Object> bits(int i) {
        return HashMap$.MODULE$.bits(i);
    }

    public static <A, B> CanBuildFrom<HashMap<?, ?>, Tuple2<A, B>, HashMap<A, B>> canBuildFrom() {
        return HashMap$.MODULE$.canBuildFrom();
    }

    public static int complement(int i) {
        return HashMap$.MODULE$.complement(i);
    }

    public static boolean hasMatch(int i, int i2, int i3) {
        return HashMap$.MODULE$.hasMatch(i, i2, i3);
    }

    public static int highestOneBit(int i) {
        return HashMap$.MODULE$.highestOneBit(i);
    }

    public static int mask(int i, int i2) {
        return HashMap$.MODULE$.mask(i, i2);
    }

    public static boolean shorter(int i, int i2) {
        return HashMap$.MODULE$.shorter(i, i2);
    }

    public static boolean unsignedCompare(int i, int i2) {
        return HashMap$.MODULE$.unsignedCompare(i, i2);
    }

    public static boolean zero(int i, int i2) {
        return HashMap$.MODULE$.zero(i, i2);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
    public HashMap<A, B> $minus(A a) {
        return removed0(a, computeHash(a), 0);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <B1> HashMap<A, B1> $plus(Tuple2<A, B1> tuple2) {
        return updated0(tuple2.mo269_1(), computeHash(tuple2.mo269_1()), 0, tuple2.mo268_2(), tuple2, null);
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.MapLike
    public <B1> HashMap<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq) {
        return (HashMap) $plus((Tuple2) tuple2).$plus((Tuple2) tuple22).$plus$plus(seq, HashMap$.MODULE$.canBuildFrom());
    }

    public int computeHash(A a) {
        return improve(elemHashCode(a));
    }

    public int elemHashCode(A a) {
        return ScalaRunTime$.MODULE$.hash(a);
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public HashMap<A, B> empty() {
        return HashMap$.MODULE$.empty();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public HashMap<A, B> filter(Function1<Tuple2<A, B>, Object> function1) {
        HashMap$ hashMap$ = HashMap$.MODULE$;
        int size = size();
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        HashMap<A, B>[] hashMapArr = new HashMap[richInt$.min$extension(size + 6, 224)];
        HashMap$ hashMap$2 = HashMap$.MODULE$;
        HashMap<A, B> filter0 = filter0(function1, false, 0, hashMapArr, 0);
        HashMap<A, B> hashMap = filter0;
        if (filter0 == null) {
            hashMap = hashMap$2.empty();
        }
        return hashMap;
    }

    public HashMap<A, B> filter0(Function1<Tuple2<A, B>, Object> function1, boolean z, int i, HashMap<A, B>[] hashMapArr, int i2) {
        return null;
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
    public HashMap<A, B> filterNot(Function1<Tuple2<A, B>, Object> function1) {
        HashMap$ hashMap$ = HashMap$.MODULE$;
        int size = size();
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        HashMap<A, B>[] hashMapArr = new HashMap[richInt$.min$extension(size + 6, 224)];
        HashMap$ hashMap$2 = HashMap$.MODULE$;
        HashMap<A, B> filter0 = filter0(function1, true, 0, hashMapArr, 0);
        HashMap<A, B> hashMap = filter0;
        if (filter0 == null) {
            hashMap = hashMap$2.empty();
        }
        return hashMap;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Tuple2<A, B>, U> function1) {
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<B> get(A a) {
        return get0(a, computeHash(a), 0);
    }

    public Option<B> get0(A a, int i, int i2) {
        return None$.MODULE$;
    }

    public final int improve(int i) {
        int i2 = i + ((i << 9) ^ (-1));
        int i3 = i2 ^ (i2 >>> 14);
        int i4 = i3 + (i3 << 4);
        return i4 ^ (i4 >>> 10);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<A, B>> iterator() {
        return (Iterator<Tuple2<A, B>>) Iterator$.MODULE$.empty();
    }

    public <B1> HashMap<A, B1> merge0(HashMap<A, B1> hashMap, int i, Merger<A, B1> merger) {
        return hashMap;
    }

    public <B1> HashMap<A, B1> merged(HashMap<A, B1> hashMap, Function2<Tuple2<A, B1>, Tuple2<A, B1>, Tuple2<A, B1>> function2) {
        return merge0(hashMap, 0, HashMap$.MODULE$.scala$collection$immutable$HashMap$$liftMerger(function2));
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.Parallelizable
    public ParHashMap<A, B> par() {
        return ParHashMap$.MODULE$.fromTrie(this);
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Tuple2<A, B>, ParHashMap<A, B>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    public HashMap<A, B> removed0(A a, int i, int i2) {
        return this;
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return 0;
    }

    public Seq<HashMap<A, B>> split() {
        return (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new HashMap[]{this}));
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMap, scala.collection.MapLike
    public <B1> HashMap<A, B1> updated(A a, B1 b1) {
        return updated0(a, computeHash(a), 0, b1, null, null);
    }

    public <B1> HashMap<A, B1> updated0(A a, int i, int i2, B1 b1, Tuple2<A, B1> tuple2, Merger<A, B1> merger) {
        return new HashMap1(a, i, b1, tuple2);
    }

    public Object writeReplace() {
        return new SerializationProxy(this);
    }
}
