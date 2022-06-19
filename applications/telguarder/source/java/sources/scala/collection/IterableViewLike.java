package scala.collection;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.GenIterable;
import scala.collection.GenTraversable;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.IterableView;
import scala.collection.IterableViewLike;
import scala.collection.Parallelizable;
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
import scala.collection.immutable.Map;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Stream$;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParIterable;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.package$;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\rEe\u0001C\u0001\u0003!\u0003\r\ta\u0002\u0017\u0003!%#XM]1cY\u00164\u0016.Z<MS.,'BA\u0002\u0005\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001Q\u0003\u0002\u0005\u0014U\u0001\u001ab\u0001A\u0005\u000e95\u0002\u0004C\u0001\u0006\f\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\u0019\te.\u001f*fMB\u0019abD\t\u000e\u0003\tI!\u0001\u0005\u0002\u0003\u0011%#XM]1cY\u0016\u0004\"AE\n\r\u0001\u00111A\u0003\u0001CC\u0002U\u0011\u0011!Q\t\u0003-e\u0001\"AC\f\n\u0005a!!a\u0002(pi\"Lgn\u001a\t\u0003\u0015iI!a\u0007\u0003\u0003\u0007\u0005s\u0017\u0010\u0005\u0003\u000f;Ey\u0012B\u0001\u0010\u0003\u00051IE/\u001a:bE2,G*[6f!\t\u0011\u0002\u0005\u0002\u0004\"\u0001\u0011\u0015\rA\t\u0002\u0005)\"L7/\u0005\u0002\u0017GI\u0019AE\n\u0017\u0007\t\u0015\u0002\u0001a\t\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0005\u001d\u001d\n\u0012&\u0003\u0002)\u0005\ta\u0011\n^3sC\ndWMV5foB\u0011!C\u000b\u0003\u0007W\u0001!)\u0019A\u000b\u0003\t\r{G\u000e\u001c\t\u0006\u001d\u0001\t\u0012f\b\t\u0005\u001d9\n\u0012&\u0003\u00020\u0005\tyAK]1wKJ\u001c\u0018M\u00197f-&,w\u000fE\u0003\u000fcEIs$\u0003\u00023\u0005\t\u0019BK]1wKJ\u001c\u0018M\u00197f-&,w\u000fT5lK\")A\u0007\u0001C\u0001k\u00051A%\u001b8ji\u0012\"\u0012A\u000e\t\u0003\u0015]J!\u0001\u000f\u0003\u0003\tUs\u0017\u000e\u001e\u0004\u0007u\u0001\t\tAA\u001e\u0003'\u0005\u00137\u000f\u001e:bGR$&/\u00198tM>\u0014X.\u001a3\u0016\u0005qz4#B\u001d\n{\u0005+\u0005c\u0001\b\u0010}A\u0011!c\u0010\u0003\u0007\u0001f\")\u0019A\u000b\u0003\u0003\t\u00032AQ\"?\u001b\u0005\u0001\u0011B\u0001#2\u0005-!&/\u00198tM>\u0014X.\u001a3\u0011\u0007\t3eHB\u0004E\u0001A\u0005\u0019\u0011A$\u0016\u0005![5\u0003\u0002$\n\u00132\u0003BAD\u0014KSA\u0011!c\u0013\u0003\u0007\u0001\u001a#)\u0019A\u000b\u0011\u0007\t\u001b%\nC\u00035\r\u0012\u0005Q\u0007C\u0003P\r\u001a\u0005\u0001+\u0001\u0005ji\u0016\u0014\u0018\r^8s+\u0005\t\u0006c\u0001\bS\u0015&\u00111K\u0001\u0002\t\u0013R,'/\u0019;pe\")QK\u0012C!-\u00069am\u001c:fC\u000eDWCA,_)\t1\u0004\fC\u0003Z)\u0002\u0007!,A\u0001g!\u0011Q1LS/\n\u0005q#!!\u0003$v]\u000e$\u0018n\u001c82!\t\u0011b\fB\u0003`)\n\u0007QCA\u0001V\u0011\u0015\tg\t\"\u0011c\u0003!!xn\u0015;sS:<G#A2\u0011\u0005\u0011LW\"A3\u000b\u0005\u0019<\u0017\u0001\u00027b]\u001eT\u0011\u0001[\u0001\u0005U\u00064\u0018-\u0003\u0002kK\n11\u000b\u001e:j]\u001eDQ\u0001\u001c$\u0005B5\fq![:F[B$\u00180F\u0001o!\tQq.\u0003\u0002q\t\t9!i\\8mK\u0006t\u0007\"\u0002::\t\u0003\u0019\u0018A\u0002\u001fj]&$h\bF\u0001u!\r\u0011\u0015H\u0010\u0004\bm\u0002\u0001\n1!\u0001x\u0005%)U\u000e\u001d;z-&,wo\u0005\u0003v\u0013aL\bc\u0001\"G-A\u0011!I_\u0005\u0003mFBQ\u0001N;\u0005\u0002UBQaT;\u0005\u0006u,\u0012A \t\u0004\u001dI3b!CA\u0001\u0001A\u0005\u0019\u0011AA\u0002\u0005\u00191uN]2fIV!\u0011QAA\u0007'\u0019y\u0018\"a\u0002\u0002\u0010A)!)!\u0003\u0002\f%\u0019\u0011\u0011A\u0019\u0011\u0007I\ti\u0001B\u0003A\u007f\n\u0007Q\u0003\u0005\u0003C\r\u0006-\u0001\"\u0002\u001b��\t\u0003)\u0004BB(��\t\u0003\t)\"\u0006\u0002\u0002\u0018A!aBUA\u0006\r%\tY\u0002\u0001I\u0001\u0004\u0003\tiB\u0001\u0004TY&\u001cW\rZ\n\b\u00033I\u0011qDA\u0012!\r\u0011\u0015\u0011E\u0005\u0004\u00037\t\u0004c\u0001\"G#!1A'!\u0007\u0005\u0002UBqaTA\r\t\u0003\tI#\u0006\u0002\u0002,A\u0019aBU\t\u0007\u0013\u0005=\u0002\u0001%A\u0002\u0002\u0005E\"AB'baB,G-\u0006\u0003\u00024\u0005m2cBA\u0017\u0013\u0005U\u0012Q\b\t\u0006\u0005\u0006]\u0012\u0011H\u0005\u0004\u0003_\t\u0004c\u0001\n\u0002<\u00111\u0001)!\fC\u0002U\u0001BA\u0011$\u0002:!1A'!\f\u0005\u0002UBqaTA\u0017\t\u0003\t\u0019%\u0006\u0002\u0002FA!aBUA\u001d\r%\tI\u0005\u0001I\u0001\u0004\u0003\tYE\u0001\u0006GY\u0006$X*\u00199qK\u0012,B!!\u0014\u0002VM9\u0011qI\u0005\u0002P\u0005]\u0003#\u0002\"\u0002R\u0005M\u0013bAA%cA\u0019!#!\u0016\u0005\r\u0001\u000b9E1\u0001\u0016!\u0011\u0011e)a\u0015\t\rQ\n9\u0005\"\u00016\u0011\u001dy\u0015q\tC\u0001\u0003;*\"!a\u0018\u0011\t9\u0011\u00161\u000b\u0004\n\u0003G\u0002\u0001\u0013aA\u0001\u0003K\u0012\u0001\"\u00119qK:$W\rZ\u000b\u0005\u0003O\nygE\u0004\u0002b%\tI'a\u001d\u0011\u000b\t\u000bY'!\u001c\n\u0007\u0005\r\u0014\u0007E\u0002\u0013\u0003_\"q\u0001QA1\u0005\u0004\t\t(\u0005\u0002\u00123A!!IRA7\u0011\u0019!\u0014\u0011\rC\u0001k!9q*!\u0019\u0005\u0002\u0005eTCAA>!\u0011q!+!\u001c\u0007\u0013\u0005}\u0004\u0001%A\u0002\u0002\u0005\u0005%\u0001\u0003$jYR,'/\u001a3\u0014\u000f\u0005u\u0014\"a!\u0002$A\u0019!)!\"\n\u0007\u0005}\u0014\u0007\u0003\u00045\u0003{\"\t!\u000e\u0005\b\u001f\u0006uD\u0011AA\u0015\r%\ti\t\u0001I\u0001\u0004\u0003\tyI\u0001\u0006UC.,gn\u00165jY\u0016\u001cr!a#\n\u0003#\u000b\u0019\u0003E\u0002C\u0003'K1!!$2\u0011\u0019!\u00141\u0012C\u0001k!9q*a#\u0005\u0002\u0005%b!CAN\u0001A\u0005\u0019\u0011AAO\u00051!%o\u001c9qK\u0012<\u0006.\u001b7f'\u001d\tI*CAP\u0003G\u00012AQAQ\u0013\r\tY*\r\u0005\u0007i\u0005eE\u0011A\u001b\t\u000f=\u000bI\n\"\u0001\u0002*\u0019I\u0011\u0011\u0016\u0001\u0011\u0002\u0007\u0005\u00111\u0016\u0002\u00075&\u0004\b/\u001a3\u0016\t\u00055\u0016\u0011X\n\u0006\u0003OK\u0011q\u0016\t\u0005\u0005\u001a\u000b\t\f\u0005\u0004\u000b\u0003g\u000b\u0012qW\u0005\u0004\u0003k#!A\u0002+va2,'\u0007E\u0002\u0013\u0003s#a\u0001QAT\u0005\u0004)\u0002B\u0002\u001b\u0002(\u0012\u0005Q\u0007\u0003\u0006\u0002@\u0006\u001d&\u0019)D\t\u0003\u0003\fQa\u001c;iKJ,\"!a1\u0011\u000b9\t)-a.\n\u0007\u0005\u001d'AA\u0006HK:LE/\u001a:bE2,\u0007bB(\u0002(\u0012\u0005\u00111Z\u000b\u0003\u0003\u001b\u0004BA\u0004*\u00022\"I\u0011\u0011[ATA\u0013U\u00131[\u0001\u000fm&,w/\u00133f]RLg-[3s+\u0005\u0019g!CAl\u0001A\u0005\u0019\u0011AAm\u0005%Q\u0016\u000e\u001d9fI\u0006cG.\u0006\u0004\u0002\\\u0006\r\u0018\u0011^\n\u0006\u0003+L\u0011Q\u001c\t\u0005\u0005\u001a\u000by\u000eE\u0004\u000b\u0003g\u000b\t/a:\u0011\u0007I\t\u0019\u000f\u0002\u0005\u0002f\u0006U'\u0019AA9\u0005\t\t\u0015\u0007E\u0002\u0013\u0003S$a\u0001QAk\u0005\u0004)\u0002B\u0002\u001b\u0002V\u0012\u0005Q\u0007\u0003\u0006\u0002@\u0006U'\u0019)D\t\u0003_,\"!!=\u0011\u000b9\t)-a:\t\u0015\u0005U\u0018Q\u001bb!\u000e#\t90\u0001\u0005uQ&\u001cX\t\\3n+\t\t\t\u000f\u0003\u0006\u0002|\u0006U'\u0019)D\t\u0003{\f\u0001\u0002\u001e5bi\u0016cW-\\\u000b\u0003\u0003OD\u0011\"!5\u0002V\u0002&)&a5\t\u000f=\u000b)\u000e\"\u0001\u0003\u0004U\u0011!Q\u0001\t\u0005\u001dI\u000by\u000e\u0003\u0005\u0003\n\u0001\u0001K1\u0002B\u0006\u0003\u0019\t7\u000f\u00165jgR\u0019qD!\u0004\t\u0011\t=!q\u0001a\u0001\u0003G\t!\u0001_:\t\u000f\tM\u0001\u0001\"\u0005\u0003\u0016\u0005Ia.Z<[SB\u0004X\rZ\u000b\u0005\u0005/\u0011y\u0002\u0006\u0003\u0003\u001a\t\u0005\u0002\u0003\u0002\"G\u00057\u0001bACAZ#\tu\u0001c\u0001\n\u0003 \u00111\u0001I!\u0005C\u0002UA\u0001Ba\t\u0003\u0012\u0001\u0007!QE\u0001\u0005i\"\fG\u000fE\u0003\u000f\u0003\u000b\u0014i\u0002C\u0004\u0003*\u0001!\tBa\u000b\u0002\u00199,wOW5qa\u0016$\u0017\t\u001c7\u0016\r\t5\"Q\u0007B\u001d)!\u0011yCa\u000f\u0003@\t\r\u0003\u0003\u0002\"G\u0005c\u0001rACAZ\u0005g\u00119\u0004E\u0002\u0013\u0005k!\u0001\"!:\u0003(\t\u0007\u0011\u0011\u000f\t\u0004%\teBA\u0002!\u0003(\t\u0007Q\u0003\u0003\u0005\u0003$\t\u001d\u0002\u0019\u0001B\u001f!\u0015q\u0011Q\u0019B\u001c\u0011!\u0011\tEa\nA\u0002\tM\u0012!C0uQ&\u001cX\t\\3n\u0011!\u0011)Ea\nA\u0002\t]\u0012!C0uQ\u0006$X\t\\3n\u0011\u001d\u0011I\u0005\u0001C)\u0005\u0017\n\u0011B\\3x\r>\u00148-\u001a3\u0016\t\t5#1\u000b\u000b\u0005\u0005\u001f\u0012)\u0006\u0005\u0003C\r\nE\u0003c\u0001\n\u0003T\u00111\u0001Ia\u0012C\u0002UA\u0011Ba\u0004\u0003H\u0011\u0005\rAa\u0016\u0011\u000b)\u0011IF!\u0018\n\u0007\tmCA\u0001\u0005=Eft\u0017-\\3?!\u0015q!q\fB)\u0013\r\u0011\tG\u0001\u0002\u0007\u000f\u0016t7+Z9\t\u000f\t\u0015\u0004\u0001\"\u0015\u0003h\u0005Ya.Z<BaB,g\u000eZ3e+\u0011\u0011IGa\u001c\u0015\t\t-$\u0011\u000f\t\u0005\u0005\u001a\u0013i\u0007E\u0002\u0013\u0005_\"q\u0001\u0011B2\u0005\u0004\t\t\b\u0003\u0005\u0003$\t\r\u0004\u0019\u0001B:!\u0015q!Q\u000fB7\u0013\r\u00119H\u0001\u0002\u000f\u000f\u0016tGK]1wKJ\u001c\u0018M\u00197f\u0011\u001d\u0011Y\b\u0001C)\u0005{\n\u0011B\\3x\u001b\u0006\u0004\b/\u001a3\u0016\t\t}$Q\u0011\u000b\u0005\u0005\u0003\u00139\t\u0005\u0003C\r\n\r\u0005c\u0001\n\u0003\u0006\u00121\u0001I!\u001fC\u0002UAq!\u0017B=\u0001\u0004\u0011I\tE\u0003\u000b7F\u0011\u0019\tC\u0004\u0003\u000e\u0002!\tFa$\u0002\u001b9,wO\u00127bi6\u000b\u0007\u000f]3e+\u0011\u0011\tJa&\u0015\t\tM%\u0011\u0014\t\u0005\u0005\u001a\u0013)\nE\u0002\u0013\u0005/#a\u0001\u0011BF\u0005\u0004)\u0002bB-\u0003\f\u0002\u0007!1\u0014\t\u0006\u0015m\u000b\"Q\u0014\t\u0006\u001d\t}%QS\u0005\u0004\u0005C\u0013!AE$f]R\u0013\u0018M^3sg\u0006\u0014G.Z(oG\u0016DqA!*\u0001\t#\u00129+A\u0006oK^4\u0015\u000e\u001c;fe\u0016$G\u0003BA\u0012\u0005SC\u0001Ba+\u0003$\u0002\u0007!QV\u0001\u0002aB!!bW\to\u0011\u001d\u0011\t\f\u0001C)\u0005g\u000b\u0011B\\3x'2L7-\u001a3\u0015\t\u0005\r\"Q\u0017\u0005\t\u0005o\u0013y\u000b1\u0001\u0003:\u0006Qq,\u001a8ea>Lg\u000e^:\u0011\t\tm&\u0011Y\u0007\u0003\u0005{S1Aa0\u0003\u0003\u001d9WM\\3sS\u000eLAAa1\u0003>\ni1\u000b\\5dK&sG/\u001a:wC2DqAa2\u0001\t#\u0012I-A\boK^$%o\u001c9qK\u0012<\u0006.\u001b7f)\u0011\t\u0019Ca3\t\u0011\t-&Q\u0019a\u0001\u0005[CqAa4\u0001\t#\u0012\t.A\u0007oK^$\u0016m[3o/\"LG.\u001a\u000b\u0005\u0003G\u0011\u0019\u000e\u0003\u0005\u0003,\n5\u0007\u0019\u0001BW\u0011\u001d\u00119\u000e\u0001C)\u00053\f\u0001B\\3x)\u0006\\WM\u001c\u000b\u0005\u0003G\u0011Y\u000e\u0003\u0005\u0003^\nU\u0007\u0019\u0001Bp\u0003\u0005q\u0007c\u0001\u0006\u0003b&\u0019!1\u001d\u0003\u0003\u0007%sG\u000fC\u0004\u0003h\u0002!\tF!;\u0002\u00159,w\u000f\u0012:paB,G\r\u0006\u0003\u0002$\t-\b\u0002\u0003Bo\u0005K\u0004\rAa8\t\u000f\t=\b\u0001\"\u0011\u0003r\u0006!AM]8q)\ry\"1\u001f\u0005\t\u0005;\u0014i\u000f1\u0001\u0003`\"9!q\u001f\u0001\u0005B\te\u0018\u0001\u0002;bW\u0016$2a\bB~\u0011!\u0011iN!>A\u0002\t}\u0007b\u0002B��\u0001\u0011\u00053\u0011A\u0001\u0004u&\u0004X\u0003CB\u0002\u00077\u0019yb!\u0003\u0015\t\r\u00151\u0011\u0005\u000b\u0005\u0007\u000f\u0019i\u0001E\u0002\u0013\u0007\u0013!qaa\u0003\u0003~\n\u0007QC\u0001\u0003UQ\u0006$\b\u0002CB\b\u0005{\u0004\u001da!\u0005\u0002\u0005\t4\u0007#\u0003B^\u0007'y2qCB\u0004\u0013\u0011\u0019)B!0\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\u000f)\t\u0019l!\u0007\u0004\u001eA\u0019!ca\u0007\u0005\u0011\u0005\u0015(Q b\u0001\u0003c\u00022AEB\u0010\t\u0019\u0001%Q b\u0001+!A!1\u0005B\u007f\u0001\u0004\u0019\u0019\u0003E\u0003\u000f\u0003\u000b\u001ci\u0002C\u0004\u0004(\u0001!\te!\u000b\u0002\u0019iL\u0007oV5uQ&sG-\u001a=\u0016\r\r-2\u0011HB\u0018)\u0011\u0019ic!\r\u0011\u0007I\u0019y\u0003B\u0004\u0004\f\r\u0015\"\u0019A\u000b\t\u0011\r=1Q\u0005a\u0002\u0007g\u0001\u0012Ba/\u0004\u0014}\u0019)d!\f\u0011\u000f)\t\u0019la\u000e\u0003`B\u0019!c!\u000f\u0005\u0011\u0005\u00158Q\u0005b\u0001\u0003cBqa!\u0010\u0001\t\u0003\u001ay$\u0001\u0004{SB\fE\u000e\\\u000b\t\u0007\u0003\u001a)f!\u0015\u0004HQA11IB,\u00077\u001ai\u0006\u0006\u0003\u0004F\r%\u0003c\u0001\n\u0004H\u0011911BB\u001e\u0005\u0004)\u0002\u0002CB\b\u0007w\u0001\u001daa\u0013\u0011\u0013\tm61C\u0010\u0004N\r\u0015\u0003c\u0002\u0006\u00024\u000e=31\u000b\t\u0004%\rEC\u0001CAs\u0007w\u0011\r!!\u001d\u0011\u0007I\u0019)\u0006\u0002\u0004A\u0007w\u0011\r!\u0006\u0005\t\u0005G\u0019Y\u00041\u0001\u0004ZA)a\"!2\u0004T!A\u0011Q_B\u001e\u0001\u0004\u0019y\u0005\u0003\u0005\u0002|\u000em\u0002\u0019AB*\u0011\u001d\u0019\t\u0007\u0001C!\u0007G\nqa\u001a:pkB,G\r\u0006\u0003\u0004f\r\u001d\u0004c\u0001\bS?!A1\u0011NB0\u0001\u0004\u0011y.\u0001\u0003tSj,\u0007bBB7\u0001\u0011\u00053qN\u0001\bg2LG-\u001b8h)\u0019\u0019)g!\u001d\u0004t!A1\u0011NB6\u0001\u0004\u0011y\u000e\u0003\u0005\u0004v\r-\u0004\u0019\u0001Bp\u0003\u0011\u0019H/\u001a9\t\u000f\r5\u0004\u0001\"\u0011\u0004zQ!1QMB>\u0011!\u0019Iga\u001eA\u0002\t}\u0007bBB@\u0001\u0011\u00053\u0011Q\u0001\nIJ|\u0007OU5hQR$2aHBB\u0011!\u0011in! A\u0002\t}\u0007bBBD\u0001\u0011\u00053\u0011R\u0001\ni\u0006\\WMU5hQR$2aHBF\u0011!\u0011in!\"A\u0002\t}\u0007bBBH\u0001\u0011\u0005\u00131[\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e\u001f")
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike.class */
public interface IterableViewLike<A, Coll, This extends IterableView<A, Coll> & IterableViewLike<A, Coll, This>> extends Iterable<A>, TraversableView<A, Coll> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$AbstractTransformed.class */
    public abstract class AbstractTransformed<B> implements IterableViewLike<A, Coll, This>.Transformed<B> {
        public final /* synthetic */ IterableViewLike $outer;
        private volatile boolean bitmap$0;
        private final Object underlying;

        public AbstractTransformed(IterableViewLike<A, Coll, This> iterableViewLike) {
            Objects.requireNonNull(iterableViewLike);
            this.$outer = iterableViewLike;
            TraversableOnce.Cclass.$init$(this);
            Parallelizable.Cclass.$init$(this);
            TraversableLike.Cclass.$init$(this);
            GenericTraversableTemplate.Cclass.$init$(this);
            GenTraversable.Cclass.$init$(this);
            Traversable.Cclass.$init$(this);
            GenIterable.Cclass.$init$(this);
            IterableLike.Cclass.$init$(this);
            Iterable.Cclass.$init$(this);
            ViewMkString.Cclass.$init$(this);
            TraversableViewLike.Cclass.$init$(this);
            TraversableViewLike.Transformed.Cclass.$init$(this);
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

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $div$colon(B b, Function2<B, B, B> function2) {
            Object foldLeft;
            foldLeft = foldLeft(b, function2);
            return (B) foldLeft;
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<IterableView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableViewLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
        }

        @Override // scala.collection.TraversableLike
        public <B, That> That $plus$plus$colon(Traversable<B> traversable, CanBuildFrom<IterableView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (Traversable) traversable, (CanBuildFrom) canBuildFrom);
        }

        @Override // scala.collection.TraversableLike
        public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<IterableView<B, Coll>, B, That> canBuildFrom) {
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

        @Override // scala.collection.IterableLike, scala.Equals
        public boolean canEqual(Object obj) {
            return IterableLike.Cclass.canEqual(this, obj);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That collect(PartialFunction<B, B> partialFunction, CanBuildFrom<IterableView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableViewLike.Cclass.collect(this, partialFunction, canBuildFrom);
        }

        @Override // scala.collection.TraversableOnce
        public <B> Option<B> collectFirst(PartialFunction<B, B> partialFunction) {
            return TraversableOnce.Cclass.collectFirst(this, partialFunction);
        }

        @Override // scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<Iterable> companion() {
            return Iterable.Cclass.companion(this);
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

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<B, Object> function1) {
            return TraversableOnce.Cclass.count(this, function1);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public IterableView<B, Coll> drop(int i) {
            return Cclass.drop(this, i);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.IterableLike
        public IterableView<B, Coll> dropRight(int i) {
            return Cclass.dropRight(this, i);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public TraversableView dropWhile(Function1 function1) {
            return TraversableViewLike.Cclass.dropWhile(this, function1);
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
        public <B, That> That flatMap(Function1<B, GenTraversableOnce<B>> function1, CanBuildFrom<IterableView<B, Coll>, B, That> canBuildFrom) {
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

        @Override // scala.collection.IterableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<B, U> function1) {
            Transformed.Cclass.foreach(this, function1);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <B> Builder<B, Iterable<B>> genericBuilder() {
            return GenericTraversableTemplate.Cclass.genericBuilder(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <K> Map<K, IterableView<B, Coll>> groupBy(Function1<B, K> function1) {
            return TraversableViewLike.Cclass.groupBy(this, function1);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.IterableLike
        public Iterator<IterableView<B, Coll>> grouped(int i) {
            return Cclass.grouped(this, i);
        }

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return TraversableLike.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public B head() {
            return (B) IterableLike.Cclass.head(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Option<B> headOption() {
            return TraversableViewLike.Transformed.Cclass.headOption(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public TraversableView init() {
            return TraversableViewLike.Cclass.init(this);
        }

        @Override // scala.collection.TraversableLike
        public Iterator<IterableView<B, Coll>> inits() {
            return TraversableViewLike.Cclass.inits(this);
        }

        @Override // scala.collection.IterableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return Transformed.Cclass.isEmpty(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
        public final boolean isTraversableAgain() {
            return TraversableLike.Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public B last() {
            return (B) TraversableLike.Cclass.last(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Option<B> lastOption() {
            return TraversableViewLike.Transformed.Cclass.lastOption(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
        public <B, That> That map(Function1<B, B> function1, CanBuildFrom<IterableView<B, Coll>, B, That> canBuildFrom) {
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

        @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public <B> IterableViewLike<B, Coll, IterableView<B, Coll>>.Transformed<B> newAppended(GenTraversable<B> genTraversable) {
            return Cclass.newAppended(this, genTraversable);
        }

        @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
        public Builder<B, IterableView<B, Coll>> newBuilder() {
            return TraversableViewLike.Cclass.newBuilder(this);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public IterableViewLike<B, Coll, IterableView<B, Coll>>.Transformed<B> newDropped(int i) {
            return Cclass.newDropped(this, i);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public IterableViewLike<B, Coll, IterableView<B, Coll>>.Transformed<B> newDroppedWhile(Function1<B, Object> function1) {
            return Cclass.newDroppedWhile(this, function1);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public IterableViewLike<B, Coll, IterableView<B, Coll>>.Transformed<B> newFiltered(Function1<B, Object> function1) {
            return Cclass.newFiltered(this, function1);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public <B> IterableViewLike<B, Coll, IterableView<B, Coll>>.Transformed<B> newFlatMapped(Function1<B, GenTraversableOnce<B>> function1) {
            return Cclass.newFlatMapped(this, function1);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public <B> IterableViewLike<B, Coll, IterableView<B, Coll>>.Transformed<B> newForced(Function0<GenSeq<B>> function0) {
            return Cclass.newForced(this, function0);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public <B> IterableViewLike<B, Coll, IterableView<B, Coll>>.Transformed<B> newMapped(Function1<B, B> function1) {
            return Cclass.newMapped(this, function1);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public IterableViewLike<B, Coll, IterableView<B, Coll>>.Transformed<B> newSliced(SliceInterval sliceInterval) {
            return Cclass.newSliced(this, sliceInterval);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public IterableViewLike<B, Coll, IterableView<B, Coll>>.Transformed<B> newTaken(int i) {
            return Cclass.newTaken(this, i);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public IterableViewLike<B, Coll, IterableView<B, Coll>>.Transformed<B> newTakenWhile(Function1<B, Object> function1) {
            return Cclass.newTakenWhile(this, function1);
        }

        @Override // scala.collection.IterableViewLike
        public <B> IterableViewLike<B, Coll, IterableView<B, Coll>>.Transformed<Tuple2<B, B>> newZipped(GenIterable<B> genIterable) {
            return Cclass.newZipped(this, genIterable);
        }

        @Override // scala.collection.IterableViewLike
        public <A1, B> IterableViewLike<B, Coll, IterableView<B, Coll>>.Transformed<Tuple2<A1, B>> newZippedAll(GenIterable<B> genIterable, A1 a1, B b) {
            return Cclass.newZippedAll(this, genIterable, a1, b);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean nonEmpty() {
            return TraversableOnce.Cclass.nonEmpty(this);
        }

        @Override // scala.collection.Parallelizable
        public Parallel par() {
            return Parallelizable.Cclass.par(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<B, ParIterable<B>> parCombiner() {
            return TraversableLike.Cclass.parCombiner(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Tuple2<IterableView<B, Coll>, IterableView<B, Coll>> partition(Function1<B, Object> function1) {
            return TraversableViewLike.Cclass.partition(this, function1);
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

        @Override // scala.collection.TraversableOnce
        public List<B> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <B> boolean sameElements(GenIterable<B> genIterable) {
            return IterableLike.Cclass.sameElements(this, genIterable);
        }

        /* renamed from: scala$collection$IterableViewLike$AbstractTransformed$$$outer */
        public /* synthetic */ IterableViewLike scala$collection$TraversableViewLike$Transformed$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.TraversableViewLike
        public /* synthetic */ TraversableView scala$collection$TraversableViewLike$$super$tail() {
            return (TraversableView) TraversableLike.Cclass.tail(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<IterableView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That scanLeft(B b, Function2<B, B, B> function2, CanBuildFrom<IterableView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableViewLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That scanRight(B b, Function2<B, B, B> function2, CanBuildFrom<IterableView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableViewLike.Cclass.scanRight(this, b, function2, canBuildFrom);
        }

        @Override // scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Iterable<B> seq() {
            return Iterable.Cclass.seq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return TraversableOnce.Cclass.size(this);
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

        @Override // scala.collection.IterableViewLike, scala.collection.IterableLike
        public Iterator<IterableView<B, Coll>> sliding(int i) {
            return Cclass.sliding(this, i);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.IterableLike
        public Iterator<IterableView<B, Coll>> sliding(int i, int i2) {
            return Cclass.sliding(this, i, i2);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Tuple2<IterableView<B, Coll>, IterableView<B, Coll>> span(Function1<B, Object> function1) {
            return TraversableViewLike.Cclass.span(this, function1);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Tuple2<IterableView<B, Coll>, IterableView<B, Coll>> splitAt(int i) {
            return TraversableViewLike.Cclass.splitAt(this, i);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
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
        public Iterator<IterableView<B, Coll>> tails() {
            return TraversableViewLike.Cclass.tails(this);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public IterableView<B, Coll> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.IterableLike
        public IterableView<B, Coll> takeRight(int i) {
            return Cclass.takeRight(this, i);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public TraversableView takeWhile(Function1 function1) {
            return TraversableViewLike.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.TraversableLike, scala.collection.IterableLike
        public Iterable<B> thisCollection() {
            return IterableLike.Cclass.thisCollection(this);
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
        public Iterable toCollection(Object obj) {
            return IterableLike.Cclass.toCollection(this, obj);
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
            return TraversableOnce.Cclass.toSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return TraversableOnce.Cclass.toSet(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<B> toStream() {
            return IterableLike.Cclass.toStream(this);
        }

        @Override // scala.collection.IterableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
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

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<B, Tuple2<A1, A2>> function1) {
            return TraversableViewLike.Cclass.unzip(this, function1);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<B, Tuple3<A1, A2, A3>> function1) {
            return TraversableViewLike.Cclass.unzip3(this, function1);
        }

        @Override // scala.collection.TraversableLike, scala.collection.IterableLike
        public Object view() {
            return IterableLike.Cclass.view(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.IterableLike
        public IterableView<B, IterableView<B, Coll>> view(int i, int i2) {
            return IterableLike.Cclass.view(this, i, i2);
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

        @Override // scala.collection.IterableViewLike, scala.collection.GenIterableLike, scala.collection.IterableLike
        public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<IterableView<B, Coll>, Tuple2<A1, B>, That> canBuildFrom) {
            return (That) Cclass.zip(this, genIterable, canBuildFrom);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.GenIterableLike, scala.collection.IterableLike
        public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<IterableView<B, Coll>, Tuple2<A1, B>, That> canBuildFrom) {
            return (That) Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
        }

        @Override // scala.collection.IterableViewLike, scala.collection.GenIterableLike, scala.collection.IterableLike
        public <A1, That> That zipWithIndex(CanBuildFrom<IterableView<B, Coll>, Tuple2<A1, Object>, That> canBuildFrom) {
            return (That) Cclass.zipWithIndex(this, canBuildFrom);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Appended.class */
    public interface Appended<B> extends TraversableViewLike<A, Coll, This>.Appended<B>, IterableViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.IterableViewLike$Appended$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Appended$class.class */
        public abstract class Cclass {
            public static void $init$(Appended appended) {
            }

            public static Iterator iterator(Appended appended) {
                return appended.scala$collection$IterableViewLike$Appended$$$outer().iterator().$plus$plus(new IterableViewLike$Appended$$anonfun$iterator$1(appended));
            }
        }

        @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<B> iterator();

        /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Appended$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$DroppedWhile.class */
    public interface DroppedWhile extends TraversableViewLike<A, Coll, This>.DroppedWhile, IterableViewLike<A, Coll, This>.Transformed<A> {

        /* renamed from: scala.collection.IterableViewLike$DroppedWhile$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$DroppedWhile$class.class */
        public abstract class Cclass {
            public static void $init$(DroppedWhile droppedWhile) {
            }

            public static Iterator iterator(DroppedWhile droppedWhile) {
                return droppedWhile.scala$collection$IterableViewLike$DroppedWhile$$$outer().iterator().dropWhile(droppedWhile.pred());
            }
        }

        @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<A> iterator();

        /* synthetic */ IterableViewLike scala$collection$IterableViewLike$DroppedWhile$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$EmptyView.class */
    public interface EmptyView extends IterableViewLike<A, Coll, This>.Transformed<Nothing$>, TraversableViewLike<A, Coll, This>.EmptyView {

        /* renamed from: scala.collection.IterableViewLike$EmptyView$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$EmptyView$class.class */
        public abstract class Cclass {
            public static void $init$(EmptyView emptyView) {
            }

            public static final Iterator iterator(EmptyView emptyView) {
                return Iterator$.MODULE$.empty();
            }
        }

        @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<Nothing$> iterator();

        /* synthetic */ IterableViewLike scala$collection$IterableViewLike$EmptyView$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Filtered.class */
    public interface Filtered extends TraversableViewLike<A, Coll, This>.Filtered, IterableViewLike<A, Coll, This>.Transformed<A> {

        /* renamed from: scala.collection.IterableViewLike$Filtered$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Filtered$class.class */
        public abstract class Cclass {
            public static void $init$(Filtered filtered) {
            }

            public static Iterator iterator(Filtered filtered) {
                return filtered.scala$collection$IterableViewLike$Filtered$$$outer().iterator().filter(filtered.pred());
            }
        }

        @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<A> iterator();

        /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Filtered$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$FlatMapped.class */
    public interface FlatMapped<B> extends TraversableViewLike<A, Coll, This>.FlatMapped<B>, IterableViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.IterableViewLike$FlatMapped$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$FlatMapped$class.class */
        public abstract class Cclass {
            public static void $init$(FlatMapped flatMapped) {
            }

            public static Iterator iterator(FlatMapped flatMapped) {
                return flatMapped.scala$collection$IterableViewLike$FlatMapped$$$outer().iterator().flatMap(flatMapped.mapping());
            }
        }

        @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<B> iterator();

        /* synthetic */ IterableViewLike scala$collection$IterableViewLike$FlatMapped$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Forced.class */
    public interface Forced<B> extends TraversableViewLike<A, Coll, This>.Forced<B>, IterableViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.IterableViewLike$Forced$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Forced$class.class */
        public abstract class Cclass {
            public static void $init$(Forced forced) {
            }

            public static Iterator iterator(Forced forced) {
                return forced.forced().iterator();
            }
        }

        @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<B> iterator();

        /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Forced$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Mapped.class */
    public interface Mapped<B> extends TraversableViewLike<A, Coll, This>.Mapped<B>, IterableViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.IterableViewLike$Mapped$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Mapped$class.class */
        public abstract class Cclass {
            public static void $init$(Mapped mapped) {
            }

            public static Iterator iterator(Mapped mapped) {
                return mapped.scala$collection$IterableViewLike$Mapped$$$outer().iterator().map(mapped.mapping());
            }
        }

        @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<B> iterator();

        /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Mapped$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Sliced.class */
    public interface Sliced extends TraversableViewLike<A, Coll, This>.Sliced, IterableViewLike<A, Coll, This>.Transformed<A> {

        /* renamed from: scala.collection.IterableViewLike$Sliced$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Sliced$class.class */
        public abstract class Cclass {
            public static void $init$(Sliced sliced) {
            }

            public static Iterator iterator(Sliced sliced) {
                return sliced.scala$collection$IterableViewLike$Sliced$$$outer().iterator().slice(sliced.from(), sliced.until());
            }
        }

        @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<A> iterator();

        /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Sliced$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$TakenWhile.class */
    public interface TakenWhile extends TraversableViewLike<A, Coll, This>.TakenWhile, IterableViewLike<A, Coll, This>.Transformed<A> {

        /* renamed from: scala.collection.IterableViewLike$TakenWhile$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$TakenWhile$class.class */
        public abstract class Cclass {
            public static void $init$(TakenWhile takenWhile) {
            }

            public static Iterator iterator(TakenWhile takenWhile) {
                return takenWhile.scala$collection$IterableViewLike$TakenWhile$$$outer().iterator().takeWhile(takenWhile.pred());
            }
        }

        @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<A> iterator();

        /* synthetic */ IterableViewLike scala$collection$IterableViewLike$TakenWhile$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Transformed.class */
    public interface Transformed<B> extends IterableView<B, Coll>, TraversableViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.IterableViewLike$Transformed$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Transformed$class.class */
        public abstract class Cclass {
            public static void $init$(Transformed transformed) {
            }

            public static void foreach(Transformed transformed, Function1 function1) {
                transformed.iterator().foreach(function1);
            }

            public static boolean isEmpty(Transformed transformed) {
                return !transformed.iterator().hasNext();
            }

            public static String toString(Transformed transformed) {
                return transformed.viewToString();
            }
        }

        @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        <U> void foreach(Function1<B, U> function1);

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        boolean isEmpty();

        Iterator<B> iterator();

        /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Transformed$$$outer();

        @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
        String toString();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Zipped.class */
    public interface Zipped<B> extends IterableViewLike<A, Coll, This>.Transformed<Tuple2<A, B>> {

        /* renamed from: scala.collection.IterableViewLike$Zipped$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$Zipped$class.class */
        public abstract class Cclass {
            public static void $init$(Zipped zipped) {
            }

            public static Iterator iterator(Zipped zipped) {
                return zipped.scala$collection$IterableViewLike$Zipped$$$outer().iterator().zip(zipped.other().iterator());
            }

            public static final String viewIdentifier(Zipped zipped) {
                return "Z";
            }
        }

        @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<Tuple2<A, B>> iterator();

        GenIterable<B> other();

        /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Zipped$$$outer();

        @Override // scala.collection.TraversableViewLike
        String viewIdentifier();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$ZippedAll.class */
    public interface ZippedAll<A1, B> extends IterableViewLike<A, Coll, This>.Transformed<Tuple2<A1, B>> {

        /* renamed from: scala.collection.IterableViewLike$ZippedAll$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$ZippedAll$class.class */
        public abstract class Cclass {
            public static void $init$(ZippedAll zippedAll) {
            }

            public static Iterator iterator(ZippedAll zippedAll) {
                return zippedAll.scala$collection$IterableViewLike$ZippedAll$$$outer().iterator().zipAll(zippedAll.other().iterator(), zippedAll.thisElem(), zippedAll.thatElem());
            }

            public static final String viewIdentifier(ZippedAll zippedAll) {
                return "Z";
            }
        }

        @Override // scala.collection.IterableViewLike.Transformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        Iterator<Tuple2<A1, B>> iterator();

        GenIterable<B> other();

        /* synthetic */ IterableViewLike scala$collection$IterableViewLike$ZippedAll$$$outer();

        B thatElem();

        A1 thisElem();

        @Override // scala.collection.TraversableViewLike
        String viewIdentifier();
    }

    /* renamed from: scala.collection.IterableViewLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableViewLike$class.class */
    public abstract class Cclass {
        public static void $init$(IterableViewLike iterableViewLike) {
        }

        public static IterableView drop(IterableViewLike iterableViewLike, int i) {
            return scala$collection$IterableViewLike$$asThis(iterableViewLike, iterableViewLike.newDropped(i));
        }

        public static IterableView dropRight(IterableViewLike iterableViewLike, int i) {
            return iterableViewLike.take(iterableViewLike.thisSeq().length() - package$.MODULE$.max(i, 0));
        }

        public static Iterator grouped(IterableViewLike iterableViewLike, int i) {
            return iterableViewLike.iterator().grouped(i).map(new IterableViewLike$$anonfun$grouped$1(iterableViewLike));
        }

        public static Transformed newAppended(IterableViewLike iterableViewLike, GenTraversable genTraversable) {
            return new IterableViewLike$$anon$2(iterableViewLike, genTraversable);
        }

        public static Transformed newDropped(IterableViewLike iterableViewLike, int i) {
            return iterableViewLike.newSliced(SliceInterval$.MODULE$.apply(i, Integer.MAX_VALUE));
        }

        public static Transformed newDroppedWhile(IterableViewLike iterableViewLike, Function1 function1) {
            return new IterableViewLike$$anon$7(iterableViewLike, function1);
        }

        public static Transformed newFiltered(IterableViewLike iterableViewLike, Function1 function1) {
            return new IterableViewLike$$anon$5(iterableViewLike, function1);
        }

        public static Transformed newFlatMapped(IterableViewLike iterableViewLike, Function1 function1) {
            return new IterableViewLike$$anon$4(iterableViewLike, function1);
        }

        public static Transformed newForced(IterableViewLike iterableViewLike, Function0 function0) {
            return new IterableViewLike$$anon$1(iterableViewLike, function0);
        }

        public static Transformed newMapped(IterableViewLike iterableViewLike, Function1 function1) {
            return new IterableViewLike$$anon$3(iterableViewLike, function1);
        }

        public static Transformed newSliced(IterableViewLike iterableViewLike, SliceInterval sliceInterval) {
            return new IterableViewLike$$anon$6(iterableViewLike, sliceInterval);
        }

        public static Transformed newTaken(IterableViewLike iterableViewLike, int i) {
            return iterableViewLike.newSliced(SliceInterval$.MODULE$.apply(0, i));
        }

        public static Transformed newTakenWhile(IterableViewLike iterableViewLike, Function1 function1) {
            return new IterableViewLike$$anon$8(iterableViewLike, function1);
        }

        public static Transformed newZipped(IterableViewLike iterableViewLike, GenIterable genIterable) {
            return new IterableViewLike$$anon$9(iterableViewLike, genIterable);
        }

        public static Transformed newZippedAll(IterableViewLike iterableViewLike, GenIterable genIterable, Object obj, Object obj2) {
            return new IterableViewLike$$anon$10(iterableViewLike, genIterable, obj, obj2);
        }

        public static IterableView scala$collection$IterableViewLike$$asThis(IterableViewLike iterableViewLike, Transformed transformed) {
            return transformed;
        }

        public static Iterator sliding(IterableViewLike iterableViewLike, int i) {
            return iterableViewLike.sliding(i, 1);
        }

        public static Iterator sliding(IterableViewLike iterableViewLike, int i, int i2) {
            return iterableViewLike.iterator().sliding(i, i2).map(new IterableViewLike$$anonfun$sliding$1(iterableViewLike));
        }

        public static String stringPrefix(IterableViewLike iterableViewLike) {
            return "IterableView";
        }

        public static IterableView take(IterableViewLike iterableViewLike, int i) {
            return scala$collection$IterableViewLike$$asThis(iterableViewLike, iterableViewLike.newTaken(i));
        }

        public static IterableView takeRight(IterableViewLike iterableViewLike, int i) {
            return iterableViewLike.drop(iterableViewLike.thisSeq().length() - package$.MODULE$.max(i, 0));
        }

        public static Object zip(IterableViewLike iterableViewLike, GenIterable genIterable, CanBuildFrom canBuildFrom) {
            return iterableViewLike.newZipped(genIterable);
        }

        public static Object zipAll(IterableViewLike iterableViewLike, GenIterable genIterable, Object obj, Object obj2, CanBuildFrom canBuildFrom) {
            return iterableViewLike.newZippedAll(genIterable, obj, obj2);
        }

        public static Object zipWithIndex(IterableViewLike iterableViewLike, CanBuildFrom canBuildFrom) {
            return iterableViewLike.zip(Stream$.MODULE$.from(0), canBuildFrom);
        }
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    This drop(int i);

    This dropRight(int i);

    Iterator<This> grouped(int i);

    <B> IterableViewLike<A, Coll, This>.Transformed<B> newAppended(GenTraversable<B> genTraversable);

    IterableViewLike<A, Coll, This>.Transformed<A> newDropped(int i);

    IterableViewLike<A, Coll, This>.Transformed<A> newDroppedWhile(Function1<A, Object> function1);

    IterableViewLike<A, Coll, This>.Transformed<A> newFiltered(Function1<A, Object> function1);

    <B> IterableViewLike<A, Coll, This>.Transformed<B> newFlatMapped(Function1<A, GenTraversableOnce<B>> function1);

    <B> IterableViewLike<A, Coll, This>.Transformed<B> newForced(Function0<GenSeq<B>> function0);

    <B> IterableViewLike<A, Coll, This>.Transformed<B> newMapped(Function1<A, B> function1);

    IterableViewLike<A, Coll, This>.Transformed<A> newSliced(SliceInterval sliceInterval);

    IterableViewLike<A, Coll, This>.Transformed<A> newTaken(int i);

    IterableViewLike<A, Coll, This>.Transformed<A> newTakenWhile(Function1<A, Object> function1);

    <B> IterableViewLike<A, Coll, This>.Transformed<Tuple2<A, B>> newZipped(GenIterable<B> genIterable);

    <A1, B> IterableViewLike<A, Coll, This>.Transformed<Tuple2<A1, B>> newZippedAll(GenIterable<B> genIterable, A1 a1, B b);

    Iterator<This> sliding(int i);

    Iterator<This> sliding(int i, int i2);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    String stringPrefix();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    This take(int i);

    This takeRight(int i);

    <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<This, Tuple2<A1, B>, That> canBuildFrom);

    <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<This, Tuple2<A1, B>, That> canBuildFrom);

    <A1, That> That zipWithIndex(CanBuildFrom<This, Tuple2<A1, Object>, That> canBuildFrom);
}
