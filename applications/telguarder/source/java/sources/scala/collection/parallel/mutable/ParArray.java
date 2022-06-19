package scala.collection.parallel.mutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Objects;
import scala.Array$;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Function3;
import scala.Function4;
import scala.Function5;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.BufferedIterator;
import scala.collection.CustomParallelizable;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenSeqLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.Traversable;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericParTemplate;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.Signalling;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.ArraySeq;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.AugmentedIterableIterator;
import scala.collection.parallel.AugmentedSeqIterator;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.IterableSplitter;
import scala.collection.parallel.ParIterable;
import scala.collection.parallel.ParIterableLike;
import scala.collection.parallel.ParIterableLike$ScanLeaf$;
import scala.collection.parallel.ParIterableLike$ScanNode$;
import scala.collection.parallel.ParSeq;
import scala.collection.parallel.ParSeqLike;
import scala.collection.parallel.PreciseSplitter;
import scala.collection.parallel.RemainsIterator;
import scala.collection.parallel.SeqSplitter;
import scala.collection.parallel.Task;
import scala.collection.parallel.TaskSupport;
import scala.collection.parallel.immutable.ParMap;
import scala.collection.parallel.immutable.ParSet;
import scala.collection.parallel.mutable.ParIterable;
import scala.collection.parallel.mutable.ParSeq;
import scala.collection.parallel.package$;
import scala.math.Integral;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ClassTag$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
import scala.runtime.Nothing$;
import scala.runtime.RichInt$;
import scala.runtime.ScalaRunTime$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u001dmg!B\u0001\u0003\u0001-Y#\u0001\u0003)be\u0006\u0013(/Y=\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t\u0001\u0002]1sC2dW\r\u001c\u0006\u0003\u000f!\t!bY8mY\u0016\u001cG/[8o\u0015\u0005I\u0011!B:dC2\f7\u0001A\u000b\u0003\u0019]\u0019b\u0001A\u0007\u0012A\u001d\n\u0004C\u0001\b\u0010\u001b\u0005A\u0011B\u0001\t\t\u0005\u0019\te.\u001f*fMB\u0019!cE\u000b\u000e\u0003\tI!\u0001\u0006\u0002\u0003\rA\u000b'oU3r!\t1r\u0003\u0004\u0001\u0005\u000ba\u0001!\u0019A\r\u0003\u0003Q\u000b\"AG\u000f\u0011\u00059Y\u0012B\u0001\u000f\t\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"A\u0004\u0010\n\u0005}A!aA!osB!\u0011\u0005J\u000b'\u001b\u0005\u0011#BA\u0012\u0007\u0003\u001d9WM\\3sS\u000eL!!\n\u0012\u0003%\u001d+g.\u001a:jGB\u000b'\u000fV3na2\fG/\u001a\t\u0003%\u0001\u0001R\u0001K\u0015\u0016W1j\u0011\u0001B\u0005\u0003U\u0011\u0011!\u0002U1s'\u0016\fH*[6f!\r\u0011\u0002!\u0006\t\u0004[=*R\"\u0001\u0018\u000b\u0005\r1\u0011B\u0001\u0019/\u0005!\t%O]1z'\u0016\f\bC\u0001\b3\u0013\t\u0019\u0004B\u0001\u0007TKJL\u0017\r\\5{C\ndW\r\u0003\u00056\u0001\t\u0015\r\u0011\"\u00017\u0003!\t'O]1zg\u0016\fX#\u0001\u0017\t\u0011a\u0002!\u0011!Q\u0001\n1\n\u0011\"\u0019:sCf\u001cX-\u001d\u0011\t\ri\u0002A\u0011\u0001\u0002<\u0003\u0019a\u0014N\\5u}Q\u00111\u0006\u0010\u0005\u0006ke\u0002\r\u0001\f\u0005\b}\u0001\u0001\r\u0011\"\u0003@\u0003\u0015\t'O]1z+\u0005\u0001\u0005c\u0001\bB;%\u0011!\t\u0003\u0002\u0006\u0003J\u0014\u0018-\u001f\u0005\b\t\u0002\u0001\r\u0011\"\u0003F\u0003%\t'O]1z?\u0012*\u0017\u000f\u0006\u0002G\u0013B\u0011abR\u0005\u0003\u0011\"\u0011A!\u00168ji\"9!jQA\u0001\u0002\u0004\u0001\u0015a\u0001=%c!1A\n\u0001Q!\n\u0001\u000ba!\u0019:sCf\u0004\u0003FA&O!\tqq*\u0003\u0002Q\u0011\tIAO]1og&,g\u000e\u001e\u0005\u0006%\u0002!\teU\u0001\nG>l\u0007/\u00198j_:,\u0012\u0001\u0016\n\u0004+^Sf\u0001\u0002,\u0001\u0001Q\u0013A\u0002\u0010:fM&tW-\\3oiz\u00022!\t-'\u0013\tI&E\u0001\tHK:,'/[2D_6\u0004\u0018M\\5p]B\u0019\u0011e\u0017\u0014\n\u0005q\u0013#aE$f]\u0016\u0014\u0018n\u0019)be\u000e{W\u000e]1oS>t\u0007\"\u0002\u001e\u0001\t\u0003qFCA\u0016`\u0011\u0015\u0001W\f1\u0001b\u0003\t\u0019(\u0010\u0005\u0002\u000fE&\u00111\r\u0003\u0002\u0004\u0013:$\b\"B3\u0001\t\u00031\u0017!B1qa2LHCA\u000bh\u0011\u0015AG\r1\u0001b\u0003\u0005I\u0007\"\u00026\u0001\t\u0003Y\u0017AB;qI\u0006$X\rF\u0002GY6DQ\u0001[5A\u0002\u0005DQA\\5A\u0002U\tA!\u001a7f[\")\u0001\u000f\u0001C\u0001c\u00061A.\u001a8hi\",\u0012!\u0019\u0005\u0006g\u0002!\tEN\u0001\u0004g\u0016\f\bBB;\u0001\t#!a/\u0001\u0005ta2LG\u000f^3s+\u00059\bC\u0001=z\u001b\u0005\u0001a\u0001\u0002>\u0001\u0001m\u0014\u0001\u0003U1s\u0003J\u0014\u0018-_%uKJ\fGo\u001c:\u0014\u0007elA\u0010E\u0002){VI!A \u0003\u0003\u0017M+\u0017o\u00159mSR$XM\u001d\u0005\tQf\u0014\t\u0019!C\u0001c\"Q\u00111A=\u0003\u0002\u0004%\t!!\u0002\u0002\u000b%|F%Z9\u0015\u0007\u0019\u000b9\u0001\u0003\u0005K\u0003\u0003\t\t\u00111\u0001b\u0011%\tY!\u001fB\u0001B\u0003&\u0011-\u0001\u0002jA!I\u0011qB=\u0003\u0006\u0004%\t!]\u0001\u0006k:$\u0018\u000e\u001c\u0005\n\u0003'I(\u0011!Q\u0001\n\u0005\fa!\u001e8uS2\u0004\u0003\"CA\fs\n\u0015\r\u0011\"\u0001@\u0003\r\t'O\u001d\u0005\n\u00037I(\u0011!Q\u0001\n\u0001\u000bA!\u0019:sA!1!(\u001fC\u0001\u0003?!ra^A\u0011\u0003G\t)\u0003\u0003\u0005i\u0003;\u0001\n\u00111\u0001b\u0011%\ty!!\b\u0011\u0002\u0003\u0007\u0011\rC\u0005\u0002\u0018\u0005u\u0001\u0013!a\u0001\u0001\"9\u0011\u0011F=\u0005\u0002\u0005-\u0012a\u00025bg:+\u0007\u0010^\u000b\u0003\u0003[\u00012ADA\u0018\u0013\r\t\t\u0004\u0003\u0002\b\u0005>|G.Z1o\u0011\u001d\t)$\u001fC\u0001\u0003o\tAA\\3yiR\tQ\u0003\u0003\u0004\u0002<e$\t!]\u0001\ne\u0016l\u0017-\u001b8j]\u001eDa!a\u0010z\t\u00031\u0018a\u00013va\"9\u00111I=\u0005\u0002\u0005\u0015\u0013A\u00029ta2LG\u000f\u0006\u0003\u0002H\u0005U\u0003#BA%\u0003\u001f:hb\u0001\b\u0002L%\u0019\u0011Q\n\u0005\u0002\u000fA\f7m[1hK&!\u0011\u0011KA*\u0005\r\u0019V-\u001d\u0006\u0004\u0003\u001bB\u0001\u0002CA,\u0003\u0003\u0002\r!!\u0017\u0002\u001fML'0Z:J]\u000e|W\u000e\u001d7fi\u0016\u0004BADA.C&\u0019\u0011Q\f\u0005\u0003\u0015q\u0012X\r]3bi\u0016$g\bC\u0004\u0002be$\t%a\u0019\u0002\u000bM\u0004H.\u001b;\u0016\u0005\u0005\u001d\u0003bBA4s\u0012\u0005\u0013\u0011N\u0001\ti>\u001cFO]5oOR\u0011\u00111\u000e\t\u0005\u0003[\n9(\u0004\u0002\u0002p)!\u0011\u0011OA:\u0003\u0011a\u0017M\\4\u000b\u0005\u0005U\u0014\u0001\u00026bm\u0006LA!!\u001f\u0002p\t11\u000b\u001e:j]\u001eDq!! z\t\u0003\ny(A\u0004g_J,\u0017m\u00195\u0016\t\u0005\u0005\u0015q\u0012\u000b\u0004\r\u0006\r\u0005\u0002CAC\u0003w\u0002\r!a\"\u0002\u0003\u0019\u0004bADAE+\u00055\u0015bAAF\u0011\tIa)\u001e8di&|g.\r\t\u0004-\u0005=EaBAI\u0003w\u0012\r!\u0007\u0002\u0002+\"9\u0011QS=\u0005\n\u0005]\u0015!\u00044pe\u0016\f7\r[0rk&\u001c7.\u0006\u0003\u0002\u001a\u0006\u0005F#\u0003$\u0002\u001c\u0006\r\u0016qUAV\u0011!\t))a%A\u0002\u0005u\u0005C\u0002\b\u0002\nV\ty\nE\u0002\u0017\u0003C#q!!%\u0002\u0014\n\u0007\u0011\u0004C\u0004\u0002&\u0006M\u0005\u0019\u0001!\u0002\u0003\u0005Dq!!+\u0002\u0014\u0002\u0007\u0011-\u0001\u0003oi&d\u0007bBAW\u0003'\u0003\r!Y\u0001\u0005MJ|W\u000eC\u0004\u00022f$\t%a-\u0002\u000b\r|WO\u001c;\u0015\u0007\u0005\f)\f\u0003\u0005\u00028\u0006=\u0006\u0019AA]\u0003\u0005\u0001\bC\u0002\b\u0002\nV\ti\u0003C\u0004\u0002>f$I!a0\u0002\u0017\r|WO\u001c;`cVL7m\u001b\u000b\nC\u0006\u0005\u00171YAc\u0003\u000fD\u0001\"a.\u0002<\u0002\u0007\u0011\u0011\u0018\u0005\b\u0003K\u000bY\f1\u0001A\u0011\u001d\tI+a/A\u0002\u0005Dq!!,\u0002<\u0002\u0007\u0011\rC\u0004\u0002Lf$\t%!4\u0002\u0011\u0019|G\u000e\u001a'fMR,B!a4\u0002VR!\u0011\u0011[Ar)\u0011\t\u0019.!7\u0011\u0007Y\t)\u000eB\u0004\u0002X\u0006%'\u0019A\r\u0003\u0003MC\u0001\"a7\u0002J\u0002\u0007\u0011Q\\\u0001\u0003_B\u0004\u0002BDAp\u0003',\u00121[\u0005\u0004\u0003CD!!\u0003$v]\u000e$\u0018n\u001c83\u0011!\t)/!3A\u0002\u0005M\u0017!\u0001>\t\u000f\u0005%\u0018\u0010\"\u0003\u0002l\u0006qam\u001c7e\u0019\u00164GoX9vS\u000e\\W\u0003BAw\u0003c$\"\"a<\u0002t\u0006U\u0018q_A~!\r1\u0012\u0011\u001f\u0003\b\u0003/\f9O1\u0001\u001a\u0011\u001d\t)+a:A\u0002\u0001Cq!!+\u0002h\u0002\u0007\u0011\r\u0003\u0005\u0002\\\u0006\u001d\b\u0019AA}!!q\u0011q\\Ax+\u0005=\b\u0002CAs\u0003O\u0004\r!a<\t\u000f\u0005}\u0018\u0010\"\u0011\u0003\u0002\u0005!am\u001c7e+\u0011\u0011\u0019A!\u0003\u0015\t\t\u0015!\u0011\u0003\u000b\u0005\u0005\u000f\u0011i\u0001E\u0002\u0017\u0005\u0013!\u0001\"!%\u0002~\n\u0007!1B\t\u0003+uA\u0001\"a7\u0002~\u0002\u0007!q\u0002\t\n\u001d\u0005}'q\u0001B\u0004\u0005\u000fA\u0001\"!:\u0002~\u0002\u0007!q\u0001\u0005\b\u0005+IH\u0011\tB\f\u0003%\twm\u001a:fO\u0006$X-\u0006\u0003\u0003\u001a\t}A\u0003\u0002B\u000e\u0005[!bA!\b\u0003\"\t\u001d\u0002c\u0001\f\u0003 \u00119\u0011q\u001bB\n\u0005\u0004I\u0002\u0002\u0003B\u0012\u0005'\u0001\rA!\n\u0002\u000bM,\u0017o\u001c9\u0011\u00119\tyN!\b\u0016\u0005;A\u0001B!\u000b\u0003\u0014\u0001\u0007!1F\u0001\u0007G>l'm\u001c9\u0011\u00139\tyN!\b\u0003\u001e\tu\u0001\"CAs\u0005'!\t\u0019\u0001B\u0018!\u0015q!\u0011\u0007B\u000f\u0013\r\u0011\u0019\u0004\u0003\u0002\ty\tLh.Y7f}!9!qG=\u0005B\te\u0012aA:v[V!!1\bB )\u0011\u0011iD!\u0011\u0011\u0007Y\u0011y\u0004\u0002\u0005\u0002\u0012\nU\"\u0019\u0001B\u0006\u0011!\u0011\u0019E!\u000eA\u0004\t\u0015\u0013a\u00018v[B1\u0011\u0011\nB$\u0005{IAA!\u0013\u0002T\t9a*^7fe&\u001c\u0007b\u0002B's\u0012%!qJ\u0001\ngVlw,];jG.,BA!\u0015\u0003VQa!1\u000bB,\u00057\u0012iFa\u0018\u0003bA\u0019aC!\u0016\u0005\u0011\u0005E%1\nb\u0001\u0005\u0017A\u0001Ba\u0011\u0003L\u0001\u0007!\u0011\f\t\u0007\u0003\u0013\u00129Ea\u0015\t\u000f\u0005\u0015&1\na\u0001\u0001\"9\u0011\u0011\u0016B&\u0001\u0004\t\u0007bBAW\u0005\u0017\u0002\r!\u0019\u0005\t\u0005G\u0012Y\u00051\u0001\u0003T\u0005!!0\u001a:p\u0011\u001d\u00119'\u001fC!\u0005S\nq\u0001\u001d:pIV\u001cG/\u0006\u0003\u0003l\t=D\u0003\u0002B7\u0005c\u00022A\u0006B8\t!\t\tJ!\u001aC\u0002\t-\u0001\u0002\u0003B\"\u0005K\u0002\u001dAa\u001d\u0011\r\u0005%#q\tB7\u0011\u001d\u00119(\u001fC\u0005\u0005s\nQ\u0002\u001d:pIV\u001cGoX9vS\u000e\\W\u0003\u0002B>\u0005\u007f\"BB! \u0003\u0002\n\u0015%q\u0011BE\u0005\u0017\u00032A\u0006B@\t!\t\tJ!\u001eC\u0002\t-\u0001\u0002\u0003B\"\u0005k\u0002\rAa!\u0011\r\u0005%#q\tB?\u0011\u001d\t)K!\u001eA\u0002\u0001Cq!!+\u0003v\u0001\u0007\u0011\rC\u0004\u0002.\nU\u0004\u0019A1\t\u0011\t5%Q\u000fa\u0001\u0005{\n1a\u001c8f\u0011\u001d\u0011\t*\u001fC!\u0005'\u000baAZ8sC2dG\u0003BA\u0017\u0005+C\u0001\"a.\u0003\u0010\u0002\u0007\u0011\u0011\u0018\u0005\b\u00053KH\u0011\u0002BN\u000311wN]1mY~\u000bX/[2l))\tiC!(\u0003 \n\u0005&Q\u0015\u0005\t\u0003o\u00139\n1\u0001\u0002:\"9\u0011Q\u0015BL\u0001\u0004\u0001\u0005b\u0002BR\u0005/\u0003\r!Y\u0001\n]\u0016DH/\u001e8uS2DqAa*\u0003\u0018\u0002\u0007\u0011-A\u0003ti\u0006\u0014H\u000fC\u0004\u0003,f$\tE!,\u0002\r\u0015D\u0018n\u001d;t)\u0011\tiCa,\t\u0011\u0005]&\u0011\u0016a\u0001\u0003sCqAa-z\t\u0013\u0011),\u0001\u0007fq&\u001cHo]0rk&\u001c7\u000e\u0006\u0006\u0002.\t]&\u0011\u0018B^\u0005{C\u0001\"a.\u00032\u0002\u0007\u0011\u0011\u0018\u0005\b\u0003K\u0013\t\f1\u0001A\u0011\u001d\u0011\u0019K!-A\u0002\u0005DqAa*\u00032\u0002\u0007\u0011\rC\u0004\u0003Bf$\tEa1\u0002\t\u0019Lg\u000e\u001a\u000b\u0005\u0005\u000b\u0014Y\r\u0005\u0003\u000f\u0005\u000f,\u0012b\u0001Be\u0011\t1q\n\u001d;j_:D\u0001\"a.\u0003@\u0002\u0007\u0011\u0011\u0018\u0005\b\u0005\u001fLH\u0011\u0002Bi\u0003)1\u0017N\u001c3`cVL7m\u001b\u000b\u000b\u0005\u000b\u0014\u0019N!6\u0003X\ne\u0007\u0002CA\\\u0005\u001b\u0004\r!!/\t\u000f\u0005\u0015&Q\u001aa\u0001\u0001\"9!1\u0015Bg\u0001\u0004\t\u0007b\u0002BT\u0005\u001b\u0004\r!\u0019\u0005\b\u0005;LH\u0011\tBp\u0003\u0011!'o\u001c9\u0015\u0007]\u0014\t\u000fC\u0004\u0003d\nm\u0007\u0019A1\u0002\u00039DqAa:z\t\u0003\u0012I/A\u0006d_BLHk\\!se\u0006LX\u0003\u0002Bv\u0005g$rA\u0012Bw\u0005k\u00149\u0010C\u0004?\u0005K\u0004\rAa<\u0011\t9\t%\u0011\u001f\t\u0004-\tMH\u0001CAI\u0005K\u0014\rAa\u0003\t\u000f\u00055&Q\u001da\u0001C\"9!\u0011 Bs\u0001\u0004\t\u0017a\u00017f]\"9!Q`=\u0005B\t}\u0018\u0001\u00049sK\u001aL\u0007\u0010T3oORDGcA1\u0004\u0002!A11\u0001B~\u0001\u0004\tI,\u0001\u0003qe\u0016$\u0007bBB\u0004s\u0012%1\u0011B\u0001\u0013aJ,g-\u001b=MK:<G\u000f[0rk&\u001c7\u000eF\u0005b\u0007\u0017\u0019iaa\u0004\u0004\u0012!A11AB\u0003\u0001\u0004\tI\fC\u0004\u0002&\u000e\u0015\u0001\u0019\u0001!\t\u000f\u0005%6Q\u0001a\u0001C\"911CB\u0003\u0001\u0004\t\u0017\u0001C:uCJ$\bo\\:\t\u000f\r]\u0011\u0010\"\u0011\u0004\u001a\u0005Q\u0011N\u001c3fq^CWM]3\u0015\u0007\u0005\u001cY\u0002\u0003\u0005\u0004\u0004\rU\u0001\u0019AA]\u0011\u001d\u0019y\"\u001fC\u0005\u0007C\t\u0001#\u001b8eKb<\u0006.\u001a:f?F,\u0018nY6\u0015\u0013\u0005\u001c\u0019c!\n\u0004(\r%\u0002\u0002CB\u0002\u0007;\u0001\r!!/\t\u000f\u0005\u00156Q\u0004a\u0001\u0001\"9\u0011\u0011VB\u000f\u0001\u0004\t\u0007bBAW\u0007;\u0001\r!\u0019\u0005\b\u0007[IH\u0011IB\u0018\u00039a\u0017m\u001d;J]\u0012,\u0007p\u00165fe\u0016$2!YB\u0019\u0011!\u0019\u0019aa\u000bA\u0002\u0005e\u0006bBB\u001bs\u0012%1qG\u0001\u0015Y\u0006\u001cH/\u00138eKb<\u0006.\u001a:f?F,\u0018nY6\u0015\u0013\u0005\u001cIda\u000f\u0004>\r}\u0002\u0002CB\u0002\u0007g\u0001\r!!/\t\u000f\u0005\u001561\u0007a\u0001\u0001\"9\u0011QVB\u001a\u0001\u0004\t\u0007bBAU\u0007g\u0001\r!\u0019\u0005\b\u0007\u0007JH\u0011IB#\u00031\u0019\u0018-\\3FY\u0016lWM\u001c;t)\u0011\tica\u0012\t\u0011\r%3\u0011\ta\u0001\u0007\u0017\nA\u0001\u001e5biB\"1QJB+!\u0019\tIea\u0014\u0004T%!1\u0011KA*\u0005!IE/\u001a:bi>\u0014\bc\u0001\f\u0004V\u0011Y1qKB$\u0003\u0003\u0005\tQ!\u0001\u001a\u0005\ryF%\r\u0005\b\u00077JH\u0011IB/\u00031i\u0017\r\u001d\u001ad_6\u0014\u0017N\\3s+\u0019\u0019yf!\u001b\u0004nQ11\u0011MB9\u0007k\u0002r\u0001KB2\u0007O\u001aY'C\u0002\u0004f\u0011\u0011\u0001bQ8nE&tWM\u001d\t\u0004-\r%DaBAl\u00073\u0012\r!\u0007\t\u0004-\r5DaBB8\u00073\u0012\r!\u0007\u0002\u0005)\"\fG\u000f\u0003\u0005\u0002\u0006\u000ee\u0003\u0019AB:!\u0019q\u0011\u0011R\u000b\u0004h!A1qOB-\u0001\u0004\u0019\t'\u0001\u0002dE\"911P=\u0005\n\ru\u0014AE7baJ\u001aw.\u001c2j]\u0016\u0014x,];jG.,baa \u0004\b\u000eUEc\u0003$\u0004\u0002\u000e%51RBL\u00073C\u0001\"!\"\u0004z\u0001\u000711\u0011\t\u0007\u001d\u0005%Uc!\"\u0011\u0007Y\u00199\tB\u0004\u0002X\u000ee$\u0019A\r\t\u000f\u0005\u00156\u0011\u0010a\u0001\u0001\"A1qOB=\u0001\u0004\u0019i\tE\u0004.\u0007\u001f\u001b)ia%\n\u0007\rEeFA\u0004Ck&dG-\u001a:\u0011\u0007Y\u0019)\nB\u0004\u0004p\re$\u0019A\r\t\u000f\u0005%6\u0011\u0010a\u0001C\"9\u0011QVB=\u0001\u0004\t\u0007bBBOs\u0012\u00053qT\u0001\u0011G>dG.Z2ue\r|WNY5oKJ,ba!)\u0004(\u000e-FCBBR\u0007[\u001b9\fE\u0004)\u0007G\u001a)k!+\u0011\u0007Y\u00199\u000bB\u0004\u0002X\u000em%\u0019A\r\u0011\u0007Y\u0019Y\u000bB\u0004\u0004p\rm%\u0019A\r\t\u0011\r=61\u0014a\u0001\u0007c\u000b!\u0001\u001d4\u0011\r9\u0019\u0019,FBS\u0013\r\u0019)\f\u0003\u0002\u0010!\u0006\u0014H/[1m\rVt7\r^5p]\"A1qOBN\u0001\u0004\u0019\u0019\u000bC\u0004\u0004<f$Ia!0\u0002-\r|G\u000e\\3diJ\u001aw.\u001c2j]\u0016\u0014x,];jG.,baa0\u0004H\u000eEGc\u0003$\u0004B\u000e%71ZBj\u0007+D\u0001ba,\u0004:\u0002\u000711\u0019\t\u0007\u001d\rMVc!2\u0011\u0007Y\u00199\rB\u0004\u0002X\u000ee&\u0019A\r\t\u000f\u0005\u00156\u0011\u0018a\u0001\u0001\"A1qOB]\u0001\u0004\u0019i\rE\u0004.\u0007\u001f\u001b)ma4\u0011\u0007Y\u0019\t\u000eB\u0004\u0004p\re&\u0019A\r\t\u000f\u0005%6\u0011\u0018a\u0001C\"9\u0011QVB]\u0001\u0004\t\u0007bBBms\u0012\u000531\\\u0001\u0011M2\fG/\\1qe\r|WNY5oKJ,ba!8\u0004d\u000e\u001dHCBBp\u0007S\u001c)\u0010E\u0004)\u0007G\u001a\to!:\u0011\u0007Y\u0019\u0019\u000fB\u0004\u0002X\u000e]'\u0019A\r\u0011\u0007Y\u00199\u000fB\u0004\u0004p\r]'\u0019A\r\t\u0011\u0005\u00155q\u001ba\u0001\u0007W\u0004bADAE+\r5\bCBBx\u0007c\u001c\t/D\u0001\u0007\u0013\r\u0019\u0019P\u0002\u0002\u0013\u000f\u0016tGK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cW\r\u0003\u0005\u0004x\r]\u0007\u0019ABp\u0011\u001d\u0019I0\u001fC!\u0007w\fqBZ5mi\u0016\u0014(gY8nE&tWM]\u000b\u0007\u0007{$\u0019\u0001b\u0002\u0015\r\r}H1\u0002C\u0007!\u001dA31\rC\u0001\t\u000b\u00012A\u0006C\u0002\t!\t\tja>C\u0002\t-\u0001c\u0001\f\u0005\b\u00119A\u0011BB|\u0005\u0004I\"\u0001\u0002+iSND\u0001ba\u0001\u0004x\u0002\u0007\u0011\u0011\u0018\u0005\t\u0007o\u001a9\u00101\u0001\u0004��\"9A\u0011C=\u0005\n\u0011M\u0011!\u00064jYR,'OM2p[\nLg.\u001a:`cVL7m[\u000b\u0007\t+!y\u0002b\t\u0015\u0017\u0019#9\u0002\"\u0007\u0005&\u0011\u001dB\u0011\u0006\u0005\t\u0007\u0007!y\u00011\u0001\u0002:\"A1q\u000fC\b\u0001\u0004!Y\u0002E\u0004.\u0007\u001f#i\u0002\"\t\u0011\u0007Y!y\u0002\u0002\u0005\u0002\u0012\u0012=!\u0019\u0001B\u0006!\r1B1\u0005\u0003\b\t\u0013!yA1\u0001\u001a\u0011\u001d\t)\u000bb\u0004A\u0002\u0001Cq!!+\u0005\u0010\u0001\u0007\u0011\rC\u0004\u0002.\u0012=\u0001\u0019A1\t\u000f\u00115\u0012\u0010\"\u0011\u00050\u0005\u0011b-\u001b7uKJtu\u000e\u001e\u001ad_6\u0014\u0017N\\3s+\u0019!\t\u0004b\u000e\u0005<Q1A1\u0007C\u001f\t\u007f\u0001r\u0001KB2\tk!I\u0004E\u0002\u0017\to!\u0001\"!%\u0005,\t\u0007!1\u0002\t\u0004-\u0011mBa\u0002C\u0005\tW\u0011\r!\u0007\u0005\t\u0007\u0007!Y\u00031\u0001\u0002:\"A1q\u000fC\u0016\u0001\u0004!\u0019\u0004C\u0004\u0005De$I\u0001\"\u0012\u00021\u0019LG\u000e^3s\u001d>$(gY8nE&tWM]0rk&\u001c7.\u0006\u0004\u0005H\u0011ECQ\u000b\u000b\f\r\u0012%C1\nC,\t3\"Y\u0006\u0003\u0005\u0004\u0004\u0011\u0005\u0003\u0019AA]\u0011!\u00199\b\"\u0011A\u0002\u00115\u0003cB\u0017\u0004\u0010\u0012=C1\u000b\t\u0004-\u0011EC\u0001CAI\t\u0003\u0012\rAa\u0003\u0011\u0007Y!)\u0006B\u0004\u0005\n\u0011\u0005#\u0019A\r\t\u000f\u0005\u0015F\u0011\ta\u0001\u0001\"9\u0011\u0011\u0016C!\u0001\u0004\t\u0007bBAW\t\u0003\u0002\r!\u0019\u0005\b\t?JH\u0011\tC1\u00031\u0019w\u000e]=3EVLG\u000eZ3s+!!\u0019\u0007\"\u001d\u0005v\u0011\u001dD\u0003\u0002C3\ts\u00022A\u0006C4\t!!I\u0007\"\u0018C\u0002\u0011-$a\u0001\"mIF\u0019!\u0004\"\u001c\u0011\u000f5\u001ay\tb\u001c\u0005tA\u0019a\u0003\"\u001d\u0005\u0011\u0005EEQ\fb\u0001\u0005\u0017\u00012A\u0006C;\t\u001d!9\b\"\u0018C\u0002e\u0011AaQ8mY\"A1q\u000fC/\u0001\u0004!)\u0007C\u0004\u0005~e$I\u0001b \u0002%\r|\u0007/\u001f\u001ack&dG-\u001a:`cVL7m[\u000b\u0007\t\u0003#Y\tb$\u0015\u0013\u0019#\u0019\t\"%\u0005\u0014\u0012U\u0005\u0002\u0003CC\tw\u0002\r\u0001b\"\u0002\u0003\t\u0004r!LBH\t\u0013#i\tE\u0002\u0017\t\u0017#\u0001\"!%\u0005|\t\u0007!1\u0002\t\u0004-\u0011=Ea\u0002C<\tw\u0012\r!\u0007\u0005\b\u0003K#Y\b1\u0001A\u0011\u001d\tI\u000bb\u001fA\u0002\u0005Dq!!,\u0005|\u0001\u0007\u0011\rC\u0004\u0005\u001af$\t\u0005b'\u0002'A\f'\u000f^5uS>t'gY8nE&tWM]:\u0016\r\u0011uE\u0011\u0016CW)!!y\nb,\u00052\u0012U\u0006c\u0002\b\u0005\"\u0012\u0015FQU\u0005\u0004\tGC!A\u0002+va2,'\u0007E\u0004)\u0007G\"9\u000bb+\u0011\u0007Y!I\u000b\u0002\u0005\u0002\u0012\u0012]%\u0019\u0001B\u0006!\r1BQ\u0016\u0003\b\t\u0013!9J1\u0001\u001a\u0011!\u0019\u0019\u0001b&A\u0002\u0005e\u0006\u0002\u0003CZ\t/\u0003\r\u0001\"*\u0002\u000b\t$(/^3\t\u0011\u0011]Fq\u0013a\u0001\tK\u000baA\u00194bYN,\u0007b\u0002C^s\u0012%AQX\u0001\u001aa\u0006\u0014H/\u001b;j_:\u00144m\\7cS:,'o]0rk&\u001c7.\u0006\u0004\u0005@\u0012%GQ\u001a\u000b\u000e\r\u0012\u0005G1\u0019Ch\t#$\u0019\u000e\"6\t\u0011\u0005]F\u0011\u0018a\u0001\u0003sC\u0001\u0002b-\u0005:\u0002\u0007AQ\u0019\t\b[\r=Eq\u0019Cf!\r1B\u0011\u001a\u0003\t\u0003##IL1\u0001\u0003\fA\u0019a\u0003\"4\u0005\u000f\u0011%A\u0011\u0018b\u00013!AAq\u0017C]\u0001\u0004!)\rC\u0004\u0002&\u0012e\u0006\u0019\u0001!\t\u000f\u0005%F\u0011\u0018a\u0001C\"9\u0011Q\u0016C]\u0001\u0004\t\u0007b\u0002Cms\u0012\u0005C1\\\u0001\u000ei\u0006\\WMM2p[\nLg.\u001a:\u0016\r\u0011uG1\u001dCt)\u0019!y\u000e\";\u0005lB9\u0001fa\u0019\u0005b\u0012\u0015\bc\u0001\f\u0005d\u0012A\u0011\u0011\u0013Cl\u0005\u0004\u0011Y\u0001E\u0002\u0017\tO$q\u0001\"\u0003\u0005X\n\u0007\u0011\u0004C\u0004\u0003d\u0012]\u0007\u0019A1\t\u0011\r]Dq\u001ba\u0001\t?Dq\u0001b<z\t\u0003\"\t0A\u0007ee>\u0004(gY8nE&tWM]\u000b\u0007\tg$I\u0010\"@\u0015\r\u0011UHq`C\u0001!\u001dA31\rC|\tw\u00042A\u0006C}\t!\t\t\n\"<C\u0002\t-\u0001c\u0001\f\u0005~\u00129A\u0011\u0002Cw\u0005\u0004I\u0002b\u0002Br\t[\u0004\r!\u0019\u0005\t\u0007o\"i\u000f1\u0001\u0005v\"9QQA=\u0005B\u0015\u001d\u0011\u0001\u0005:fm\u0016\u00148/\u001a\u001ad_6\u0014\u0017N\\3s+\u0019)I!b\u0004\u0006\u0014Q!Q1BC\u000b!\u001dA31MC\u0007\u000b#\u00012AFC\b\t!\t\t*b\u0001C\u0002\t-\u0001c\u0001\f\u0006\u0014\u00119A\u0011BC\u0002\u0005\u0004I\u0002\u0002CB<\u000b\u0007\u0001\r!b\u0003\t\u000f\u0015e\u0011\u0010\"\u0003\u0006\u001c\u00051\"/\u001a<feN,'gY8nE&tWM]0rk&\u001c7\u000eF\u0006G\u000b;)\t#b\t\u0006(\u0015-\u0002bBC\u0010\u000b/\u0001\r\u0001Q\u0001\u0005i\u0006\u0014x\rC\u0004\u0002&\u0016]\u0001\u0019\u0001!\t\u000f\u0015\u0015Rq\u0003a\u0001C\u0006AA/\u0019:hMJ|W\u000eC\u0004\u0006*\u0015]\u0001\u0019A1\u0002\u000fM\u00148M\u001a:p[\"9QQFC\f\u0001\u0004\t\u0017\u0001C:sGVtG/\u001b7\t\u000f\u0015E\u0012\u0010\"\u0011\u00064\u0005Y1oY1o)>\f%O]1z+\u0019))$b\u000f\u0006JQIa)b\u000e\u0006>\u0015\u0005Sq\n\u0005\t\u0003K,y\u00031\u0001\u0006:A\u0019a#b\u000f\u0005\u0011\u0005EUq\u0006b\u0001\u0005\u0017A\u0001\"a7\u00060\u0001\u0007Qq\b\t\n\u001d\u0005}W\u0011HC\u001d\u000bsA\u0001\"b\u0011\u00060\u0001\u0007QQI\u0001\bI\u0016\u001cH/\u0019:s!\u0011q\u0011)b\u0012\u0011\u0007Y)I\u0005\u0002\u0005\u0006L\u0015=\"\u0019AC'\u0005\u0005\t\u0015cAC\u001d;!9\u0011QVC\u0018\u0001\u0004\t\u0007bBC*s\u0012EQQK\u0001\u0012g\u000e\fg\u000eV8BeJ\f\u0017pX9vS\u000e\\W\u0003BC,\u000bK\"rBRC-\u000b;*y&b\u001a\u0006j\u0015-Tq\u000e\u0005\b\u000b7*\t\u00061\u0001A\u0003\u0019\u0019(oY1se\"9Q1IC)\u0001\u0004\u0001\u0005\u0002CAn\u000b#\u0002\r!\"\u0019\u0011\u00139\ty.b\u0019\u0006d\u0015\r\u0004c\u0001\f\u0006f\u00119\u0011\u0011SC)\u0005\u0004I\u0002\u0002CAs\u000b#\u0002\r!b\u0019\t\u000f\u0015%R\u0011\u000ba\u0001C\"9QQNC)\u0001\u0004\t\u0017aB:sG:$\u0018\u000e\u001c\u0005\b\u000bc*\t\u00061\u0001b\u0003!!Wm\u001d;ge>l\u0007BDC;sB\u0005\u0019\u0011!A\u0005\n\u0015]TqQ\u0001\u0017gV\u0004XM\u001d\u0013sKZ,'o]33G>l'-\u001b8feV1Q\u0011PC@\u000b\u0007#B!b\u001f\u0006\u0006B9\u0001fa\u0019\u0006~\u0015\u0005\u0005c\u0001\f\u0006��\u0011A\u0011\u0011SC:\u0005\u0004\u0011Y\u0001E\u0002\u0017\u000b\u0007#q\u0001\"\u0003\u0006t\t\u0007\u0011\u0004\u0003\u0005\u0004x\u0015M\u0004\u0019AC>\u0013\u0011))!\"#\n\u0007\u0015-EA\u0001\u000bBk\u001elWM\u001c;fIN+\u0017/\u0013;fe\u0006$xN]\u0004\n\u000b\u001f\u0003\u0011\u0011!E\u0001\u000b#\u000b\u0001\u0003U1s\u0003J\u0014\u0018-_%uKJ\fGo\u001c:\u0011\u0007a,\u0019J\u0002\u0005{\u0001\u0005\u0005\t\u0012ACK'\r)\u0019*\u0004\u0005\bu\u0015ME\u0011ACM)\t)\t\n\u0003\u0006\u0006\u001e\u0016M\u0015\u0013!C\u0001\u000b?\u000b1\u0004\n7fgNLg.\u001b;%OJ,\u0017\r^3sI\u0011,g-Y;mi\u0012\nTCACQU\r\tW1U\u0016\u0003\u000bK\u0003B!b*\u000626\u0011Q\u0011\u0016\u0006\u0005\u000bW+i+A\u0005v]\u000eDWmY6fI*\u0019Qq\u0016\u0005\u0002\u0015\u0005tgn\u001c;bi&|g.\u0003\u0003\u00064\u0016%&!E;oG\",7m[3e-\u0006\u0014\u0018.\u00198dK\"QQqWCJ#\u0003%\t!b(\u00027\u0011bWm]:j]&$He\u001a:fCR,'\u000f\n3fM\u0006,H\u000e\u001e\u00133\u0011))Y,b%\u0012\u0002\u0013\u0005QQX\u0001\u001cI1,7o]5oSR$sM]3bi\u0016\u0014H\u0005Z3gCVdG\u000fJ\u001a\u0016\u0005\u0015}&f\u0001!\u0006$\"9Q1\u0019\u0001\u0005\n\u0015\u0015\u0017a\u00032vS2$7/\u0011:sCf,b!b2\u0006R\u0016UG\u0003BA\u0017\u000b\u0013D\u0001\"b3\u0006B\u0002\u0007QQZ\u0001\u0002GB9Qfa$\u0006P\u0016M\u0007c\u0001\f\u0006R\u00129\u0011q[Ca\u0005\u0004I\u0002c\u0001\f\u0006V\u001291qNCa\u0005\u0004I\u0002bBCm\u0001\u0011\u0005S1\\\u0001\u0004[\u0006\u0004XCBCo\u000bc,\u0019\u000f\u0006\u0003\u0006`\u0016MH\u0003BCq\u000bK\u00042AFCr\t\u001d\u0019y'b6C\u0002eA\u0001\"b:\u0006X\u0002\u000fQ\u0011^\u0001\u0003E\u001a\u0004\u0002\"ICvW\u0015=X\u0011]\u0005\u0004\u000b[\u0014#\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007c\u0001\f\u0006r\u00129\u0011q[Cl\u0005\u0004I\u0002\u0002CAC\u000b/\u0004\r!\">\u0011\r9\tI)FCx\u0011\u001d)I\u0010\u0001C!\u000bw\fAa]2b]V1QQ D\b\r\u000b!B!b@\u0007\u0016Q!a\u0011\u0001D\t)\u00111\u0019Ab\u0002\u0011\u0007Y1)\u0001B\u0004\u0004p\u0015](\u0019A\r\t\u0011\u0019%Qq\u001fa\u0002\r\u0017\t1a\u00192g!!\tS1^\u0016\u0007\u000e\u0019\r\u0001c\u0001\f\u0007\u0010\u0011A\u0011\u0011SC|\u0005\u0004\u0011Y\u0001\u0003\u0005\u0002\\\u0016]\b\u0019\u0001D\n!%q\u0011q\u001cD\u0007\r\u001b1i\u0001\u0003\u0005\u0002f\u0016]\b\u0019\u0001D\u0007\r\u00191I\u0002\u0001\u0001\u0007\u001c\tY1kY1o)>\f%O]1z+\u00111iB\"\u000b\u0014\u000b\u0019]QBb\b\u0011\r!2\tC\u0012D\u0013\u0013\r1\u0019\u0003\u0002\u0002\u0005)\u0006\u001c8\u000eE\u0003y\r/19\u0003E\u0002\u0017\rS!\u0001\"!%\u0007\u0018\t\u0007!1\u0002\u0005\f\r[19B!A!\u0002\u00131y#\u0001\u0003ue\u0016,\u0007#\u0002=\u00072\u0019\u001d\u0012\u0002\u0002D\u001a\rk\u0011\u0001bU2b]R\u0013X-Z\u0005\u0004\ro!!a\u0004)be&#XM]1cY\u0016d\u0015n[3\t\u0017\u0005\u0015hq\u0003B\u0001B\u0003%aq\u0005\u0005\f\u0003749B!A!\u0002\u00131i\u0004E\u0005\u000f\u0003?49Cb\n\u0007(!Qa\u0011\tD\f\u0005\u0003\u0005\u000b\u0011\u0002!\u0002\u0013Q\f'oZ3uCJ\u0014\bb\u0002\u001e\u0007\u0018\u0011\u0005aQ\t\u000b\u000b\rK19E\"\u0013\u0007L\u00195\u0003\u0002\u0003D\u0017\r\u0007\u0002\rAb\f\t\u0011\u0005\u0015h1\ta\u0001\rOA\u0001\"a7\u0007D\u0001\u0007aQ\b\u0005\b\r\u00032\u0019\u00051\u0001A\u0011)1\tFb\u0006A\u0002\u0013\u0005a1K\u0001\u0007e\u0016\u001cX\u000f\u001c;\u0016\u0003\u0019C!Bb\u0016\u0007\u0018\u0001\u0007I\u0011\u0001D-\u0003)\u0011Xm];mi~#S-\u001d\u000b\u0004\r\u001am\u0003\u0002\u0003&\u0007V\u0005\u0005\t\u0019\u0001$\t\u0011\u0019}cq\u0003Q!\n\u0019\u000bqA]3tk2$\b\u0005\u0003\u0005\u0007d\u0019]A\u0011\u0001D3\u0003\u0011aW-\u00194\u0015\u0007\u001939\u0007\u0003\u0005\u0007j\u0019\u0005\u0004\u0019\u0001D6\u0003\u0011\u0001(/\u001a<\u0011\t9\u00119M\u0012\u0005\t\r_29\u0002\"\u0003\u0007r\u00059\u0011\u000e^3sCR,Gc\u0001$\u0007t!AaQ\u0006D7\u0001\u00041y\u0003\u0003\u0005\u0007x\u0019]A\u0011\u0002D=\u0003!\u00198-\u00198MK\u00064Gc\u0003$\u0007|\u0019udq\u0010DA\r\u0007Cq!b\u0017\u0007v\u0001\u0007\u0001\tC\u0004\u0007B\u0019U\u0004\u0019\u0001!\t\u000f\u00055fQ\u000fa\u0001C\"9!\u0011 D;\u0001\u0004\t\u0007\u0002\u0003DC\rk\u0002\rAb\n\u0002\u0011M$\u0018M\u001d;wC2D\u0001\"!\u0019\u0007\u0018\u0011\u0005a\u0011R\u000b\u0003\r\u0017\u0003b!!\u0013\u0002P\u0019}\u0001\u0002\u0003DH\r/!\t!a\u000b\u0002%MDw.\u001e7e'Bd\u0017\u000e\u001e$veRDWM\u001d\u0004\u0007\r'\u0003\u0001A\"&\u0003\u00075\u000b\u0007/\u0006\u0003\u0007\u0018\u001a}5#\u0002DI\u001b\u0019e\u0005C\u0002\u0015\u0007\"\u00193Y\nE\u0003y\r#3i\nE\u0002\u0017\r?#q!a6\u0007\u0012\n\u0007\u0011\u0004C\u0006\u0002\u0006\u001aE%\u0011!Q\u0001\n\u0019\r\u0006C\u0002\b\u0002\nV1i\n\u0003\u0006\u0007B\u0019E%\u0011!Q\u0001\n\u0001C!B\"+\u0007\u0012\n\u0005\t\u0015!\u0003b\u0003\u0019ygMZ:fi\"QaQ\u0016DI\u0005\u0003\u0005\u000b\u0011B1\u0002\u000f!|w/\\1os\"9!H\"%\u0005\u0002\u0019EFC\u0003DN\rg3)Lb.\u0007:\"A\u0011Q\u0011DX\u0001\u00041\u0019\u000bC\u0004\u0007B\u0019=\u0006\u0019\u0001!\t\u000f\u0019%fq\u0016a\u0001C\"9aQ\u0016DX\u0001\u0004\t\u0007B\u0003D)\r#\u0003\r\u0011\"\u0001\u0007T!Qaq\u000bDI\u0001\u0004%\tAb0\u0015\u0007\u00193\t\r\u0003\u0005K\r{\u000b\t\u00111\u0001G\u0011!1yF\"%!B\u00131\u0005\u0002\u0003D2\r##\tAb2\u0015\u0007\u00193I\r\u0003\u0005\u0007j\u0019\u0015\u0007\u0019\u0001D6\u0011!\t\tG\"%\u0005\u0002\u00195WC\u0001Dh!\u00191\tNb6\u0007\u001c6\u0011a1\u001b\u0006\u0004\r+4\u0011!C5n[V$\u0018M\u00197f\u0013\u00111INb5\u0003\t1K7\u000f\u001e\u0005\t\r\u001f3\t\n\"\u0001\u0002,!9aq\u001c\u0001\u0005\n\u0019\u0005\u0018aC<sSR,wJ\u00196fGR$2A\u0012Dr\u0011!1)O\"8A\u0002\u0019\u001d\u0018aA8viB!a\u0011\u001eDx\u001b\t1YO\u0003\u0003\u0007n\u0006M\u0014AA5p\u0013\u00111\tPb;\u0003%=\u0013'.Z2u\u001fV$\b/\u001e;TiJ,\u0017-\u001c\u0005\b\rk\u0004A\u0011\u0002D|\u0003)\u0011X-\u00193PE*,7\r\u001e\u000b\u0004\r\u001ae\b\u0002\u0003D~\rg\u0004\rA\"@\u0002\u0005%t\u0007\u0003\u0002Du\r\u007fLAa\"\u0001\u0007l\n\trJ\u00196fGRLe\u000e];u'R\u0014X-Y7)\u000f\u00019)ab\u0003\b\u000eA\u0019abb\u0002\n\u0007\u001d%\u0001B\u0001\tTKJL\u0017\r\u001c,feNLwN\\+J\t\u0006)a/\u00197vKz\t\u0011aB\u0004\b\u0012\tA\tab\u0005\u0002\u0011A\u000b'/\u0011:sCf\u00042AED\u000b\r\u0019\t!\u0001#\u0001\b\u0018M)qQCD\rcA!\u0011eb\u0007'\u0013\r9iB\t\u0002\u000b!\u0006\u0014h)Y2u_JL\bb\u0002\u001e\b\u0016\u0011\u0005q\u0011\u0005\u000b\u0003\u000f'A\u0001b\"\n\b\u0016\u0011\rqqE\u0001\rG\u0006t')^5mI\u001a\u0013x.\\\u000b\u0005\u000fS9I$\u0006\u0002\b,AI\u0011e\"\f\b2\u001d]r1H\u0005\u0004\u000f_\u0011#AD\"b]\u000e{WNY5oK\u001a\u0013x.\u001c\t\u0005\u000fg9)$\u0004\u0002\b\u0016%\u0019Aq\u000f-\u0011\u0007Y9I\u0004\u0002\u0004\u0019\u000fG\u0011\r!\u0007\t\u0005%\u000199\u0004\u0003\u0005\b@\u001dUA\u0011AD!\u0003)qWm\u001e\"vS2$WM]\u000b\u0005\u000f\u0007:I%\u0006\u0002\bFA9\u0001fa\u0019\bH\u001d-\u0003c\u0001\f\bJ\u00111\u0001d\"\u0010C\u0002e\u0001BA\u0005\u0001\bH!AqqJD\u000b\t\u00039\t&A\u0006oK^\u001cu.\u001c2j]\u0016\u0014X\u0003BD*\u000f3*\"a\"\u0016\u0011\u000f!\u001a\u0019gb\u0016\b\\A\u0019ac\"\u0017\u0005\ra9iE1\u0001\u001a!\u0011\u0011\u0002ab\u0016\t\u0011\u001d}sQ\u0003C\u0001\u000fC\nq\u0001[1oI>4g-\u0006\u0003\bd\u001d%D\u0003BD3\u000fW\u0002BA\u0005\u0001\bhA\u0019ac\"\u001b\u0005\ra9iF1\u0001\u001a\u0011!\t9b\"\u0018A\u0002\u001d5\u0004\u0003\u0002\bB\u000fOB\u0001bb\u0018\b\u0016\u0011\u0005q\u0011O\u000b\u0005\u000fg:I\b\u0006\u0004\bv\u001dmtq\u0010\t\u0005%\u000199\bE\u0002\u0017\u000fs\"a\u0001GD8\u0005\u0004I\u0002\u0002CA\f\u000f_\u0002\ra\" \u0011\t9\tuq\u000f\u0005\u0007A\u001e=\u0004\u0019A1\t\u0011\u001d\ruQ\u0003C\u0005\u000f\u000b\u000bQb\u001e:ba>\u0013(+\u001a2vS2$W\u0003BDD\u000f\u001b#ba\"#\b\u0010\u001eE\u0005\u0003\u0002\n\u0001\u000f\u0017\u00032AFDG\t\u0019Ar\u0011\u0011b\u00013!9\u0011qCDA\u0001\u0004i\u0001B\u00021\b\u0002\u0002\u0007\u0011\r\u0003\u0005\b\u0016\u001eUA\u0011ADL\u00039\u0019'/Z1uK\u001a\u0013x.\\\"paf,Ba\"'\b\"R!q1TD[)\u00119ij\"*\u0011\tI\u0001qq\u0014\t\u0004-\u001d\u0005Fa\u0002\r\b\u0014\n\u0007q1U\t\u000355A!bb*\b\u0014\u0006\u0005\t9ADU\u0003))g/\u001b3f]\u000e,G%\r\t\u0007\u000fW;\tlb(\u000e\u0005\u001d5&bADX\u0011\u00059!/\u001a4mK\u000e$\u0018\u0002BDZ\u000f[\u0013\u0001b\u00117bgN$\u0016m\u001a\u0005\t\u0003/9\u0019\n1\u0001\b8B!a\"QDP\u0011!9Yl\"\u0006\u0005\u0002\u001du\u0016\u0001\u00054s_6$&/\u0019<feN\f'\r\\3t+\u00119yl\"2\u0015\t\u001d\u0005wq\u0019\t\u0005%\u00019\u0019\rE\u0002\u0017\u000f\u000b$a\u0001GD]\u0005\u0004I\u0002\u0002CDe\u000fs\u0003\rab3\u0002\u0007a\u001c8\u000fE\u0003\u000f\u00037:i\r\u0005\u0004\u0004p\u000eEx1\u0019\u0005\u000b\u000f#<)\"!A\u0005\n\u001dM\u0017a\u0003:fC\u0012\u0014Vm]8mm\u0016$\"a\"6\u0011\t\u00055tq[\u0005\u0005\u000f3\fyG\u0001\u0004PE*,7\r\u001e")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray.class */
public class ParArray<T> implements ParSeq<T>, Serializable {
    public static final long serialVersionUID = 1;
    private volatile ParArray$ParArrayIterator$ ParArrayIterator$module;
    private volatile ParIterableLike$ScanLeaf$ ScanLeaf$module;
    private volatile ParIterableLike$ScanNode$ ScanNode$module;
    private final ArraySeq<T> arrayseq;
    private volatile transient TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport;
    private transient Object[] scala$collection$parallel$mutable$ParArray$$array;

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$Map.class */
    public class Map<S> implements Task<BoxedUnit, ParArray<T>.Map<S>> {
        public final /* synthetic */ ParArray $outer;

