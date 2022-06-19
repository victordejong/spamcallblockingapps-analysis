package scala.p029io;

import java.io.File;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.URI;
import java.net.URL;
import java.util.Objects;
import scala.Console$;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
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
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.immutable.Map;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.StringOps;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.StringBuilder;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\rEw!B\u0001\u0003\u0011\u00039\u0011AB*pkJ\u001cWM\u0003\u0002\u0004\t\u0005\u0011\u0011n\u001c\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001\u0001C\u0001\u0005\n\u001b\u0005\u0011a!\u0002\u0006\u0003\u0011\u0003Y!AB*pkJ\u001cWm\u0005\u0002\n\u0019A\u0011QBD\u0007\u0002\t%\u0011q\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000bEIA\u0011\u0001\n\u0002\rqJg.\u001b;?)\u00059\u0001b\u0002\u000b\n\u0005\u0004%\t!F\u0001\u000f\t\u00164\u0017-\u001e7u\u0005V47+\u001b>f+\u00051\u0002CA\u0007\u0018\u0013\tABAA\u0002J]RDaAG\u0005!\u0002\u00131\u0012a\u0004#fM\u0006,H\u000e\u001e\"vMNK'0\u001a\u0011\t\u000bqIA\u0011A\u000f\u0002\u000bM$H-\u001b8\u0016\u0003y\u0001\"\u0001C\u0010\n\u0005\u0001\u0012!A\u0004\"vM\u001a,'/\u001a3T_V\u00148-\u001a\u0005\u0006E%!\taI\u0001\rMJ|W.\u0013;fe\u0006\u0014G.\u001a\u000b\u0004I\t%\u0005C\u0001\u0005&\r\u0015Q!!!\u0001''\r)Cb\n\t\u0004Q-rcBA\u0007*\u0013\tQC!A\u0004qC\u000e\\\u0017mZ3\n\u00051j#\u0001C%uKJ\fGo\u001c:\u000b\u0005)\"\u0001CA\u00070\u0013\t\u0001DA\u0001\u0003DQ\u0006\u0014\b\"B\t&\t\u0003\u0011D#\u0001\u0013\t\u000fQ*#\u0019!D\tk\u0005!\u0011\u000e^3s+\u00059\u0003bB\u001c&\u0001\u0004%\t\u0001O\u0001\u0006I\u0016\u001c8M]\u000b\u0002sA\u0011!(\u0010\b\u0003\u001bmJ!\u0001\u0010\u0003\u0002\rA\u0013X\rZ3g\u0013\tqtH\u0001\u0004TiJLgn\u001a\u0006\u0003y\u0011Aq!Q\u0013A\u0002\u0013\u0005!)A\u0005eKN\u001c'o\u0018\u0013fcR\u00111I\u0012\t\u0003\u001b\u0011K!!\u0012\u0003\u0003\tUs\u0017\u000e\u001e\u0005\b\u000f\u0002\u000b\t\u00111\u0001:\u0003\rAH%\r\u0005\u0007\u0013\u0016\u0002\u000b\u0015B\u001d\u0002\r\u0011,7o\u0019:!\u0011\u001dYU\u00051A\u0005\u0002U\tqA\\3se>\u00148\u000fC\u0004NK\u0001\u0007I\u0011\u0001(\u0002\u00179,'O]8sg~#S-\u001d\u000b\u0003\u0007>Cqa\u0012'\u0002\u0002\u0003\u0007a\u0003\u0003\u0004RK\u0001\u0006KAF\u0001\t]\u0016\u0014(o\u001c:tA!91+\na\u0001\n\u0003)\u0012!\u00038xCJt\u0017N\\4t\u0011\u001d)V\u00051A\u0005\u0002Y\u000bQB\\<be:LgnZ:`I\u0015\fHCA\"X\u0011\u001d9E+!AA\u0002YAa!W\u0013!B\u00131\u0012A\u00038xCJt\u0017N\\4tA!)1,\nC\u00059\u00069A.\u001b8f\u001dVlGCA\u001d^\u0011\u0015q&\f1\u0001\u0017\u0003\u0011a\u0017N\\3\u0007\t\u0001,\u0003!\u0019\u0002\r\u0019&tW-\u0013;fe\u0006$xN]\n\u0004?\nD\u0007cA2gs5\tAM\u0003\u0002f\t\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\n\u0005\u001d$'\u0001E!cgR\u0014\u0018m\u0019;Ji\u0016\u0014\u0018\r^8s!\rA3&\u000f\u0005\u0006#}#\tA\u001b\u000b\u0002WB\u0011AnX\u0007\u0002K!1an\u0018Q\u0001\n=\f!a\u001d2\u0011\u0005A\u001cX\"A9\u000b\u0005I$\u0017aB7vi\u0006\u0014G.Z\u0005\u0003iF\u0014Qb\u0015;sS:<')^5mI\u0016\u0014\b\u0002\u0003\u001b`\u0011\u000b\u0007I\u0011\u0001<\u0016\u0003]\u00042\u0001\u000b=/\u0013\tIXF\u0001\tCk\u001a4WM]3e\u0013R,'/\u0019;pe\"A1p\u0018E\u0001B\u0003&q/A\u0003ji\u0016\u0014\b\u0005C\u0003~?\u0012\u0005a0A\u0005jg:+w\u000f\\5oKR\u0019q0!\u0002\u0011\u00075\t\t!C\u0002\u0002\u0004\u0011\u0011qAQ8pY\u0016\fg\u000e\u0003\u0004\u0002\bq\u0004\rAL\u0001\u0003G\"Dq!a\u0003`\t\u0003\ti!\u0001\u0003hKR\u001cG#A@\t\u000f\u0005Eq\f\"\u0001\u0002\u0014\u00059\u0001.Y:OKb$X#A@\t\u000f\u0005]q\f\"\u0001\u0002\u001a\u0005!a.\u001a=u)\t\tY\u0002\u0005\u0003\u0002\u001e\u0005\u001dRBAA\u0010\u0015\u0011\t\t#a\t\u0002\t1\fgn\u001a\u0006\u0003\u0003K\tAA[1wC&\u0019a(a\b\t\u000f\u0005-R\u0005\"\u0001\u0002.\u0005Aq-\u001a;MS:,7\u000fF\u0001i\u0011\u001d\t\t\"\nC\u0001\u0003'Aq!a\u0006&\t\u0003\t\u0019\u0004F\u0001/\r\u0019\t9$\n\u0001\u0002:\tQ\u0001k\\:ji&|g.\u001a:\u0014\u0007\u0005UB\u0002C\u0006\u0002>\u0005U\"\u0011!Q\u0001\n\u0005}\u0012aB3oG>$WM\u001d\t\u0004\u0011\u0005\u0005\u0013bAA\"\u0005\tA\u0001k\\:ji&|g\u000eC\u0004\u0012\u0003k!\t!a\u0012\u0015\t\u0005%\u00131\n\t\u0004Y\u0006U\u0002\u0002CA\u001f\u0003\u000b\u0002\r!a\u0010\t\u000fE\t)\u0004\"\u0001\u0002PQ\u0011\u0011\u0011\n\u0005\r\u0003\u000f\t)\u00041AA\u0002\u0013\u0005\u00111K\u000b\u0002]!a\u0011qKA\u001b\u0001\u0004\u0005\r\u0011\"\u0001\u0002Z\u000511\r[0%KF$2aQA.\u0011!9\u0015QKA\u0001\u0002\u0004q\u0003\u0002CA0\u0003k\u0001\u000b\u0015\u0002\u0018\u0002\u0007\rD\u0007\u0005C\u0005\u0002d\u0005U\u0002\u0019!C\u0001+\u0005\u0019\u0001o\\:\t\u0015\u0005\u001d\u0014Q\u0007a\u0001\n\u0003\tI'A\u0004q_N|F%Z9\u0015\u0007\r\u000bY\u0007\u0003\u0005H\u0003K\n\t\u00111\u0001\u0017\u0011!\ty'!\u000e!B\u00131\u0012\u0001\u00029pg\u0002B\u0011\"a\u001d\u00026\u0001\u0007I\u0011A\u000b\u0002\u000b\rd\u0017N\\3\t\u0015\u0005]\u0014Q\u0007a\u0001\n\u0003\tI(A\u0005dY&tWm\u0018\u0013fcR\u00191)a\u001f\t\u0011\u001d\u000b)(!AA\u0002YA\u0001\"a \u00026\u0001\u0006KAF\u0001\u0007G2Lg.\u001a\u0011\t\u0013\u0005\r\u0015Q\u0007a\u0001\n\u0003)\u0012\u0001B2d_2D!\"a\"\u00026\u0001\u0007I\u0011AAE\u0003!\u00197m\u001c7`I\u0015\fHcA\"\u0002\f\"Aq)!\"\u0002\u0002\u0003\u0007a\u0003\u0003\u0005\u0002\u0010\u0006U\u0002\u0015)\u0003\u0017\u0003\u0015\u00197m\u001c7!\u0011%\t\u0019*!\u000eA\u0002\u0013\u0005Q#\u0001\u0004uC\nLgn\u0019\u0005\u000b\u0003/\u000b)\u00041A\u0005\u0002\u0005e\u0015A\u0003;bE&t7m\u0018\u0013fcR\u00191)a'\t\u0011\u001d\u000b)*!AA\u0002YA\u0001\"a(\u00026\u0001\u0006KAF\u0001\bi\u0006\u0014\u0017N\\2!\u0011!\t9\"!\u000e\u0005\u0002\u0005MraBASK!\u0005\u0011qU\u0001\u0010%\u0016d\u0017\r_3e!>\u001c\u0018\u000e^5p]B\u0019A.!+\u0007\u000f\u0005-V\u0005#\u0001\u0002.\ny!+\u001a7bq\u0016$\u0007k\\:ji&|gn\u0005\u0003\u0002*\u0006}\u0002bB\t\u0002*\u0012\u0005\u0011\u0011\u0017\u000b\u0003\u0003OC\u0001\"!.\u0002*\u0012\u0005\u0011qW\u0001\u000bG\",7m[%oaV$H#B\"\u0002:\u0006m\u0006B\u00020\u00024\u0002\u0007a\u0003C\u0004\u0002>\u0006M\u0006\u0019\u0001\f\u0002\r\r|G.^7o\u000f\u001d\t\t-\nE\u0001\u0003\u0007\f\u0011CU3mCb,G\rU8tSRLwN\\3s!\ra\u0017Q\u0019\u0004\b\u0003\u000f,\u0003\u0012AAe\u0005E\u0011V\r\\1yK\u0012\u0004vn]5uS>tWM]\n\u0005\u0003\u000b\fI\u0005C\u0004\u0012\u0003\u000b$\t!!4\u0015\u0005\u0005\rwaBAiK!\u0005\u00111[\u0001\r\u001d>\u0004vn]5uS>tWM\u001d\t\u0004Y\u0006UgaBAlK!\u0005\u0011\u0011\u001c\u0002\r\u001d>\u0004vn]5uS>tWM]\n\u0005\u0003+\fI\u0005C\u0004\u0012\u0003+$\t!!8\u0015\u0005\u0005M\u0007\u0002CA\f\u0003+$\t%a\r\t\u000f\u0005\u001dQ\u0005\"\u0001\u0002T!1\u00111M\u0013\u0005\u0002UAq!a:&\t\u0003\tI/A\u0006sKB|'\u000f^#se>\u0014HcB\"\u0002l\u00065\u0018\u0011\u001f\u0005\b\u0003G\n)\u000f1\u0001\u0017\u0011\u001d\ty/!:A\u0002e\n1!\\:h\u0011)\t\u00190!:\u0011\u0002\u0003\u0007\u0011Q_\u0001\u0004_V$\b\u0003BA|\u0003wl!!!?\u000b\u0007\r\t\u0019#\u0003\u0003\u0002~\u0006e(a\u0003)sS:$8\u000b\u001e:fC6DqA!\u0001&\t\u0013\u0011\u0019!\u0001\u0004ta\u0006\u001cWm\u001d\u000b\u0004s\t\u0015\u0001b\u0002B\u0004\u0003\u007f\u0004\rAF\u0001\u0002]\"9!1B\u0013\u0005\u0002\t5\u0011A\u0002:fa>\u0014H\u000fF\u0004D\u0005\u001f\u0011\tBa\u0005\t\u000f\u0005\r$\u0011\u0002a\u0001-!9\u0011q\u001eB\u0005\u0001\u0004I\u0004\u0002CAz\u0005\u0013\u0001\r!!>\t\u000f\t]Q\u0005\"\u0001\u0003\u001a\u0005i!/\u001a9peR<\u0016M\u001d8j]\u001e$ra\u0011B\u000e\u0005;\u0011y\u0002C\u0004\u0002d\tU\u0001\u0019\u0001\f\t\u000f\u0005=(Q\u0003a\u0001s!Q\u00111\u001fB\u000b!\u0003\u0005\r!!>\t\u0011\t\rR\u0005)Q\u0005\u0005K\tQB]3tKR4UO\\2uS>t\u0007\u0003B\u0007\u0003(\u0011J1A!\u000b\u0005\u0005%1UO\\2uS>t\u0007\u0007\u0003\u0005\u0003.\u0015\u0002\u000b\u0015\u0002B\u0018\u00035\u0019Gn\\:f\rVt7\r^5p]B!QBa\nD\u0011!\u0011\u0019$\nQ!\n\u0005%\u0013A\u00039pg&$\u0018n\u001c8fe\"9!qG\u0013\u0005\u0002\te\u0012!C<ji\"\u0014Vm]3u)\ra'1\b\u0005\t\u0005{\u0011)\u00041\u0001\u0003&\u0005\ta\rC\u0004\u0003B\u0015\"\tAa\u0011\u0002\u0013]LG\u000f[\"m_N,Gc\u00017\u0003F!A!Q\bB \u0001\u0004\u0011y\u0003C\u0004\u0003J\u0015\"\tAa\u0013\u0002\u001f]LG\u000f\u001b#fg\u000e\u0014\u0018\u000e\u001d;j_:$2\u0001\u001cB'\u0011\u001d\u0011yEa\u0012A\u0002e\nA\u0001^3yi\"9!1K\u0013\u0005\u0002\tU\u0013aD<ji\"\u0004vn]5uS>t\u0017N\\4\u0015\u00071\u00149\u0006C\u0004\u0003Z\tE\u0003\u0019A@\u0002\u0005=t\u0007b\u0002B*K\u0011\u0005!Q\f\u000b\u0004Y\n}\u0003\u0002CA2\u00057\u0002\r!!\u0013\t\u000f\t\rT\u0005\"\u0001\u0003f\u0005)1\r\\8tKR\t1\t\u0003\u0004\u0003j\u0015\"\tAM\u0001\u0006e\u0016\u001cX\r\u001e\u0005\n\u0005[*\u0013\u0013!C\u0001\u0005_\nQC]3q_J$XI\u001d:pe\u0012\"WMZ1vYR$3'\u0006\u0002\u0003r)\"\u0011Q\u001fB:W\t\u0011)\b\u0005\u0003\u0003x\t\u0005UB\u0001B=\u0015\u0011\u0011YH! \u0002\u0013Ut7\r[3dW\u0016$'b\u0001B@\t\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\t\t\r%\u0011\u0010\u0002\u0012k:\u001c\u0007.Z2lK\u00124\u0016M]5b]\u000e,\u0007\"\u0003BDKE\u0005I\u0011\u0001B8\u0003]\u0011X\r]8si^\u000b'O\\5oO\u0012\"WMZ1vYR$3\u0007C\u0004\u0003\f\u0006\u0002\rA!$\u0002\u0011%$XM]1cY\u0016\u0004B\u0001\u000bBH]%\u0019!\u0011S\u0017\u0003\u0011%#XM]1cY\u0016DqA!&\n\t\u0003\u00119*\u0001\u0005ge>l7\t[1s)\r!#\u0011\u0014\u0005\b\u00057\u0013\u0019\n1\u0001/\u0003\u0005\u0019\u0007b\u0002BP\u0013\u0011\u0005!\u0011U\u0001\nMJ|Wn\u00115beN$2\u0001\nBR\u0011!\u0011)K!(A\u0002\t\u001d\u0016!B2iCJ\u001c\b\u0003B\u0007\u0003*:J1Aa+\u0005\u0005\u0015\t%O]1z\u0011\u001d\u0011y+\u0003C\u0001\u0005c\u000b!B\u001a:p[N#(/\u001b8h)\r!#1\u0017\u0005\b\u0005k\u0013i\u000b1\u0001:\u0003\u0005\u0019\bb\u0002B]\u0013\u0011\u0005!1X\u0001\tMJ|WNR5mKR!!Q\u0018Be)\rq\"q\u0018\u0005\t\u0005\u0003\u00149\fq\u0001\u0003D\u0006)1m\u001c3fGB\u0019\u0001B!2\n\u0007\t\u001d'AA\u0003D_\u0012,7\rC\u0004\u0003L\n]\u0006\u0019A\u001d\u0002\t9\fW.\u001a\u0005\b\u0005sKA\u0011\u0001Bh)\u0015q\"\u0011\u001bBj\u0011\u001d\u0011YM!4A\u0002eBqA!6\u0003N\u0002\u0007\u0011(A\u0002f]\u000eDqA!/\n\t\u0003\u0011I\u000e\u0006\u0003\u0003\\\n}Gc\u0001\u0010\u0003^\"A!\u0011\u0019Bl\u0001\b\u0011\u0019\r\u0003\u0005\u0003b\n]\u0007\u0019\u0001Br\u0003\r)(/\u001b\t\u0005\u0005K\u0014Y/\u0004\u0002\u0003h*!!\u0011^A\u0012\u0003\rqW\r^\u0005\u0005\u0005[\u00149OA\u0002V%&CqA!/\n\t\u0003\u0011\t\u0010F\u0003\u001f\u0005g\u0014)\u0010\u0003\u0005\u0003b\n=\b\u0019\u0001Br\u0011\u001d\u0011)Na<A\u0002eBqA!/\n\t\u0003\u0011I\u0010\u0006\u0003\u0003|\n}Hc\u0001\u0010\u0003~\"A!\u0011\u0019B|\u0001\b\u0011\u0019\r\u0003\u0005\u0004\u0002\t]\b\u0019AB\u0002\u0003\u00111\u0017\u000e\\3\u0011\t\u0005]8QA\u0005\u0005\u0007\u000f\tIP\u0001\u0003GS2,\u0007b\u0002B]\u0013\u0011\u000511\u0002\u000b\u0006=\r51q\u0002\u0005\t\u0007\u0003\u0019I\u00011\u0001\u0004\u0004!9!Q[B\u0005\u0001\u0004I\u0004b\u0002B]\u0013\u0011\u000511\u0003\u000b\b=\rU1qCB\r\u0011!\u0019\ta!\u0005A\u0002\r\r\u0001b\u0002Bk\u0007#\u0001\r!\u000f\u0005\b\u00077\u0019\t\u00021\u0001\u0017\u0003)\u0011WO\u001a4feNK'0\u001a\u0005\b\u0005sKA\u0011AB\u0010)\u0019\u0019\tc!\n\u0004(Q\u0019ada\t\t\u0011\t\u00057Q\u0004a\u0002\u0005\u0007D\u0001b!\u0001\u0004\u001e\u0001\u000711\u0001\u0005\b\u00077\u0019i\u00021\u0001\u0017\u0011\u001d\u0019Y#\u0003C\u0001\u0007[\t\u0011B\u001a:p[\nKH/Z:\u0015\t\r=21\u0007\u000b\u0004I\rE\u0002\u0002\u0003Ba\u0007S\u0001\u001dAa1\t\u0011\rU2\u0011\u0006a\u0001\u0007o\tQAY=uKN\u0004R!\u0004BU\u0007s\u00012!DB\u001e\u0013\r\u0019i\u0004\u0002\u0002\u0005\u0005f$X\rC\u0004\u0004,%!\ta!\u0011\u0015\u000b\u0011\u001a\u0019e!\u0012\t\u0011\rU2q\ba\u0001\u0007oAqA!6\u0004@\u0001\u0007\u0011\bC\u0004\u0004J%!\taa\u0013\u0002\u0019\u0019\u0014x.\u001c*bo\nKH/Z:\u0015\u0007\u0011\u001ai\u0005\u0003\u0005\u00046\r\u001d\u0003\u0019AB\u001c\u0011\u001d\u0019\t&\u0003C\u0001\u0007'\nqA\u001a:p[V\u0013\u0016\n\u0006\u0003\u0004V\reCc\u0001\u0010\u0004X!A!\u0011YB(\u0001\b\u0011\u0019\r\u0003\u0005\u0003b\u000e=\u0003\u0019\u0001Br\u0011\u001d\u0019i&\u0003C\u0001\u0007?\nqA\u001a:p[V\u0013F\nF\u0003\u001f\u0007C\u001a\u0019\u0007C\u0004\u00036\u000em\u0003\u0019A\u001d\t\u000f\tU71\fa\u0001s!91QL\u0005\u0005\u0002\r\u001dD\u0003BB5\u0007[\"2AHB6\u0011!\u0011\tm!\u001aA\u0004\t\r\u0007b\u0002B[\u0007K\u0002\r!\u000f\u0005\b\u0007;JA\u0011AB9)\u0015q21OB?\u0011!\u0019)ha\u001cA\u0002\r]\u0014aA;sYB!!Q]B=\u0013\u0011\u0019YHa:\u0003\u0007U\u0013F\nC\u0004\u0003V\u000e=\u0004\u0019A\u001d\t\u000f\ru\u0013\u0002\"\u0001\u0004\u0002R!11QBD)\rq2Q\u0011\u0005\t\u0005\u0003\u001cy\bq\u0001\u0003D\"A1QOB@\u0001\u0004\u00199\bC\u0004\u0004\f&!\ta!$\u0002)\r\u0014X-\u0019;f\u0005V4g-\u001a:fIN{WO]2f))\u0019yia%\u0004\u001e\u000e}5\u0011\u0015\u000b\u0004=\rE\u0005\u0002\u0003Ba\u0007\u0013\u0003\u001dAa1\t\u0011\rU5\u0011\u0012a\u0001\u0007/\u000b1\"\u001b8qkR\u001cFO]3b[B!\u0011q_BM\u0013\u0011\u0019Y*!?\u0003\u0017%s\u0007/\u001e;TiJ,\u0017-\u001c\u0005\n\u00077\u0019I\t%AA\u0002YA!B!\u001b\u0004\nB\u0005\t\u0019\u0001B\u0013\u0011)\u0011\u0019g!#\u0011\u0002\u0003\u0007!q\u0006\u0005\b\u0007KKA\u0011ABT\u0003=1'o\\7J]B,Ho\u0015;sK\u0006lG#\u0002\u0010\u0004*\u000e5\u0006\u0002CBV\u0007G\u0003\raa&\u0002\u0005%\u001c\bb\u0002Bk\u0007G\u0003\r!\u000f\u0005\b\u0007KKA\u0011ABY)\u0011\u0019\u0019la.\u0015\u0007y\u0019)\f\u0003\u0005\u0003B\u000e=\u00069\u0001Bb\u0011!\u0019Yka,A\u0002\r]\u0005\"CB^\u0013E\u0005I\u0011AB_\u0003y\u0019'/Z1uK\n+hMZ3sK\u0012\u001cv.\u001e:dK\u0012\"WMZ1vYR$#'\u0006\u0002\u0004@*\u001aaCa\u001d\t\u0013\r\r\u0017\"%A\u0005\u0002\r\u0015\u0017AH2sK\u0006$XMQ;gM\u0016\u0014X\rZ*pkJ\u001cW\r\n3fM\u0006,H\u000e\u001e\u00134+\t\u00199M\u000b\u0003\u0003&\tM\u0004\"CBf\u0013E\u0005I\u0011ABg\u0003y\u0019'/Z1uK\n+hMZ3sK\u0012\u001cv.\u001e:dK\u0012\"WMZ1vYR$C'\u0006\u0002\u0004P*\"!q\u0006B:\u0001")
/* renamed from: scala.io.Source */
/* loaded from: classes3-dex2jar.jar:scala/io/Source.class */
public abstract class Source implements Iterator<Object> {
    private volatile Source$NoPositioner$ NoPositioner$module;
    private volatile Source$RelaxedPosition$ RelaxedPosition$module;
    private volatile Source$RelaxedPositioner$ RelaxedPositioner$module;
    private String descr = "";
    private int nerrors = 0;
    private int nwarnings = 0;
    private Function0<Source> resetFunction = null;
    private Function0<BoxedUnit> closeFunction = null;
    private Positioner positioner = RelaxedPositioner();

