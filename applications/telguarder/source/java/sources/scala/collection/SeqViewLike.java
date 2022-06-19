package scala.collection;

import androidx.exifinterface.media.ExifInterface;
import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenSeqLike;
import scala.collection.GenTraversable;
import scala.collection.IndexedSeqOptimized;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.IterableViewLike;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.SeqLike;
import scala.collection.SeqView;
import scala.collection.SeqViewLike;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.TraversableViewLike;
import scala.collection.ViewMkString;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.SliceInterval;
import scala.collection.generic.SliceInterval$;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.immutable.Map;
import scala.collection.immutable.Nil$;
import scala.collection.immutable.Range;
import scala.collection.immutable.Range$;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.ArrayOps;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParSeq;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.package$;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
import scala.runtime.Nothing$;
import scala.runtime.ObjectRef;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001\u0015]b\u0001C\u0001\u0003!\u0003\r\ta\u0002\u0017\u0003\u0017M+\u0017OV5fo2K7.\u001a\u0006\u0003\u0007\u0011\t!bY8mY\u0016\u001cG/[8o\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0005\u0011MQ\u0003e\u0005\u0004\u0001\u00135aR\u0006\r\t\u0003\u0015-i\u0011\u0001B\u0005\u0003\u0019\u0011\u0011a!\u00118z%\u00164\u0007c\u0001\b\u0010#5\t!!\u0003\u0002\u0011\u0005\t\u00191+Z9\u0011\u0005I\u0019B\u0002\u0001\u0003\u0007)\u0001!)\u0019A\u000b\u0003\u0003\u0005\u000b\"AF\r\u0011\u0005)9\u0012B\u0001\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"A\u0003\u000e\n\u0005m!!aA!osB!a\"H\t \u0013\tq\"AA\u0004TKFd\u0015n[3\u0011\u0005I\u0001CAB\u0011\u0001\t\u000b\u0007!E\u0001\u0003UQ&\u001c\u0018C\u0001\f$%\r!c\u0005\f\u0004\u0005K\u0001\u00011E\u0001\u0007=e\u00164\u0017N\\3nK:$h\b\u0005\u0003\u000fOEI\u0013B\u0001\u0015\u0003\u0005\u001d\u0019V-\u001d,jK^\u0004\"A\u0005\u0016\u0005\r-\u0002AQ1\u0001\u0016\u0005\u0011\u0019u\u000e\u001c7\u0011\u000b9\u0001\u0011#K\u0010\u0011\t9q\u0013#K\u0005\u0003_\t\u0011A\"\u0013;fe\u0006\u0014G.\u001a,jK^\u0004RAD\u0019\u0012S}I!A\r\u0002\u0003!%#XM]1cY\u00164\u0016.Z<MS.,\u0007\"\u0002\u001b\u0001\t\u0003)\u0014A\u0002\u0013j]&$H\u0005F\u00017!\tQq'\u0003\u00029\t\t!QK\\5u\r\u0019Q\u0004!!\u0001\u0003w\t\u0019\u0012IY:ue\u0006\u001cG\u000f\u0016:b]N4wN]7fIV\u0011AhP\n\u0006s%i\u0014)\u0012\t\u0004\u001d=q\u0004C\u0001\n@\t\u0019\u0001\u0015\b\"b\u0001+\t\t!\tE\u0002C\u0007zj\u0011\u0001A\u0005\u0003\tF\u00121\u0002\u0016:b]N4wN]7fIB\u0019!I\u0012 \u0007\u000f\u0011\u0003\u0001\u0013aA\u0001\u000fV\u0011\u0001jS\n\u0005\r&IE\n\u0005\u0003\u000fO)K\u0003C\u0001\nL\t\u0019\u0001e\t\"b\u0001+A\u0019!i\u0011&\t\u000bQ2E\u0011A\u001b\t\u000b=3e\u0011\u0001)\u0002\r1,gn\u001a;i+\u0005\t\u0006C\u0001\u0006S\u0013\t\u0019FAA\u0002J]RDQ!\u0016$\u0007\u0002Y\u000bQ!\u00199qYf$\"AS,\t\u000ba#\u0006\u0019A)\u0002\u0007%$\u0007\u0010C\u0003[\r\u0012\u00053,\u0001\u0005u_N#(/\u001b8h)\u0005a\u0006CA/c\u001b\u0005q&BA0a\u0003\u0011a\u0017M\\4\u000b\u0003\u0005\fAA[1wC&\u00111M\u0018\u0002\u0007'R\u0014\u0018N\\4\t\u000b\u0015LD\u0011\u00014\u0002\rqJg.\u001b;?)\u00059\u0007c\u0001\":}\u00199\u0011\u000e\u0001I\u0001\u0004\u0003Q'!C#naRLh+[3x'\u0011A\u0017b\u001b7\u0011\u0007\t3e\u0003\u0005\u0002C[&\u0011\u0011.\r\u0005\u0006i!$\t!\u000e\u0005\u0006\u001f\"$)\u0005\u0015\u0005\u0006+\"$)%\u001d\u000b\u0003-IDQa\u001d9A\u0002E\u000b\u0011A\u001c\u0004\bk\u0002\u0001\n1!\u0001w\u0005\u00191uN]2fIV\u0011qo_\n\u0005i&AH\u0010E\u0002CsjL!!^\u0019\u0011\u0005IYH!\u0002!u\u0005\u0004)\u0002c\u0001\"Gu\")A\u0007\u001eC\u0001k!)q\n\u001eC\u0001!\"1Q\u000b\u001eC\u0001\u0003\u0003!2A_A\u0002\u0011\u0015Av\u00101\u0001R\r%\t9\u0001\u0001I\u0001\u0004\u0003\tIA\u0001\u0004TY&\u001cW\rZ\n\b\u0003\u000bI\u00111BA\b!\r\u0011\u0015QB\u0005\u0004\u0003\u000f\t\u0004c\u0001\"G#!1A'!\u0002\u0005\u0002UBaaTA\u0003\t\u0003\u0001\u0006bB+\u0002\u0006\u0011\u0005\u0011q\u0003\u000b\u0004#\u0005e\u0001B\u0002-\u0002\u0016\u0001\u0007\u0011\u000b\u0003\u0005\u0002\u001e\u0005\u0015A\u0011IA\u0010\u0003\u001d1wN]3bG\",B!!\t\u00020Q\u0019a'a\t\t\u0011\u0005\u0015\u00121\u0004a\u0001\u0003O\t\u0011A\u001a\t\u0007\u0015\u0005%\u0012#!\f\n\u0007\u0005-BAA\u0005Gk:\u001cG/[8ocA\u0019!#a\f\u0005\u000f\u0005E\u00121\u0004b\u0001+\t\tQ\u000b\u0003\u0005\u00026\u0005\u0015A\u0011IA\u001c\u0003!IG/\u001a:bi>\u0014XCAA\u001d!\u0011q\u00111H\t\n\u0007\u0005u\"A\u0001\u0005Ji\u0016\u0014\u0018\r^8s\r%\t\t\u0005\u0001I\u0001\u0004\u0003\t\u0019E\u0001\u0004NCB\u0004X\rZ\u000b\u0005\u0003\u000b\nieE\u0004\u0002@%\t9%a\u0014\u0011\u000b\t\u000bI%a\u0013\n\u0007\u0005\u0005\u0013\u0007E\u0002\u0013\u0003\u001b\"a\u0001QA \u0005\u0004)\u0002\u0003\u0002\"G\u0003\u0017Ba\u0001NA \t\u0003)\u0004BB(\u0002@\u0011\u0005\u0001\u000bC\u0004V\u0003\u007f!\t!a\u0016\u0015\t\u0005-\u0013\u0011\f\u0005\u00071\u0006U\u0003\u0019A)\u0007\u0013\u0005u\u0003\u0001%A\u0002\u0002\u0005}#A\u0003$mCRl\u0015\r\u001d9fIV!\u0011\u0011MA5'\u001d\tY&CA2\u0003W\u0002RAQA3\u0003OJ1!!\u00182!\r\u0011\u0012\u0011\u000e\u0003\u0007\u0001\u0006m#\u0019A\u000b\u0011\t\t3\u0015q\r\u0005\u0007i\u0005mC\u0011A\u001b\t\u0017\u0005E\u00141\fECB\u0013E\u00111O\u0001\u0006S:$W\r_\u000b\u0003\u0003k\u0002BACA<#&\u0019\u0011\u0011\u0010\u0003\u0003\u000b\u0005\u0013(/Y=\t\u0017\u0005u\u00141\fE\u0001B\u0003&\u0011QO\u0001\u0007S:$W\r\u001f\u0011\t\u0013\u0005\u0005\u00151\fQ\u0005\u0012\u0005\r\u0015a\u00024j]\u0012\u0014vn\u001e\u000b\b#\u0006\u0015\u0015qQAF\u0011\u0019A\u0016q\u0010a\u0001#\"9\u0011\u0011RA@\u0001\u0004\t\u0016A\u00017p\u0011\u001d\ti)a A\u0002E\u000b!\u0001[5\t\r=\u000bY\u0006\"\u0001Q\u0011\u001d)\u00161\fC\u0001\u0003'#B!a\u001a\u0002\u0016\"1\u0001,!%A\u0002E3\u0011\"!'\u0001!\u0003\r\t!a'\u0003\u0011\u0005\u0003\b/\u001a8eK\u0012,B!!(\u0002&N9\u0011qS\u0005\u0002 \u0006%\u0006#\u0002\"\u0002\"\u0006\r\u0016bAAMcA\u0019!#!*\u0005\u000f\u0001\u000b9J1\u0001\u0002(F\u0011\u0011#\u0007\t\u0005\u0005\u001a\u000b\u0019\u000b\u0003\u00045\u0003/#\t!\u000e\u0005\f\u0003_\u000b9\n#b!\n#\t\t,A\u0004sKN$8+Z9\u0016\u0005\u0005M\u0006#\u0002\b\u00026\u0006\r\u0016bAA\\\u0005\t1q)\u001a8TKFD1\"a/\u0002\u0018\"\u0005\t\u0015)\u0003\u00024\u0006A!/Z:u'\u0016\f\b\u0005\u0003\u0004P\u0003/#\t\u0001\u0015\u0005\b+\u0006]E\u0011AAa)\u0011\t\u0019+a1\t\ra\u000by\f1\u0001R\r%\t9\r\u0001I\u0001\u0004\u0003\tIM\u0001\u0005GS2$XM]3e'\u001d\t)-CAf\u0003\u001f\u00012AQAg\u0013\r\t9-\r\u0005\u0007i\u0005\u0015G\u0011A\u001b\t\u0017\u0005E\u0014Q\u0019ECB\u0013E\u00111\u000f\u0005\f\u0003{\n)\r#A!B\u0013\t)\b\u0003\u0004P\u0003\u000b$\t\u0001\u0015\u0005\b+\u0006\u0015G\u0011AAm)\r\t\u00121\u001c\u0005\u00071\u0006]\u0007\u0019A)\u0007\u0013\u0005}\u0007\u0001%A\u0002\u0002\u0005\u0005(A\u0003+bW\u0016tw\u000b[5mKN9\u0011Q\\\u0005\u0002d\u0006=\u0001c\u0001\"\u0002f&\u0019\u0011q\\\u0019\t\rQ\ni\u000e\"\u00016\u0011)\tY/!8\t\u0006\u0004&\t\u0002U\u0001\u0004Y\u0016t\u0007BCAx\u0003;D\t\u0011)Q\u0005#\u0006!A.\u001a8!\u0011\u0019y\u0015Q\u001cC\u0001!\"9Q+!8\u0005\u0002\u0005UHcA\t\u0002x\"1\u0001,a=A\u0002E3\u0011\"a?\u0001!\u0003\r\t!!@\u0003\u0019\u0011\u0013x\u000e\u001d9fI^C\u0017\u000e\\3\u0014\u000f\u0005e\u0018\"a@\u0002\u0010A\u0019!I!\u0001\n\u0007\u0005m\u0018\u0007\u0003\u00045\u0003s$\t!\u000e\u0005\u000b\u0005\u000f\tI\u0010#b!\n#\u0001\u0016!B:uCJ$\bB\u0003B\u0006\u0003sD\t\u0011)Q\u0005#\u000611\u000f^1si\u0002BaaTA}\t\u0003\u0001\u0006bB+\u0002z\u0012\u0005!\u0011\u0003\u000b\u0004#\tM\u0001B\u0002-\u0003\u0010\u0001\u0007\u0011KB\u0005\u0003\u0018\u0001\u0001\n1!\u0001\u0003\u001a\t1!,\u001b9qK\u0012,BAa\u0007\u0003$M9!QC\u0005\u0003\u001e\t\u0015\u0002#\u0002\"\u0003 \t\u0005\u0012b\u0001B\fcA\u0019!Ca\t\u0005\r\u0001\u0013)B1\u0001\u0016!\u0011\u0011eIa\n\u0011\r)\u0011I#\u0005B\u0011\u0013\r\u0011Y\u0003\u0002\u0002\u0007)V\u0004H.\u001a\u001a\t\rQ\u0012)\u0002\"\u00016\u0011-\u0011\tD!\u0006\t\u0006\u0004&\tBa\r\u0002\u000fQD\u0017\r^*fcV\u0011!Q\u0007\t\u0005\u001d=\u0011\t\u0003C\u0006\u0003:\tU\u0001\u0012!Q!\n\tU\u0012\u0001\u0003;iCR\u001cV-\u001d\u0011\t\r=\u0013)\u0002\"\u0001Q\u0011\u001d)&Q\u0003C\u0001\u0005\u007f!BAa\n\u0003B!1\u0001L!\u0010A\u0002E3\u0011B!\u0012\u0001!\u0003\r\tAa\u0012\u0003\u0013iK\u0007\u000f]3e\u00032dWC\u0002B%\u0005#\u00129fE\u0004\u0003D%\u0011YE!\u0017\u0011\u000f\t\u0013iEa\u0014\u0003V%\u0019!QI\u0019\u0011\u0007I\u0011\t\u0006\u0002\u0005\u0003T\t\r#\u0019AAT\u0005\t\t\u0015\u0007E\u0002\u0013\u0005/\"a\u0001\u0011B\"\u0005\u0004)\u0002\u0003\u0002\"G\u00057\u0002rA\u0003B\u0015\u0005\u001f\u0012)\u0006\u0003\u00045\u0005\u0007\"\t!\u000e\u0005\f\u0005c\u0011\u0019\u0005#b!\n#\u0011\t'\u0006\u0002\u0003dA!ab\u0004B+\u0011-\u0011IDa\u0011\t\u0002\u0003\u0006KAa\u0019\t\r=\u0013\u0019\u0005\"\u0001Q\u0011\u001d)&1\tC\u0001\u0005W\"BAa\u0017\u0003n!1\u0001L!\u001bA\u0002E3\u0011B!\u001d\u0001!\u0003\r\tAa\u001d\u0003\u0011I+g/\u001a:tK\u0012\u001cRAa\u001c\n\u0003\u001fAa\u0001\u000eB8\t\u0003)\u0004\u0002CA\u001b\u0005_\"\t%a\u000e\t\r=\u0013y\u0007\"\u0001Q\u0011\u001d)&q\u000eC\u0001\u0005{\"2!\u0005B@\u0011\u0019A&1\u0010a\u0001#\"I!1\u0011B8A\u0013U#QQ\u0001\u000fm&,w/\u00133f]RLg-[3s+\u0005a\u0006\u0002\u0003BE\u0005_\"I!a\u000e\u0002-\r\u0014X-\u0019;f%\u00164XM]:fI&#XM]1u_J4\u0011B!$\u0001!\u0003\r\tAa$\u0003\u000fA\u000bGo\u00195fIV!!\u0011\u0013BL'\u0015\u0011Y)\u0003BJ!\u0011\u0011eI!&\u0011\u0007I\u00119\nB\u0004A\u0005\u0017\u0013\r!a*\t\rQ\u0012Y\t\"\u00016\u0011%\u0011iJa#CB\u001bE\u0001+\u0001\u0003ge>l\u0007B\u0003BQ\u0005\u0017\u0013\rU\"\u0005\u0003$\u0006)\u0001/\u0019;dQV\u0011!Q\u0015\t\u0006\u001d\u0005U&Q\u0013\u0005\n\u0005S\u0013YI1Q\u0007\u0012A\u000b\u0001B]3qY\u0006\u001cW\r\u001a\u0005\u000b\u0005[\u0013Y\t#b\u0001\n\u0013\u0001\u0016\u0001\u00029mK:D!B!-\u0003\f\"\u0005\t\u0015)\u0003R\u0003\u0015\u0001H.\u001a8!\u0011!\t)Da#\u0005B\tUVC\u0001B\\!\u0015q\u00111\bBK\u0011\u0019y%1\u0012C\u0001!\"9QKa#\u0005\u0002\tuF\u0003\u0002BK\u0005\u007fCa\u0001\u0017B^\u0001\u0004\t\u0006\"\u0003BB\u0005\u0017\u0003KQ\u000bBC\r%\u0011)\r\u0001I\u0001\u0004\u0003\u00119MA\u0005Qe\u0016\u0004XM\u001c3fIV!!\u0011\u001aBh'\u0015\u0011\u0019-\u0003Bf!\u0011\u0011eI!4\u0011\u0007I\u0011y\rB\u0004A\u0005\u0007\u0014\r!a*\t\rQ\u0012\u0019\r\"\u00016\u0011)\u0011)Na1CB\u001bE!q[\u0001\u0004MN$XC\u0001Bg\u0011!\t)Da1\u0005B\tmWC\u0001Bo!\u0015q\u00111\bBg\u0011\u0019y%1\u0019C\u0001!\"9QKa1\u0005\u0002\t\rH\u0003\u0002Bg\u0005KDa\u0001\u0017Bq\u0001\u0004\t\u0006\"\u0003BB\u0005\u0007\u0004KQ\u000bBC\u0011\u001d\u0011Y\u000f\u0001C)\u0005[\f\u0011B\\3x\r>\u00148-\u001a3\u0016\t\t=(Q\u001f\u000b\u0005\u0005c\u00149\u0010\u0005\u0003C\r\nM\bc\u0001\n\u0003v\u00121\u0001I!;C\u0002UA\u0011B!?\u0003j\u0012\u0005\rAa?\u0002\u0005a\u001c\b#\u0002\u0006\u0003~\u000e\u0005\u0011b\u0001B��\t\tAAHY=oC6,g\bE\u0003\u000f\u0003k\u0013\u0019\u0010C\u0004\u0004\u0006\u0001!\tfa\u0002\u0002\u00179,w/\u00119qK:$W\rZ\u000b\u0005\u0007\u0013\u0019y\u0001\u0006\u0003\u0004\f\rE\u0001\u0003\u0002\"G\u0007\u001b\u00012AEB\b\t\u001d\u000151\u0001b\u0001\u0003OC\u0001ba\u0005\u0004\u0004\u0001\u00071QC\u0001\u0005i\"\fG\u000fE\u0003\u000f\u0007/\u0019i!C\u0002\u0004\u001a\t\u0011abR3o)J\fg/\u001a:tC\ndW\rC\u0004\u0004\u001e\u0001!\tfa\b\u0002\u00139,w/T1qa\u0016$W\u0003BB\u0011\u0007O!Baa\t\u0004*A!!IRB\u0013!\r\u00112q\u0005\u0003\u0007\u0001\u000em!\u0019A\u000b\t\u0011\u0005\u001521\u0004a\u0001\u0007W\u0001bACA\u0015#\r\u0015\u0002bBB\u0018\u0001\u0011E3\u0011G\u0001\u000e]\u0016<h\t\\1u\u001b\u0006\u0004\b/\u001a3\u0016\t\rM2\u0011\b\u000b\u0005\u0007k\u0019Y\u0004\u0005\u0003C\r\u000e]\u0002c\u0001\n\u0004:\u00111\u0001i!\fC\u0002UA\u0001\"!\n\u0004.\u0001\u00071Q\b\t\u0007\u0015\u0005%\u0012ca\u0010\u0011\u000b9\u0019\tea\u000e\n\u0007\r\r#A\u0001\nHK:$&/\u0019<feN\f'\r\\3P]\u000e,\u0007bBB$\u0001\u0011E3\u0011J\u0001\f]\u0016<h)\u001b7uKJ,G\r\u0006\u0003\u0002\u0010\r-\u0003\u0002CB'\u0007\u000b\u0002\raa\u0014\u0002\u0003A\u0004bACA\u0015#\rE\u0003c\u0001\u0006\u0004T%\u00191Q\u000b\u0003\u0003\u000f\t{w\u000e\\3b]\"91\u0011\f\u0001\u0005R\rm\u0013!\u00038foNc\u0017nY3e)\u0011\tya!\u0018\t\u0011\r}3q\u000ba\u0001\u0007C\n!bX3oIB|\u0017N\u001c;t!\u0011\u0019\u0019g!\u001b\u000e\u0005\r\u0015$bAB4\u0005\u00059q-\u001a8fe&\u001c\u0017\u0002BB6\u0007K\u0012Qb\u00157jG\u0016Le\u000e^3sm\u0006d\u0007bBB8\u0001\u0011E3\u0011O\u0001\u0010]\u0016<HI]8qa\u0016$w\u000b[5mKR!\u0011qBB:\u0011!\u0019ie!\u001cA\u0002\r=\u0003bBB<\u0001\u0011E3\u0011P\u0001\u000e]\u0016<H+Y6f]^C\u0017\u000e\\3\u0015\t\u0005=11\u0010\u0005\t\u0007\u001b\u001a)\b1\u0001\u0004P!91q\u0010\u0001\u0005R\r\u0005\u0015!\u00038fojK\u0007\u000f]3e+\u0011\u0019\u0019ia#\u0015\t\r\u00155Q\u0012\t\u0005\u0005\u001a\u001b9\t\u0005\u0004\u000b\u0005S\t2\u0011\u0012\t\u0004%\r-EA\u0002!\u0004~\t\u0007Q\u0003\u0003\u0005\u0004\u0014\ru\u0004\u0019ABH!\u0015q1\u0011SBE\u0013\r\u0019\u0019J\u0001\u0002\f\u000f\u0016t\u0017\n^3sC\ndW\rC\u0004\u0004\u0018\u0002!\tf!'\u0002\u00199,wOW5qa\u0016$\u0017\t\u001c7\u0016\r\rm51UBT)!\u0019ij!+\u0004.\u000eE\u0006\u0003\u0002\"G\u0007?\u0003rA\u0003B\u0015\u0007C\u001b)\u000bE\u0002\u0013\u0007G#\u0001Ba\u0015\u0004\u0016\n\u0007\u0011q\u0015\t\u0004%\r\u001dFA\u0002!\u0004\u0016\n\u0007Q\u0003\u0003\u0005\u0004\u0014\rU\u0005\u0019ABV!\u0015q1\u0011SBS\u0011!\u0019yk!&A\u0002\r\u0005\u0016!C0uQ&\u001cX\t\\3n\u0011!\u0019\u0019l!&A\u0002\r\u0015\u0016!C0uQ\u0006$X\t\\3n\u0011\u001d\u00199\f\u0001C\t\u0007s\u000b1B\\3x%\u00164XM]:fIV\u0011\u0011q\u0002\u0005\b\u0007{\u0003A\u0011CB`\u0003)qWm\u001e)bi\u000eDW\rZ\u000b\u0005\u0007\u0003\u001c9\r\u0006\u0005\u0004D\u000e%7QZBj!\u0011\u0011ei!2\u0011\u0007I\u00199\rB\u0004A\u0007w\u0013\r!a*\t\u000f\r-71\u0018a\u0001#\u0006)qL\u001a:p[\"A1qZB^\u0001\u0004\u0019\t.\u0001\u0004`a\u0006$8\r\u001b\t\u0006\u001d\u0005U6Q\u0019\u0005\b\u0007+\u001cY\f1\u0001R\u0003%y&/\u001a9mC\u000e,G\rC\u0004\u0004Z\u0002!\tba7\u0002\u00199,w\u000f\u0015:fa\u0016tG-\u001a3\u0016\t\ru71\u001d\u000b\u0005\u0007?\u001c)\u000f\u0005\u0003C\r\u000e\u0005\bc\u0001\n\u0004d\u00129\u0001ia6C\u0002\u0005\u001d\u0006\u0002CBt\u0007/\u0004\ra!9\u0002\t\u0015dW-\u001c\u0005\b\u0007W\u0004A\u0011KBw\u0003!qWm\u001e+bW\u0016tG\u0003BA\b\u0007_Daa]Bu\u0001\u0004\t\u0006bBBz\u0001\u0011E3Q_\u0001\u000b]\u0016<HI]8qa\u0016$G\u0003BA\b\u0007oDaa]By\u0001\u0004\t\u0006bBB~\u0001\u0011\u00053Q`\u0001\be\u00164XM]:f+\u0005y\u0002b\u0002BQ\u0001\u0011\u0005C\u0011A\u000b\u0007\t\u0007!I\u0002\"\u0003\u0015\u0011\u0011\u0015A1\u0004C\u000f\tC!B\u0001b\u0002\u0005\u000eA\u0019!\u0003\"\u0003\u0005\u000f\u0011-1q b\u0001+\t!A\u000b[1u\u0011!!yaa@A\u0004\u0011E\u0011A\u00012g!%\u0019\u0019\u0007b\u0005 \t/!9!\u0003\u0003\u0005\u0016\r\u0015$\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007c\u0001\n\u0005\u001a\u00119\u0001ia@C\u0002\u0005\u001d\u0006b\u0002BO\u0007\u007f\u0004\r!\u0015\u0005\t\u0005C\u001by\u00101\u0001\u0005 A)a\"!.\u0005\u0018!9!\u0011VB��\u0001\u0004\t\u0006b\u0002C\u0013\u0001\u0011\u0005CqE\u0001\u0006a\u0006$Gk\\\u000b\u0007\tS!9\u0004b\f\u0015\r\u0011-B\u0011\bC\u001e)\u0011!i\u0003\"\r\u0011\u0007I!y\u0003B\u0004\u0005\f\u0011\r\"\u0019A\u000b\t\u0011\u0011=A1\u0005a\u0002\tg\u0001\u0012ba\u0019\u0005\u0014}!)\u0004\"\f\u0011\u0007I!9\u0004B\u0004A\tG\u0011\r!a*\t\u000f\u0005-H1\u0005a\u0001#\"A1q\u001dC\u0012\u0001\u0004!)\u0004C\u0004\u0005@\u0001!\t\u0005\"\u0011\u0002\u0015I,g/\u001a:tK6\u000b\u0007/\u0006\u0004\u0005D\u0011EC\u0011\n\u000b\u0005\t\u000b\"\u0019\u0006\u0006\u0003\u0005H\u0011-\u0003c\u0001\n\u0005J\u00119A1\u0002C\u001f\u0005\u0004)\u0002\u0002\u0003C\b\t{\u0001\u001d\u0001\"\u0014\u0011\u0013\r\rD1C\u0010\u0005P\u0011\u001d\u0003c\u0001\n\u0005R\u00111\u0001\t\"\u0010C\u0002UA\u0001\"!\n\u0005>\u0001\u0007AQ\u000b\t\u0007\u0015\u0005%\u0012\u0003b\u0014\t\u000f\u0011e\u0003\u0001\"\u0011\u0005\\\u00059Q\u000f\u001d3bi\u0016$WC\u0002C/\tW\"\u0019\u0007\u0006\u0004\u0005`\u00115Dq\u000e\u000b\u0005\tC\")\u0007E\u0002\u0013\tG\"q\u0001b\u0003\u0005X\t\u0007Q\u0003\u0003\u0005\u0005\u0010\u0011]\u00039\u0001C4!%\u0019\u0019\u0007b\u0005 \tS\"\t\u0007E\u0002\u0013\tW\"q\u0001\u0011C,\u0005\u0004\t9\u000bC\u0004\u0002r\u0011]\u0003\u0019A)\t\u0011\r\u001dHq\u000ba\u0001\tSBq\u0001b\u001d\u0001\t\u0003\")(A\u0006%a2,8\u000fJ2pY>tWC\u0002C<\t\u000b#i\b\u0006\u0003\u0005z\u0011\u001dE\u0003\u0002C>\t\u007f\u00022A\u0005C?\t\u001d!Y\u0001\"\u001dC\u0002UA\u0001\u0002b\u0004\u0005r\u0001\u000fA\u0011\u0011\t\n\u0007G\"\u0019b\bCB\tw\u00022A\u0005CC\t\u001d\u0001E\u0011\u000fb\u0001\u0003OC\u0001ba:\u0005r\u0001\u0007A1\u0011\u0005\b\t\u0017\u0003A\u0011\tCG\u0003-!3m\u001c7p]\u0012\u0002H.^:\u0016\r\u0011=EQ\u0014CK)\u0011!\t\nb(\u0015\t\u0011MEq\u0013\t\u0004%\u0011UEa\u0002C\u0006\t\u0013\u0013\r!\u0006\u0005\t\t\u001f!I\tq\u0001\u0005\u001aBI11\rC\n?\u0011mE1\u0013\t\u0004%\u0011uEa\u0002!\u0005\n\n\u0007\u0011q\u0015\u0005\t\u0007O$I\t1\u0001\u0005\u001c\"9A1\u0015\u0001\u0005B\u0011\u0015\u0016!B;oS>tWC\u0002CT\tk#i\u000b\u0006\u0003\u0005*\u0012]F\u0003\u0002CV\t_\u00032A\u0005CW\t\u001d!Y\u0001\")C\u0002UA\u0001\u0002b\u0004\u0005\"\u0002\u000fA\u0011\u0017\t\n\u0007G\"\u0019b\bCZ\tW\u00032A\u0005C[\t\u001d\u0001E\u0011\u0015b\u0001\u0003OC\u0001ba\u0005\u0005\"\u0002\u0007A\u0011\u0018\t\u0006\u001d\u0005UF1\u0017\u0005\b\t{\u0003A\u0011\tC`\u0003\u0011!\u0017N\u001a4\u0016\t\u0011\u0005G\u0011\u001a\u000b\u0004?\u0011\r\u0007\u0002CB\n\tw\u0003\r\u0001\"2\u0011\u000b9\t)\fb2\u0011\u0007I!I\rB\u0004A\tw\u0013\r!a*\t\u000f\u00115\u0007\u0001\"\u0011\u0005P\u0006I\u0011N\u001c;feN,7\r^\u000b\u0005\t#$I\u000eF\u0002 \t'D\u0001ba\u0005\u0005L\u0002\u0007AQ\u001b\t\u0006\u001d\u0005UFq\u001b\t\u0004%\u0011eGa\u0002!\u0005L\n\u0007\u0011q\u0015\u0005\b\t;\u0004A\u0011\tCp\u0003\u0019\u0019xN\u001d;fIV!A\u0011\u001dC|)\ryB1\u001d\u0005\t\tK$Y\u000eq\u0001\u0005h\u0006\u0019qN\u001d3\u0011\r\u0011%Hq\u001eC{\u001d\rQA1^\u0005\u0004\t[$\u0011a\u00029bG.\fw-Z\u0005\u0005\tc$\u0019P\u0001\u0005Pe\u0012,'/\u001b8h\u0015\r!i\u000f\u0002\t\u0004%\u0011]Ha\u0002!\u0005\\\n\u0007\u0011q\u0015\u0005\b\tw\u0004A\u0011\tC\u007f\u0003!\u0019xN\u001d;XSRDGcA\u0010\u0005��\"AQ\u0011\u0001C}\u0001\u0004)\u0019!\u0001\u0002miB9!\"\"\u0002\u0012#\rE\u0013bAC\u0004\t\tIa)\u001e8di&|gN\r\u0005\b\u000b\u0017\u0001A\u0011IC\u0007\u0003\u0019\u0019xN\u001d;CsV!QqBC\r)\u0011)\t\"b\u0007\u0015\u0007})\u0019\u0002\u0003\u0005\u0005f\u0016%\u00019AC\u000b!\u0019!I\u000fb<\u0006\u0018A\u0019!#\"\u0007\u0005\r\u0001+IA1\u0001\u0016\u0011!\t)#\"\u0003A\u0002\u0015u\u0001C\u0002\u0006\u0002*E)9\u0002C\u0004\u0006\"\u0001!\t%b\t\u0002\u0019\r|WNY5oCRLwN\\:\u0015\t\u0015\u0015Rq\u0005\t\u0005\u001d\u0005mr\u0004\u0003\u0004t\u000b?\u0001\r!\u0015\u0005\b\u000bW\u0001A\u0011IC\u0017\u00031\u0001XM]7vi\u0006$\u0018n\u001c8t+\t))\u0003C\u0004\u00062\u0001!\te!@\u0002\u0011\u0011L7\u000f^5oGRDq!\"\u000e\u0001\t\u0003\u0012))\u0001\u0007tiJLgn\u001a)sK\u001aL\u0007\u0010")
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike.class */
public interface SeqViewLike<A, Coll, This extends SeqView<A, Coll> & SeqViewLike<A, Coll, This>> extends Seq<A>, IterableView<A, Coll> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$AbstractTransformed.class */
    public abstract class AbstractTransformed<B> implements SeqViewLike<A, Coll, This>.Transformed<B> {
        public final /* synthetic */ SeqViewLike $outer;
        private volatile boolean bitmap$0;
        private final Object underlying;

        public AbstractTransformed(SeqViewLike<A, Coll, This> seqViewLike) {
            Objects.requireNonNull(seqViewLike);
            this.$outer = seqViewLike;
            Function1.Cclass.$init$(this);
            PartialFunction.Cclass.$init$(this);
            TraversableOnce.Cclass.$init$(this);
            Parallelizable.Cclass.$init$(this);
            TraversableLike.Cclass.$init$(this);
            GenericTraversableTemplate.Cclass.$init$(this);
            GenTraversable.Cclass.$init$(this);
            Traversable.Cclass.$init$(this);
            GenIterable.Cclass.$init$(this);
            IterableLike.Cclass.$init$(this);
            Iterable.Cclass.$init$(this);
            GenSeqLike.Cclass.$init$(this);
            GenSeq.Cclass.$init$(this);
            SeqLike.Cclass.$init$(this);
            Seq.Cclass.$init$(this);
            ViewMkString.Cclass.$init$(this);
            TraversableViewLike.Cclass.$init$(this);
            IterableViewLike.Cclass.$init$(this);
            TraversableViewLike.Transformed.Cclass.$init$(this);
            IterableViewLike.Transformed.Cclass.$init$(this);
            Cclass.$init$(this);
            Transformed.Cclass.$init$(this);
        }

        private Object underlying$lzycompute() {
            synchronized (this) {
                if (!this.bitmap$0) {
                    this.underlying = TraversableViewLike.Transformed.Cclass.underlying(this);
                    this.bitmap$0 = true;
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.underlying;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $colon$bslash(B b, Function2<B, B, B> function2) {
            Object foldRight;
            foldRight = foldRight(b, function2);
            return (B) foldRight;
        }

        @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B, That> That $colon$plus(B b, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) Cclass.$colon$plus(this, b, canBuildFrom);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $div$colon(B b, Function2<B, B, B> function2) {
            Object foldLeft;
            foldLeft = foldLeft(b, function2);
            return (B) foldLeft;
        }

        @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B, That> That $plus$colon(B b, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) newPrepended(b);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableViewLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
        }

        @Override // scala.collection.TraversableLike
        public <B, That> That $plus$plus$colon(Traversable<B> traversable, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (Traversable) traversable, (CanBuildFrom) canBuildFrom);
        }

        @Override // scala.collection.TraversableLike
        public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableLike.Cclass.$plus$plus$colon(this, traversableOnce, canBuildFrom);
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
            return ViewMkString.Cclass.addString(this, stringBuilder, str, str2, str3);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B aggregate(Function0<B> function0, Function2<B, B, B> function2, Function2<B, B, B> function22) {
            return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.PartialFunction, scala.Function1
        public <C> PartialFunction<Object, C> andThen(Function1<B, C> function1) {
            return PartialFunction.Cclass.andThen(this, function1);
        }

        @Override // scala.Function1
        public double apply$mcDD$sp(double d) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply((AbstractTransformed<B>) BoxesRunTime.boxToDouble(d)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public double apply$mcDF$sp(float f) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply((AbstractTransformed<B>) BoxesRunTime.boxToFloat(f)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public double apply$mcDI$sp(int i) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply((AbstractTransformed<B>) BoxesRunTime.boxToInteger(i)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public double apply$mcDJ$sp(long j) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply((AbstractTransformed<B>) BoxesRunTime.boxToLong(j)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public float apply$mcFD$sp(double d) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply((AbstractTransformed<B>) BoxesRunTime.boxToDouble(d)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public float apply$mcFF$sp(float f) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply((AbstractTransformed<B>) BoxesRunTime.boxToFloat(f)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public float apply$mcFI$sp(int i) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply((AbstractTransformed<B>) BoxesRunTime.boxToInteger(i)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public float apply$mcFJ$sp(long j) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply((AbstractTransformed<B>) BoxesRunTime.boxToLong(j)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public int apply$mcID$sp(double d) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply((AbstractTransformed<B>) BoxesRunTime.boxToDouble(d)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public int apply$mcIF$sp(float f) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply((AbstractTransformed<B>) BoxesRunTime.boxToFloat(f)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public int apply$mcII$sp(int i) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply((AbstractTransformed<B>) BoxesRunTime.boxToInteger(i)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public int apply$mcIJ$sp(long j) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply((AbstractTransformed<B>) BoxesRunTime.boxToLong(j)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public long apply$mcJD$sp(double d) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply((AbstractTransformed<B>) BoxesRunTime.boxToDouble(d)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public long apply$mcJF$sp(float f) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply((AbstractTransformed<B>) BoxesRunTime.boxToFloat(f)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public long apply$mcJI$sp(int i) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply((AbstractTransformed<B>) BoxesRunTime.boxToInteger(i)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public long apply$mcJJ$sp(long j) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply((AbstractTransformed<B>) BoxesRunTime.boxToLong(j)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public void apply$mcVD$sp(double d) {
            apply((AbstractTransformed<B>) BoxesRunTime.boxToDouble(d));
        }

        @Override // scala.Function1
        public void apply$mcVF$sp(float f) {
            apply((AbstractTransformed<B>) BoxesRunTime.boxToFloat(f));
        }

        @Override // scala.Function1
        public void apply$mcVI$sp(int i) {
            apply((AbstractTransformed<B>) BoxesRunTime.boxToInteger(i));
        }

        @Override // scala.Function1
        public void apply$mcVJ$sp(long j) {
            apply((AbstractTransformed<B>) BoxesRunTime.boxToLong(j));
        }

        @Override // scala.Function1
        public boolean apply$mcZD$sp(double d) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((AbstractTransformed<B>) BoxesRunTime.boxToDouble(d)));
            return unboxToBoolean;
        }

        @Override // scala.Function1
        public boolean apply$mcZF$sp(float f) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((AbstractTransformed<B>) BoxesRunTime.boxToFloat(f)));
            return unboxToBoolean;
        }

        @Override // scala.Function1
        public boolean apply$mcZI$sp(int i) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((AbstractTransformed<B>) BoxesRunTime.boxToInteger(i)));
            return unboxToBoolean;
        }

        @Override // scala.Function1
        public boolean apply$mcZJ$sp(long j) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((AbstractTransformed<B>) BoxesRunTime.boxToLong(j)));
            return unboxToBoolean;
        }

        @Override // scala.PartialFunction
        public Object applyOrElse(Object obj, Function1 function1) {
            return PartialFunction.Cclass.applyOrElse(this, obj, function1);
        }

        @Override // scala.collection.IterableLike, scala.Equals
        public boolean canEqual(Object obj) {
            return IterableLike.Cclass.canEqual(this, obj);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That collect(PartialFunction<B, B> partialFunction, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableViewLike.Cclass.collect(this, partialFunction, canBuildFrom);
        }

        @Override // scala.collection.TraversableOnce
        public <B> Option<B> collectFirst(PartialFunction<B, B> partialFunction) {
            return TraversableOnce.Cclass.collectFirst(this, partialFunction);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
        public Iterator<SeqView<B, Coll>> combinations(int i) {
            return Cclass.combinations(this, i);
        }

        @Override // scala.collection.Seq, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<Seq> companion() {
            return Seq.Cclass.companion(this);
        }

        @Override // scala.Function1
        public <A> Function1<A, B> compose(Function1<A, Object> function1) {
            return Function1.Cclass.compose(this, function1);
        }

        @Override // scala.collection.SeqLike
        public <A1> boolean contains(A1 a1) {
            return SeqLike.Cclass.contains(this, a1);
        }

        @Override // scala.collection.SeqLike
        public <B> boolean containsSlice(GenSeq<B> genSeq) {
            return SeqLike.Cclass.containsSlice(this, genSeq);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj) {
            TraversableOnce.Cclass.copyToArray(this, obj);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj, int i) {
            TraversableOnce.Cclass.copyToArray(this, obj, i);
        }

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> void copyToArray(Object obj, int i, int i2) {
            IterableLike.Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> void copyToBuffer(Buffer<B> buffer) {
            TraversableOnce.Cclass.copyToBuffer(this, buffer);
        }

        @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B> boolean corresponds(GenSeq<B> genSeq, Function2<B, B, Object> function2) {
            return SeqLike.Cclass.corresponds(this, genSeq, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<B, Object> function1) {
            return TraversableOnce.Cclass.count(this, function1);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B> SeqView<B, Coll> diff(GenSeq<B> genSeq) {
            return Cclass.diff(this, genSeq);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
        public SeqView<B, Coll> distinct() {
            return Cclass.distinct(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public IterableView drop(int i) {
            return IterableViewLike.Cclass.drop(this, i);
        }

        @Override // scala.collection.IterableLike
        public IterableView dropRight(int i) {
            return IterableViewLike.Cclass.dropRight(this, i);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public TraversableView dropWhile(Function1 function1) {
            return TraversableViewLike.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B> boolean endsWith(GenSeq<B> genSeq) {
            return SeqLike.Cclass.endsWith(this, genSeq);
        }

        @Override // scala.Equals
        public boolean equals(Object obj) {
            return GenSeqLike.Cclass.equals(this, obj);
        }

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<B, Object> function1) {
            return IterableLike.Cclass.exists(this, function1);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public TraversableView filter(Function1 function1) {
            return TraversableViewLike.Cclass.filter(this, function1);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
        public TraversableView filterNot(Function1 function1) {
            return TraversableViewLike.Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<B> find(Function1<B, Object> function1) {
            return IterableLike.Cclass.find(this, function1);
        }

        @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
        public <B, That> That flatMap(Function1<B, GenTraversableOnce<B>> function1, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableViewLike.Cclass.flatMap(this, function1, canBuildFrom);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <B> GenTraversable flatten(Function1<B, GenTraversableOnce<B>> function1) {
            return TraversableViewLike.Cclass.flatten(this, function1);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
            return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B foldLeft(B b, Function2<B, B, B> function2) {
            return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<B, B, B> function2) {
            return (B) IterableLike.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<B, Object> function1) {
            return IterableLike.Cclass.forall(this, function1);
        }

        @Override // scala.collection.TraversableViewLike
        public <B, That> That force(CanBuildFrom<Coll, B, That> canBuildFrom) {
            return (That) TraversableViewLike.Cclass.force(this, canBuildFrom);
        }

        @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<B, U> function1) {
            IterableViewLike.Transformed.Cclass.foreach(this, function1);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <B> Builder<B, Seq<B>> genericBuilder() {
            return GenericTraversableTemplate.Cclass.genericBuilder(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <K> Map<K, SeqView<B, Coll>> groupBy(Function1<B, K> function1) {
            return TraversableViewLike.Cclass.groupBy(this, function1);
        }

        @Override // scala.collection.IterableLike
        public Iterator<SeqView<B, Coll>> grouped(int i) {
            return IterableViewLike.Cclass.grouped(this, i);
        }

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return TraversableLike.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.GenSeqLike
        public int hashCode() {
            return GenSeqLike.Cclass.hashCode(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public B head() {
            return (B) IterableLike.Cclass.head(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Option<B> headOption() {
            return TraversableViewLike.Transformed.Cclass.headOption(this);
        }

        @Override // scala.collection.GenSeqLike
        public <B> int indexOf(B b) {
            return GenSeqLike.Cclass.indexOf(this, b);
        }

        @Override // scala.collection.GenSeqLike
        public <B> int indexOf(B b, int i) {
            return GenSeqLike.Cclass.indexOf(this, b, i);
        }

        @Override // scala.collection.SeqLike
        public <B> int indexOfSlice(GenSeq<B> genSeq) {
            return SeqLike.Cclass.indexOfSlice(this, genSeq);
        }

        @Override // scala.collection.SeqLike
        public <B> int indexOfSlice(GenSeq<B> genSeq, int i) {
            return SeqLike.Cclass.indexOfSlice(this, genSeq, i);
        }

        @Override // scala.collection.GenSeqLike
        public int indexWhere(Function1<B, Object> function1) {
            return GenSeqLike.Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
        public int indexWhere(Function1<B, Object> function1, int i) {
            return SeqLike.Cclass.indexWhere(this, function1, i);
        }

        @Override // scala.collection.SeqLike
        public Range indices() {
            return SeqLike.Cclass.indices(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public TraversableView init() {
            return TraversableViewLike.Cclass.init(this);
        }

        @Override // scala.collection.TraversableLike
        public Iterator<SeqView<B, Coll>> inits() {
            return TraversableViewLike.Cclass.inits(this);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B> SeqView<B, Coll> intersect(GenSeq<B> genSeq) {
            return Cclass.intersect(this, genSeq);
        }

        @Override // scala.collection.GenSeqLike
        public boolean isDefinedAt(int i) {
            return GenSeqLike.Cclass.isDefinedAt(this, i);
        }

        @Override // scala.PartialFunction
        public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
            return isDefinedAt(BoxesRunTime.unboxToInt(obj));
        }

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return IterableViewLike.Transformed.Cclass.isEmpty(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
        public final boolean isTraversableAgain() {
            return TraversableLike.Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public B last() {
            return (B) TraversableLike.Cclass.last(this);
        }

        @Override // scala.collection.GenSeqLike
        public <B> int lastIndexOf(B b) {
            return GenSeqLike.Cclass.lastIndexOf(this, b);
        }

        @Override // scala.collection.GenSeqLike
        public <B> int lastIndexOf(B b, int i) {
            return GenSeqLike.Cclass.lastIndexOf(this, b, i);
        }

        @Override // scala.collection.SeqLike
        public <B> int lastIndexOfSlice(GenSeq<B> genSeq) {
            return SeqLike.Cclass.lastIndexOfSlice(this, genSeq);
        }

        @Override // scala.collection.SeqLike
        public <B> int lastIndexOfSlice(GenSeq<B> genSeq, int i) {
            return SeqLike.Cclass.lastIndexOfSlice(this, genSeq, i);
        }

        @Override // scala.collection.GenSeqLike
        public int lastIndexWhere(Function1<B, Object> function1) {
            return GenSeqLike.Cclass.lastIndexWhere(this, function1);
        }

        @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
        public int lastIndexWhere(Function1<B, Object> function1, int i) {
            return SeqLike.Cclass.lastIndexWhere(this, function1, i);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Option<B> lastOption() {
            return TraversableViewLike.Transformed.Cclass.lastOption(this);
        }

        @Override // scala.collection.SeqLike
        public int lengthCompare(int i) {
            return SeqLike.Cclass.lengthCompare(this, i);
        }

        @Override // scala.PartialFunction
        public Function1<Object, Option<B>> lift() {
            return PartialFunction.Cclass.lift(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
        public <B, That> That map(Function1<B, B> function1, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableViewLike.Cclass.map(this, function1, canBuildFrom);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B max(Ordering<B> ordering) {
            return (B) TraversableOnce.Cclass.max(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B maxBy(Function1<B, B> function1, Ordering<B> ordering) {
            return (B) TraversableOnce.Cclass.maxBy(this, function1, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B min(Ordering<B> ordering) {
            return (B) TraversableOnce.Cclass.min(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B minBy(Function1<B, B> function1, Ordering<B> ordering) {
            return (B) TraversableOnce.Cclass.minBy(this, function1, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString() {
            return ViewMkString.Cclass.mkString(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString(String str) {
            return ViewMkString.Cclass.mkString(this, str);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString(String str, String str2, String str3) {
            return ViewMkString.Cclass.mkString(this, str, str2, str3);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public <B> SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<B> newAppended(GenTraversable<B> genTraversable) {
            return Cclass.newAppended(this, genTraversable);
        }

        @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
        public Builder<B, SeqView<B, Coll>> newBuilder() {
            return TraversableViewLike.Cclass.newBuilder(this);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<B> newDropped(int i) {
            return Cclass.newDropped(this, i);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<B> newDroppedWhile(Function1<B, Object> function1) {
            return Cclass.newDroppedWhile(this, function1);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<B> newFiltered(Function1<B, Object> function1) {
            return Cclass.newFiltered(this, function1);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public <B> SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<B> newFlatMapped(Function1<B, GenTraversableOnce<B>> function1) {
            return Cclass.newFlatMapped(this, function1);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public <B> SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<B> newForced(Function0<GenSeq<B>> function0) {
            return Cclass.newForced(this, function0);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public <B> SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<B> newMapped(Function1<B, B> function1) {
            return Cclass.newMapped(this, function1);
        }

        @Override // scala.collection.SeqViewLike
        public <B> SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<B> newPatched(int i, GenSeq<B> genSeq, int i2) {
            return Cclass.newPatched(this, i, genSeq, i2);
        }

        @Override // scala.collection.SeqViewLike
        public <B> SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<B> newPrepended(B b) {
            return Cclass.newPrepended(this, b);
        }

        @Override // scala.collection.SeqViewLike
        public SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<B> newReversed() {
            return Cclass.newReversed(this);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<B> newSliced(SliceInterval sliceInterval) {
            return Cclass.newSliced(this, sliceInterval);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<B> newTaken(int i) {
            return Cclass.newTaken(this, i);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<B> newTakenWhile(Function1<B, Object> function1) {
            return Cclass.newTakenWhile(this, function1);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike
        public <B> SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<Tuple2<B, B>> newZipped(GenIterable<B> genIterable) {
            return Cclass.newZipped(this, genIterable);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike
        public <A1, B> SeqViewLike<B, Coll, SeqView<B, Coll>>.Transformed<Tuple2<A1, B>> newZippedAll(GenIterable<B> genIterable, A1 a1, B b) {
            return Cclass.newZippedAll(this, genIterable, a1, b);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean nonEmpty() {
            return TraversableOnce.Cclass.nonEmpty(this);
        }

        @Override // scala.PartialFunction
        public <A1, B1> PartialFunction<A1, B1> orElse(PartialFunction<A1, B1> partialFunction) {
            return PartialFunction.Cclass.orElse(this, partialFunction);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B, That> That padTo(int i, B b, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) Cclass.padTo(this, i, b, canBuildFrom);
        }

        @Override // scala.collection.Parallelizable
        public Parallel par() {
            return Parallelizable.Cclass.par(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<B, ParSeq<B>> parCombiner() {
            return SeqLike.Cclass.parCombiner(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Tuple2<SeqView<B, Coll>, SeqView<B, Coll>> partition(Function1<B, Object> function1) {
            return TraversableViewLike.Cclass.partition(this, function1);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B, That> That patch(int i, GenSeq<B> genSeq, int i2, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) Cclass.patch(this, i, genSeq, i2, canBuildFrom);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
        public Iterator<SeqView<B, Coll>> permutations() {
            return Cclass.permutations(this);
        }

        @Override // scala.collection.GenSeqLike
        public int prefixLength(Function1<B, Object> function1) {
            return GenSeqLike.Cclass.prefixLength(this, function1);
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
        public <B> B reduceLeft(Function2<B, B, B> function2) {
            return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceLeftOption(Function2<B, B, B> function2) {
            return TraversableOnce.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
            return TraversableOnce.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B reduceRight(Function2<B, B, B> function2) {
            return (B) IterableLike.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceRightOption(Function2<B, B, B> function2) {
            return TraversableOnce.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
        public Object repr() {
            return TraversableLike.Cclass.repr(this);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
        public SeqView<B, Coll> reverse() {
            return Cclass.reverse(this);
        }

        @Override // scala.collection.SeqLike
        public Iterator<B> reverseIterator() {
            return SeqLike.Cclass.reverseIterator(this);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B, That> That reverseMap(Function1<B, B> function1, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) Cclass.reverseMap(this, function1, canBuildFrom);
        }

        @Override // scala.collection.TraversableOnce
        public List<B> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.PartialFunction
        public <U> Function1<Object, Object> runWith(Function1<B, U> function1) {
            return PartialFunction.Cclass.runWith(this, function1);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <B> boolean sameElements(GenIterable<B> genIterable) {
            return IterableLike.Cclass.sameElements(this, genIterable);
        }

        /* renamed from: scala$collection$SeqViewLike$AbstractTransformed$$$outer */
        public /* synthetic */ SeqViewLike scala$collection$TraversableViewLike$Transformed$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.TraversableViewLike
        public /* synthetic */ TraversableView scala$collection$TraversableViewLike$$super$tail() {
            return (TraversableView) TraversableLike.Cclass.tail(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That scanLeft(B b, Function2<B, B, B> function2, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableViewLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That scanRight(B b, Function2<B, B, B> function2, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableViewLike.Cclass.scanRight(this, b, function2, canBuildFrom);
        }

        @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
        public int segmentLength(Function1<B, Object> function1, int i) {
            return SeqLike.Cclass.segmentLength(this, function1, i);
        }

        @Override // scala.collection.Seq, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Seq<B> seq() {
            return Seq.Cclass.seq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return SeqLike.Cclass.size(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public TraversableView slice(int i, int i2) {
            return TraversableViewLike.Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.TraversableLike
        public Object sliceWithKnownBound(int i, int i2) {
            return TraversableLike.Cclass.sliceWithKnownBound(this, i, i2);
        }

        @Override // scala.collection.TraversableLike
        public Object sliceWithKnownDelta(int i, int i2, int i3) {
            return TraversableLike.Cclass.sliceWithKnownDelta(this, i, i2, i3);
        }

        @Override // scala.collection.IterableLike
        public Iterator<SeqView<B, Coll>> sliding(int i) {
            return IterableViewLike.Cclass.sliding(this, i);
        }

        @Override // scala.collection.IterableLike
        public Iterator<SeqView<B, Coll>> sliding(int i, int i2) {
            return IterableViewLike.Cclass.sliding(this, i, i2);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
        public <B> SeqView<B, Coll> sortBy(Function1<B, B> function1, Ordering<B> ordering) {
            return Cclass.sortBy(this, function1, ordering);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
        public SeqView<B, Coll> sortWith(Function2<B, B, Object> function2) {
            return Cclass.sortWith(this, function2);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
        public <B> SeqView<B, Coll> sorted(Ordering<B> ordering) {
            return Cclass.sorted(this, ordering);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Tuple2<SeqView<B, Coll>, SeqView<B, Coll>> span(Function1<B, Object> function1) {
            return TraversableViewLike.Cclass.span(this, function1);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Tuple2<SeqView<B, Coll>, SeqView<B, Coll>> splitAt(int i) {
            return TraversableViewLike.Cclass.splitAt(this, i);
        }

        @Override // scala.collection.GenSeqLike
        public <B> boolean startsWith(GenSeq<B> genSeq) {
            return GenSeqLike.Cclass.startsWith(this, genSeq);
        }

        @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B> boolean startsWith(GenSeq<B> genSeq, int i) {
            return SeqLike.Cclass.startsWith(this, genSeq, i);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
        public String stringPrefix() {
            return Cclass.stringPrefix(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B sum(Numeric<B> numeric) {
            return (B) TraversableOnce.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public TraversableView tail() {
            return TraversableViewLike.Cclass.tail(this);
        }

        @Override // scala.collection.TraversableLike
        public Iterator<SeqView<B, Coll>> tails() {
            return TraversableViewLike.Cclass.tails(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public IterableView take(int i) {
            return IterableViewLike.Cclass.take(this, i);
        }

        @Override // scala.collection.IterableLike
        public IterableView takeRight(int i) {
            return IterableViewLike.Cclass.takeRight(this, i);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public TraversableView takeWhile(Function1 function1) {
            return TraversableViewLike.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.TraversableLike, scala.collection.IterableLike
        public Seq<B> thisCollection() {
            return SeqLike.Cclass.thisCollection(this);
        }

        @Override // scala.collection.ViewMkString
        public Seq<B> thisSeq() {
            return ViewMkString.Cclass.thisSeq(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, B, Col> canBuildFrom) {
            return (Col) TraversableLike.Cclass.m184to(this, canBuildFrom);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Object toArray(ClassTag<B> classTag) {
            return TraversableOnce.Cclass.toArray(this, classTag);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Buffer<B> toBuffer() {
            return TraversableOnce.Cclass.toBuffer(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.IterableLike
        public Seq toCollection(Object obj) {
            return SeqLike.Cclass.toCollection(this, obj);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public IndexedSeq<B> toIndexedSeq() {
            return TraversableOnce.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterable<B> toIterable() {
            return IterableLike.Cclass.toIterable(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<B> toIterator() {
            return IterableLike.Cclass.toIterator(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public List<B> toList() {
            return TraversableOnce.Cclass.toList(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <T, U> Map<T, U> toMap(Predef$$less$colon$less<B, Tuple2<T, U>> predef$$less$colon$less) {
            return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public Seq<B> toSeq() {
            return SeqLike.Cclass.toSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return TraversableOnce.Cclass.toSet(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<B> toStream() {
            return IterableLike.Cclass.toStream(this);
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.Function1
        public String toString() {
            return Transformed.Cclass.toString(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Traversable<B> toTraversable() {
            return TraversableLike.Cclass.toTraversable(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Vector<B> toVector() {
            return TraversableOnce.Cclass.toVector(this);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public GenTraversable transpose(Function1 function1) {
            return GenericTraversableTemplate.Cclass.transpose(this, function1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // scala.collection.TraversableViewLike
        public Coll underlying() {
            return this.bitmap$0 ? this.underlying : underlying$lzycompute();
        }

        @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) Cclass.union(this, genSeq, canBuildFrom);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<B, Tuple2<A1, A2>> function1) {
            return TraversableViewLike.Cclass.unzip(this, function1);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<B, Tuple3<A1, A2, A3>> function1) {
            return TraversableViewLike.Cclass.unzip3(this, function1);
        }

        @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B, That> That updated(int i, B b, CanBuildFrom<SeqView<B, Coll>, B, That> canBuildFrom) {
            return (That) Cclass.updated(this, i, b, canBuildFrom);
        }

        @Override // scala.collection.TraversableLike, scala.collection.IterableLike
        public Object view() {
            return SeqLike.Cclass.view(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.IterableLike
        public SeqView<B, SeqView<B, Coll>> view(int i, int i2) {
            return SeqLike.Cclass.view(this, i, i2);
        }

        @Override // scala.collection.TraversableViewLike
        public final String viewIdString() {
            return TraversableViewLike.Transformed.Cclass.viewIdString(this);
        }

        @Override // scala.collection.TraversableViewLike
        public String viewIdentifier() {
            return TraversableViewLike.Cclass.viewIdentifier(this);
        }

        @Override // scala.collection.TraversableViewLike
        public String viewToString() {
            return TraversableViewLike.Cclass.viewToString(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
        public TraversableView withFilter(Function1 function1) {
            return TraversableViewLike.Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<SeqView<B, Coll>, Tuple2<A1, B>, That> canBuildFrom) {
            return (That) IterableViewLike.Cclass.zip(this, genIterable, canBuildFrom);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<SeqView<B, Coll>, Tuple2<A1, B>, That> canBuildFrom) {
            return (That) IterableViewLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <A1, That> That zipWithIndex(CanBuildFrom<SeqView<B, Coll>, Tuple2<A1, Object>, That> canBuildFrom) {
            return (That) IterableViewLike.Cclass.zipWithIndex(this, canBuildFrom);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Appended.class */
    public interface Appended<B> extends IterableViewLike<A, Coll, This>.Appended<B>, SeqViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.SeqViewLike$Appended$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Appended$class.class */
        public abstract class Cclass {
            public static void $init$(Appended appended) {
            }

            public static Object apply(Appended appended, int i) {
                return i < appended.scala$collection$SeqViewLike$Appended$$$outer().length() ? appended.scala$collection$SeqViewLike$Appended$$$outer().apply(i) : appended.restSeq().apply(i - appended.scala$collection$SeqViewLike$Appended$$$outer().length());
            }

            public static int length(Appended appended) {
                return appended.scala$collection$SeqViewLike$Appended$$$outer().length() + appended.restSeq().length();
            }

            public static GenSeq restSeq(Appended appended) {
                return appended.rest().toSeq();
            }
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        B apply(int i);

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        GenSeq<B> restSeq();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Appended$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$DroppedWhile.class */
    public interface DroppedWhile extends IterableViewLike<A, Coll, This>.DroppedWhile, SeqViewLike<A, Coll, This>.Transformed<A> {

        /* renamed from: scala.collection.SeqViewLike$DroppedWhile$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$DroppedWhile$class.class */
        public abstract class Cclass {
            public static void $init$(DroppedWhile droppedWhile) {
            }

            public static Object apply(DroppedWhile droppedWhile, int i) {
                if (i >= 0) {
                    return droppedWhile.scala$collection$SeqViewLike$DroppedWhile$$$outer().apply(i + droppedWhile.start());
                }
                throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
            }

            public static int length(DroppedWhile droppedWhile) {
                return droppedWhile.scala$collection$SeqViewLike$DroppedWhile$$$outer().length() - droppedWhile.start();
            }

            public static int start(DroppedWhile droppedWhile) {
                return droppedWhile.scala$collection$SeqViewLike$DroppedWhile$$$outer().prefixLength(droppedWhile.pred());
            }
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        A apply(int i);

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$DroppedWhile$$$outer();

        int start();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$EmptyView.class */
    public interface EmptyView extends SeqViewLike<A, Coll, This>.Transformed<Nothing$>, IterableViewLike<A, Coll, This>.EmptyView {

        /* renamed from: scala.collection.SeqViewLike$EmptyView$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$EmptyView$class.class */
        public abstract class Cclass {
            public static void $init$(EmptyView emptyView) {
            }

            public static final Nothing$ apply(EmptyView emptyView, int i) {
                return Nil$.MODULE$.apply(i);
            }

            public static final int length(EmptyView emptyView) {
                return 0;
            }
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        Nothing$ apply(int i);

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$EmptyView$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Filtered.class */
    public interface Filtered extends IterableViewLike<A, Coll, This>.Filtered, SeqViewLike<A, Coll, This>.Transformed<A> {

        /* renamed from: scala.collection.SeqViewLike$Filtered$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Filtered$class.class */
        public abstract class Cclass {
            public static void $init$(Filtered filtered) {
            }

            public static Object apply(Filtered filtered, int i) {
                return filtered.scala$collection$SeqViewLike$Filtered$$$outer().apply(filtered.index()[i]);
            }

            public static int[] index(Filtered filtered) {
                IntRef create = IntRef.create(0);
                int[] iArr = new int[filtered.scala$collection$SeqViewLike$Filtered$$$outer().length()];
                Predef$ predef$ = Predef$.MODULE$;
                int length = filtered.scala$collection$SeqViewLike$Filtered$$$outer().length();
                Range$ range$ = Range$.MODULE$;
                Range range = new Range(0, length, 1);
                range.scala$collection$immutable$Range$$validateMaxLength();
                boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
                int start = range.start();
                int terminalElement = range.terminalElement();
                int step = range.step();
                int i = 0;
                while (true) {
                    if (!(!z ? i < range.numRangeElements() : start != terminalElement)) {
                        Predef$ predef$2 = Predef$.MODULE$;
                        return (int[]) IndexedSeqOptimized.Cclass.take(new ArrayOps.ofInt(iArr), create.elem);
                    }
                    if (BoxesRunTime.unboxToBoolean(filtered.pred().apply(filtered.scala$collection$SeqViewLike$Filtered$$$outer().apply(start)))) {
                        iArr[create.elem] = start;
                        create.elem++;
                    }
                    i++;
                    start += step;
                }
            }

            public static int length(Filtered filtered) {
                return filtered.index().length;
            }
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        A apply(int i);

        int[] index();

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Filtered$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$FlatMapped.class */
    public interface FlatMapped<B> extends IterableViewLike<A, Coll, This>.FlatMapped<B>, SeqViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.SeqViewLike$FlatMapped$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$FlatMapped$class.class */
        public abstract class Cclass {
            public static void $init$(FlatMapped flatMapped) {
            }

            public static Object apply(FlatMapped flatMapped, int i) {
                if (i < 0 || i >= flatMapped.length()) {
                    throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
                }
                int findRow = flatMapped.findRow(i, 0, flatMapped.scala$collection$SeqViewLike$FlatMapped$$$outer().length() - 1);
                return flatMapped.mapping().apply(flatMapped.scala$collection$SeqViewLike$FlatMapped$$$outer().apply(findRow)).seq().toSeq().apply(i - flatMapped.index()[findRow]);
            }

            public static int findRow(FlatMapped flatMapped, int i, int i2, int i3) {
                int i4;
                int i5 = (i2 + i3) / 2;
                if (i < flatMapped.index()[i5]) {
                    i4 = flatMapped.findRow(i, i2, i5 - 1);
                } else {
                    int i6 = i5 + 1;
                    i4 = i5;
                    if (i >= flatMapped.index()[i6]) {
                        i4 = flatMapped.findRow(i, i6, i3);
                    }
                }
                return i4;
            }

            public static int[] index(FlatMapped flatMapped) {
                int[] iArr = new int[flatMapped.scala$collection$SeqViewLike$FlatMapped$$$outer().length() + 1];
                iArr[0] = 0;
                Predef$ predef$ = Predef$.MODULE$;
                int length = flatMapped.scala$collection$SeqViewLike$FlatMapped$$$outer().length();
                Range$ range$ = Range$.MODULE$;
                Range range = new Range(0, length, 1);
                range.scala$collection$immutable$Range$$validateMaxLength();
                boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
                int start = range.start();
                int terminalElement = range.terminalElement();
                int step = range.step();
                int i = 0;
                while (true) {
                    if (!z ? i < range.numRangeElements() : start != terminalElement) {
                        iArr[start + 1] = iArr[start] + flatMapped.mapping().apply(flatMapped.scala$collection$SeqViewLike$FlatMapped$$$outer().apply(start)).seq().size();
                        i++;
                        start += step;
                    } else {
                        return iArr;
                    }
                }
            }

            public static int length(FlatMapped flatMapped) {
                return flatMapped.index()[flatMapped.scala$collection$SeqViewLike$FlatMapped$$$outer().length()];
            }
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        B apply(int i);

        int findRow(int i, int i2, int i3);

        int[] index();

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$FlatMapped$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Forced.class */
    public interface Forced<B> extends IterableViewLike<A, Coll, This>.Forced<B>, SeqViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.SeqViewLike$Forced$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Forced$class.class */
        public abstract class Cclass {
            public static void $init$(Forced forced) {
            }

            public static Object apply(Forced forced, int i) {
                return forced.forced().apply(i);
            }

            public static int length(Forced forced) {
                return forced.forced().length();
            }
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        B apply(int i);

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Forced$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Mapped.class */
    public interface Mapped<B> extends IterableViewLike<A, Coll, This>.Mapped<B>, SeqViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.SeqViewLike$Mapped$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Mapped$class.class */
        public abstract class Cclass {
            public static void $init$(Mapped mapped) {
            }

            public static Object apply(Mapped mapped, int i) {
                return mapped.mapping().apply(mapped.scala$collection$SeqViewLike$Mapped$$$outer().apply(i));
            }

            public static int length(Mapped mapped) {
                return mapped.scala$collection$SeqViewLike$Mapped$$$outer().length();
            }
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        B apply(int i);

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Mapped$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Patched.class */
    public interface Patched<B> extends SeqViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.SeqViewLike$Patched$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Patched$class.class */
        public abstract class Cclass {
            public static void $init$(Patched patched) {
            }

            public static Object apply(Patched patched, int i) {
                int length = patched.scala$collection$SeqViewLike$Patched$$$outer().lengthCompare(patched.from()) < 0 ? patched.scala$collection$SeqViewLike$Patched$$$outer().length() : patched.from();
                return i < length ? patched.scala$collection$SeqViewLike$Patched$$$outer().apply(i) : i < patched.scala$collection$SeqViewLike$Patched$$plen() + length ? patched.patch().apply(i - length) : patched.scala$collection$SeqViewLike$Patched$$$outer().apply((i - patched.scala$collection$SeqViewLike$Patched$$plen()) + patched.replaced());
            }

            public static Iterator iterator(Patched patched) {
                return patched.scala$collection$SeqViewLike$Patched$$$outer().iterator().patch(patched.from(), patched.patch().iterator(), patched.replaced());
            }

            public static int length(Patched patched) {
                int length = patched.scala$collection$SeqViewLike$Patched$$$outer().length();
                int min = package$.MODULE$.min(patched.from(), length);
                return min + patched.scala$collection$SeqViewLike$Patched$$plen() + package$.MODULE$.max(0, (length - min) - patched.replaced());
            }

            public static final String viewIdentifier(Patched patched) {
                return "P";
            }
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        B apply(int i);

        int from();

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<B> iterator();

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        GenSeq<B> patch();

        int replaced();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Patched$$$outer();

        int scala$collection$SeqViewLike$Patched$$plen();

        @Override // scala.collection.TraversableViewLike
        String viewIdentifier();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Prepended.class */
    public interface Prepended<B> extends SeqViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.SeqViewLike$Prepended$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Prepended$class.class */
        public abstract class Cclass {
            public static void $init$(Prepended prepended) {
            }

            public static Object apply(Prepended prepended, int i) {
                return i == 0 ? prepended.fst() : prepended.scala$collection$SeqViewLike$Prepended$$$outer().apply(i - 1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static Iterator iterator(Prepended prepended) {
                return Iterator$.MODULE$.single(prepended.fst()).$plus$plus(new SeqViewLike$Prepended$$anonfun$iterator$1(prepended));
            }

            public static int length(Prepended prepended) {
                return prepended.scala$collection$SeqViewLike$Prepended$$$outer().length() + 1;
            }

            public static final String viewIdentifier(Prepended prepended) {
                return ExifInterface.GPS_MEASUREMENT_IN_PROGRESS;
            }
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        B apply(int i);

        B fst();

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<B> iterator();

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Prepended$$$outer();

        @Override // scala.collection.TraversableViewLike
        String viewIdentifier();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Reversed.class */
    public interface Reversed extends SeqViewLike<A, Coll, This>.Transformed<A> {

        /* renamed from: scala.collection.SeqViewLike$Reversed$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Reversed$class.class */
        public abstract class Cclass {
            public static void $init$(Reversed reversed) {
            }

            public static Object apply(Reversed reversed, int i) {
                return reversed.scala$collection$SeqViewLike$Reversed$$$outer().apply((reversed.length() - 1) - i);
            }

            private static Iterator createReversedIterator(Reversed reversed) {
                ObjectRef create = ObjectRef.create(Nil$.MODULE$);
                reversed.scala$collection$SeqViewLike$Reversed$$$outer().foreach(new SeqViewLike$Reversed$$anonfun$createReversedIterator$1(reversed, create));
                return ((List) create.elem).iterator();
            }

            public static Iterator iterator(Reversed reversed) {
                return createReversedIterator(reversed);
            }

            public static int length(Reversed reversed) {
                return reversed.scala$collection$SeqViewLike$Reversed$$$outer().length();
            }

            public static final String viewIdentifier(Reversed reversed) {
                return "R";
            }
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        A apply(int i);

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<A> iterator();

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Reversed$$$outer();

        @Override // scala.collection.TraversableViewLike
        String viewIdentifier();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Sliced.class */
    public interface Sliced extends IterableViewLike<A, Coll, This>.Sliced, SeqViewLike<A, Coll, This>.Transformed<A> {

        /* renamed from: scala.collection.SeqViewLike$Sliced$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Sliced$class.class */
        public abstract class Cclass {
            public static void $init$(Sliced sliced) {
            }

            public static Object apply(Sliced sliced, int i) {
                if (i < 0 || sliced.from() + i >= sliced.until()) {
                    throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
                }
                return sliced.scala$collection$SeqViewLike$Sliced$$$outer().apply(i + sliced.from());
            }

            public static void foreach(Sliced sliced, Function1 function1) {
                sliced.iterator().foreach(function1);
            }

            public static Iterator iterator(Sliced sliced) {
                return sliced.scala$collection$SeqViewLike$Sliced$$$outer().iterator().drop(sliced.from()).take(sliced.endpoints().width());
            }

            public static int length(Sliced sliced) {
                return sliced.iterator().size();
            }
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        A apply(int i);

        @Override // scala.collection.TraversableViewLike.Sliced, scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        <U> void foreach(Function1<A, U> function1);

        @Override // scala.collection.IterableViewLike.Sliced, scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<A> iterator();

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Sliced$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$TakenWhile.class */
    public interface TakenWhile extends IterableViewLike<A, Coll, This>.TakenWhile, SeqViewLike<A, Coll, This>.Transformed<A> {

        /* renamed from: scala.collection.SeqViewLike$TakenWhile$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$TakenWhile$class.class */
        public abstract class Cclass {
            public static void $init$(TakenWhile takenWhile) {
            }

            public static Object apply(TakenWhile takenWhile, int i) {
                if (i < takenWhile.len()) {
                    return takenWhile.scala$collection$SeqViewLike$TakenWhile$$$outer().apply(i);
                }
                throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
            }

            public static int len(TakenWhile takenWhile) {
                return takenWhile.scala$collection$SeqViewLike$TakenWhile$$$outer().prefixLength(takenWhile.pred());
            }

            public static int length(TakenWhile takenWhile) {
                return takenWhile.len();
            }
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        A apply(int i);

        int len();

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$TakenWhile$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Transformed.class */
    public interface Transformed<B> extends SeqView<B, Coll>, IterableViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.SeqViewLike$Transformed$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Transformed$class.class */
        public abstract class Cclass {
            public static void $init$(Transformed transformed) {
            }

            public static String toString(Transformed transformed) {
                return transformed.viewToString();
            }
        }

        B apply(int i);

        int length();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Transformed$$$outer();

        @Override // scala.Function1
        String toString();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Zipped.class */
    public interface Zipped<B> extends IterableViewLike<A, Coll, This>.Zipped<B>, SeqViewLike<A, Coll, This>.Transformed<Tuple2<A, B>> {

        /* renamed from: scala.collection.SeqViewLike$Zipped$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Zipped$class.class */
        public abstract class Cclass {
            public static void $init$(Zipped zipped) {
            }

            public static Tuple2 apply(Zipped zipped, int i) {
                return new Tuple2(zipped.scala$collection$SeqViewLike$Zipped$$$outer().apply(i), zipped.thatSeq().apply(i));
            }

            public static int length(Zipped zipped) {
                return zipped.thatSeq().lengthCompare(zipped.scala$collection$SeqViewLike$Zipped$$$outer().length()) <= 0 ? zipped.thatSeq().length() : zipped.scala$collection$SeqViewLike$Zipped$$$outer().length();
            }

            public static Seq thatSeq(Zipped zipped) {
                return zipped.other().seq().toSeq();
            }
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        Tuple2<A, B> apply(int i);

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Zipped$$$outer();

        Seq<B> thatSeq();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$ZippedAll.class */
    public interface ZippedAll<A1, B> extends IterableViewLike<A, Coll, This>.ZippedAll<A1, B>, SeqViewLike<A, Coll, This>.Transformed<Tuple2<A1, B>> {

        /* renamed from: scala.collection.SeqViewLike$ZippedAll$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$ZippedAll$class.class */
        public abstract class Cclass {
            public static void $init$(ZippedAll zippedAll) {
            }

            public static Tuple2 apply(ZippedAll zippedAll, int i) {
                return new Tuple2(i < zippedAll.scala$collection$SeqViewLike$ZippedAll$$$outer().length() ? zippedAll.scala$collection$SeqViewLike$ZippedAll$$$outer().apply(i) : zippedAll.thisElem(), i < zippedAll.thatSeq().length() ? zippedAll.thatSeq().apply(i) : zippedAll.thatElem());
            }

            public static int length(ZippedAll zippedAll) {
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                return richInt$.max$extension(zippedAll.scala$collection$SeqViewLike$ZippedAll$$$outer().length(), zippedAll.thatSeq().length());
            }

            public static Seq thatSeq(ZippedAll zippedAll) {
                return zippedAll.other().seq().toSeq();
            }
        }

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        Tuple2<A1, B> apply(int i);

        @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        /* synthetic */ SeqViewLike scala$collection$SeqViewLike$ZippedAll$$$outer();

        Seq<B> thatSeq();
    }

    /* renamed from: scala.collection.SeqViewLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$class.class */
    public abstract class Cclass {
        public static Object $colon$plus(SeqViewLike seqViewLike, Object obj, CanBuildFrom canBuildFrom) {
            return seqViewLike.$plus$plus(Iterator$.MODULE$.single(obj), canBuildFrom);
        }

        public static void $init$(SeqViewLike seqViewLike) {
        }

        public static Object $plus$colon(SeqViewLike seqViewLike, Object obj, CanBuildFrom canBuildFrom) {
            return seqViewLike.newPrepended(obj);
        }

        public static Iterator combinations(SeqViewLike seqViewLike, int i) {
            return seqViewLike.thisSeq().combinations(i).map(new SeqViewLike$$anonfun$combinations$1(seqViewLike));
        }

        public static SeqView diff(SeqViewLike seqViewLike, GenSeq genSeq) {
            return seqViewLike.newForced((Function0) new SeqViewLike$$anonfun$diff$1(seqViewLike, genSeq));
        }

        public static SeqView distinct(SeqViewLike seqViewLike) {
            return seqViewLike.newForced((Function0) new SeqViewLike$$anonfun$distinct$1(seqViewLike));
        }

        public static SeqView intersect(SeqViewLike seqViewLike, GenSeq genSeq) {
            return seqViewLike.newForced((Function0) new SeqViewLike$$anonfun$intersect$1(seqViewLike, genSeq));
        }

        public static Transformed newAppended(SeqViewLike seqViewLike, GenTraversable genTraversable) {
            return new SeqViewLike$$anon$2(seqViewLike, genTraversable);
        }

        public static Transformed newDropped(SeqViewLike seqViewLike, int i) {
            return seqViewLike.newSliced(SliceInterval$.MODULE$.apply(i, Integer.MAX_VALUE));
        }

        public static Transformed newDroppedWhile(SeqViewLike seqViewLike, Function1 function1) {
            return new SeqViewLike$$anon$7(seqViewLike, function1);
        }

        public static Transformed newFiltered(SeqViewLike seqViewLike, Function1 function1) {
            return new SeqViewLike$$anon$5(seqViewLike, function1);
        }

        public static Transformed newFlatMapped(SeqViewLike seqViewLike, Function1 function1) {
            return new SeqViewLike$$anon$4(seqViewLike, function1);
        }

        public static Transformed newForced(SeqViewLike seqViewLike, Function0 function0) {
            return new SeqViewLike$$anon$1(seqViewLike, function0);
        }

        public static Transformed newMapped(SeqViewLike seqViewLike, Function1 function1) {
            return new SeqViewLike$$anon$3(seqViewLike, function1);
        }

        public static Transformed newPatched(SeqViewLike seqViewLike, int i, GenSeq genSeq, int i2) {
            return new SeqViewLike$$anon$12(seqViewLike, i, genSeq, i2);
        }

        public static Transformed newPrepended(SeqViewLike seqViewLike, Object obj) {
            return new SeqViewLike$$anon$13(seqViewLike, obj);
        }

        public static Transformed newReversed(SeqViewLike seqViewLike) {
            return new SeqViewLike$$anon$11(seqViewLike);
        }

        public static Transformed newSliced(SeqViewLike seqViewLike, SliceInterval sliceInterval) {
            return new SeqViewLike$$anon$6(seqViewLike, sliceInterval);
        }

        public static Transformed newTaken(SeqViewLike seqViewLike, int i) {
            return seqViewLike.newSliced(SliceInterval$.MODULE$.apply(0, i));
        }

        public static Transformed newTakenWhile(SeqViewLike seqViewLike, Function1 function1) {
            return new SeqViewLike$$anon$8(seqViewLike, function1);
        }

        public static Transformed newZipped(SeqViewLike seqViewLike, GenIterable genIterable) {
            return new SeqViewLike$$anon$9(seqViewLike, genIterable);
        }

        public static Transformed newZippedAll(SeqViewLike seqViewLike, GenIterable genIterable, Object obj, Object obj2) {
            return new SeqViewLike$$anon$10(seqViewLike, genIterable, obj, obj2);
        }

        public static Object padTo(SeqViewLike seqViewLike, int i, Object obj, CanBuildFrom canBuildFrom) {
            return seqViewLike.patch(seqViewLike.length(), (GenSeq) Seq$.MODULE$.fill(i - seqViewLike.length(), new SeqViewLike$$anonfun$padTo$1(seqViewLike, obj)), 0, canBuildFrom);
        }

        public static Object patch(SeqViewLike seqViewLike, int i, GenSeq genSeq, int i2, CanBuildFrom canBuildFrom) {
            return seqViewLike.newPatched(package$.MODULE$.max(0, i), genSeq, package$.MODULE$.max(0, i2));
        }

        public static Iterator permutations(SeqViewLike seqViewLike) {
            return seqViewLike.thisSeq().permutations().map(new SeqViewLike$$anonfun$permutations$1(seqViewLike));
        }

        public static SeqView reverse(SeqViewLike seqViewLike) {
            return seqViewLike.newReversed();
        }

        public static Object reverseMap(SeqViewLike seqViewLike, Function1 function1, CanBuildFrom canBuildFrom) {
            return seqViewLike.reverse().map(function1, canBuildFrom);
        }

        public static SeqView sortBy(SeqViewLike seqViewLike, Function1 function1, Ordering ordering) {
            return seqViewLike.newForced((Function0) new SeqViewLike$$anonfun$sortBy$1(seqViewLike, function1, ordering));
        }

        public static SeqView sortWith(SeqViewLike seqViewLike, Function2 function2) {
            return seqViewLike.newForced((Function0) new SeqViewLike$$anonfun$sortWith$1(seqViewLike, function2));
        }

        public static SeqView sorted(SeqViewLike seqViewLike, Ordering ordering) {
            return seqViewLike.newForced((Function0) new SeqViewLike$$anonfun$sorted$1(seqViewLike, ordering));
        }

        public static String stringPrefix(SeqViewLike seqViewLike) {
            return "SeqView";
        }

        public static Object union(SeqViewLike seqViewLike, GenSeq genSeq, CanBuildFrom canBuildFrom) {
            return seqViewLike.newForced((Function0) new SeqViewLike$$anonfun$union$1(seqViewLike, genSeq));
        }

        public static Object updated(SeqViewLike seqViewLike, int i, Object obj, CanBuildFrom canBuildFrom) {
            Predef$.MODULE$.require(i >= 0 && i < seqViewLike.length());
            return seqViewLike.patch(i, List$.MODULE$.apply((Seq) Predef$.MODULE$.genericWrapArray(new Object[]{obj})), 1, canBuildFrom);
        }
    }

    <B, That> That $colon$plus(B b, CanBuildFrom<This, B, That> canBuildFrom);

    <B, That> That $plus$colon(B b, CanBuildFrom<This, B, That> canBuildFrom);

    Iterator<This> combinations(int i);

    <B> This diff(GenSeq<B> genSeq);

    This distinct();

    <B> This intersect(GenSeq<B> genSeq);

    <B> SeqViewLike<A, Coll, This>.Transformed<B> newAppended(GenTraversable<B> genTraversable);

    SeqViewLike<A, Coll, This>.Transformed<A> newDropped(int i);

    SeqViewLike<A, Coll, This>.Transformed<A> newDroppedWhile(Function1<A, Object> function1);

    SeqViewLike<A, Coll, This>.Transformed<A> newFiltered(Function1<A, Object> function1);

    <B> SeqViewLike<A, Coll, This>.Transformed<B> newFlatMapped(Function1<A, GenTraversableOnce<B>> function1);

    <B> SeqViewLike<A, Coll, This>.Transformed<B> newForced(Function0<GenSeq<B>> function0);

    <B> SeqViewLike<A, Coll, This>.Transformed<B> newMapped(Function1<A, B> function1);

    <B> SeqViewLike<A, Coll, This>.Transformed<B> newPatched(int i, GenSeq<B> genSeq, int i2);

    <B> SeqViewLike<A, Coll, This>.Transformed<B> newPrepended(B b);

    SeqViewLike<A, Coll, This>.Transformed<A> newReversed();

    SeqViewLike<A, Coll, This>.Transformed<A> newSliced(SliceInterval sliceInterval);

    SeqViewLike<A, Coll, This>.Transformed<A> newTaken(int i);

    SeqViewLike<A, Coll, This>.Transformed<A> newTakenWhile(Function1<A, Object> function1);

    <B> SeqViewLike<A, Coll, This>.Transformed<Tuple2<A, B>> newZipped(GenIterable<B> genIterable);

    <A1, B> SeqViewLike<A, Coll, This>.Transformed<Tuple2<A1, B>> newZippedAll(GenIterable<B> genIterable, A1 a1, B b);

    <B, That> That padTo(int i, B b, CanBuildFrom<This, B, That> canBuildFrom);

    <B, That> That patch(int i, GenSeq<B> genSeq, int i2, CanBuildFrom<This, B, That> canBuildFrom);

    Iterator<This> permutations();

    This reverse();

    <B, That> That reverseMap(Function1<A, B> function1, CanBuildFrom<This, B, That> canBuildFrom);

    <B> This sortBy(Function1<A, B> function1, Ordering<B> ordering);

    This sortWith(Function2<A, A, Object> function2);

    <B> This sorted(Ordering<B> ordering);

    String stringPrefix();

    <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<This, B, That> canBuildFrom);

    <B, That> That updated(int i, B b, CanBuildFrom<This, B, That> canBuildFrom);
}