        /* renamed from: f */
        private final Function1<T, S> f1599f;
        private final int howmany;
        private final int offset;
        private BoxedUnit result = BoxedUnit.UNIT;
        private final Object[] targetarr;
        private volatile Throwable throwable;

        public Map(ParArray<T> parArray, Function1<T, S> function1, Object[] objArr, int i, int i2) {
            this.f1599f = function1;
            this.targetarr = objArr;
            this.offset = i;
            this.howmany = i2;
            Objects.requireNonNull(parArray);
            this.$outer = parArray;
            throwable_$eq(null);
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // scala.collection.parallel.Task
        public void leaf(Option<BoxedUnit> option) {
            Object[] objArr = this.targetarr;
            Object[] scala$collection$parallel$mutable$ParArray$$array = scala$collection$parallel$mutable$ParArray$Map$$$outer().scala$collection$parallel$mutable$ParArray$$array();
            int i = this.offset;
            int i2 = this.howmany;
            for (int i3 = i; i3 < i2 + i; i3++) {
                objArr[i3] = this.f1599f.apply(scala$collection$parallel$mutable$ParArray$$array[i3]);
            }
        }

        @Override // scala.collection.parallel.Task
        public void merge(Object obj) {
            Task.Cclass.merge(this, obj);
        }

        @Override // scala.collection.parallel.Task
        public void mergeThrowables(Task<?, ?> task) {
            Task.Cclass.mergeThrowables(this, task);
        }

        @Override // scala.collection.parallel.Task
        public Object repr() {
            return Task.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.Task
        /* renamed from: result */
        public void result2() {
        }

        public void result_$eq(BoxedUnit boxedUnit) {
            this.result = boxedUnit;
        }

        public /* synthetic */ ParArray scala$collection$parallel$mutable$ParArray$Map$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return this.howmany > package$.MODULE$.thresholdFromSize(scala$collection$parallel$mutable$ParArray$Map$$$outer().length(), scala$collection$parallel$mutable$ParArray$Map$$$outer().tasksupport().parallelismLevel());
        }

        @Override // scala.collection.parallel.Task
        public void signalAbort() {
            Task.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.Task
        public List<ParArray<T>.Map<S>> split() {
            int i = this.howmany / 2;
            return List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new Map[]{new Map(scala$collection$parallel$mutable$ParArray$Map$$$outer(), this.f1599f, this.targetarr, this.offset, i), new Map(scala$collection$parallel$mutable$ParArray$Map$$$outer(), this.f1599f, this.targetarr, this.offset + i, this.howmany - i)}));
        }