    /* renamed from: scala.io.Source$LineIterator */
    /* loaded from: classes3-dex2jar.jar:scala/io/Source$LineIterator.class */
    public class LineIterator extends AbstractIterator<String> {
        public final /* synthetic */ Source $outer;
        private volatile boolean bitmap$0;
        private BufferedIterator<Object> iter;

        /* renamed from: sb */
        private final StringBuilder f1622sb = new StringBuilder();

        public LineIterator(Source source) {
            Objects.requireNonNull(source);
            this.$outer = source;
        }

        private BufferedIterator iter$lzycompute() {
            synchronized (this) {
                if (!this.bitmap$0) {
                    this.iter = scala$io$Source$LineIterator$$$outer().iter().buffered();
                    this.bitmap$0 = true;
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.iter;
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
            if (r7 == false) goto L18;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean getc() {
            /*
                r3 = this;
                r0 = r3
                scala.collection.BufferedIterator r0 = r0.iter()
                boolean r0 = r0.hasNext()
                r4 = r0
                r0 = 1
                r5 = r0
                r0 = r4
                if (r0 == 0) goto L75
                r0 = r3
                scala.collection.BufferedIterator r0 = r0.iter()
                java.lang.Object r0 = r0.next()
                char r0 = scala.runtime.BoxesRunTime.unboxToChar(r0)
                r6 = r0
                r0 = r6
                r1 = 10
                if (r0 != r1) goto L29
            L23:
                r0 = 0
                r7 = r0
                goto L6d
            L29:
                r0 = r6
                r1 = 13
                if (r0 != r1) goto L61
                r0 = r3
                scala.collection.BufferedIterator r0 = r0.iter()
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L59
                r0 = r3
                scala.collection.BufferedIterator r0 = r0.iter()
                java.lang.Object r0 = r0.head()
                char r0 = scala.runtime.BoxesRunTime.unboxToChar(r0)
                r1 = 10
                if (r0 != r1) goto L59
                r0 = r3
                scala.collection.BufferedIterator r0 = r0.iter()
                java.lang.Object r0 = r0.next()
                goto L23
            L59:
                scala.runtime.BoxedUnit r0 = scala.runtime.BoxedUnit.UNIT
                r8 = r0
                goto L23
            L61:
                r0 = r3
                scala.collection.mutable.StringBuilder r0 = r0.f1622sb
                r1 = r6
                scala.collection.mutable.StringBuilder r0 = r0.append(r1)
                r0 = 1
                r7 = r0
            L6d:
                r0 = r7
                if (r0 == 0) goto L75
                goto L77
            L75:
                r0 = 0
                r5 = r0
            L77:
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.p029io.Source.LineIterator.getc():boolean");
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return iter().hasNext();
        }

        public boolean isNewline(char c) {
            return c == '\r' || c == '\n';
        }

        public BufferedIterator<Object> iter() {
            return this.bitmap$0 ? this.iter : iter$lzycompute();
        }

        @Override // scala.collection.Iterator
        public String next() {
            this.f1622sb.clear();
            do {
            } while (getc());
            return this.f1622sb.toString();
        }

        public /* synthetic */ Source scala$io$Source$LineIterator$$$outer() {
            return this.$outer;
        }
    }

    /* renamed from: scala.io.Source$Positioner */
    /* loaded from: classes3-dex2jar.jar:scala/io/Source$Positioner.class */
    public class Positioner {
        public final /* synthetic */ Source $outer;
        private int ccol;

        /* renamed from: ch */
        private char f1623ch;
        private int cline;
        private final Position encoder;
        private int pos;
        private int tabinc;

        public Positioner(Source source) {
            this(source, source.RelaxedPosition());
        }

        public Positioner(Source source, Position position) {
            this.encoder = position;
            Objects.requireNonNull(source);
            this.$outer = source;
            this.pos = 0;
            this.cline = 1;
            this.ccol = 1;
            this.tabinc = 4;
        }

        public int ccol() {
            return this.ccol;
        }

        public void ccol_$eq(int i) {
            this.ccol = i;
        }

        /* renamed from: ch */
        public char m57ch() {
            return this.f1623ch;
        }

        public void ch_$eq(char c) {
            this.f1623ch = c;
        }

        public int cline() {
            return this.cline;
        }

        public void cline_$eq(int i) {
            this.cline = i;
        }

        public char next() {
            ch_$eq(BoxesRunTime.unboxToChar(scala$io$Source$Positioner$$$outer().iter().next()));
            pos_$eq(this.encoder.encode(cline(), ccol()));
            char m57ch = m57ch();
            if (m57ch == '\t') {
                ccol_$eq(ccol() + tabinc());
            } else if (m57ch != '\n') {
                ccol_$eq(ccol() + 1);
            } else {
                ccol_$eq(1);
                cline_$eq(cline() + 1);
            }
            return m57ch();
        }

        public int pos() {
            return this.pos;
        }

        public void pos_$eq(int i) {
            this.pos = i;
        }

        public /* synthetic */ Source scala$io$Source$Positioner$$$outer() {
            return this.$outer;
        }

        public int tabinc() {
            return this.tabinc;
        }

        public void tabinc_$eq(int i) {
            this.tabinc = i;
        }
    }

    public Source() {
        TraversableOnce.Cclass.$init$(this);
        Iterator.Cclass.$init$(this);
    }

    public static int DefaultBufSize() {
        return Source$.MODULE$.DefaultBufSize();
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.io.Source$NoPositioner$] */
    private Source$NoPositioner$ NoPositioner$lzycompute() {
        synchronized (this) {
            if (this.NoPositioner$module == null) {
                this.NoPositioner$module = new Positioner(this) { // from class: scala.io.Source$NoPositioner$
                    {
                        super(this, Position$.MODULE$);
                    }

                    @Override // scala.p029io.Source.Positioner
                    public char next() {
                        return BoxesRunTime.unboxToChar(scala$io$Source$NoPositioner$$$outer().iter().next());
                    }

                    public /* synthetic */ Source scala$io$Source$NoPositioner$$$outer() {
                        return this.$outer;
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.NoPositioner$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.io.Source$RelaxedPosition$] */
    private Source$RelaxedPosition$ RelaxedPosition$lzycompute() {
        synchronized (this) {
            if (this.RelaxedPosition$module == null) {
                this.RelaxedPosition$module = new Position(this) { // from class: scala.io.Source$RelaxedPosition$
                    @Override // scala.p029io.Position
                    public void checkInput(int i, int i2) {
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.RelaxedPosition$module;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.io.Source$RelaxedPositioner$] */
    private Source$RelaxedPositioner$ RelaxedPositioner$lzycompute() {
        synchronized (this) {
            if (this.RelaxedPositioner$module == null) {
                this.RelaxedPositioner$module = new Positioner(this) { // from class: scala.io.Source$RelaxedPositioner$
                    {
                        super(this, this.RelaxedPosition());
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.RelaxedPositioner$module;
    }

    public static BufferedSource createBufferedSource(InputStream inputStream, int i, Function0<Source> function0, Function0<BoxedUnit> function02, Codec codec) {
        return Source$.MODULE$.createBufferedSource(inputStream, i, function0, function02, codec);
    }

    public static Source fromBytes(byte[] bArr, String str) {
        return Source$.MODULE$.fromBytes(bArr, str);
    }

    public static Source fromBytes(byte[] bArr, Codec codec) {
        return Source$.MODULE$.fromBytes(bArr, codec);
    }

    public static Source fromChar(char c) {
        return Source$.MODULE$.fromChar(c);
    }

    public static Source fromChars(char[] cArr) {
        return Source$.MODULE$.fromChars(cArr);
    }

    public static BufferedSource fromFile(File file, int i, Codec codec) {
        return Source$.MODULE$.fromFile(file, i, codec);
    }

    public static BufferedSource fromFile(File file, String str) {
        return Source$.MODULE$.fromFile(file, str);
    }

    public static BufferedSource fromFile(File file, String str, int i) {
        return Source$.MODULE$.fromFile(file, str, i);
    }

    public static BufferedSource fromFile(File file, Codec codec) {
        return Source$.MODULE$.fromFile(file, codec);
    }

    public static BufferedSource fromFile(String str, String str2) {
        return Source$.MODULE$.fromFile(str, str2);
    }

    public static BufferedSource fromFile(String str, Codec codec) {
        return Source$.MODULE$.fromFile(str, codec);
    }

    public static BufferedSource fromFile(URI uri, String str) {
        return Source$.MODULE$.fromFile(uri, str);
    }

    public static BufferedSource fromFile(URI uri, Codec codec) {
        return Source$.MODULE$.fromFile(uri, codec);
    }

    public static BufferedSource fromInputStream(InputStream inputStream, String str) {
        return Source$.MODULE$.fromInputStream(inputStream, str);
    }

    public static BufferedSource fromInputStream(InputStream inputStream, Codec codec) {
        return Source$.MODULE$.fromInputStream(inputStream, codec);
    }

    public static Source fromIterable(Iterable<Object> iterable) {
        return Source$.MODULE$.fromIterable(iterable);
    }

    public static Source fromRawBytes(byte[] bArr) {
        return Source$.MODULE$.fromRawBytes(bArr);
    }

    public static Source fromString(String str) {
        return Source$.MODULE$.fromString(str);
    }

    public static BufferedSource fromURI(URI uri, Codec codec) {
        return Source$.MODULE$.fromURI(uri, codec);
    }

    public static BufferedSource fromURL(String str, String str2) {
        return Source$.MODULE$.fromURL(str, str2);
    }

    public static BufferedSource fromURL(String str, Codec codec) {
        return Source$.MODULE$.fromURL(str, codec);
    }

    public static BufferedSource fromURL(URL url, String str) {
        return Source$.MODULE$.fromURL(url, str);
    }

    public static BufferedSource fromURL(URL url, Codec codec) {
        return Source$.MODULE$.fromURL(url, codec);
    }

    private String lineNum(int i) {
        return getLines().drop(i - 1).take(1).mkString();
    }

    private String spaces(int i) {
        return ((TraversableOnce) List$.MODULE$.fill(i, new Source$$anonfun$spaces$1(this))).mkString();
    }

    public static BufferedSource stdin() {
        return Source$.MODULE$.stdin();
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $colon$bslash(B b, Function2<Object, B, B> function2) {
        Object foldRight;
        foldRight = foldRight(b, function2);
        return (B) foldRight;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $div$colon(B b, Function2<B, Object, B> function2) {
        Object foldLeft;
        foldLeft = foldLeft(b, function2);
        return (B) foldLeft;
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> $plus$plus(Function0<GenTraversableOnce<B>> function0) {
        return Iterator.Cclass.$plus$plus(this, function0);
    }

    public Source$NoPositioner$ NoPositioner() {
        return this.NoPositioner$module == null ? NoPositioner$lzycompute() : this.NoPositioner$module;
    }

    public Source$RelaxedPosition$ RelaxedPosition() {
        return this.RelaxedPosition$module == null ? RelaxedPosition$lzycompute() : this.RelaxedPosition$module;
    }

    public Source$RelaxedPositioner$ RelaxedPositioner() {
        return this.RelaxedPositioner$module == null ? RelaxedPositioner$lzycompute() : this.RelaxedPositioner$module;
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
    public <B> B aggregate(Function0<B> function0, Function2<B, Object, B> function2, Function2<B, B, B> function22) {
        return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.Iterator
    public BufferedIterator<Object> buffered() {
        return Iterator.Cclass.buffered(this);
    }

    /* renamed from: ch */
    public char m58ch() {
        return this.positioner.m57ch();
    }

    public void close() {
        Function0<BoxedUnit> function0 = this.closeFunction;
        if (function0 != null) {
            function0.apply$mcV$sp();
        }
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> collect(PartialFunction<Object, B> partialFunction) {
        return Iterator.Cclass.collect(this, partialFunction);
    }

    @Override // scala.collection.TraversableOnce
    public <B> Option<B> collectFirst(PartialFunction<Object, B> partialFunction) {
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
    public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<Object, B, Object> function2) {
        return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int count(Function1<Object, Object> function1) {
        return TraversableOnce.Cclass.count(this, function1);
    }

    public String descr() {
        return this.descr;
    }

    public void descr_$eq(String str) {
        this.descr = str;
    }

    @Override // scala.collection.Iterator
    public Iterator<Object> drop(int i) {
        return Iterator.Cclass.drop(this, i);
    }

    @Override // scala.collection.Iterator
    public Iterator<Object> dropWhile(Function1<Object, Object> function1) {
        return Iterator.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.Iterator
    public Tuple2<Iterator<Object>, Iterator<Object>> duplicate() {
        return Iterator.Cclass.duplicate(this);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<Object, Object> function1) {
        return Iterator.Cclass.exists(this, function1);
    }

    @Override // scala.collection.Iterator
    public Iterator<Object> filter(Function1<Object, Object> function1) {
        return Iterator.Cclass.filter(this, function1);
    }

    @Override // scala.collection.Iterator
    public Iterator<Object> filterNot(Function1<Object, Object> function1) {
        return Iterator.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<Object> find(Function1<Object, Object> function1) {
        return Iterator.Cclass.find(this, function1);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> flatMap(Function1<Object, GenTraversableOnce<B>> function1) {
        return Iterator.Cclass.flatMap(this, function1);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
        return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B foldLeft(B b, Function2<B, Object, B> function2) {
        return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B foldRight(B b, Function2<Object, B, B> function2) {
        return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<Object, Object> function1) {
        return Iterator.Cclass.forall(this, function1);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
        Iterator.Cclass.foreach(this, function1);
    }

    public Iterator<String> getLines() {
        return new LineIterator(this);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<Object>.GroupedIterator<B> grouped(int i) {
        return Iterator.Cclass.grouped(this, i);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return Iterator.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.Iterator
    public boolean hasNext() {
        return iter().hasNext();
    }

    @Override // scala.collection.Iterator
    public <B> int indexOf(B b) {
        return Iterator.Cclass.indexOf(this, b);
    }

    @Override // scala.collection.Iterator
    public int indexWhere(Function1<Object, Object> function1) {
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

    public abstract Iterator<Object> iter();

    @Override // scala.collection.Iterator
    public int length() {
        return Iterator.Cclass.length(this);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> map(Function1<Object, B> function1) {
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

    public int nerrors() {
        return this.nerrors;
    }

    public void nerrors_$eq(int i) {
        this.nerrors = i;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, char] */
    @Override // scala.collection.Iterator
    public Object next() {
        return this.positioner.next();
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return TraversableOnce.Cclass.nonEmpty(this);
    }

    public int nwarnings() {
        return this.nwarnings;
    }

    public void nwarnings_$eq(int i) {
        this.nwarnings = i;
    }

    @Override // scala.collection.Iterator
    public <A1> Iterator<A1> padTo(int i, A1 a1) {
        return Iterator.Cclass.padTo(this, i, a1);
    }

    @Override // scala.collection.Iterator
    public Tuple2<Iterator<Object>, Iterator<Object>> partition(Function1<Object, Object> function1) {
        return Iterator.Cclass.partition(this, function1);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
        return Iterator.Cclass.patch(this, i, iterator, i2);
    }

    public int pos() {
        return this.positioner.pos();
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
    public <B> B reduceLeft(Function2<B, Object, B> function2) {
        return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceLeftOption(Function2<B, Object, B> function2) {
        return TraversableOnce.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
        return TraversableOnce.Cclass.reduceOption(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B reduceRight(Function2<Object, B, B> function2) {
        return (B) TraversableOnce.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceRightOption(Function2<Object, B, B> function2) {
        return TraversableOnce.Cclass.reduceRightOption(this, function2);
    }

    public void report(int i, String str, PrintStream printStream) {
        int line = Position$.MODULE$.line(i);
        int column = Position$.MODULE$.column(i);
        Predef$ predef$ = Predef$.MODULE$;
        printStream.println(new StringOps("%s:%d:%d: %s%s%s^").format(Predef$.MODULE$.genericWrapArray(new Object[]{descr(), BoxesRunTime.boxToInteger(line), BoxesRunTime.boxToInteger(column), str, lineNum(line), spaces(column - 1)})));
    }

    public void reportError(int i, String str, PrintStream printStream) {
        nerrors_$eq(nerrors() + 1);
        report(i, str, printStream);
    }

    public PrintStream reportError$default$3() {
        return Console$.MODULE$.err();
    }

    public void reportWarning(int i, String str, PrintStream printStream) {
        nwarnings_$eq(nwarnings() + 1);
        report(i, new StringBuilder().append((Object) "warning! ").append((Object) str).toString(), printStream);
    }

    public PrintStream reportWarning$default$3() {
        return Console$.MODULE$.out();
    }

    public Source reset() {
        Function0<Source> function0 = this.resetFunction;
        if (function0 != null) {
            return function0.apply();
        }
        throw new UnsupportedOperationException("Source's reset() method was not set.");
    }

    @Override // scala.collection.TraversableOnce
    public List<Object> reversed() {
        return TraversableOnce.Cclass.reversed(this);
    }

    @Override // scala.collection.Iterator
    public boolean sameElements(Iterator<?> iterator) {
        return Iterator.Cclass.sameElements(this, iterator);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> scanLeft(B b, Function2<B, Object, B> function2) {
        return Iterator.Cclass.scanLeft(this, b, function2);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> scanRight(B b, Function2<Object, B, B> function2) {
        return Iterator.Cclass.scanRight(this, b, function2);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Iterator<Object> seq() {
        return Iterator.Cclass.seq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return TraversableOnce.Cclass.size(this);
    }

    @Override // scala.collection.Iterator
    public Iterator<Object> slice(int i, int i2) {
        return Iterator.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<Object>.GroupedIterator<B> sliding(int i, int i2) {
        return Iterator.Cclass.sliding(this, i, i2);
    }

    @Override // scala.collection.Iterator
    public <B> int sliding$default$2() {
        return Iterator.Cclass.sliding$default$2(this);
    }

    @Override // scala.collection.Iterator
    public Tuple2<Iterator<Object>, Iterator<Object>> span(Function1<Object, Object> function1) {
        return Iterator.Cclass.span(this, function1);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B sum(Numeric<B> numeric) {
        return (B) TraversableOnce.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.Iterator
    public Iterator<Object> take(int i) {
        return Iterator.Cclass.take(this, i);
    }

    @Override // scala.collection.Iterator
    public Iterator<Object> takeWhile(Function1<Object, Object> function1) {
        return Iterator.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    /* renamed from: to */
    public <Col> Col mo1to(CanBuildFrom<Nothing$, Object, Col> canBuildFrom) {
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
    public IndexedSeq<Object> toIndexedSeq() {
        return TraversableOnce.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterable<Object> toIterable() {
        return TraversableOnce.Cclass.toIterable(this);
    }

    @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<Object> toIterator() {
        return Iterator.Cclass.toIterator(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<Object> toList() {
        return TraversableOnce.Cclass.toList(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Object, Tuple2<T, U>> predef$$less$colon$less) {
        return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<Object> toSeq() {
        return TraversableOnce.Cclass.toSeq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <B> Set<B> toSet() {
        return TraversableOnce.Cclass.toSet(this);
    }

    @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<Object> toStream() {
        return Iterator.Cclass.toStream(this);
    }

    @Override // scala.collection.Iterator
    public String toString() {
        return Iterator.Cclass.toString(this);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Traversable<Object> toTraversable() {
        return Iterator.Cclass.toTraversable(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Vector<Object> toVector() {
        return TraversableOnce.Cclass.toVector(this);
    }

    public Source withClose(Function0<BoxedUnit> function0) {
        this.closeFunction = function0;
        return this;
    }

    public Source withDescription(String str) {
        descr_$eq(str);
        return this;
    }

    @Override // scala.collection.Iterator
    public Iterator<Object> withFilter(Function1<Object, Object> function1) {
        return Iterator.Cclass.withFilter(this, function1);
    }

    public Source withPositioning(Positioner positioner) {
        this.positioner = positioner;
        return this;
    }

    public Source withPositioning(boolean z) {
        this.positioner = z ? RelaxedPositioner() : NoPositioner();
        return this;
    }

    public Source withReset(Function0<Source> function0) {
        this.resetFunction = function0;
        return this;
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<Tuple2<Object, B>> zip(Iterator<B> iterator) {
        return Iterator.Cclass.zip(this, iterator);
    }

    @Override // scala.collection.Iterator
    public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
        return Iterator.Cclass.zipAll(this, iterator, a1, b1);
    }

    @Override // scala.collection.Iterator
    public Iterator<Tuple2<Object, Object>> zipWithIndex() {
        return Iterator.Cclass.zipWithIndex(this);
    }
}