        @Override // scala.collection.parallel.Task
        public Throwable throwable() {
            return this.throwable;
        }

        @Override // scala.collection.parallel.Task
        @TraitSetter
        public void throwable_$eq(Throwable th) {
            this.throwable = th;
        }

        @Override // scala.collection.parallel.Task
        public void tryLeaf(Option<BoxedUnit> option) {
            Task.Cclass.tryLeaf(this, option);
        }

        @Override // scala.collection.parallel.Task
        public void tryMerge(Object obj) {
            Task.Cclass.tryMerge(this, obj);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$ParArrayIterator.class */
    public class ParArrayIterator implements SeqSplitter<T> {
        public final /* synthetic */ ParArray $outer;
        private final Object[] arr;

        /* renamed from: i */
        private int f1600i;
        private Signalling signalDelegate;
        private final int until;

        public ParArrayIterator(ParArray<T> parArray, int i, int i2, Object[] objArr) {
            this.f1600i = i;
            this.until = i2;
            this.arr = objArr;
            Objects.requireNonNull(parArray);
            this.$outer = parArray;
            TraversableOnce.Cclass.$init$(this);
            Iterator.Cclass.$init$(this);
            RemainsIterator.Cclass.$init$(this);
            AugmentedIterableIterator.Cclass.$init$(this);
            DelegatedSignalling.Cclass.$init$(this);
            IterableSplitter.Cclass.$init$(this);
            AugmentedSeqIterator.Cclass.$init$(this);
            SeqSplitter.Cclass.$init$(this);
        }

        private <S, That> void collect2combiner_quick(PartialFunction<T, S> partialFunction, Object[] objArr, Builder<S, That> builder, int i, int i2) {
            Function1<T, Object> runWith = partialFunction.runWith(new ParArray$ParArrayIterator$$anonfun$2(this, builder));
            while (i2 < i) {
                runWith.apply((T) objArr[i2]);
                i2++;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private int count_quick(Function1<T, Object> function1, Object[] objArr, int i, int i2) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i2 < i) {
                    int i5 = i4;
                    if (BoxesRunTime.unboxToBoolean(function1.apply(objArr[i2]))) {
                        i5 = i4 + 1;
                    }
                    i2++;
                    i3 = i5;
                } else {
                    return i4;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private boolean exists_quick(Function1<T, Object> function1, Object[] objArr, int i, int i2) {
            while (i2 < i) {
                if (BoxesRunTime.unboxToBoolean(function1.apply(objArr[i2]))) {
                    return true;
                }
                i2++;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private <U, This> void filter2combiner_quick(Function1<T, Object> function1, Builder<U, This> builder, Object[] objArr, int i, int i2) {
            for (int m91i = m91i(); m91i < i; m91i++) {
                Object obj = objArr[m91i];
                if (BoxesRunTime.unboxToBoolean(function1.apply(obj))) {
                    builder.$plus$eq((Builder<U, This>) obj);
                } else {
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private <U, This> void filterNot2combiner_quick(Function1<T, Object> function1, Builder<U, This> builder, Object[] objArr, int i, int i2) {
            for (int m91i = m91i(); m91i < i; m91i++) {
                Object obj = objArr[m91i];
                if (BoxesRunTime.unboxToBoolean(function1.apply(obj))) {
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                } else {
                    builder.$plus$eq((Builder<U, This>) obj);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Option<T> find_quick(Function1<T, Object> function1, Object[] objArr, int i, int i2) {
            while (i2 < i) {
                Object obj = objArr[i2];
                if (BoxesRunTime.unboxToBoolean(function1.apply(obj))) {
                    return new Some(obj);
                }
                i2++;
            }
            return None$.MODULE$;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private <S> S foldLeft_quick(Object[] objArr, int i, Function2<S, T, S> function2, S s) {
            for (int m91i = m91i(); m91i < i; m91i++) {
                s = function2.apply(s, objArr[m91i]);
            }
            return s;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private boolean forall_quick(Function1<T, Object> function1, Object[] objArr, int i, int i2) {
            while (i2 < i) {
                if (!BoxesRunTime.unboxToBoolean(function1.apply(objArr[i2]))) {
                    return false;
                }
                i2++;
            }
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private <U> void foreach_quick(Function1<T, U> function1, Object[] objArr, int i, int i2) {
            while (i2 < i) {
                function1.apply(objArr[i2]);
                i2++;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private int indexWhere_quick(Function1<T, Object> function1, Object[] objArr, int i, int i2) {
            int i3 = -1;
            while (i2 < i) {
                if (BoxesRunTime.unboxToBoolean(function1.apply(objArr[i2]))) {
                    i3 = i2;
                    i2 = i;
                } else {
                    i2++;
                }
            }
            return i3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private int lastIndexWhere_quick(Function1<T, Object> function1, Object[] objArr, int i, int i2) {
            int i3 = i2 - 1;
            int i4 = -1;
            while (i3 >= i) {
                if (BoxesRunTime.unboxToBoolean(function1.apply(objArr[i3]))) {
                    i4 = i3;
                    i3 = -1;
                } else {
                    i3--;
                }
            }
            return i4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private <S, That> void map2combiner_quick(Function1<T, S> function1, Object[] objArr, Builder<S, That> builder, int i, int i2) {
            while (i2 < i) {
                builder.$plus$eq((Builder<S, That>) function1.apply(objArr[i2]));
                i2++;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private <U, This> void partition2combiners_quick(Function1<T, Object> function1, Builder<U, This> builder, Builder<U, This> builder2, Object[] objArr, int i, int i2) {
            while (i2 < i) {
                Object obj = objArr[i2];
                if (BoxesRunTime.unboxToBoolean(function1.apply(obj))) {
                    builder.$plus$eq((Builder<U, This>) obj);
                } else {
                    builder2.$plus$eq((Builder<U, This>) obj);
                }
                i2++;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private int prefixLength_quick(Function1<T, Object> function1, Object[] objArr, int i, int i2) {
            int i3 = i;
            int i4 = i2;
            while (i4 < i3) {
                if (BoxesRunTime.unboxToBoolean(function1.apply(objArr[i4]))) {
                    i4++;
                } else {
                    i3 = i4;
                }
            }
            return i3 - i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private <U> U product_quick(Numeric<U> numeric, Object[] objArr, int i, int i2, U u) {
            while (i2 < i) {
                u = numeric.times(u, objArr[i2]);
                i2++;
            }
            return u;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private <U> U sum_quick(Numeric<U> numeric, Object[] objArr, int i, int i2, U u) {
            while (i2 < i) {
                u = numeric.plus(u, objArr[i2]);
                i2++;
            }
            return u;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $colon$bslash(B b, Function2<T, B, B> function2) {
            Object foldRight;
            foldRight = foldRight(b, function2);
            return (B) foldRight;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $div$colon(B b, Function2<B, T, B> function2) {
            Object foldLeft;
            foldLeft = foldLeft(b, function2);
            return (B) foldLeft;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> $plus$plus(Function0<GenTraversableOnce<B>> function0) {
            return Iterator.Cclass.$plus$plus(this, function0);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void abort() {
            DelegatedSignalling.Cclass.abort(this);
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
        public <S> S aggregate(Function0<S> function0, Function2<S, T, S> function2, Function2<S, S, S> function22) {
            return (S) foldLeft(function0.apply(), function2);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U, PI extends IterableSplitter<U>> IterableSplitter<T>.Appended<U, PI> appendParIterable(PI pi) {
            return IterableSplitter.Cclass.appendParIterable(this, pi);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U, PI extends SeqSplitter<U>> SeqSplitter<T>.Appended<U, PI> appendParSeq(PI pi) {
            return SeqSplitter.Cclass.appendParSeq(this, pi);
        }

        public Object[] arr() {
            return this.arr;
        }

        @Override // scala.collection.Iterator
        public BufferedIterator<T> buffered() {
            return Iterator.Cclass.buffered(this);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String buildString(Function1<Function1<String, BoxedUnit>, BoxedUnit> function1) {
            return IterableSplitter.Cclass.buildString(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> collect(PartialFunction<T, B> partialFunction) {
            return Iterator.Cclass.collect(this, partialFunction);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> collect2combiner(PartialFunction<T, S> partialFunction, Combiner<S, That> combiner) {
            collect2combiner_quick(partialFunction, arr(), combiner, until(), m91i());
            i_$eq(until());
            return combiner;
        }

        @Override // scala.collection.TraversableOnce
        public <B> Option<B> collectFirst(PartialFunction<T, B> partialFunction) {
            return TraversableOnce.Cclass.collectFirst(this, partialFunction);
        }

        @Override // scala.collection.Iterator
        public boolean contains(Object obj) {
            return Iterator.Cclass.contains(this, obj);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, Coll, Bld extends Builder<U, Coll>> Bld copy2builder(Bld bld) {
            bld.sizeHint(remaining());
            m90xefb94d96().builder2ops(bld).ifIs(new ParArray$ParArrayIterator$$anonfun$copy2builder$2(this)).otherwise(new ParArray$ParArrayIterator$$anonfun$copy2builder$1(this, bld), ClassTag$.MODULE$.apply(ResizableParArrayCombiner.class));
            return bld;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj) {
            TraversableOnce.Cclass.copyToArray(this, obj);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj, int i) {
            TraversableOnce.Cclass.copyToArray(this, obj, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <U> void copyToArray(Object obj, int i, int i2) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            RichInt$ richInt$2 = RichInt$.MODULE$;
            Predef$ predef$2 = Predef$.MODULE$;
            int min$extension = richInt$.min$extension(richInt$2.min$extension(m90xefb94d96().length() - m91i(), i2), ScalaRunTime$.MODULE$.array_length(obj) - i);
            Array$.MODULE$.copy(arr(), m91i(), obj, i, min$extension);
            i_$eq(m91i() + min$extension);
        }

        @Override // scala.collection.TraversableOnce
        public <B> void copyToBuffer(Buffer<B> buffer) {
            TraversableOnce.Cclass.copyToBuffer(this, buffer);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S> boolean corresponds(Function2<T, S, Object> function2, Iterator<S> iterator) {
            return AugmentedSeqIterator.Cclass.corresponds(this, function2, iterator);
        }

        @Override // scala.collection.Iterator
        public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<T, B, Object> function2) {
            return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<T, Object> function1) {
            int count_quick = count_quick(function1, arr(), until(), m91i());
            i_$eq(until());
            return count_quick;
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String debugInformation() {
            return IterableSplitter.Cclass.debugInformation(this);
        }

        @Override // scala.collection.Iterator
        public ParArray<T>.ParArrayIterator drop(int i) {
            i_$eq(m91i() + i);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner) {
            drop(i);
            combiner.sizeHint(remaining());
            while (m91i() < until()) {
                combiner.$plus$eq((Combiner<U, This>) arr()[m91i()]);
                i_$eq(m91i() + 1);
            }
            return combiner;
        }

        @Override // scala.collection.Iterator
        public Iterator<T> dropWhile(Function1<T, Object> function1) {
            return Iterator.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public ParArray<T>.ParArrayIterator dup() {
            return new ParArrayIterator(m90xefb94d96(), m91i(), until(), arr());
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<T>, Iterator<T>> duplicate() {
            return Iterator.Cclass.duplicate(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<T, Object> function1) {
            if (isAborted()) {
                return true;
            }
            boolean z = false;
            while (m91i() < until()) {
                int until = m91i() + package$.MODULE$.CHECK_RATE() > until() ? until() : m91i() + package$.MODULE$.CHECK_RATE();
                z = exists_quick(function1, m90xefb94d96().scala$collection$parallel$mutable$ParArray$$array(), until, m91i());
                if (z) {
                    i_$eq(until());
                    abort();
                } else {
                    i_$eq(until);
                }
                if (isAborted()) {
                    return true;
                }
            }
            return z;
        }

        @Override // scala.collection.Iterator
        public Iterator<T> filter(Function1<T, Object> function1) {
            return Iterator.Cclass.filter(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filter2combiner(Function1<T, Object> function1, Combiner<U, This> combiner) {
            filter2combiner_quick(function1, combiner, arr(), until(), m91i());
            i_$eq(until());
            return combiner;
        }

        @Override // scala.collection.Iterator
        public Iterator<T> filterNot(Function1<T, Object> function1) {
            return Iterator.Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filterNot2combiner(Function1<T, Object> function1, Combiner<U, This> combiner) {
            filterNot2combiner_quick(function1, combiner, arr(), until(), m91i());
            i_$eq(until());
            return combiner;
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<T> find(Function1<T, Object> function1) {
            if (isAborted()) {
                return None$.MODULE$;
            }
            None$ none$ = None$.MODULE$;
            while (m91i() < until()) {
                int m91i = m91i() + package$.MODULE$.CHECK_RATE() < until() ? m91i() + package$.MODULE$.CHECK_RATE() : until();
                none$ = find_quick(function1, m90xefb94d96().scala$collection$parallel$mutable$ParArray$$array(), m91i, m91i());
                None$ none$2 = None$.MODULE$;
                if (none$ != null && none$.equals(none$2)) {
                    i_$eq(m91i);
                } else {
                    i_$eq(until());
                    abort();
                }
                if (isAborted()) {
                    return none$;
                }
            }
            return none$;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> flatMap(Function1<T, GenTraversableOnce<B>> function1) {
            return Iterator.Cclass.flatMap(this, function1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> flatmap2combiner(Function1<T, GenTraversableOnce<S>> function1, Combiner<S, That> combiner) {
            while (m91i() < until()) {
                GenTraversableOnce genTraversableOnce = (GenTraversableOnce) function1.apply(arr()[m91i()]);
                if (genTraversableOnce instanceof Iterable) {
                    combiner.$plus$plus$eq(((Iterable) genTraversableOnce).iterator());
                } else {
                    combiner.$plus$plus$eq(genTraversableOnce.seq());
                }
                i_$eq(m91i() + 1);
            }
            return combiner;
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U fold(U u, Function2<U, U, U> function2) {
            return (U) foldLeft(u, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <S> S foldLeft(S s, Function2<S, T, S> function2) {
            S s2 = (S) foldLeft_quick(arr(), until(), function2, s);
            i_$eq(until());
            return s2;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<T, B, B> function2) {
            return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<T, Object> function1) {
            if (isAborted()) {
                return false;
            }
            boolean z = true;
            while (m91i() < until()) {
                int until = m91i() + package$.MODULE$.CHECK_RATE() > until() ? until() : m91i() + package$.MODULE$.CHECK_RATE();
                z = forall_quick(function1, m90xefb94d96().scala$collection$parallel$mutable$ParArray$$array(), until, m91i());
                if (z) {
                    i_$eq(until);
                } else {
                    i_$eq(until());
                    abort();
                }
                if (isAborted()) {
                    return false;
                }
            }
            return z;
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<T, U> function1) {
            foreach_quick(function1, arr(), until(), m91i());
            i_$eq(until());
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<T>.GroupedIterator<B> grouped(int i) {
            return Iterator.Cclass.grouped(this, i);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return Iterator.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return m91i() < until();
        }

        /* renamed from: i */
        public int m91i() {
            return this.f1600i;
        }

        public void i_$eq(int i) {
            this.f1600i = i;
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int indexFlag() {
            return DelegatedSignalling.Cclass.indexFlag(this);
        }

        @Override // scala.collection.Iterator
        public <B> int indexOf(B b) {
            return Iterator.Cclass.indexOf(this, b);
        }

        @Override // scala.collection.Iterator
        public int indexWhere(Function1<T, Object> function1) {
            int indexWhere_quick = indexWhere_quick(function1, arr(), until(), m91i());
            int i = indexWhere_quick;
            if (indexWhere_quick != -1) {
                i = indexWhere_quick - m91i();
            }
            i_$eq(until());
            return i;
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public boolean isAborted() {
            return DelegatedSignalling.Cclass.isAborted(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return Iterator.Cclass.isEmpty(this);
        }

        @Override // scala.collection.parallel.RemainsIterator
        public boolean isRemainingCheap() {
            return RemainsIterator.Cclass.isRemainingCheap(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce
        public boolean isTraversableAgain() {
            return Iterator.Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int lastIndexWhere(Function1<T, Object> function1) {
            int lastIndexWhere_quick = lastIndexWhere_quick(function1, arr(), m91i(), until());
            int i = lastIndexWhere_quick;
            if (lastIndexWhere_quick != -1) {
                i = lastIndexWhere_quick - m91i();
            }
            i_$eq(until());
            return i;
        }

        @Override // scala.collection.Iterator
        public int length() {
            return Iterator.Cclass.length(this);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> SeqSplitter<T>.Mapped<S> map(Function1<T, S> function1) {
            return SeqSplitter.Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> map2combiner(Function1<T, S> function1, Combiner<S, That> combiner) {
            combiner.sizeHint(remaining());
            map2combiner_quick(function1, arr(), combiner, until(), m91i());
            i_$eq(until());
            return combiner;
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> T max(Ordering<U> ordering) {
            return (T) AugmentedIterableIterator.Cclass.max(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> T maxBy(Function1<T, B> function1, Ordering<B> ordering) {
            return (T) TraversableOnce.Cclass.maxBy(this, function1, ordering);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> T min(Ordering<U> ordering) {
            return (T) AugmentedIterableIterator.Cclass.min(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> T minBy(Function1<T, B> function1, Ordering<B> ordering) {
            return (T) TraversableOnce.Cclass.minBy(this, function1, ordering);
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

        @Override // scala.collection.parallel.IterableSplitter
        public <U extends IterableSplitter<T>.Taken> U newSliceInternal(U u, int i) {
            return (U) IterableSplitter.Cclass.newSliceInternal(this, u, i);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public SeqSplitter<T>.Taken newTaken(int i) {
            return SeqSplitter.Cclass.newTaken(this, i);
        }

        @Override // scala.collection.Iterator
        public T next() {
            T t = (T) arr()[m91i()];
            i_$eq(m91i() + 1);
            return t;
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
        public Tuple2<Iterator<T>, Iterator<T>> partition(Function1<T, Object> function1) {
            return Iterator.Cclass.partition(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> partition2combiners(Function1<T, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            partition2combiners_quick(function1, combiner, combiner2, arr(), until(), m91i());
            i_$eq(until());
            return new Tuple2<>(combiner, combiner2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
            return Iterator.Cclass.patch(this, i, iterator, i2);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U> SeqSplitter<T>.Patched<U> patchParSeq(int i, SeqSplitter<U> seqSplitter, int i2) {
            return SeqSplitter.Cclass.patchParSeq(this, i, seqSplitter, i2);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int prefixLength(Function1<T, Object> function1) {
            int prefixLength_quick = prefixLength_quick(function1, arr(), until(), m91i());
            i_$eq(m91i() + prefixLength_quick + 1);
            return prefixLength_quick;
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            U u = (U) product_quick(numeric, arr(), until(), m91i(), numeric.one());
            i_$eq(until());
            return u;
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.PreciseSplitter
        public Seq<ParArray<T>.ParArrayIterator> psplit(Seq<Object> seq) {
            IntRef create = IntRef.create(m91i());
            int unboxToInt = BoxesRunTime.unboxToInt(seq.reduceLeft(new ParArray$ParArrayIterator$$anonfun$1(this)));
            int remaining = remaining();
            if (unboxToInt < remaining) {
                seq = (Seq) seq.$colon$plus(BoxesRunTime.boxToInteger(remaining - unboxToInt), Seq$.MODULE$.canBuildFrom());
            }
            return (Seq) seq.map(new ParArray$ParArrayIterator$$anonfun$psplit$1(this, create), Seq$.MODULE$.canBuildFrom());
        }

        @Override // scala.collection.parallel.SeqSplitter
        public Seq<SeqSplitter<T>> psplitWithSignalling(Seq<Object> seq) {
            return SeqSplitter.Cclass.psplitWithSignalling(this, seq);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U reduce(Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduce(this, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U> U reduceLeft(int i, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduceLeft(this, i, function2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> B reduceLeft(Function2<B, T, B> function2) {
            return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceLeftOption(Function2<B, T, B> function2) {
            return TraversableOnce.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
            return TraversableOnce.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B reduceRight(Function2<T, B, B> function2) {
            return (B) TraversableOnce.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceRightOption(Function2<T, B, B> function2) {
            return TraversableOnce.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
        public int remaining() {
            return until() - m91i();
        }

        @Override // scala.collection.parallel.SeqSplitter
        public SeqSplitter<T> reverse() {
            return SeqSplitter.Cclass.reverse(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, This> Combiner<U, This> reverse2combiner(Combiner<U, This> combiner) {
            m90xefb94d96().builder2ops(combiner).ifIs(new ParArray$ParArrayIterator$$anonfun$reverse2combiner$2(this)).otherwise(new ParArray$ParArrayIterator$$anonfun$reverse2combiner$1(this, combiner), ClassTag$.MODULE$.apply(ResizableParArrayCombiner.class));
            return combiner;
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S, That> Combiner<S, That> reverseMap2combiner(Function1<T, S> function1, Combiner<S, That> combiner) {
            return AugmentedSeqIterator.Cclass.reverseMap2combiner(this, function1, combiner);
        }

        @Override // scala.collection.TraversableOnce
        public List<T> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.collection.Iterator
        public boolean sameElements(Iterator<?> iterator) {
            boolean z = true;
            while (m91i() < until() && iterator.hasNext()) {
                Object obj = arr()[m91i()];
                Object next = iterator.next();
                if (!(obj == next ? true : obj == null ? false : obj instanceof Number ? BoxesRunTime.equalsNumObject((Number) obj, next) : obj instanceof Character ? BoxesRunTime.equalsCharObject((Character) obj, next) : obj.equals(next))) {
                    i_$eq(until());
                    z = false;
                }
                i_$eq(m91i() + 1);
            }
            return z;
        }

        /* renamed from: scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer */
        public /* synthetic */ ParArray m90xefb94d96() {
            return this.$outer;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: scala$collection$parallel$mutable$ParArray$ParArrayIterator$$copy2builder_quick */
        public <U, Coll> void m89xe088084b(Builder<U, Coll> builder, Object[] objArr, int i, int i2) {
            while (i2 < i) {
                builder.$plus$eq((Builder<U, Coll>) objArr[i2]);
                i2++;
            }
        }

        /* renamed from: scala$collection$parallel$mutable$ParArray$ParArrayIterator$$reverse2combiner_quick */
        public void m88xe20c010(Object[] objArr, Object[] objArr2, int i, int i2, int i3) {
            int i4 = (i + i3) - i2;
            while (true) {
                i4--;
                if (i2 < i3) {
                    objArr[i4] = objArr2[i2];
                    i2++;
                } else {
                    return;
                }
            }
        }

        /* renamed from: scala$collection$parallel$mutable$ParArray$ParArrayIterator$$super$reverse2combiner */
        public /* synthetic */ Combiner m87xfa83cb6b(Combiner combiner) {
            return AugmentedSeqIterator.Cclass.reverse2combiner(this, combiner);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanLeft(B b, Function2<B, T, B> function2) {
            return Iterator.Cclass.scanLeft(this, b, function2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanRight(B b, Function2<T, B, B> function2) {
            return Iterator.Cclass.scanRight(this, b, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, A> void scanToArray(U u, Function2<U, U, U> function2, Object obj, int i) {
            scanToArray_quick(m90xefb94d96().scala$collection$parallel$mutable$ParArray$$array(), (Object[]) obj, function2, u, m91i(), until(), i);
            i_$eq(until());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <U> void scanToArray_quick(Object[] objArr, Object[] objArr2, Function2<U, U, U> function2, U u, int i, int i2, int i3) {
            while (i < i2) {
                u = function2.apply(u, objArr[i]);
                objArr2[i3] = u;
                i++;
                i3++;
            }
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, That> Combiner<U, That> scanToCombiner(int i, U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
            return AugmentedIterableIterator.Cclass.scanToCombiner(this, i, u, function2, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, That> Combiner<U, That> scanToCombiner(U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
            return AugmentedIterableIterator.Cclass.scanToCombiner(this, u, function2, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Iterator<T> seq() {
            return Iterator.Cclass.seq(this);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlag(int i) {
            DelegatedSignalling.Cclass.setIndexFlag(this, i);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlagIfGreater(int i) {
            DelegatedSignalling.Cclass.setIndexFlagIfGreater(this, i);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlagIfLesser(int i) {
            DelegatedSignalling.Cclass.setIndexFlagIfLesser(this, i);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S> boolean shouldSplitFurther(ParIterable<S> parIterable, int i) {
            return IterableSplitter.Cclass.shouldSplitFurther(this, parIterable, i);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
        public Signalling signalDelegate() {
            return this.signalDelegate;
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
        @TraitSetter
        public void signalDelegate_$eq(Signalling signalling) {
            this.signalDelegate = signalling;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return TraversableOnce.Cclass.size(this);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<T> slice(int i, int i2) {
            return SeqSplitter.Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> slice2combiner(int i, int i2, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.slice2combiner(this, i, i2, combiner);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<T>.GroupedIterator<B> sliding(int i, int i2) {
            return Iterator.Cclass.sliding(this, i, i2);
        }

        @Override // scala.collection.Iterator
        public <B> int sliding$default$2() {
            return Iterator.Cclass.sliding$default$2(this);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<T>, Iterator<T>> span(Function1<T, Object> function1) {
            return Iterator.Cclass.span(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> span2combiners(Function1<T, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.span2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<ParArray<T>.ParArrayIterator> split() {
            Seq<ParArray<T>.ParArrayIterator> seq;
            int remaining = remaining();
            if (remaining >= 2) {
                int i = remaining / 2;
                seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new ParArrayIterator[]{new ParArrayIterator(m90xefb94d96(), m91i(), m91i() + i, arr()), new ParArrayIterator(m90xefb94d96(), m91i() + i, until(), arr())}));
                i_$eq(until());
            } else {
                seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new ParArrayIterator[]{this}));
            }
            return seq;
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.splitAt2combiners(this, i, combiner, combiner2);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public Seq<SeqSplitter<T>> splitWithSignalling() {
            return SeqSplitter.Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U sum(Numeric<U> numeric) {
            U u = (U) sum_quick(numeric, arr(), until(), m91i(), numeric.zero());
            i_$eq(until());
            return u;
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int tag() {
            return DelegatedSignalling.Cclass.tag(this);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<T> take(int i) {
            return SeqSplitter.Cclass.take(this, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner) {
            combiner.sizeHint(i);
            int m91i = m91i();
            Object[] arr = arr();
            while (m91i() < m91i + i) {
                combiner.$plus$eq((Combiner<U, This>) arr[m91i()]);
                i_$eq(m91i() + 1);
            }
            return combiner;
        }

        @Override // scala.collection.Iterator
        public Iterator<T> takeWhile(Function1<T, Object> function1) {
            return Iterator.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Object> takeWhile2combiner(Function1<T, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.takeWhile2combiner(this, function1, combiner);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, T, Col> canBuildFrom) {
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
        public IndexedSeq<T> toIndexedSeq() {
            return TraversableOnce.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterable<T> toIterable() {
            return TraversableOnce.Cclass.toIterable(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<T> toIterator() {
            return Iterator.Cclass.toIterator(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public List<T> toList() {
            return TraversableOnce.Cclass.toList(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <T, U> scala.collection.immutable.Map<T, U> toMap(Predef$$less$colon$less<T, Tuple2<T, U>> predef$$less$colon$less) {
            return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public Seq<T> toSeq() {
            return TraversableOnce.Cclass.toSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return TraversableOnce.Cclass.toSet(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<T> toStream() {
            return Iterator.Cclass.toStream(this);
        }

        @Override // scala.collection.Iterator
        public String toString() {
            return new StringBuilder().append((Object) "ParArrayIterator(").append(BoxesRunTime.boxToInteger(m91i())).append((Object) ", ").append(BoxesRunTime.boxToInteger(until())).append((Object) ")").toString();
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Traversable<T> toTraversable() {
            return Iterator.Cclass.toTraversable(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Vector<T> toVector() {
            return TraversableOnce.Cclass.toVector(this);
        }

        public int until() {
            return this.until;
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, That> Combiner<U, That> updated2combiner(int i, U u, Combiner<U, That> combiner) {
            return AugmentedSeqIterator.Cclass.updated2combiner(this, i, u, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<T> withFilter(Function1<T, Object> function1) {
            return Iterator.Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<T, B>> zip(Iterator<B> iterator) {
            return Iterator.Cclass.zip(this, iterator);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zip2combiner(RemainsIterator<S> remainsIterator, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zip2combiner(this, remainsIterator, combiner);
        }

        @Override // scala.collection.Iterator
        public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
            return Iterator.Cclass.zipAll(this, iterator, a1, b1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zipAll2combiner(RemainsIterator<S> remainsIterator, U u, S s, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zipAll2combiner(this, remainsIterator, u, s, combiner);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public <S, U, R> SeqSplitter<T>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return SeqSplitter.Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public <S> SeqSplitter<T>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return SeqSplitter.Cclass.zipParSeq(this, seqSplitter);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<T, Object>> zipWithIndex() {
            return Iterator.Cclass.zipWithIndex(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$ScanToArray.class */
    public class ScanToArray<U> implements Task<BoxedUnit, ParArray<T>.ScanToArray<U>> {
        public final /* synthetic */ ParArray $outer;

        /* renamed from: op */
        private final Function2<U, U, U> f1601op;
        private BoxedUnit result = BoxedUnit.UNIT;
        private final Object[] targetarr;
        private volatile Throwable throwable;
        private final ParIterableLike<T, ParArray<T>, ArraySeq<T>>.ScanTree<U> tree;

        /* renamed from: z */
        private final U f1602z;

        public ScanToArray(ParArray<T> parArray, ParIterableLike<T, ParArray<T>, ArraySeq<T>>.ScanTree<U> scanTree, U u, Function2<U, U, U> function2, Object[] objArr) {
            this.tree = scanTree;
            this.f1602z = u;
            this.f1601op = function2;
            this.targetarr = objArr;
            Objects.requireNonNull(parArray);
            this.$outer = parArray;
            throwable_$eq(null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void iterate(ParIterableLike<T, ParArray<T>, ArraySeq<T>>.ScanTree<U> scanTree) {
            boolean z;
            ParIterableLike.ScanLeaf scanLeaf;
            while (true) {
                z = false;
                scanLeaf = null;
                if (!(scanTree instanceof ParIterableLike.ScanNode)) {
                    break;
                }
                ParIterableLike.ScanNode scanNode = (ParIterableLike.ScanNode) scanTree;
                iterate(scanNode.left());
                scanTree = scanNode.right();
            }
            if (scanTree instanceof ParIterableLike.ScanLeaf) {
                z = true;
                ParIterableLike.ScanLeaf scanLeaf2 = (ParIterableLike.ScanLeaf) scanTree;
                scanLeaf = scanLeaf2;
                if (scanLeaf2.prev() instanceof Some) {
                    scanLeaf(scala$collection$parallel$mutable$ParArray$ScanToArray$$$outer().scala$collection$parallel$mutable$ParArray$$array(), this.targetarr, scanLeaf2.from(), scanLeaf2.len(), ((ParIterableLike.ScanLeaf) ((Some) scanLeaf2.prev()).m362x()).acc());
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                    BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                }
            }
            if (!z || !None$.MODULE$.equals(scanLeaf.prev())) {
                throw new MatchError(scanTree);
            }
            scanLeaf(scala$collection$parallel$mutable$ParArray$ScanToArray$$$outer().scala$collection$parallel$mutable$ParArray$$array(), this.targetarr, scanLeaf.from(), scanLeaf.len(), this.f1602z);
            BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
            BoxedUnit boxedUnit22 = BoxedUnit.UNIT;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void scanLeaf(Object[] objArr, Object[] objArr2, int i, int i2, U u) {
            Function2<U, U, U> function2 = this.f1601op;
            int i3 = i;
            while (i3 < i2 + i) {
                u = function2.apply(u, objArr[i3]);
                i3++;
                objArr2[i3] = u;
            }
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<BoxedUnit> option) {
            iterate(this.tree);
        }

        @Override // scala.collection.parallel.Task
        public void merge(Object obj) {
            Task.Cclass.merge(this, obj);
        }

        @Override // scala.collection.parallel.Task
        public void mergeThrowables(Task<?, ?> task) {
            Task.Cclass.mergeThrowables(this, task);
        }

        @Override // scala.collection.parallel.Task
        public Object repr() {
            return Task.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.Task
        /* renamed from: result */
        public void result2() {
        }

        public void result_$eq(BoxedUnit boxedUnit) {
            this.result = boxedUnit;
        }

        public /* synthetic */ ParArray scala$collection$parallel$mutable$ParArray$ScanToArray$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return this.tree instanceof ParIterableLike.ScanNode;
        }

        @Override // scala.collection.parallel.Task
        public void signalAbort() {
            Task.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.Task
        public Seq<Task<BoxedUnit, ParArray<T>.ScanToArray<U>>> split() {
            ParIterableLike<T, ParArray<T>, ArraySeq<T>>.ScanTree<U> scanTree = this.tree;
            if (scanTree instanceof ParIterableLike.ScanNode) {
                ParIterableLike.ScanNode scanNode = (ParIterableLike.ScanNode) scanTree;
                return (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new ScanToArray[]{new ScanToArray(scala$collection$parallel$mutable$ParArray$ScanToArray$$$outer(), scanNode.left(), this.f1602z, this.f1601op, this.targetarr), new ScanToArray(scala$collection$parallel$mutable$ParArray$ScanToArray$$$outer(), scanNode.right(), this.f1602z, this.f1601op, this.targetarr)}));
            }
            throw scala.sys.package$.MODULE$.error("Can only split scan tree internal nodes.");
        }

        @Override // scala.collection.parallel.Task
        public Throwable throwable() {
            return this.throwable;
        }

        @Override // scala.collection.parallel.Task
        @TraitSetter
        public void throwable_$eq(Throwable th) {
            this.throwable = th;
        }

        @Override // scala.collection.parallel.Task
        public void tryLeaf(Option<BoxedUnit> option) {
            Task.Cclass.tryLeaf(this, option);
        }

        @Override // scala.collection.parallel.Task
        public void tryMerge(Object obj) {
            Task.Cclass.tryMerge(this, obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ParArray(int i) {
        this(new ArraySeq(i));
        Predef$.MODULE$.require(i >= 0);
    }

    public ParArray(ArraySeq<T> arraySeq) {
        this.arrayseq = arraySeq;
        Parallelizable.Cclass.$init$(this);
        GenSeqLike.Cclass.$init$(this);
        GenericTraversableTemplate.Cclass.$init$(this);
        GenTraversable.Cclass.$init$(this);
        GenIterable.Cclass.$init$(this);
        GenSeq.Cclass.$init$(this);
        GenericParTemplate.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
        scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(package$.MODULE$.defaultTaskSupport());
        ParIterable.Cclass.$init$(this);
        ParIterable.Cclass.$init$(this);
        ParSeqLike.Cclass.$init$(this);
        ParSeq.Cclass.$init$(this);
        ParSeq.Cclass.$init$(this);
        this.scala$collection$parallel$mutable$ParArray$$array = arraySeq.array();
    }

    private ParArray$ParArrayIterator$ ParArrayIterator$lzycompute() {
        synchronized (this) {
            if (this.ParArrayIterator$module == null) {
                this.ParArrayIterator$module = new ParArray$ParArrayIterator$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.ParArrayIterator$module;
    }

    public static GenTraversableFactory<ParArray>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) ParArray$.MODULE$.ReusableCBF();
    }

    private ParIterableLike$ScanLeaf$ ScanLeaf$lzycompute() {
        synchronized (this) {
            if (this.ScanLeaf$module == null) {
                this.ScanLeaf$module = new ParIterableLike$ScanLeaf$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.ScanLeaf$module;
    }

    private ParIterableLike$ScanNode$ ScanNode$lzycompute() {
        synchronized (this) {
            if (this.ScanNode$module == null) {
                this.ScanNode$module = new ParIterableLike$ScanNode$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.ScanNode$module;
    }

    private <S, That> boolean buildsArray(Builder<S, That> builder) {
        return builder instanceof ResizableParArrayCombiner;
    }

    public static <T> CanCombineFrom<ParArray<?>, T, ParArray<T>> canBuildFrom() {
        return ParArray$.MODULE$.canBuildFrom();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable concat(Seq seq) {
        return ParArray$.MODULE$.concat(seq);
    }

    public static <T> ParArray<T> createFromCopy(T[] tArr, ClassTag<T> classTag) {
        return ParArray$.MODULE$.createFromCopy(tArr, classTag);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable empty() {
        return ParArray$.MODULE$.empty();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, int i5, Function0 function0) {
        return ParArray$.MODULE$.fill(i, i2, i3, i4, i5, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, Function0 function0) {
        return ParArray$.MODULE$.fill(i, i2, i3, i4, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, Function0 function0) {
        return ParArray$.MODULE$.fill(i, i2, i3, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, Function0 function0) {
        return ParArray$.MODULE$.fill(i, i2, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, Function0 function0) {
        return ParArray$.MODULE$.fill(i, function0);
    }

    public static <T> ParArray<T> fromTraversables(Seq<GenTraversableOnce<T>> seq) {
        return ParArray$.MODULE$.fromTraversables(seq);
    }

    public static <T> ParArray<T> handoff(Object obj) {
        return ParArray$.MODULE$.handoff(obj);
    }

    public static <T> ParArray<T> handoff(Object obj, int i) {
        return ParArray$.MODULE$.handoff(obj, i);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable iterate(Object obj, int i, Function1 function1) {
        return ParArray$.MODULE$.iterate(obj, i, function1);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Object obj3, Integral integral) {
        return ParArray$.MODULE$.range(obj, obj2, obj3, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Integral integral) {
        return ParArray$.MODULE$.range(obj, obj2, integral);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        scala$collection$parallel$mutable$ParArray$$array_$eq(arrayseq().array());
    }

    private void scala$collection$parallel$mutable$ParArray$$array_$eq(Object[] objArr) {
        this.scala$collection$parallel$mutable$ParArray$$array = objArr;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, int i5, Function5 function5) {
        return ParArray$.MODULE$.tabulate(i, i2, i3, i4, i5, function5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, Function4 function4) {
        return ParArray$.MODULE$.tabulate(i, i2, i3, i4, function4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, Function3 function3) {
        return ParArray$.MODULE$.tabulate(i, i2, i3, function3);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, Function2 function2) {
        return ParArray$.MODULE$.tabulate(i, i2, function2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, Function1 function1) {
        return ParArray$.MODULE$.tabulate(i, function1);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S $colon$bslash(S s, Function2<T, S, S> function2) {
        Object foldRight;
        foldRight = foldRight(s, function2);
        return (S) foldRight;
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That $colon$plus(U u, CanBuildFrom<ParArray<T>, U, That> canBuildFrom) {
        Object patch;
        patch = patch(length(), (GenSeq) ParArray$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{u})), 0, canBuildFrom);
        return (That) patch;
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S $div$colon(S s, Function2<S, T, S> function2) {
        Object foldLeft;
        foldLeft = foldLeft(s, function2);
        return (S) foldLeft;
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That $plus$colon(U u, CanBuildFrom<ParArray<T>, U, That> canBuildFrom) {
        Object patch;
        patch = patch(0, (GenSeq) ParArray$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{u})), 0, canBuildFrom);
        return (That) patch;
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That $plus$plus(GenTraversableOnce<U> genTraversableOnce, CanBuildFrom<ParArray<T>, U, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
    }

    public ParArray$ParArrayIterator$ ParArrayIterator() {
        return this.ParArrayIterator$module == null ? ParArrayIterator$lzycompute() : this.ParArrayIterator$module;
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ParIterableLike$ScanLeaf$ ScanLeaf() {
        return this.ScanLeaf$module == null ? ScanLeaf$lzycompute() : this.ScanLeaf$module;
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ParIterableLike$ScanNode$ ScanNode() {
        return this.ScanNode$module == null ? ScanNode$lzycompute() : this.ScanNode$module;
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S aggregate(Function0<S> function0, Function2<S, T, S> function2, Function2<S, S, S> function22) {
        return (S) ParIterableLike.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.parallel.ParSeq, scala.collection.GenSeqLike
    public T apply(int i) {
        return (T) scala$collection$parallel$mutable$ParArray$$array()[i];
    }

    public ArraySeq<T> arrayseq() {
        return this.arrayseq;
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Object bf2seq(CanBuildFrom<ParArray<T>, S, That> canBuildFrom) {
        return ParIterableLike.Cclass.bf2seq(this, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Seq<String> brokenInvariants() {
        return ParIterableLike.Cclass.brokenInvariants(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <Elem, To> Object builder2ops(Builder<Elem, To> builder) {
        return ParIterableLike.Cclass.builder2ops(this, builder);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public boolean canEqual(Object obj) {
        return ParIterableLike.Cclass.canEqual(this, obj);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That collect(PartialFunction<T, S> partialFunction, CanBuildFrom<ParArray<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.collect(this, partialFunction, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Object combinerFactory() {
        return ParIterableLike.Cclass.combinerFactory(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Object combinerFactory(Function0<Combiner<S, That>> function0) {
        return ParIterableLike.Cclass.combinerFactory(this, function0);
    }

    @Override // scala.collection.parallel.mutable.ParSeq, scala.collection.parallel.mutable.ParIterable, scala.collection.parallel.ParIterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<ParArray> companion() {
        return ParArray$.MODULE$;
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> void copyToArray(Object obj) {
        ParIterableLike.Cclass.copyToArray(this, obj);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> void copyToArray(Object obj, int i) {
        ParIterableLike.Cclass.copyToArray(this, obj, i);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <U> void copyToArray(Object obj, int i, int i2) {
        ParIterableLike.Cclass.copyToArray(this, obj, i, i2);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <S> boolean corresponds(GenSeq<S> genSeq, Function2<T, S, Object> function2) {
        return ParSeqLike.Cclass.corresponds(this, genSeq, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public int count(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.count(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ArrayBuffer<String> debugBuffer() {
        return ParIterableLike.Cclass.debugBuffer(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public String debugInformation() {
        return ParIterableLike.Cclass.debugInformation(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void debugclear() {
        ParIterableLike.Cclass.debugclear(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ArrayBuffer<String> debuglog(String str) {
        return ParIterableLike.Cclass.debuglog(this, str);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <PI extends DelegatedSignalling> Object delegatedSignalling2ops(PI pi) {
        return ParIterableLike.Cclass.delegatedSignalling2ops(this, pi);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public scala.collection.parallel.ParSeq diff(GenSeq genSeq) {
        return ParSeqLike.Cclass.diff(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public scala.collection.parallel.ParSeq distinct() {
        return ParSeqLike.Cclass.distinct(this);
    }

    @Override // scala.collection.parallel.ParSeqLike
    public SeqSplitter<T> down(IterableSplitter<?> iterableSplitter) {
        return ParSeqLike.Cclass.down(this, iterableSplitter);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable drop(int i) {
        return ParIterableLike.Cclass.drop(this, i);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable dropWhile(Function1 function1) {
        return ParIterableLike.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <S> boolean endsWith(GenSeq<S> genSeq) {
        return ParSeqLike.Cclass.endsWith(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike, scala.Equals
    public boolean equals(Object obj) {
        return GenSeqLike.Cclass.equals(this, obj);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.exists(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable filter(Function1 function1) {
        return ParIterableLike.Cclass.filter(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.MapLike
    public scala.collection.parallel.ParIterable filterNot(Function1 function1) {
        return ParIterableLike.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<T> find(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.find(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That flatMap(Function1<T, GenTraversableOnce<S>> function1, CanBuildFrom<ParArray<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.flatMap(this, function1, canBuildFrom);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable flatten(Function1 function1) {
        return GenericTraversableTemplate.Cclass.flatten(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U fold(U u, Function2<U, U, U> function2) {
        return (U) ParIterableLike.Cclass.fold(this, u, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S foldLeft(S s, Function2<S, T, S> function2) {
        return (S) ParIterableLike.Cclass.foldLeft(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <S> S foldRight(S s, Function2<T, S, S> function2) {
        return (S) ParIterableLike.Cclass.foldRight(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.forall(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<T, U> function1) {
        ParIterableLike.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <B> Combiner<B, ParArray<B>> genericBuilder() {
        return GenericParTemplate.Cclass.genericBuilder(this);
    }

    @Override // scala.collection.generic.GenericParTemplate
    public <B> Combiner<B, ParArray<B>> genericCombiner() {
        return GenericParTemplate.Cclass.genericCombiner(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <K> ParMap<K, ParArray<T>> groupBy(Function1<T, K> function1) {
        return ParIterableLike.Cclass.groupBy(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return ParIterableLike.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.GenSeqLike
    public int hashCode() {
        return GenSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public T head() {
        return (T) ParIterableLike.Cclass.head(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<T> headOption() {
        return ParIterableLike.Cclass.headOption(this);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int indexOf(B b) {
        return GenSeqLike.Cclass.indexOf(this, b);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int indexOf(B b, int i) {
        return GenSeqLike.Cclass.indexOf(this, b, i);
    }

    @Override // scala.collection.GenSeqLike
    public int indexWhere(Function1<T, Object> function1) {
        return GenSeqLike.Cclass.indexWhere(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int indexWhere(Function1<T, Object> function1, int i) {
        return ParSeqLike.Cclass.indexWhere(this, function1, i);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable init() {
        return ParIterableLike.Cclass.init(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void initTaskSupport() {
        ParIterableLike.Cclass.initTaskSupport(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public scala.collection.parallel.ParSeq intersect(GenSeq genSeq) {
        return ParSeqLike.Cclass.intersect(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike
    public boolean isDefinedAt(int i) {
        return GenSeqLike.Cclass.isDefinedAt(this, i);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return ParIterableLike.Cclass.isEmpty(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public boolean isStrictSplitterCollection() {
        return ParIterableLike.Cclass.isStrictSplitterCollection(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
    public final boolean isTraversableAgain() {
        return ParIterableLike.Cclass.isTraversableAgain(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public PreciseSplitter<T> iterator() {
        return ParSeqLike.Cclass.iterator(this);
    }

    @Override // scala.collection.GenTraversableLike
    public T last() {
        return (T) ParIterableLike.Cclass.last(this);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int lastIndexOf(B b) {
        return GenSeqLike.Cclass.lastIndexOf(this, b);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int lastIndexOf(B b, int i) {
        return GenSeqLike.Cclass.lastIndexOf(this, b, i);
    }

    @Override // scala.collection.GenSeqLike
    public int lastIndexWhere(Function1<T, Object> function1) {
        return GenSeqLike.Cclass.lastIndexWhere(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int lastIndexWhere(Function1<T, Object> function1, int i) {
        return ParSeqLike.Cclass.lastIndexWhere(this, function1, i);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<T> lastOption() {
        return ParIterableLike.Cclass.lastOption(this);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return arrayseq().length();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [scala.collection.parallel.mutable.ParArray] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v0, types: [scala.collection.generic.CanBuildFrom, scala.collection.generic.CanBuildFrom<scala.collection.parallel.mutable.ParArray<T>, S, That>] */
    @Override // scala.collection.GenTraversableLike, scala.collection.SetLike
    public <S, That> That map(Function1<T, S> function1, CanBuildFrom<ParArray<T>, S, That> canBuildFrom) {
        That that;
        if (buildsArray(canBuildFrom.apply(repr()))) {
            ArraySeq arraySeq = new ArraySeq(length());
            tasksupport().executeAndWaitResult(new Map(this, function1, arraySeq.array(), 0, length()));
            that = new ParArray(arraySeq);
        } else {
            that = ParIterableLike.Cclass.map(this, function1, canBuildFrom);
        }
        return that;
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> T max(Ordering<U> ordering) {
        return (T) ParIterableLike.Cclass.max(this, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> T maxBy(Function1<T, S> function1, Ordering<S> ordering) {
        return (T) ParIterableLike.Cclass.maxBy(this, function1, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> T min(Ordering<U> ordering) {
        return (T) ParIterableLike.Cclass.min(this, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> T minBy(Function1<T, S> function1, Ordering<S> ordering) {
        return (T) ParIterableLike.Cclass.minBy(this, function1, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public String mkString() {
        return ParIterableLike.Cclass.mkString(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public String mkString(String str) {
        return ParIterableLike.Cclass.mkString(this, str);
    }

    @Override // scala.collection.GenTraversableOnce
    public String mkString(String str, String str2, String str3) {
        return ParIterableLike.Cclass.mkString(this, str, str2, str3);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<T, ParArray<T>> newBuilder() {
        return GenericParTemplate.Cclass.newBuilder(this);
    }

    @Override // scala.collection.generic.GenericParTemplate, scala.collection.generic.HasNewCombiner
    public Combiner<T, ParArray<T>> newCombiner() {
        return GenericParTemplate.Cclass.newCombiner(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return ParIterableLike.Cclass.nonEmpty(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That padTo(int i, U u, CanBuildFrom<ParArray<T>, U, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.padTo(this, i, u, canBuildFrom);
    }

    @Override // scala.collection.Parallelizable
    public scala.collection.parallel.ParIterable par() {
        return ParIterableLike.Cclass.par(this);
    }

    @Override // scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<T, ParArray<T>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParArray<T>, ParArray<T>> partition(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.partition(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That patch(int i, GenSeq<U> genSeq, int i2, CanBuildFrom<ParArray<T>, U, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.patch(this, i, genSeq, i2, canBuildFrom);
    }

    @Override // scala.collection.GenSeqLike
    public int prefixLength(Function1<T, Object> function1) {
        return GenSeqLike.Cclass.prefixLength(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void printDebugBuffer() {
        ParIterableLike.Cclass.printDebugBuffer(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U product(Numeric<U> numeric) {
        return (U) ParIterableLike.Cclass.product(this, numeric);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U reduce(Function2<U, U, U> function2) {
        return (U) ParIterableLike.Cclass.reduce(this, function2);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <U> U reduceLeft(Function2<U, T, U> function2) {
        return (U) ParIterableLike.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceLeftOption(Function2<U, T, U> function2) {
        return ParIterableLike.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceOption(Function2<U, U, U> function2) {
        return ParIterableLike.Cclass.reduceOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <U> U reduceRight(Function2<T, U, U> function2) {
        return (U) ParIterableLike.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceRightOption(Function2<T, U, U> function2) {
        return ParIterableLike.Cclass.reduceRightOption(this, function2);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public scala.collection.parallel.ParIterable repr() {
        return ParIterableLike.Cclass.repr(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Combiner<S, That> reuse(Option<Combiner<S, That>> option, Combiner<S, That> combiner) {
        return ParIterableLike.Cclass.reuse(this, option, combiner);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public scala.collection.parallel.ParSeq reverse() {
        return ParSeqLike.Cclass.reverse(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <S, That> That reverseMap(Function1<T, S> function1, CanBuildFrom<ParArray<T>, S, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.reverseMap(this, function1, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U> boolean sameElements(GenIterable<U> genIterable) {
        return ParSeqLike.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport() {
        return this.scala$collection$parallel$ParIterableLike$$_tasksupport;
    }

    @Override // scala.collection.parallel.ParIterableLike
    @TraitSetter
    public void scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(TaskSupport taskSupport) {
        this.scala$collection$parallel$ParIterableLike$$_tasksupport = taskSupport;
    }

    @Override // scala.collection.parallel.ParSeqLike
    public /* synthetic */ Object scala$collection$parallel$ParSeqLike$$super$zip(GenIterable genIterable, CanBuildFrom canBuildFrom) {
        return ParIterableLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    public Object[] scala$collection$parallel$mutable$ParArray$$array() {
        return this.scala$collection$parallel$mutable$ParArray$$array;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [scala.collection.parallel.mutable.ParArray] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v0, types: [scala.collection.generic.CanBuildFrom, scala.collection.generic.CanBuildFrom<scala.collection.parallel.mutable.ParArray<T>, U, That>] */
    @Override // scala.collection.GenTraversableLike
    public <U, That> That scan(U u, Function2<U, U, U> function2, CanBuildFrom<ParArray<T>, U, That> canBuildFrom) {
        That that;
        if (tasksupport().parallelismLevel() <= 1 || !buildsArray(canBuildFrom.apply(repr()))) {
            that = ParIterableLike.Cclass.scan(this, u, function2, canBuildFrom);
        } else {
            ArraySeq arraySeq = new ArraySeq(length() + 1);
            Object[] array = arraySeq.array();
            array[0] = u;
            if (length() > 0) {
                tasksupport().executeAndWaitResult(task2ops(new ParIterableLike.CreateScanTree(this, 0, size(), u, function2, splitter())).mapResult(new ParArray$$anonfun$scan$1(this, u, function2, array)));
            } else {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            that = new ParArray(arraySeq);
        }
        return that;
    }

    @Override // scala.collection.parallel.ParIterableLike
    public int scanBlockSize() {
        return ParIterableLike.Cclass.scanBlockSize(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanLeft(S s, Function2<S, T, S> function2, CanBuildFrom<ParArray<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanLeft(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanRight(S s, Function2<T, S, S> function2, CanBuildFrom<ParArray<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanRight(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int segmentLength(Function1<T, Object> function1, int i) {
        return ParSeqLike.Cclass.segmentLength(this, function1, i);
    }

    @Override // scala.collection.parallel.mutable.ParSeq, scala.collection.parallel.mutable.ParIterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public ArraySeq<T> seq() {
        return arrayseq();
    }

    @Override // scala.collection.parallel.ParIterableLike
    public scala.collection.parallel.ParIterable sequentially(Function1 function1) {
        return ParIterableLike.Cclass.sequentially(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
    public int size() {
        return ParSeqLike.Cclass.size(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable slice(int i, int i2) {
        return ParIterableLike.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParArray<T>, ParArray<T>> span(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.span(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParArray<T>, ParArray<T>> splitAt(int i) {
        return ParIterableLike.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ParArray<T>.ParArrayIterator splitter() {
        return new ParArrayIterator(this, ParArrayIterator().$lessinit$greater$default$1(), ParArrayIterator().$lessinit$greater$default$2(), ParArrayIterator().$lessinit$greater$default$3());
    }

    @Override // scala.collection.GenSeqLike
    public <B> boolean startsWith(GenSeq<B> genSeq) {
        return GenSeqLike.Cclass.startsWith(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <S> boolean startsWith(GenSeq<S> genSeq, int i) {
        return ParSeqLike.Cclass.startsWith(this, genSeq, i);
    }

    @Override // scala.collection.parallel.ParIterable, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return ParSeq.Cclass.stringPrefix(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U sum(Numeric<U> numeric) {
        return (U) ParIterableLike.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable tail() {
        return ParIterableLike.Cclass.tail(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable take(int i) {
        return ParIterableLike.Cclass.take(this, i);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable takeWhile(Function1 function1) {
        return ParIterableLike.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <R, Tp> Object task2ops(ParIterableLike<T, ParArray<T>, ArraySeq<T>>.StrictSplitterCheckTask<R, Tp> strictSplitterCheckTask) {
        return ParIterableLike.Cclass.task2ops(this, strictSplitterCheckTask);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public TaskSupport tasksupport() {
        return ParIterableLike.Cclass.tasksupport(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void tasksupport_$eq(TaskSupport taskSupport) {
        scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(taskSupport);
    }

    @Override // scala.collection.GenTraversableOnce
    /* renamed from: to */
    public <Col> Col mo1to(CanBuildFrom<Nothing$, T, Col> canBuildFrom) {
        return (Col) ParIterableLike.Cclass.m112to(this, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Object toArray(ClassTag<U> classTag) {
        return ParIterableLike.Cclass.toArray(this, classTag);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Buffer<U> toBuffer() {
        return ParIterableLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public IndexedSeq<T> toIndexedSeq() {
        return ParIterableLike.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.parallel.mutable.ParIterable, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public ParIterable<T> toIterable() {
        return ParIterable.Cclass.toIterable(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<T> toIterator() {
        return ParIterableLike.Cclass.toIterator(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public List<T> toList() {
        return ParIterableLike.Cclass.toList(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <K, V> ParMap<K, V> toMap(Predef$$less$colon$less<T, Tuple2<K, V>> predef$$less$colon$less) {
        return ParIterableLike.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <U, That> That toParCollection(Function0<Combiner<U, That>> function0) {
        return (That) ParIterableLike.Cclass.toParCollection(this, function0);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <K, V, That> That toParMap(Function0<Combiner<Tuple2<K, V>, That>> function0, Predef$$less$colon$less<T, Tuple2<K, V>> predef$$less$colon$less) {
        return (That) ParIterableLike.Cclass.toParMap(this, function0, predef$$less$colon$less);
    }

    @Override // scala.collection.parallel.mutable.ParSeq, scala.collection.parallel.mutable.ParIterable, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public ParSeq<T> toSeq() {
        return ParSeq.Cclass.toSeq(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <U> ParSet<U> toSet() {
        return ParIterableLike.Cclass.toSet(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<T> toStream() {
        return ParIterableLike.Cclass.toStream(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public String toString() {
        return ParSeq.Cclass.toString(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public GenTraversable<T> toTraversable() {
        return ParIterableLike.Cclass.toTraversable(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public Vector<T> toVector() {
        return ParIterableLike.Cclass.toVector(this);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable transpose(Function1 function1) {
        return GenericTraversableTemplate.Cclass.transpose(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<ParArray<T>, B, That> canBuildFrom) {
        return (That) GenSeqLike.Cclass.union(this, genSeq, canBuildFrom);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<T, Tuple2<A1, A2>> function1) {
        return GenericTraversableTemplate.Cclass.unzip(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<T, Tuple3<A1, A2, A3>> function1) {
        return GenericTraversableTemplate.Cclass.unzip3(this, function1);
    }

    @Override // scala.collection.parallel.mutable.ParSeq
    public void update(int i, T t) {
        scala$collection$parallel$mutable$ParArray$$array()[i] = t;
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That updated(int i, U u, CanBuildFrom<ParArray<T>, U, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.updated(this, i, u, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Object view() {
        return ParSeqLike.Cclass.view(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public scala.collection.parallel.ParIterable withFilter(Function1 function1) {
        return ParIterableLike.Cclass.withFilter(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <R> Object wrap(Function0<R> function0) {
        return ParIterableLike.Cclass.wrap(this, function0);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U, S, That> That zip(GenIterable<S> genIterable, CanBuildFrom<ParArray<T>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <S, U, That> That zipAll(GenIterable<S> genIterable, U u, S s, CanBuildFrom<ParArray<T>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipAll(this, genIterable, u, s, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U, That> That zipWithIndex(CanBuildFrom<ParArray<T>, Tuple2<U, Object>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
