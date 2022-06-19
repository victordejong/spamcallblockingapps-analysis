package scala.collection.immutable;

import java.util.Objects;
import scala.Console$;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Function3;
import scala.Function4;
import scala.Function5;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.AbstractSeq;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenSeqLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.IterableView;
import scala.collection.IterableViewLike;
import scala.collection.Iterator;
import scala.collection.LinearSeq;
import scala.collection.LinearSeqLike;
import scala.collection.LinearSeqOptimized;
import scala.collection.Parallel;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.SeqLike;
import scala.collection.SeqView;
import scala.collection.SeqViewLike;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.TraversableView;
import scala.collection.TraversableViewLike;
import scala.collection.ViewMkString;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.SliceInterval;
import scala.collection.generic.TraversableForwarder;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.LinearSeq;
import scala.collection.immutable.Seq;
import scala.collection.immutable.StreamViewLike;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.LazyBuilder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSeq;
import scala.math.Integral;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.ObjectRef;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001\u0019]eAB\u0001\u0003\u0003\u0003I\u0011F\u0001\u0004TiJ,\u0017-\u001c\u0006\u0003\u0007\u0011\t\u0011\"[7nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t2C\u0002\u0001\f7}1#\u0006E\u0002\r\u001b=i\u0011\u0001B\u0005\u0003\u001d\u0011\u00111\"\u00112tiJ\f7\r^*fcB\u0011\u0001#\u0005\u0007\u0001\t\u0019\u0011\u0002\u0001\"b\u0001'\t\t\u0011)\u0005\u0002\u00151A\u0011QCF\u0007\u0002\r%\u0011qC\u0002\u0002\b\u001d>$\b.\u001b8h!\t)\u0012$\u0003\u0002\u001b\r\t\u0019\u0011I\\=\u0011\u0007qir\"D\u0001\u0003\u0013\tq\"AA\u0005MS:,\u0017M]*fcB!\u0001eI\b&\u001b\u0005\t#B\u0001\u0012\u0005\u0003\u001d9WM\\3sS\u000eL!\u0001J\u0011\u00035\u001d+g.\u001a:jGR\u0013\u0018M^3sg\u0006\u0014G.\u001a+f[Bd\u0017\r^3\u0011\u0005q\u0001\u0001\u0003\u0002\u0007(\u001f%J!\u0001\u000b\u0003\u0003%1Kg.Z1s'\u0016\fx\n\u001d;j[&TX\r\u001a\t\u00049\u0001y\u0001CA\u000b,\u0013\tacA\u0001\u0007TKJL\u0017\r\\5{C\ndW\rC\u0003/\u0001\u0011\u0005q&\u0001\u0004=S:LGO\u0010\u000b\u0002S!)\u0011\u0007\u0001C!e\u0005I1m\\7qC:LwN\\\u000b\u0002gA\u0019\u0001\u0005N\u0013\n\u0005U\n#\u0001E$f]\u0016\u0014\u0018nY\"p[B\fg.[8o\u0011\u00159\u0004A\"\u00019\u0003\u001dI7/R7qif,\u0012!\u000f\t\u0003+iJ!a\u000f\u0004\u0003\u000f\t{w\u000e\\3b]\")Q\b\u0001D\u0001}\u0005!\u0001.Z1e+\u0005y\u0001\"\u0002!\u0001\r\u0003\t\u0015\u0001\u0002;bS2,\u0012!\u000b\u0005\u0006\u0007\u00021\t\u0002O\u0001\fi\u0006LG\u000eR3gS:,G\rC\u0003F\u0001\u0011\u0005a)\u0001\u0004baB,g\u000eZ\u000b\u0003\u000f*#\"\u0001S'\u0011\u0007q\u0001\u0011\n\u0005\u0002\u0011\u0015\u0012)1\n\u0012b\u0001\u0019\n\t!)\u0005\u0002\u00101!1a\n\u0012CA\u0002=\u000bAA]3tiB\u0019Q\u0003\u0015*\n\u0005E3!\u0001\u0003\u001fcs:\fW.\u001a \u0011\u00071\u0019\u0016*\u0003\u0002U\t\tyAK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cW\rC\u0003W\u0001\u0011\u0005\u0011)A\u0003g_J\u001cW\rC\u0003Y\u0001\u0011\u0005\u0011,A\u0003qe&tG\u000fF\u0001[!\t)2,\u0003\u0002]\r\t!QK\\5u\u0011\u0015A\u0006\u0001\"\u0001_)\tQv\fC\u0003a;\u0002\u0007\u0011-A\u0002tKB\u0004\"AY3\u000f\u0005U\u0019\u0017B\u00013\u0007\u0003\u0019\u0001&/\u001a3fM&\u0011am\u001a\u0002\u0007'R\u0014\u0018N\\4\u000b\u0005\u00114\u0001\"B5\u0001\t\u0003R\u0017A\u00027f]\u001e$\b.F\u0001l!\t)B.\u0003\u0002n\r\t\u0019\u0011J\u001c;\t\u000b=\u0004A\u0011\u00029\u0002\r\u0005\u001cH\u000b[1u+\t\t8\u000f\u0006\u0002skB\u0011\u0001c\u001d\u0003\u0006i:\u0014\ra\u0005\u0002\u0005)\"\fG\u000fC\u0003w]\u0002\u0007q/A\u0001y!\t)\u00020\u0003\u0002z\r\t1\u0011I\\=SK\u001aD#A\\>\u0011\u0005Ua\u0018BA?\u0007\u0005\u0019Ig\u000e\\5oK\"1q\u0010\u0001C\u0005\u0003\u0003\t\u0001\"Y:TiJ,\u0017-\\\u000b\u0005\u0003\u0007\tI\u0001\u0006\u0003\u0002\u0006\u0005-\u0001\u0003\u0002\u000f\u0001\u0003\u000f\u00012\u0001EA\u0005\t\u0015YeP1\u0001\u0014\u0011\u00151h\u00101\u0001xQ\tq8\u0010C\u0004\u0002\u0012\u0001!I!a\u0005\u0002\u001f%\u001c8\u000b\u001e:fC6\u0014U/\u001b7eKJ,b!!\u0006\u0002$\u0005\u001dBcA\u001d\u0002\u0018!A\u0011\u0011DA\b\u0001\u0004\tY\"\u0001\u0002cMBA\u0001%!\b*\u0003C\t)#C\u0002\u0002 \u0005\u0012AbQ1o\u0005VLG\u000e\u001a$s_6\u00042\u0001EA\u0012\t\u0019Y\u0015q\u0002b\u0001'A\u0019\u0001#a\n\u0005\rQ\fyA1\u0001\u0014Q\r\tya\u001f\u0005\u0007\u0003[\u0001A\u0011I!\u0002\u0011Q|7\u000b\u001e:fC6Da!!\r\u0001\t\u0003B\u0014a\u00045bg\u0012+g-\u001b8ji\u0016\u001c\u0016N_3\t\u000f\u0005U\u0002\u0001\"\u0011\u00028\u0005QA\u0005\u001d7vg\u0012\u0002H.^:\u0016\r\u0005e\u0012qIA )\u0011\tY$!\u0013\u0015\t\u0005u\u0012\u0011\t\t\u0004!\u0005}BA\u0002;\u00024\t\u00071\u0003\u0003\u0005\u0002\u001a\u0005M\u00029AA\"!!\u0001\u0013QD\u0015\u0002F\u0005u\u0002c\u0001\t\u0002H\u001111*a\rC\u00021C\u0001\"a\u0013\u00024\u0001\u0007\u0011QJ\u0001\u0005i\"\fG\u000fE\u0003\r\u0003\u001f\n)%C\u0002\u0002R\u0011\u0011!cR3o)J\fg/\u001a:tC\ndWm\u00148dK\"9\u0011Q\u000b\u0001\u0005B\u0005]\u0013a\u0003\u0013qYV\u001cHeY8m_:,b!!\u0017\u0002h\u0005}C\u0003BA.\u0003S\"B!!\u0018\u0002bA\u0019\u0001#a\u0018\u0005\rQ\f\u0019F1\u0001\u0014\u0011!\tI\"a\u0015A\u0004\u0005\r\u0004\u0003\u0003\u0011\u0002\u001e%\n)'!\u0018\u0011\u0007A\t9\u0007\u0002\u0004L\u0003'\u0012\r\u0001\u0014\u0005\t\u0003W\n\u0019\u00061\u0001\u0002f\u0005!Q\r\\3n\u0011\u001d\ty\u0007\u0001C#\u0003c\n\u0001b]2b]2+g\r^\u000b\u0007\u0003g\n\u0019)a\u001f\u0015\t\u0005U\u0014q\u0012\u000b\u0005\u0003o\n)\t\u0006\u0003\u0002z\u0005u\u0004c\u0001\t\u0002|\u00111A/!\u001cC\u0002MA\u0001\"!\u0007\u0002n\u0001\u000f\u0011q\u0010\t\tA\u0005u\u0011&!!\u0002zA\u0019\u0001#a!\u0005\r-\u000biG1\u0001\u0014\u0011!\t9)!\u001cA\u0002\u0005%\u0015AA8q!!)\u00121RAA\u001f\u0005\u0005\u0015bAAG\r\tIa)\u001e8di&|gN\r\u0005\t\u0003#\u000bi\u00071\u0001\u0002\u0002\u0006\t!\u0010C\u0004\u0002\u0016\u0002!)%a&\u0002\u00075\f\u0007/\u0006\u0004\u0002\u001a\u0006\u001d\u0016q\u0014\u000b\u0005\u00037\u000bI\u000b\u0006\u0003\u0002\u001e\u0006\u0005\u0006c\u0001\t\u0002 \u00121A/a%C\u0002MA\u0001\"!\u0007\u0002\u0014\u0002\u000f\u00111\u0015\t\tA\u0005u\u0011&!*\u0002\u001eB\u0019\u0001#a*\u0005\r-\u000b\u0019J1\u0001\u0014\u0011!\tY+a%A\u0002\u00055\u0016!\u00014\u0011\rU\tykDAS\u0013\r\t\tL\u0002\u0002\n\rVt7\r^5p]FBq!!.\u0001\t\u000b\n9,A\u0004d_2dWm\u0019;\u0016\r\u0005e\u0016qYA`)\u0011\tY,!3\u0015\t\u0005u\u0016\u0011\u0019\t\u0004!\u0005}FA\u0002;\u00024\n\u00071\u0003\u0003\u0005\u0002\u001a\u0005M\u00069AAb!!\u0001\u0013QD\u0015\u0002F\u0006u\u0006c\u0001\t\u0002H\u001211*a-C\u0002MA\u0001\"a3\u00024\u0002\u0007\u0011QZ\u0001\u0003a\u001a\u0004b!FAh\u001f\u0005\u0015\u0017bAAi\r\ty\u0001+\u0019:uS\u0006dg)\u001e8di&|g\u000eC\u0004\u0002V\u0002!)%a6\u0002\u000f\u0019d\u0017\r^'baV1\u0011\u0011\\At\u0003?$B!a7\u0002jR!\u0011Q\\Aq!\r\u0001\u0012q\u001c\u0003\u0007i\u0006M'\u0019A\n\t\u0011\u0005e\u00111\u001ba\u0002\u0003G\u0004\u0002\u0002IA\u000fS\u0005\u0015\u0018Q\u001c\t\u0004!\u0005\u001dHAB&\u0002T\n\u00071\u0003\u0003\u0005\u0002,\u0006M\u0007\u0019AAv!\u0019)\u0012qV\b\u0002nB)A\"a\u0014\u0002f\"9\u0011\u0011\u001f\u0001\u0005B\u0005M\u0018A\u00024jYR,'\u000fF\u0002*\u0003kD\u0001\"a>\u0002p\u0002\u0007\u0011\u0011`\u0001\u0002aB)Q#a,\u0010s!9\u0011Q \u0001\u0005F\u0005}\u0018AC<ji\"4\u0015\u000e\u001c;feR!!\u0011\u0001B4!\u0011\u0011\u0019A!\u0002\u000e\u0003\u00011aAa\u0002\u0001\u0005\t%!\u0001E*ue\u0016\fWnV5uQ\u001aKG\u000e^3s'\u0011\u0011)Aa\u0003\u0011\t\t\r!QB\u0005\u0005\u0005\u001f\u0011\tB\u0001\u0006XSRDg)\u001b7uKJL1Aa\u0005\u0005\u0005=!&/\u0019<feN\f'\r\\3MS.,\u0007bCA|\u0005\u000b\u0011\t\u0011)A\u0005\u0003sDqA\fB\u0003\t\u0003\u0011I\u0002\u0006\u0003\u0003\u0002\tm\u0001\u0002CA|\u0005/\u0001\r!!?\t\u0011\u0005U%Q\u0001C!\u0005?)bA!\t\u00030\t\u001dB\u0003\u0002B\u0012\u0005c!BA!\n\u0003*A\u0019\u0001Ca\n\u0005\rQ\u0014iB1\u0001\u0014\u0011!\tIB!\bA\u0004\t-\u0002\u0003\u0003\u0011\u0002\u001e%\u0012iC!\n\u0011\u0007A\u0011y\u0003\u0002\u0004L\u0005;\u0011\ra\u0005\u0005\t\u0003W\u0013i\u00021\u0001\u00034A1Q#a,\u0010\u0005[A\u0001\"!6\u0003\u0006\u0011\u0005#qG\u000b\u0007\u0005s\u00119Ea\u0010\u0015\t\tm\"\u0011\n\u000b\u0005\u0005{\u0011\t\u0005E\u0002\u0011\u0005\u007f!a\u0001\u001eB\u001b\u0005\u0004\u0019\u0002\u0002CA\r\u0005k\u0001\u001dAa\u0011\u0011\u0011\u0001\ni\"\u000bB#\u0005{\u00012\u0001\u0005B$\t\u0019Y%Q\u0007b\u0001'!A\u00111\u0016B\u001b\u0001\u0004\u0011Y\u0005\u0005\u0004\u0016\u0003_{!Q\n\t\u0006\u0019\u0005=#Q\t\u0005\t\u0005#\u0012)\u0001\"\u0011\u0003T\u00059am\u001c:fC\u000eDW\u0003\u0002B+\u0005;\"2A\u0017B,\u0011!\tYKa\u0014A\u0002\te\u0003CB\u000b\u00020>\u0011Y\u0006E\u0002\u0011\u0005;\"aa\u0013B(\u0005\u0004\u0019\u0002\u0002CA\u007f\u0005\u000b!\tE!\u0019\u0015\t\t\u0005!1\r\u0005\t\u0005K\u0012y\u00061\u0001\u0002z\u0006\t\u0011\u000f\u0003\u0005\u0002x\u0006m\b\u0019AA}\u0011\u001d\u0011Y\u0007\u0001C!\u0005[\n\u0001\"\u001b;fe\u0006$xN]\u000b\u0003\u0005_\u0002B\u0001\u0004B9\u001f%\u0019!1\u000f\u0003\u0003\u0011%#XM]1u_JDqA!\u0015\u0001\t\u000b\u00129(\u0006\u0003\u0003z\t\u0005Ec\u0001.\u0003|!A\u00111\u0016B;\u0001\u0004\u0011i\b\u0005\u0004\u0016\u0003_{!q\u0010\t\u0004!\t\u0005EAB&\u0003v\t\u00071\u0003\u000b\u0003\u0003v\t\u0015\u0005\u0003\u0002BD\u0005\u001bk!A!#\u000b\u0007\t-e!\u0001\u0006b]:|G/\u0019;j_:LAAa$\u0003\n\n9A/Y5me\u0016\u001c\u0007b\u0002BJ\u0001\u0011\u0015#QS\u0001\tM>dG\rT3giV!!q\u0013BO)\u0011\u0011IJa)\u0015\t\tm%q\u0014\t\u0004!\tuEAB&\u0003\u0012\n\u00071\u0003\u0003\u0005\u0002\b\nE\u0005\u0019\u0001BQ!!)\u00121\u0012BN\u001f\tm\u0005\u0002CAI\u0005#\u0003\rAa')\t\tE%Q\u0011\u0005\b\u0005S\u0003AQ\tBV\u0003)\u0011X\rZ;dK2+g\r^\u000b\u0005\u0005[\u0013\t\f\u0006\u0003\u00030\nM\u0006c\u0001\t\u00032\u001211Ja*C\u00021C\u0001\"a+\u0003(\u0002\u0007!Q\u0017\t\t+\u0005-%qV\b\u00030\"9!\u0011\u0018\u0001\u0005B\tm\u0016!\u00039beRLG/[8o)\u0011\u0011iLa1\u0011\u000bU\u0011y,K\u0015\n\u0007\t\u0005gA\u0001\u0004UkBdWM\r\u0005\t\u0003o\u00149\f1\u0001\u0002z\"9!q\u0019\u0001\u0005F\t%\u0017a\u0001>jaVA!1\u001aBn\u0005C\u0014\t\u000e\u0006\u0003\u0003N\n\rH\u0003\u0002Bh\u0005'\u00042\u0001\u0005Bi\t\u0019!(Q\u0019b\u0001'!A\u0011\u0011\u0004Bc\u0001\b\u0011)\u000e\u0005\u0005!\u0003;I#q\u001bBh!\u001d)\"q\u0018Bm\u0005?\u00042\u0001\u0005Bn\t\u001d\u0011iN!2C\u00021\u0013!!Q\u0019\u0011\u0007A\u0011\t\u000f\u0002\u0004L\u0005\u000b\u0014\ra\u0005\u0005\t\u0003\u0017\u0012)\r1\u0001\u0003fB)ABa:\u0003`&\u0019!\u0011\u001e\u0003\u0003\u0017\u001d+g.\u0013;fe\u0006\u0014G.\u001a\u0005\b\u0005[\u0004A\u0011\tBx\u00031Q\u0018\u000e],ji\"Le\u000eZ3y+\u0019\u0011\tPa@\u0003vR!!1\u001fB|!\r\u0001\"Q\u001f\u0003\u0007i\n-(\u0019A\n\t\u0011\u0005e!1\u001ea\u0002\u0005s\u0004\u0002\u0002IA\u000fS\tm(1\u001f\t\u0007+\t}&Q`6\u0011\u0007A\u0011y\u0010B\u0004\u0003^\n-(\u0019\u0001'\t\u000f\r\r\u0001\u0001\"\u0011\u0004\u0006\u0005I\u0011\r\u001a3TiJLgn\u001a\u000b\u000b\u0007\u000f\u0019\u0019ba\u0006\u0004\u001c\ru\u0001\u0003BB\u0005\u0007\u001fi!aa\u0003\u000b\u0007\r5A!A\u0004nkR\f'\r\\3\n\t\rE11\u0002\u0002\u000e'R\u0014\u0018N\\4Ck&dG-\u001a:\t\u0011\rU1\u0011\u0001a\u0001\u0007\u000f\t\u0011A\u0019\u0005\b\u00073\u0019\t\u00011\u0001b\u0003\u0015\u0019H/\u0019:u\u0011\u0019\u00017\u0011\u0001a\u0001C\"91qDB\u0001\u0001\u0004\t\u0017aA3oI\"911\u0005\u0001\u0005B\r\u0015\u0012\u0001C7l'R\u0014\u0018N\\4\u0015\u0007\u0005\u001c9\u0003\u0003\u0004a\u0007C\u0001\r!\u0019\u0005\b\u0007G\u0001A\u0011IB\u0016+\u0005\t\u0007bBB\u0012\u0001\u0011\u00053q\u0006\u000b\bC\u000eE21GB\u001b\u0011\u001d\u0019Ib!\fA\u0002\u0005Da\u0001YB\u0017\u0001\u0004\t\u0007bBB\u0010\u0007[\u0001\r!\u0019\u0005\b\u0007s\u0001A\u0011IB\u001e\u0003!!xn\u0015;sS:<G#A1\t\u000f\r}\u0002\u0001\"\u0011\u0004B\u000591\u000f\u001d7ji\u0006#H\u0003\u0002B_\u0007\u0007Bqa!\u0012\u0004>\u0001\u00071.A\u0001o\u0011\u001d\u0019I\u0005\u0001C!\u0007\u0017\nA\u0001^1lKR\u0019\u0011f!\u0014\t\u000f\r\u00153q\ta\u0001W\"91\u0011\u000b\u0001\u0005F\rM\u0013\u0001\u00023s_B$2!KB+\u0011\u001d\u0019)ea\u0014A\u0002-DCaa\u0014\u0003\u0006\"911\f\u0001\u0005B\ru\u0013!B:mS\u000e,G#B\u0015\u0004`\r\r\u0004bBB1\u00073\u0002\ra[\u0001\u0005MJ|W\u000eC\u0004\u0004f\re\u0003\u0019A6\u0002\u000bUtG/\u001b7\t\r\r%\u0004\u0001\"\u0011B\u0003\u0011Ig.\u001b;\t\u000f\r5\u0004\u0001\"\u0011\u0004p\u0005IA/Y6f%&<\u0007\u000e\u001e\u000b\u0004S\rE\u0004bBB#\u0007W\u0002\ra\u001b\u0005\b\u0007k\u0002A\u0011IB<\u0003%!'o\u001c9SS\u001eDG\u000fF\u0002*\u0007sBqa!\u0012\u0004t\u0001\u00071\u000eC\u0004\u0004~\u0001!\tea \u0002\u0013Q\f7.Z,iS2,GcA\u0015\u0004\u0002\"A\u0011q_B>\u0001\u0004\tI\u0010C\u0004\u0004\u0006\u0002!\tea\"\u0002\u0013\u0011\u0014x\u000e],iS2,GcA\u0015\u0004\n\"A\u0011q_BB\u0001\u0004\tI\u0010\u0003\u0004\u0004\u000e\u0002!\t%Q\u0001\tI&\u001cH/\u001b8di\"91\u0011\u0013\u0001\u0005B\rM\u0015!\u00029bIR{WCBBK\u0007G\u001bY\n\u0006\u0004\u0004\u0018\u000e\u00156\u0011\u0016\u000b\u0005\u00073\u001bi\nE\u0002\u0011\u00077#a\u0001^BH\u0005\u0004\u0019\u0002\u0002CA\r\u0007\u001f\u0003\u001daa(\u0011\u0011\u0001\ni\"KBQ\u00073\u00032\u0001EBR\t\u0019Y5q\u0012b\u0001\u0019\"91qUBH\u0001\u0004Y\u0017a\u00017f]\"A\u00111NBH\u0001\u0004\u0019\t\u000b\u0003\u0004\u0004.\u0002!\t%Q\u0001\be\u00164XM]:f\u0011\u001d\u0019\t\f\u0001C!\u0007g\u000bqA\u001a7biR,g.\u0006\u0003\u00046\u000emF\u0003BB\\\u0007{\u0003B\u0001\b\u0001\u0004:B\u0019\u0001ca/\u0005\r-\u001byK1\u0001\u0014\u0011!\u0019yla,A\u0004\r\u0005\u0017!D1t)J\fg/\u001a:tC\ndW\r\u0005\u0004\u0016\u0003_{11\u0019\t\u0006\u0019\u0005=3\u0011\u0018\u0005\b\u0007\u000f\u0004A\u0011IBe\u0003\u00111\u0018.Z<\u0016\u0005\r-'#BBgo\u000eEgaBBh\u0007\u000b\u000411\u001a\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u00069\rMw\"K\u0005\u0004\u0007+\u0014!AC*ue\u0016\fWNV5fo\"91\u0011\u001c\u0001\u0005B\rm\u0017\u0001D:ue&tw\r\u0015:fM&DXCABo!\u0011\u0019yn!;\u000e\u0005\r\u0005(\u0002BBr\u0007K\fA\u0001\\1oO*\u00111q]\u0001\u0005U\u00064\u0018-C\u0002g\u0007CDs\u0001ABw\u0007g\u001c9\u0010E\u0002\u0016\u0007_L1a!=\u0007\u0005U!W\r\u001d:fG\u0006$X\rZ%oQ\u0016\u0014\u0018\u000e^1oG\u0016\f#a!>\u00025QC\u0017n\u001d\u0011dY\u0006\u001c8\u000fI<jY2\u0004#-\u001a\u0011tK\u0006dW\r\u001a\u0018\"\u0005\re\u0018A\u0002\u001a/cEr\u0003gB\u0004\u0004~\nA\taa@\u0002\rM#(/Z1n!\raB\u0011\u0001\u0004\u0007\u0003\tA\t\u0001b\u0001\u0014\u000b\u0011\u0005AQ\u0001\u0016\u0011\t\u0001\"9!J\u0005\u0004\t\u0013\t#AC*fc\u001a\u000b7\r^8ss\"9a\u0006\"\u0001\u0005\u0002\u00115ACAB��\r\u001d!\t\u0002\"\u0001\u0001\t'\u0011!c\u0015;sK\u0006l7)\u00198Ck&dGM\u0012:p[V!AQ\u0003C\u0013'\u0011!y\u0001b\u0006\u0011\r\u0011eA1\u0004C\u0012\u001b\t!\t!\u0003\u0003\u0005\u001e\u0011}!aE$f]\u0016\u0014\u0018nY\"b]\n+\u0018\u000e\u001c3Ge>l\u0017b\u0001C\u0011C\t)r)\u001a8Ue\u00064XM]:bE2,g)Y2u_JL\bc\u0001\t\u0005&\u00111!\u0003b\u0004C\u0002MAqA\fC\b\t\u0003!I\u0003\u0006\u0002\u0005,A1A\u0011\u0004C\b\tGA\u0001\u0002b\f\u0005\u0002\u0011\rA\u0011G\u0001\rG\u0006t')^5mI\u001a\u0013x.\\\u000b\u0005\tg!y$\u0006\u0002\u00056AI\u0001%!\b\u00058\u0011uB\u0011\t\t\u0005\t3!I$C\u0002\u0005<Q\u0012AaQ8mYB\u0019\u0001\u0003b\u0010\u0005\rI!iC1\u0001\u0014!\u0011a\u0002\u0001\"\u0010\t\u0011\u0011\u0015C\u0011\u0001C\u0001\t\u000f\n!B\\3x\u0005VLG\u000eZ3s+\u0011!I\u0005b\u0015\u0016\u0005\u0011-\u0003\u0003CB\u0005\t\u001b\"\t\u0006\"\u0016\n\t\u0011=31\u0002\u0002\b\u0005VLG\u000eZ3s!\r\u0001B1\u000b\u0003\u0007%\u0011\r#\u0019A\n\u0011\tq\u0001A\u0011\u000b\u0004\b\t3\"\t\u0001\u0001C.\u00055\u0019FO]3b[\n+\u0018\u000e\u001c3feV!AQ\fC4'\u0011!9\u0006b\u0018\u0011\u0011\r%A\u0011\rC3\tSJA\u0001b\u0019\u0004\f\tYA*\u0019>z\u0005VLG\u000eZ3s!\r\u0001Bq\r\u0003\u0007%\u0011]#\u0019A\n\u0011\tq\u0001AQ\r\u0005\b]\u0011]C\u0011\u0001C7)\t!y\u0007\u0005\u0004\u0005\u001a\u0011]CQ\r\u0005\t\tg\"9\u0006\"\u0001\u0005v\u00051!/Z:vYR$\"\u0001\"\u001b\b\u0011\u0011eD\u0011\u0001E\u0001\tw\nQ!R7qif\u0004B\u0001\"\u0007\u0005~\u0019AAq\u0010C\u0001\u0011\u0003!\tIA\u0003F[B$\u0018p\u0005\u0003\u0005~\u0011\r\u0005c\u0001\u000f\u0001)!9a\u0006\" \u0005\u0002\u0011\u001dEC\u0001C>\u0011\u00199DQ\u0010C!q!9Q\b\" \u0005B\u00115U#\u0001\u000b\t\u000f\u0001#i\b\"\u0011\u0005\u000e\"11\t\" \u0005\u0002aB!\u0002\"&\u0005~\u0005\u0005I\u0011\u0002CL\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\u0011e\u0005\u0003BBp\t7KA\u0001\"(\u0004b\n1qJ\u00196fGRD\u0001\u0002\")\u0005\u0002\u0011\u0005C1U\u0001\u0006K6\u0004H/_\u000b\u0005\tK#Y+\u0006\u0002\u0005(B!A\u0004\u0001CU!\r\u0001B1\u0016\u0003\u0007%\u0011}%\u0019A\n\t\u0011\u0011=F\u0011\u0001C!\tc\u000bQ!\u00199qYf,B\u0001b-\u0005:R!AQ\u0017C^!\u0011a\u0002\u0001b.\u0011\u0007A!I\f\u0002\u0004\u0013\t[\u0013\ra\u0005\u0005\t\t{#i\u000b1\u0001\u0005@\u0006\u0011\u0001p\u001d\t\u0006+\u0011\u0005GqW\u0005\u0004\t\u00074!A\u0003\u001fsKB,\u0017\r^3e}\u00199Aq\u0019C\u0001\u0001\u0011%'aC\"p]N<&/\u00199qKJ,B\u0001b3\u0005XN\u0019AQY<\t\u0017\u0011=GQ\u0019B\u0001J\u0003%A\u0011[\u0001\u0003i2\u0004B!\u0006)\u0005TB!A\u0004\u0001Ck!\r\u0001Bq\u001b\u0003\u0007%\u0011\u0015'\u0019A\n\t\u000f9\")\r\"\u0001\u0005\\R!AQ\u001cCp!\u0019!I\u0002\"2\u0005V\"IAq\u001aCm\t\u0003\u0007A\u0011\u001b\u0005\t\tG$)\r\"\u0001\u0005f\u0006\tB\u0005[1tQ\u0012\u001aw\u000e\\8oI\r|Gn\u001c8\u0015\t\u0011MGq\u001d\u0005\t\tS$\t\u000f1\u0001\u0005V\u0006\u0011\u0001\u000e\u001a\u0005\t\t[$)\r\"\u0001\u0005p\u00069B\u0005[1tQ\u0012\u001aw\u000e\\8oI\r|Gn\u001c8%G>dwN\u001c\u000b\u0005\t'$\t\u0010\u0003\u0005\u0005t\u0012-\b\u0019\u0001Cj\u0003\u0019\u0001(/\u001a4jq\"AAq\u001fC\u0001\t\u0007!I0A\u0006d_:\u001cxK]1qa\u0016\u0014X\u0003\u0002C~\u000b\u0003!B\u0001\"@\u0006\u0004A1A\u0011\u0004Cc\t\u007f\u00042\u0001EC\u0001\t\u0019\u0011BQ\u001fb\u0001'!IQQ\u0001C{\t\u0003\u0007QqA\u0001\u0007gR\u0014X-Y7\u0011\tU\u0001V\u0011\u0002\t\u00059\u0001!yp\u0002\u0005\u0005d\u0012\u0005\u0001\u0012AC\u0007!\u0011!I\"b\u0004\u0007\u0011\u0015EA\u0011\u0001E\u0001\u000b'\u0011\u0011\u0003\n5bg\"$3m\u001c7p]\u0012\u001aw\u000e\\8o'\r)ya\u001e\u0005\b]\u0015=A\u0011AC\f)\t)i\u0001\u0003\u0005\u0006\u001c\u0015=A\u0011AC\u000f\u0003\u001d)h.\u00199qYf,B!b\b\u0006,Q!Q\u0011EC\u0018!\u0015)R1EC\u0014\u0013\r))C\u0002\u0002\u0007\u001fB$\u0018n\u001c8\u0011\u000fU\u0011y,\"\u000b\u0006.A\u0019\u0001#b\u000b\u0005\rI)IB1\u0001\u0014!\u0011a\u0002!\"\u000b\t\u0011\u0011uV\u0011\u0004a\u0001\u000b[9\u0001\"b\r\u0005\u0002!\u0005QQG\u0001\u0005G>t7\u000f\u0005\u0003\u0005\u001a\u0015]b\u0001CC\u001d\t\u0003A\t!b\u000f\u0003\t\r|gn]\n\u0004\u000bo9\bb\u0002\u0018\u00068\u0011\u0005Qq\b\u000b\u0003\u000bkA\u0001\u0002b,\u00068\u0011\u0005Q1I\u000b\u0005\u000b\u000b*I\n\u0006\u0004\u0006H\u0015mUQ\u0014\t\u0007\t3)I%b&\u0007\u000f\u0015-C\u0011\u0001\u0002\u0006N\t!1i\u001c8t+\u0011)y%\"\u0016\u0014\t\u0015%S\u0011\u000b\t\u00059\u0001)\u0019\u0006E\u0002\u0011\u000b+\"qAEC%\t\u000b\u00071\u0003C\u0006\u0005j\u0016%#\u0011!Q\u0001\n\u0015M\u0003b\u0003Ch\u000b\u0013\u0012\t\u0011*A\u0005\u000b7\u0002B!\u0006)\u0006R!9a&\"\u0013\u0005\u0002\u0015}CCBC1\u000bG*)\u0007\u0005\u0004\u0005\u001a\u0015%S1\u000b\u0005\t\tS,i\u00061\u0001\u0006T!IAqZC/\t\u0003\u0007Q1\f\u0005\u0007o\u0015%C\u0011\t\u001d\t\u000fu*I\u0005\"\u0011\u0006lU\u0011Q1\u000b\u0005\r\u000b_*I\u00051A\u0001B\u0003&Q\u0011K\u0001\u0006i24\u0016\r\u001c\u0015\u0005\u000b[*\u0019\bE\u0002\u0016\u000bkJ1!b\u001e\u0007\u0005!1x\u000e\\1uS2,\u0007\"CC>\u000b\u0013\u0002\u000b\u0015BC?\u0003\u0015!HnR3o!\u0015)RqPC)\u0013\r)\tI\u0002\u0002\n\rVt7\r^5p]BBC!\"\u001f\u0006t!11)\"\u0013\u0005\u0002aBq\u0001QC%\t\u0003*I)\u0006\u0002\u0006R!BQ\u0011JCG\u000b'+)\nE\u0002\u0016\u000b\u001fK1!\"%\u0007\u0005A\u0019VM]5bYZ+'o]5p]VKE)A\u0003wC2,XM\b\u0005xJ3-B:x\u001dF!\r\u0001R\u0011\u0014\u0003\u0007%\u0015\u0005#\u0019A\n\t\u0011\u0011%X\u0011\ta\u0001\u000b/C\u0011\u0002b4\u0006B\u0011\u0005\r!b(\u0011\tU\u0001V\u0011\u0015\t\u00059\u0001)9\n\u0003\u0005\u0006\u001c\u0015]B\u0011ACS+\u0011)9+b,\u0015\t\u0015%V1\u0017\t\u0006+\u0015\rR1\u0016\t\b+\t}VQVCY!\r\u0001Rq\u0016\u0003\u0007%\u0015\r&\u0019A\n\u0011\tq\u0001QQ\u0016\u0005\t\t{+\u0019\u000b1\u0001\u00062\"AQq\u0017C\u0001\t\u0003)I,A\u0004ji\u0016\u0014\u0018\r^3\u0016\t\u0015mV1\u0019\u000b\u0005\u000b{+I\r\u0006\u0003\u0006@\u0016\u0015\u0007\u0003\u0002\u000f\u0001\u000b\u0003\u00042\u0001ECb\t\u0019\u0011RQ\u0017b\u0001'!A\u00111VC[\u0001\u0004)9\rE\u0004\u0016\u0003_+\t-\"1\t\u0011\reQQ\u0017a\u0001\u000b\u0003D\u0001\"b.\u0005\u0002\u0011\u0005SQZ\u000b\u0005\u000b\u001f,9\u000e\u0006\u0004\u0006R\u0016uWq\u001c\u000b\u0005\u000b',I\u000e\u0005\u0003\u001d\u0001\u0015U\u0007c\u0001\t\u0006X\u00121!#b3C\u0002MA\u0001\"a+\u0006L\u0002\u0007Q1\u001c\t\b+\u0005=VQ[Ck\u0011!\u0019I\"b3A\u0002\u0015U\u0007bBBT\u000b\u0017\u0004\ra\u001b\u0005\t\u0007C\"\t\u0001\"\u0001\u0006dR1QQ]Ct\u000bS\u00042\u0001\b\u0001l\u0011\u001d\u0019I\"\"9A\u0002-Dq!b;\u0006b\u0002\u00071.\u0001\u0003ti\u0016\u0004\b\u0002CB1\t\u0003!\t!b<\u0015\t\u0015\u0015X\u0011\u001f\u0005\b\u00073)i\u000f1\u0001l\u0011!))\u0010\"\u0001\u0005\u0002\u0015]\u0018aC2p]RLg.^1mYf,B!\"?\u0006��R!Q1 D\u0001!\u0011a\u0002!\"@\u0011\u0007A)y\u0010\u0002\u0004\u0013\u000bg\u0014\ra\u0005\u0005\n\u0003W*\u0019\u0010\"a\u0001\r\u0007\u0001B!\u0006)\u0006~\"Aaq\u0001C\u0001\t\u00032I!\u0001\u0003gS2dW\u0003\u0002D\u0006\r'!BA\"\u0004\u0007\u001aQ!aq\u0002D\u000b!\u0011a\u0002A\"\u0005\u0011\u0007A1\u0019\u0002\u0002\u0004\u0013\r\u000b\u0011\ra\u0005\u0005\n\u0003W2)\u0001\"a\u0001\r/\u0001B!\u0006)\u0007\u0012!91Q\tD\u0003\u0001\u0004Y\u0007\u0002\u0003D\u000f\t\u0003!\tEb\b\u0002\u0011Q\f'-\u001e7bi\u0016,BA\"\t\u0007*Q!a1\u0005D\u0018)\u00111)Cb\u000b\u0011\tq\u0001aq\u0005\t\u0004!\u0019%BA\u0002\n\u0007\u001c\t\u00071\u0003\u0003\u0005\u0002,\u001am\u0001\u0019\u0001D\u0017!\u0019)\u0012qV6\u0007(!91Q\tD\u000e\u0001\u0004Y\u0007\u0002\u0003D\u001a\t\u0003!\tE\"\u000e\u0002\u000bI\fgnZ3\u0016\t\u0019]bq\b\u000b\t\rs1)Fb\u0016\u0007ZQ!a1\bD\"!\u0011a\u0002A\"\u0010\u0011\u0007A1y\u0004B\u0004\u0007B\u0019E\"\u0019A\n\u0003\u0003QC!B\"\u0012\u00072\u0005\u0005\t9\u0001D$\u0003))g/\u001b3f]\u000e,G%\r\t\u0007\r\u00132yE\"\u0010\u000f\u0007U1Y%C\u0002\u0007N\u0019\tq\u0001]1dW\u0006<W-\u0003\u0003\u0007R\u0019M#\u0001C%oi\u0016<'/\u00197\u000b\u0007\u00195c\u0001\u0003\u0005\u0004\u001a\u0019E\u0002\u0019\u0001D\u001f\u0011!\u0019yB\"\rA\u0002\u0019u\u0002\u0002CCv\rc\u0001\rA\"\u0010\t\u0013\u0019uC\u0011\u0001C\u0001\u0005\u0019}\u0013\u0001\u00044jYR,'/\u001a3UC&dW\u0003\u0002D1\rO\"bAb\u0019\u0007j\u00195\u0004C\u0002C\r\u000b\u00132)\u0007E\u0002\u0011\rO\"aA\u0005D.\u0005\u0004\u0019\u0002\u0002CC\u0003\r7\u0002\rAb\u001b\u0011\tq\u0001aQ\r\u0005\t\u0003o4Y\u00061\u0001\u0007pA1Q#a,\u0007feB\u0011Bb\u001d\u0005\u0002\u0011\u0005!A\"\u001e\u0002\u001b\r|G\u000e\\3di\u0016$G+Y5m+!19Hb\"\u0007~\u0019MEC\u0003D=\r\u007f2\tI\"#\u0007\u000eB1A\u0011DC%\rw\u00022\u0001\u0005D?\t\u0019Ye\u0011\u000fb\u0001'!9QH\"\u001dA\u0002\u0019m\u0004\u0002CC\u0003\rc\u0002\rAb!\u0011\tq\u0001aQ\u0011\t\u0004!\u0019\u001dEA\u0002\n\u0007r\t\u00071\u0003\u0003\u0005\u0002L\u001aE\u0004\u0019\u0001DF!\u001d)\u0012q\u001aDC\rwB\u0001\"!\u0007\u0007r\u0001\u0007aq\u0012\t\nA\u0005ua1\u0011D>\r#\u00032\u0001\u0005DJ\t\u0019!h\u0011\u000fb\u0001'!QAQ\u0013C\u0001\u0003\u0003%I\u0001b&")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream.class */
public abstract class Stream<A> extends AbstractSeq<A> implements LinearSeq<A>, LinearSeqOptimized<A, Stream<A>>, Serializable {

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$Cons.class */
    public static final class Cons<A> extends Stream<A> {
        public static final long serialVersionUID = -602202424901551803L;

        /* renamed from: hd */
        private final A f1551hd;
        private volatile Function0<Stream<A>> tlGen;
        private volatile Stream<A> tlVal;

        public Cons(A a, Function0<Stream<A>> function0) {
            this.f1551hd = a;
            this.tlGen = function0;
        }

        @Override // scala.collection.immutable.Stream, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public A head() {
            return this.f1551hd;
        }

        @Override // scala.collection.immutable.Stream, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return false;
        }

        @Override // scala.collection.immutable.Stream, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Stream<A> tail() {
            if (tailDefined()) {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            } else {
                synchronized (this) {
                    if (tailDefined()) {
                        BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                    } else {
                        this.tlVal = this.tlGen.apply();
                        this.tlGen = null;
                        BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
                    }
                }
            }
            return this.tlVal;
        }

        @Override // scala.collection.immutable.Stream
        public boolean tailDefined() {
            return this.tlGen == null;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$ConsWrapper.class */
    public static class ConsWrapper<A> {

        /* renamed from: tl */
        private final Function0<Stream<A>> f1552tl;

        public ConsWrapper(Function0<Stream<A>> function0) {
            this.f1552tl = function0;
        }

        public Stream<A> $hash$colon$colon(A a) {
            Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
            return new Cons(a, this.f1552tl);
        }

        public Stream<A> $hash$colon$colon$colon(Stream<A> stream) {
            return (Stream<A>) stream.append(this.f1552tl);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$StreamBuilder.class */
    public static class StreamBuilder<A> extends LazyBuilder<A, Stream<A>> {
        /* JADX WARN: Type inference failed for: r1v10, types: [T, scala.collection.immutable.Stream] */
        @Override // scala.collection.mutable.LazyBuilder, scala.collection.mutable.Builder
        public Stream<A> result() {
            Object obj;
            Stream<A> stream;
            Stream stream2 = TraversableForwarder.Cclass.toStream(parts());
            Stream$StreamBuilder$$anonfun$result$1 stream$StreamBuilder$$anonfun$result$1 = new Stream$StreamBuilder$$anonfun$result$1(this);
            Stream$ stream$ = Stream$.MODULE$;
            StreamCanBuildFrom streamCanBuildFrom = new StreamCanBuildFrom();
            if (streamCanBuildFrom.apply((StreamCanBuildFrom) stream2.repr()) instanceof StreamBuilder) {
                if (!stream2.isEmpty()) {
                    ObjectRef create = ObjectRef.create(stream2);
                    loop0: while (true) {
                        stream = ((TraversableOnce) ((Stream) create.elem).head()).toStream().toStream();
                        while (!((Stream) create.elem).isEmpty() && stream.isEmpty()) {
                            create.elem = (Stream) ((Stream) create.elem).tail();
                            if (!((Stream) create.elem).isEmpty()) {
                                break;
                            }
                        }
                    }
                    if (((Stream) create.elem).isEmpty()) {
                        Stream$ stream$2 = Stream$.MODULE$;
                    } else {
                        obj = stream.append(new Stream$$anonfun$flatMap$1(stream2, stream$StreamBuilder$$anonfun$result$1, create));
                    }
                }
                obj = Stream$Empty$.MODULE$;
            } else {
                obj = TraversableLike.Cclass.flatMap(stream2, stream$StreamBuilder$$anonfun$result$1, streamCanBuildFrom);
            }
            return (Stream) obj;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$StreamCanBuildFrom.class */
    public static class StreamCanBuildFrom<A> extends GenTraversableFactory<Stream>.GenericCanBuildFrom<A> {
        public StreamCanBuildFrom() {
            super(Stream$.MODULE$);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$StreamWithFilter.class */
    public final class StreamWithFilter extends TraversableLike<A, Stream<A>>.WithFilter {
        public final Function1<A, Object> scala$collection$immutable$Stream$StreamWithFilter$$p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StreamWithFilter(Stream<A> stream, Function1<A, Object> function1) {
            super(stream, function1);
            this.scala$collection$immutable$Stream$StreamWithFilter$$p = function1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // scala.collection.TraversableLike.WithFilter, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
        public <B, That> That flatMap(Function1<A, GenTraversableOnce<B>> function1, CanBuildFrom<Stream<A>, B, That> canBuildFrom) {
            Object obj;
            if (canBuildFrom.apply(scala$collection$immutable$Stream$StreamWithFilter$$$outer().repr()) instanceof StreamBuilder) {
                scala$collection$immutable$Stream$StreamWithFilter$$$outer();
                obj = m148x2f6dc7e8(scala$collection$immutable$Stream$StreamWithFilter$$$outer(), function1);
            } else {
                obj = super.flatMap(function1, canBuildFrom);
            }
            return (That) obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // scala.collection.TraversableLike.WithFilter, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <B> void foreach(Function1<A, B> function1) {
            Stream stream = (Stream) this.$outer;
            Stream$StreamWithFilter$$anonfun$foreach$1 stream$StreamWithFilter$$anonfun$foreach$1 = new Stream$StreamWithFilter$$anonfun$foreach$1(this, function1);
            Stream stream2 = stream;
            while (true) {
                Stream stream3 = stream2;
                if (stream3.isEmpty()) {
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                    return;
                }
                Object head = stream3.head();
                if (BoxesRunTime.unboxToBoolean(stream$StreamWithFilter$$anonfun$foreach$1.$outer.scala$collection$immutable$Stream$StreamWithFilter$$p.apply(head))) {
                    stream$StreamWithFilter$$anonfun$foreach$1.f$5.apply(head);
                } else {
                    BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                }
                stream2 = (Stream) stream3.tail();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // scala.collection.TraversableLike.WithFilter, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
        public <B, That> That map(Function1<A, B> function1, CanBuildFrom<Stream<A>, B, That> canBuildFrom) {
            Object obj;
            if (canBuildFrom.apply(scala$collection$immutable$Stream$StreamWithFilter$$$outer().repr()) instanceof StreamBuilder) {
                scala$collection$immutable$Stream$StreamWithFilter$$$outer();
                obj = scala$collection$immutable$Stream$StreamWithFilter$$tailMap$1(scala$collection$immutable$Stream$StreamWithFilter$$$outer(), function1);
            } else {
                obj = super.map(function1, canBuildFrom);
            }
            return (That) obj;
        }

        public /* synthetic */ Stream scala$collection$immutable$Stream$StreamWithFilter$$$outer() {
            return (Stream) this.$outer;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v4, types: [T, scala.collection.immutable.Stream] */
        /* renamed from: scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1 */
        public final Stream m148x2f6dc7e8(Stream stream, Function1 function1) {
            ObjectRef create = ObjectRef.create(stream);
            while (!((Stream) create.elem).isEmpty()) {
                Object head = ((Stream) create.elem).head();
                create.elem = (Stream) ((Stream) create.elem).tail();
                if (BoxesRunTime.unboxToBoolean(this.scala$collection$immutable$Stream$StreamWithFilter$$p.apply(head))) {
                    return ((GenTraversableOnce) function1.apply(head)).toStream().append(new C2577xd9dd422(this, function1, create));
                }
            }
            return Stream$Empty$.MODULE$;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v4, types: [T, scala.collection.immutable.Stream] */
        public final Stream scala$collection$immutable$Stream$StreamWithFilter$$tailMap$1(Stream stream, Function1 function1) {
            ObjectRef create = ObjectRef.create(stream);
            while (!((Stream) create.elem).isEmpty()) {
                Object head = ((Stream) create.elem).head();
                create.elem = (Stream) ((Stream) create.elem).tail();
                if (BoxesRunTime.unboxToBoolean(this.scala$collection$immutable$Stream$StreamWithFilter$$p.apply(head))) {
                    Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
                    return new Cons(function1.apply(head), new C2578x758a005b(this, function1, create));
                }
            }
            return Stream$Empty$.MODULE$;
        }

        @Override // scala.collection.TraversableLike.WithFilter, scala.collection.generic.FilterMonadic
        public Stream<A>.StreamWithFilter withFilter(Function1<A, Object> function1) {
            return new StreamWithFilter(scala$collection$immutable$Stream$StreamWithFilter$$$outer(), new Stream$StreamWithFilter$$anonfun$withFilter$1(this, function1));
        }
    }

    public Stream() {
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Seq.Cclass.$init$(this);
        LinearSeqLike.Cclass.$init$(this);
        LinearSeq.Cclass.$init$(this);
        LinearSeq.Cclass.$init$(this);
        LinearSeqOptimized.Cclass.$init$(this);
    }

    public static GenTraversableFactory<Stream>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) Stream$.MODULE$.ReusableCBF();
    }

    public static <A> CanBuildFrom<Stream<?>, A, Stream<A>> canBuildFrom() {
        return Stream$.MODULE$.canBuildFrom();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable concat(scala.collection.Seq seq) {
        return Stream$.MODULE$.concat(seq);
    }

    public static <A> ConsWrapper<A> consWrapper(Function0<Stream<A>> function0) {
        return Stream$.MODULE$.consWrapper(function0);
    }

    public static <A> Stream<A> continually(Function0<A> function0) {
        return Stream$.MODULE$.continually(function0);
    }

    public static GenTraversable empty() {
        return Stream$.MODULE$.empty();
    }

    /* renamed from: empty */
    public static <A> Stream<A> m6170empty() {
        return Stream$.MODULE$.empty();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, int i5, Function0 function0) {
        return Stream$.MODULE$.fill(i, i2, i3, i4, i5, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, Function0 function0) {
        return Stream$.MODULE$.fill(i, i2, i3, i4, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, Function0 function0) {
        return Stream$.MODULE$.fill(i, i2, i3, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, Function0 function0) {
        return Stream$.MODULE$.fill(i, i2, function0);
    }

    public static GenTraversable fill(int i, Function0 function0) {
        return Stream$.MODULE$.fill(i, function0);
    }

    /* renamed from: fill */
    public static <A> Stream<A> m6171fill(int i, Function0<A> function0) {
        return Stream$.MODULE$.fill(i, (Function0) function0);
    }

    public static Stream<Object> from(int i) {
        return Stream$.MODULE$.from(i);
    }

    public static Stream<Object> from(int i, int i2) {
        return Stream$.MODULE$.from(i, i2);
    }

    public static GenTraversable iterate(Object obj, int i, Function1 function1) {
        return Stream$.MODULE$.iterate(obj, i, function1);
    }

    /* renamed from: iterate */
    public static <A> Stream<A> m6172iterate(A a, int i, Function1<A, A> function1) {
        return Stream$.MODULE$.iterate((Stream$) a, i, (Function1<Stream$, Stream$>) function1);
    }

    public static <A> Stream<A> iterate(A a, Function1<A, A> function1) {
        return Stream$.MODULE$.iterate(a, function1);
    }

    private final void loop$1(Stream stream, String str, String str2) {
        while (true) {
            Console$.MODULE$.print(str);
            if (stream.isEmpty()) {
                Console$.MODULE$.print("empty");
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
                return;
            }
            Console$.MODULE$.print(stream.head());
            stream = (Stream) stream.tail();
            str = str2;
        }
    }

    public static GenTraversable range(Object obj, Object obj2, Object obj3, Integral integral) {
        return Stream$.MODULE$.range(obj, obj2, obj3, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Integral integral) {
        return Stream$.MODULE$.range(obj, obj2, integral);
    }

    /* renamed from: range */
    public static <T> Stream<T> m6173range(T t, T t2, T t3, Integral<T> integral) {
        return Stream$.MODULE$.range((Object) t, (Object) t2, (Object) t3, (Integral) integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, int i5, Function5 function5) {
        return Stream$.MODULE$.tabulate(i, i2, i3, i4, i5, function5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, Function4 function4) {
        return Stream$.MODULE$.tabulate(i, i2, i3, i4, function4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, Function3 function3) {
        return Stream$.MODULE$.tabulate(i, i2, i3, function3);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, Function2 function2) {
        return Stream$.MODULE$.tabulate(i, i2, function2);
    }

    public static GenTraversable tabulate(int i, Function1 function1) {
        return Stream$.MODULE$.tabulate(i, function1);
    }

    /* renamed from: tabulate */
    public static <A> Stream<A> m6174tabulate(int i, Function1<Object, A> function1) {
        return Stream$.MODULE$.tabulate(i, (Function1) function1);
    }

    public static Some unapplySeq(scala.collection.Seq seq) {
        return Stream$.MODULE$.unapplySeq(seq);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v7, types: [scala.collection.immutable.Stream$Cons] */
    /* JADX WARN: Type inference failed for: r9v0, types: [scala.collection.generic.CanBuildFrom<scala.collection.immutable.Stream<A>, B, That>, scala.collection.generic.CanBuildFrom] */
    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That $plus$colon(B b, CanBuildFrom<Stream<A>, B, That> canBuildFrom) {
        That that;
        if (canBuildFrom.apply(repr()) instanceof StreamBuilder) {
            Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
            that = new Cons(b, new Stream$$anonfun$$plus$colon$1(this));
        } else {
            that = SeqLike.Cclass.$plus$colon(this, b, canBuildFrom);
        }
        return that;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<Stream<A>, B, That> canBuildFrom) {
        Object obj;
        if (!(canBuildFrom.apply(repr()) instanceof StreamBuilder)) {
            obj = TraversableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
        } else if (isEmpty()) {
            obj = genTraversableOnce.toStream();
        } else {
            Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
            obj = new Cons(head(), new Stream$$anonfun$$plus$plus$1(this, genTraversableOnce));
        }
        return (That) obj;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
        Stream<A> stream;
        Stream<A> stream2;
        stringBuilder.append(str);
        if (isEmpty()) {
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        } else {
            stringBuilder.append(head());
            if (tailDefined()) {
                Stream<A> stream3 = (Stream) tail();
                if (stream3.isEmpty()) {
                    stringBuilder.append(str3);
                    return stringBuilder;
                }
                if (this == stream3) {
                    stream2 = this;
                } else if (stream3.tailDefined()) {
                    Stream<A> stream4 = (Stream) stream3.tail();
                    while (stream3 != stream4 && stream4.tailDefined()) {
                        stringBuilder.append(str2).append(stream3.head());
                        Stream<A> stream5 = (Stream) stream3.tail();
                        Stream<A> stream6 = (Stream) stream4.tail();
                        stream4 = stream6;
                        stream3 = stream5;
                        if (stream6.tailDefined()) {
                            stream4 = (Stream) stream6.tail();
                            stream3 = stream5;
                        }
                    }
                    Stream<A> stream7 = stream4;
                    stream2 = stream3;
                    stream3 = stream7;
                } else {
                    stream2 = stream3;
                }
                Stream<A> stream8 = stream2;
                if (stream3.tailDefined()) {
                    int i = 0;
                    Stream<A> stream9 = stream3;
                    Stream<A> stream10 = this;
                    while (stream10 != stream9) {
                        stream10 = (Stream) stream10.tail();
                        stream9 = (Stream) stream9.tail();
                        i++;
                    }
                    stream = stream2;
                    if (stream2 == stream9) {
                        stream = stream2;
                        if (i > 0) {
                            stringBuilder.append(str2).append(stream2.head());
                            stream = (Stream) stream2.tail();
                        }
                    }
                    while (stream != stream9) {
                        stringBuilder.append(str2).append(stream.head());
                        stream = (Stream) stream.tail();
                    }
                    BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                } else {
                    while (stream8 != stream3) {
                        stringBuilder.append(str2).append(stream8.head());
                        stream8 = (Stream) stream8.tail();
                    }
                    if (stream8.nonEmpty()) {
                        stringBuilder.append(str2).append(stream8.head());
                        stream = stream8;
                    } else {
                        BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
                        stream = stream8;
                    }
                }
            } else {
                BoxedUnit boxedUnit4 = BoxedUnit.UNIT;
                stream = this;
            }
            if (stream.isEmpty()) {
                BoxedUnit boxedUnit5 = BoxedUnit.UNIT;
            } else if (stream.tailDefined()) {
                stringBuilder.append(str2).append("...");
            } else {
                stringBuilder.append(str2).append("?");
            }
        }
        stringBuilder.append(str3);
        return stringBuilder;
    }

    public <B> Stream<B> append(Function0<TraversableOnce<B>> function0) {
        Cons cons;
        if (isEmpty()) {
            cons = function0.apply().toStream();
        } else {
            Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
            cons = new Cons(head(), new Stream$$anonfun$append$1(this, function0));
        }
        return cons;
    }

    @Override // scala.collection.GenSeqLike
    public A apply(int i) {
        return (A) LinearSeqOptimized.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [scala.collection.immutable.Stream$] */
    /* JADX WARN: Type inference failed for: r0v17, types: [scala.collection.immutable.Stream$Cons] */
    /* JADX WARN: Type inference failed for: r0v18, types: [scala.collection.immutable.Stream$Empty$] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0, types: [scala.collection.generic.CanBuildFrom<scala.collection.immutable.Stream<A>, B, That>, scala.collection.generic.CanBuildFrom] */
    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public final <B, That> That collect(PartialFunction<A, B> partialFunction, CanBuildFrom<Stream<A>, B, That> canBuildFrom) {
        That that;
        Stream<A> stream;
        if (canBuildFrom.apply(repr()) instanceof StreamBuilder) {
            ObjectRef create = ObjectRef.create(null);
            Function1<A, Object> runWith = partialFunction.runWith(new Stream$$anonfun$1(this, create));
            Stream<A> stream2 = this;
            while (true) {
                stream = stream2;
                if (!stream.nonEmpty() || BoxesRunTime.unboxToBoolean(runWith.apply(stream.head()))) {
                    break;
                }
                stream2 = (Stream) stream.tail();
            }
            that = stream.isEmpty() ? Stream$Empty$.MODULE$ : Stream$.MODULE$.collectedTail(create.elem, stream, partialFunction, canBuildFrom);
        } else {
            that = TraversableLike.Cclass.collect(this, partialFunction, canBuildFrom);
        }
        return that;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Stream> companion() {
        return Stream$.MODULE$;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public <A1> boolean contains(A1 a1) {
        return LinearSeqOptimized.Cclass.contains(this, a1);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public final <B> boolean corresponds(GenSeq<B> genSeq, Function2<A, B, Object> function2) {
        return LinearSeqLike.Cclass.corresponds(this, genSeq, function2);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public Stream<A> distinct() {
        return scala$collection$immutable$Stream$$loop$2((Set) Set$.MODULE$.apply(Nil$.MODULE$), this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public final Stream<A> drop(int i) {
        Stream<A> stream = this;
        while (i > 0 && !stream.isEmpty()) {
            stream = (Stream) stream.tail();
            i--;
        }
        return stream;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public Stream<A> dropRight(int i) {
        return i <= 0 ? this : scala$collection$immutable$Stream$$advance$1(take(i).toList(), Nil$.MODULE$, drop(i));
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Stream<A> dropWhile(Function1<A, Object> function1) {
        Stream<A> stream;
        Stream<A> stream2 = this;
        while (true) {
            stream = stream2;
            if (stream.isEmpty() || !BoxesRunTime.unboxToBoolean(function1.apply(stream.head()))) {
                break;
            }
            stream2 = (Stream) stream.tail();
        }
        return stream;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<A, Object> function1) {
        return LinearSeqOptimized.Cclass.exists(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Stream<A> filter(Function1<A, Object> function1) {
        Stream<A> stream;
        Stream<A> stream2 = this;
        while (true) {
            stream = stream2;
            if (stream.isEmpty() || BoxesRunTime.unboxToBoolean(function1.apply(stream.head()))) {
                break;
            }
            stream2 = (Stream) stream.tail();
        }
        return stream.nonEmpty() ? Stream$.MODULE$.filteredTail(stream, function1) : Stream$Empty$.MODULE$;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<A> find(Function1<A, Object> function1) {
        return LinearSeqOptimized.Cclass.find(this, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [scala.collection.immutable.Stream$Empty$] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v12, types: [T, scala.collection.immutable.Stream] */
    /* JADX WARN: Type inference failed for: r8v0, types: [scala.Function1<A, scala.collection.GenTraversableOnce<B>>, scala.Function1] */
    /* JADX WARN: Type inference failed for: r9v0, types: [scala.collection.generic.CanBuildFrom<scala.collection.immutable.Stream<A>, B, That>, scala.collection.generic.CanBuildFrom] */
    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
    public final <B, That> That flatMap(Function1<A, GenTraversableOnce<B>> function1, CanBuildFrom<Stream<A>, B, That> canBuildFrom) {
        Stream<A> stream;
        if (!(canBuildFrom.apply(repr()) instanceof StreamBuilder)) {
            stream = TraversableLike.Cclass.flatMap(this, function1, canBuildFrom);
        } else if (isEmpty()) {
            stream = Stream$Empty$.MODULE$;
        } else {
            ObjectRef create = ObjectRef.create(this);
            Stream<A> stream2 = ((GenTraversableOnce) function1.apply(((Stream) create.elem).head())).toStream();
            while (!((Stream) create.elem).isEmpty() && stream2.isEmpty()) {
                create.elem = (Stream) ((Stream) create.elem).tail();
                if (!((Stream) create.elem).isEmpty()) {
                    stream2 = ((GenTraversableOnce) function1.apply(((Stream) create.elem).head())).toStream();
                }
            }
            stream = ((Stream) create.elem).isEmpty() ? Stream$.MODULE$.empty() : stream2.append(new Stream$$anonfun$flatMap$1(this, function1, create));
        }
        return stream;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [T, scala.collection.immutable.Stream] */
    @Override // scala.collection.AbstractTraversable, scala.collection.generic.GenericTraversableTemplate
    public <B> GenTraversable flatten(Function1<A, GenTraversableOnce<B>> function1) {
        ObjectRef create = ObjectRef.create(this);
        while (((Stream) create.elem).nonEmpty()) {
            GenTraversableOnce genTraversableOnce = (GenTraversableOnce) function1.apply(((Stream) create.elem).head());
            if (!genTraversableOnce.isEmpty()) {
                Stream<A> stream = genTraversableOnce.toStream();
                Stream$ stream$ = Stream$.MODULE$;
                return new ConsWrapper(new Stream$$anonfun$flatten$1(this, function1, create)).$hash$colon$colon$colon(stream);
            }
            create.elem = (Stream) ((Stream) create.elem).tail();
        }
        Stream$ stream$2 = Stream$.MODULE$;
        return Stream$Empty$.MODULE$;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public final <B> B foldLeft(B b, Function2<B, A, B> function2) {
        Stream<A> stream = this;
        B b2 = b;
        while (true) {
            B b3 = b2;
            Stream<A> stream2 = stream;
            if (stream2.isEmpty()) {
                return b3;
            }
            stream = (Stream) stream2.tail();
            b2 = function2.apply(b3, stream2.head());
        }
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B foldRight(B b, Function2<A, B, B> function2) {
        return (B) LinearSeqOptimized.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<A, Object> function1) {
        return LinearSeqOptimized.Cclass.forall(this, function1);
    }

    public Stream<A> force() {
        Stream<A> stream;
        Stream<A> stream2;
        if (!isEmpty()) {
            stream = (Stream) tail();
            stream2 = this;
        } else {
            stream = this;
            stream2 = stream;
        }
        while (true) {
            Stream<A> stream3 = stream2;
            if (stream3 != stream && !stream.isEmpty()) {
                Stream stream4 = (Stream) stream.tail();
                if (stream4.isEmpty()) {
                    return this;
                }
                stream = (Stream) stream4.tail();
                if (stream == stream3) {
                    return this;
                }
                stream2 = (Stream) stream3.tail();
            }
            return this;
        }
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public final <B> void foreach(Function1<A, B> function1) {
        Stream<A> stream = this;
        while (true) {
            Stream<A> stream2 = stream;
            if (stream2.isEmpty()) {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
                return;
            } else {
                function1.apply(stream2.head());
                stream = (Stream) stream2.tail();
            }
        }
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        boolean z = true;
        if (!isEmpty()) {
            if (tailDefined()) {
                Stream<A> stream = (Stream) tail();
                Stream<A> stream2 = this;
                while (true) {
                    Stream<A> stream3 = stream2;
                    if (stream3 == stream) {
                        break;
                    } else if (stream.isEmpty()) {
                        return true;
                    } else {
                        if (!stream.tailDefined()) {
                            return false;
                        }
                        Stream stream4 = (Stream) stream.tail();
                        if (stream4.isEmpty()) {
                            return true;
                        }
                        if (!stream4.tailDefined()) {
                            return false;
                        }
                        stream = (Stream) stream4.tail();
                        if (stream3 == stream) {
                            return false;
                        }
                        stream2 = (Stream) stream3.tail();
                    }
                }
            }
            z = false;
        }
        return z;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return LinearSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public abstract A head();

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int indexWhere(Function1<A, Object> function1, int i) {
        return LinearSeqOptimized.Cclass.indexWhere(this, function1, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Stream<A> init() {
        Stream$Empty$ stream$Empty$;
        if (isEmpty()) {
            stream$Empty$ = (Stream) TraversableLike.Cclass.init(this);
        } else if (((SeqLike) tail()).isEmpty()) {
            stream$Empty$ = Stream$Empty$.MODULE$;
        } else {
            Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
            stream$Empty$ = new Cons(head(), new Stream$$anonfun$init$1(this));
        }
        return stream$Empty$;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public boolean isDefinedAt(int i) {
        return LinearSeqOptimized.Cclass.isDefinedAt(this, i);
    }

    @Override // scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public abstract boolean isEmpty();

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return new StreamIterator(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public A last() {
        return (A) LinearSeqOptimized.Cclass.last(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int lastIndexWhere(Function1<A, Object> function1, int i) {
        return LinearSeqOptimized.Cclass.lastIndexWhere(this, function1, i);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        int i = 0;
        Stream<A> stream = this;
        while (true) {
            Stream<A> stream2 = stream;
            if (stream2.isEmpty()) {
                return i;
            }
            i++;
            stream = (Stream) stream2.tail();
        }
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public int lengthCompare(int i) {
        return LinearSeqOptimized.Cclass.lengthCompare(this, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [scala.collection.immutable.Stream$Empty$] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.immutable.Stream$Cons] */
    /* JADX WARN: Type inference failed for: r10v0, types: [scala.collection.generic.CanBuildFrom<scala.collection.immutable.Stream<A>, B, That>, scala.collection.generic.CanBuildFrom] */
    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
    public final <B, That> That map(Function1<A, B> function1, CanBuildFrom<Stream<A>, B, That> canBuildFrom) {
        That that;
        if (!(canBuildFrom.apply(repr()) instanceof StreamBuilder)) {
            that = TraversableLike.Cclass.map(this, function1, canBuildFrom);
        } else if (isEmpty()) {
            that = Stream$Empty$.MODULE$;
        } else {
            Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
            that = new Cons(function1.apply(head()), new Stream$$anonfun$map$1(this, function1));
        }
        return that;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString() {
        return mkString("");
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString(String str) {
        return mkString("", str, "");
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString(String str, String str2, String str3) {
        force();
        return TraversableOnce.Cclass.mkString(this, str, str2, str3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v7, types: [scala.collection.immutable.Stream] */
    /* JADX WARN: Type inference failed for: r8v0, types: [scala.collection.generic.CanBuildFrom<scala.collection.immutable.Stream<A>, B, That>, scala.collection.generic.CanBuildFrom] */
    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That padTo(int i, B b, CanBuildFrom<Stream<A>, B, That> canBuildFrom) {
        return canBuildFrom.apply(repr()) instanceof StreamBuilder ? scala$collection$immutable$Stream$$loop$3(i, this, b) : SeqLike.Cclass.padTo(this, i, b, canBuildFrom);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParSeq<A>> parCombiner() {
        return Seq.Cclass.parCombiner(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<Stream<A>, Stream<A>> partition(Function1<A, Object> function1) {
        return new Tuple2<>(filter((Function1) new Stream$$anonfun$partition$1(this, function1)), filterNot(new Stream$$anonfun$partition$2(this, function1)));
    }

    public void print() {
        print(", ");
    }

    public void print(String str) {
        loop$1(this, "", str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public final <B> B reduceLeft(Function2<B, A, B> function2) {
        if (!isEmpty()) {
            A head = head();
            Object tail = tail();
            while (true) {
                Stream stream = (Stream) tail;
                if (stream.isEmpty()) {
                    return (B) head;
                }
                head = function2.apply(head, stream.head());
                tail = stream.tail();
            }
        } else {
            throw new UnsupportedOperationException("empty.reduceLeft");
        }
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B reduceRight(Function2<A, B, B> function2) {
        return (B) LinearSeqOptimized.Cclass.reduceRight(this, function2);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [T, scala.collection.immutable.Stream] */
    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public Stream<A> reverse() {
        ObjectRef create = ObjectRef.create(Stream$Empty$.MODULE$);
        Stream<A> stream = this;
        while (true) {
            Stream<A> stream2 = stream;
            if (stream2.isEmpty()) {
                return (Stream) create.elem;
            }
            Stream$ stream$ = Stream$.MODULE$;
            ?? $hash$colon$colon = new ConsWrapper(new Stream$$anonfun$2(this, create)).$hash$colon$colon(stream2.head());
            $hash$colon$colon.tail();
            create.elem = $hash$colon$colon;
            stream = (Stream) stream2.tail();
        }
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B> boolean sameElements(GenIterable<B> genIterable) {
        return LinearSeqOptimized.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.LinearSeqOptimized
    public /* synthetic */ boolean scala$collection$LinearSeqOptimized$$super$sameElements(GenIterable genIterable) {
        return IterableLike.Cclass.sameElements(this, genIterable);
    }

    public final Stream scala$collection$immutable$Stream$$advance$1(List list, List list2, Stream stream) {
        Stream stream2;
        while (true) {
            if (!stream.isEmpty()) {
                if (!list.isEmpty()) {
                    Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
                    stream2 = new Cons(list.head(), new Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1(this, list, list2, stream));
                    break;
                }
                list = list2.reverse();
                list2 = Nil$.MODULE$;
            } else {
                Stream$ stream$ = Stream$.MODULE$;
                stream2 = Stream$Empty$.MODULE$;
                break;
            }
        }
        return stream2;
    }

    public <B> Stream<B> scala$collection$immutable$Stream$$asStream(Object obj) {
        return (Stream) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <That> That scala$collection$immutable$Stream$$asThat(Object obj) {
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <B, That> boolean scala$collection$immutable$Stream$$isStreamBuilder(CanBuildFrom<Stream<A>, B, That> canBuildFrom) {
        return canBuildFrom.apply(repr()) instanceof StreamBuilder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Stream scala$collection$immutable$Stream$$loop$2(Set set, Stream stream) {
        while (true) {
            if (stream.isEmpty()) {
                break;
            } else if (!set.apply((Set) stream.head())) {
                Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
                stream = new Cons(stream.head(), new Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1(this, set, stream));
                break;
            } else {
                stream = (Stream) stream.tail();
            }
        }
        return stream;
    }

    public final Stream scala$collection$immutable$Stream$$loop$3(int i, Stream stream, Object obj) {
        Stream$Empty$ stream$Empty$;
        if (stream.isEmpty()) {
            Stream$ stream$ = Stream$.MODULE$;
            Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$1 stream$$anonfun$scala$collection$immutable$Stream$$loop$3$1 = new Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$1(this, obj);
            if (i <= 0) {
                stream$Empty$ = Stream$Empty$.MODULE$;
            } else {
                Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
                stream$Empty$ = new Cons(stream$$anonfun$scala$collection$immutable$Stream$$loop$3$1.elem$1, new Stream$$anonfun$fill$1(i, stream$$anonfun$scala$collection$immutable$Stream$$loop$3$1));
            }
        } else {
            Stream$cons$ stream$cons$2 = Stream$cons$.MODULE$;
            stream$Empty$ = new Cons(stream.head(), new Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2(this, obj, i, stream));
        }
        return stream$Empty$;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [scala.collection.immutable.Stream] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.immutable.Stream$Cons] */
    /* JADX WARN: Type inference failed for: r12v0, types: [scala.collection.generic.CanBuildFrom<scala.collection.immutable.Stream<A>, B, That>, scala.collection.generic.CanBuildFrom] */
    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public final <B, That> That scanLeft(B b, Function2<B, A, B> function2, CanBuildFrom<Stream<A>, B, That> canBuildFrom) {
        That that;
        if (!(canBuildFrom.apply(repr()) instanceof StreamBuilder)) {
            that = TraversableLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
        } else if (isEmpty()) {
            Stream$ stream$ = Stream$.MODULE$;
            that = Predef$.MODULE$.genericWrapArray(new Object[]{b}).toStream();
        } else {
            Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
            that = new Cons(b, new Stream$$anonfun$scanLeft$1(this, b, function2));
        }
        return that;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int segmentLength(Function1<A, Object> function1, int i) {
        return LinearSeqOptimized.Cclass.segmentLength(this, function1, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public LinearSeq<A> seq() {
        return LinearSeq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Stream<A> slice(int i, int i2) {
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        int max$extension = richInt$.max$extension(i, 0);
        return (i2 <= max$extension || isEmpty()) ? Stream$.MODULE$.empty() : drop(max$extension).take(i2 - max$extension);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<Stream<A>, Stream<A>> span(Function1<A, Object> function1) {
        return LinearSeqOptimized.Cclass.span(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<Stream<A>, Stream<A>> splitAt(int i) {
        return new Tuple2<>(take(i), drop(i));
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "Stream";
    }

    public abstract boolean tailDefined();

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Stream<A> take(int i) {
        Cons cons;
        if (i <= 0 || isEmpty()) {
            Stream$ stream$ = Stream$.MODULE$;
            cons = Stream$Empty$.MODULE$;
        } else if (i == 1) {
            Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
            cons = new Cons(head(), new Stream$$anonfun$take$1(this));
        } else {
            Stream$cons$ stream$cons$2 = Stream$cons$.MODULE$;
            cons = new Cons(head(), new Stream$$anonfun$take$2(this, i));
        }
        return cons;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public Stream<A> takeRight(int i) {
        Stream<A> stream = this;
        for (Stream<A> drop = drop(i); !drop.isEmpty(); drop = (Stream) drop.tail()) {
            stream = (Stream) stream.tail();
        }
        return stream;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Stream<A> takeWhile(Function1<A, Object> function1) {
        Cons cons;
        if (isEmpty() || !BoxesRunTime.unboxToBoolean(function1.apply(head()))) {
            cons = Stream$Empty$.MODULE$;
        } else {
            Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
            cons = new Cons(head(), new Stream$$anonfun$takeWhile$1(this, function1));
        }
        return cons;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.LinearSeq<A> thisCollection() {
        return LinearSeqLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.LinearSeqLike
    public scala.collection.LinearSeq toCollection(LinearSeqLike linearSeqLike) {
        return LinearSeqLike.Cclass.toCollection(this, linearSeqLike);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<A> toSeq() {
        return Seq.Cclass.toSeq(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<A> toStream() {
        return this;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return TraversableOnce.Cclass.mkString(this, new StringBuilder().append((Object) stringPrefix()).append((Object) "(").toString(), ", ", ")");
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public Object view() {
        return new StreamView<A, Stream<A>>(this) { // from class: scala.collection.immutable.Stream$$anon$1
            private final /* synthetic */ Stream $outer;
            private volatile boolean bitmap$0;
            private Stream<A> underlying;

            {
                Objects.requireNonNull(this);
                this.$outer = this;
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
                SeqViewLike.Cclass.$init$(this);
                StreamViewLike.Cclass.$init$(this);
            }

            private Stream underlying$lzycompute() {
                synchronized (this) {
                    if (!this.bitmap$0) {
                        this.underlying = (Stream) this.$outer.repr();
                        this.bitmap$0 = true;
                    }
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                }
                return this.underlying;
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B $colon$bslash(B b, Function2<A, B, B> function2) {
                Object foldRight;
                foldRight = foldRight(b, function2);
                return (B) foldRight;
            }

            @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
            public <B, That> That $colon$plus(B b, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) SeqViewLike.Cclass.$colon$plus(this, b, canBuildFrom);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B $div$colon(B b, Function2<B, A, B> function2) {
                Object foldLeft;
                foldLeft = foldLeft(b, function2);
                return (B) foldLeft;
            }

            @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
            public <B, That> That $plus$colon(B b, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) newPrepended((Stream$$anon$1) b);
            }

            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
            public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) TraversableViewLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
            }

            @Override // scala.collection.TraversableLike
            public <B, That> That $plus$plus$colon(scala.collection.Traversable<B> traversable, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (scala.collection.Traversable) traversable, (CanBuildFrom) canBuildFrom);
            }

            @Override // scala.collection.TraversableLike
            public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
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
            public <B> B aggregate(Function0<B> function0, Function2<B, A, B> function2, Function2<B, B, B> function22) {
                return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
            }

            @Override // scala.PartialFunction, scala.Function1
            public <C> PartialFunction<Object, C> andThen(Function1<A, C> function1) {
                return PartialFunction.Cclass.andThen(this, function1);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [A, java.lang.Object] */
            @Override // scala.collection.GenSeqLike
            public A apply(int i) {
                return this.$outer.apply(i);
            }

            @Override // scala.Function1
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return apply(BoxesRunTime.unboxToInt(obj));
            }

            @Override // scala.Function1
            public double apply$mcDD$sp(double d) {
                double unboxToDouble;
                unboxToDouble = BoxesRunTime.unboxToDouble(apply((Stream$$anon$1) BoxesRunTime.boxToDouble(d)));
                return unboxToDouble;
            }

            @Override // scala.Function1
            public double apply$mcDF$sp(float f) {
                double unboxToDouble;
                unboxToDouble = BoxesRunTime.unboxToDouble(apply((Stream$$anon$1) BoxesRunTime.boxToFloat(f)));
                return unboxToDouble;
            }

            @Override // scala.Function1
            public double apply$mcDI$sp(int i) {
                double unboxToDouble;
                unboxToDouble = BoxesRunTime.unboxToDouble(apply((Stream$$anon$1) BoxesRunTime.boxToInteger(i)));
                return unboxToDouble;
            }

            @Override // scala.Function1
            public double apply$mcDJ$sp(long j) {
                double unboxToDouble;
                unboxToDouble = BoxesRunTime.unboxToDouble(apply((Stream$$anon$1) BoxesRunTime.boxToLong(j)));
                return unboxToDouble;
            }

            @Override // scala.Function1
            public float apply$mcFD$sp(double d) {
                float unboxToFloat;
                unboxToFloat = BoxesRunTime.unboxToFloat(apply((Stream$$anon$1) BoxesRunTime.boxToDouble(d)));
                return unboxToFloat;
            }

            @Override // scala.Function1
            public float apply$mcFF$sp(float f) {
                float unboxToFloat;
                unboxToFloat = BoxesRunTime.unboxToFloat(apply((Stream$$anon$1) BoxesRunTime.boxToFloat(f)));
                return unboxToFloat;
            }

            @Override // scala.Function1
            public float apply$mcFI$sp(int i) {
                float unboxToFloat;
                unboxToFloat = BoxesRunTime.unboxToFloat(apply((Stream$$anon$1) BoxesRunTime.boxToInteger(i)));
                return unboxToFloat;
            }

            @Override // scala.Function1
            public float apply$mcFJ$sp(long j) {
                float unboxToFloat;
                unboxToFloat = BoxesRunTime.unboxToFloat(apply((Stream$$anon$1) BoxesRunTime.boxToLong(j)));
                return unboxToFloat;
            }

            @Override // scala.Function1
            public int apply$mcID$sp(double d) {
                int unboxToInt;
                unboxToInt = BoxesRunTime.unboxToInt(apply((Stream$$anon$1) BoxesRunTime.boxToDouble(d)));
                return unboxToInt;
            }

            @Override // scala.Function1
            public int apply$mcIF$sp(float f) {
                int unboxToInt;
                unboxToInt = BoxesRunTime.unboxToInt(apply((Stream$$anon$1) BoxesRunTime.boxToFloat(f)));
                return unboxToInt;
            }

            @Override // scala.Function1
            public int apply$mcII$sp(int i) {
                int unboxToInt;
                unboxToInt = BoxesRunTime.unboxToInt(apply((Stream$$anon$1) BoxesRunTime.boxToInteger(i)));
                return unboxToInt;
            }

            @Override // scala.Function1
            public int apply$mcIJ$sp(long j) {
                int unboxToInt;
                unboxToInt = BoxesRunTime.unboxToInt(apply((Stream$$anon$1) BoxesRunTime.boxToLong(j)));
                return unboxToInt;
            }

            @Override // scala.Function1
            public long apply$mcJD$sp(double d) {
                long unboxToLong;
                unboxToLong = BoxesRunTime.unboxToLong(apply((Stream$$anon$1) BoxesRunTime.boxToDouble(d)));
                return unboxToLong;
            }

            @Override // scala.Function1
            public long apply$mcJF$sp(float f) {
                long unboxToLong;
                unboxToLong = BoxesRunTime.unboxToLong(apply((Stream$$anon$1) BoxesRunTime.boxToFloat(f)));
                return unboxToLong;
            }

            @Override // scala.Function1
            public long apply$mcJI$sp(int i) {
                long unboxToLong;
                unboxToLong = BoxesRunTime.unboxToLong(apply((Stream$$anon$1) BoxesRunTime.boxToInteger(i)));
                return unboxToLong;
            }

            @Override // scala.Function1
            public long apply$mcJJ$sp(long j) {
                long unboxToLong;
                unboxToLong = BoxesRunTime.unboxToLong(apply((Stream$$anon$1) BoxesRunTime.boxToLong(j)));
                return unboxToLong;
            }

            @Override // scala.Function1
            public void apply$mcVD$sp(double d) {
                apply((Stream$$anon$1) BoxesRunTime.boxToDouble(d));
            }

            @Override // scala.Function1
            public void apply$mcVF$sp(float f) {
                apply((Stream$$anon$1) BoxesRunTime.boxToFloat(f));
            }

            @Override // scala.Function1
            public void apply$mcVI$sp(int i) {
                apply((Stream$$anon$1) BoxesRunTime.boxToInteger(i));
            }

            @Override // scala.Function1
            public void apply$mcVJ$sp(long j) {
                apply((Stream$$anon$1) BoxesRunTime.boxToLong(j));
            }

            @Override // scala.Function1
            public boolean apply$mcZD$sp(double d) {
                boolean unboxToBoolean;
                unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((Stream$$anon$1) BoxesRunTime.boxToDouble(d)));
                return unboxToBoolean;
            }

            @Override // scala.Function1
            public boolean apply$mcZF$sp(float f) {
                boolean unboxToBoolean;
                unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((Stream$$anon$1) BoxesRunTime.boxToFloat(f)));
                return unboxToBoolean;
            }

            @Override // scala.Function1
            public boolean apply$mcZI$sp(int i) {
                boolean unboxToBoolean;
                unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((Stream$$anon$1) BoxesRunTime.boxToInteger(i)));
                return unboxToBoolean;
            }

            @Override // scala.Function1
            public boolean apply$mcZJ$sp(long j) {
                boolean unboxToBoolean;
                unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((Stream$$anon$1) BoxesRunTime.boxToLong(j)));
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
            public <B, That> That collect(PartialFunction<A, B> partialFunction, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) TraversableViewLike.Cclass.collect(this, partialFunction, canBuildFrom);
            }

            @Override // scala.collection.TraversableOnce
            public <B> Option<B> collectFirst(PartialFunction<A, B> partialFunction) {
                return TraversableOnce.Cclass.collectFirst(this, partialFunction);
            }

            @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
            public Iterator<StreamView<A, Stream<A>>> combinations(int i) {
                return SeqViewLike.Cclass.combinations(this, i);
            }

            @Override // scala.collection.Seq, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
            public GenericCompanion<scala.collection.Seq> companion() {
                return Seq.Cclass.companion(this);
            }

            @Override // scala.Function1
            public <A> Function1<A, A> compose(Function1<A, Object> function1) {
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
            public <B> boolean corresponds(GenSeq<B> genSeq, Function2<A, B, Object> function2) {
                return SeqLike.Cclass.corresponds(this, genSeq, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public int count(Function1<A, Object> function1) {
                return TraversableOnce.Cclass.count(this, function1);
            }

            @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
            public SeqView diff(GenSeq genSeq) {
                return SeqViewLike.Cclass.diff(this, genSeq);
            }

            @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
            public SeqView distinct() {
                return SeqViewLike.Cclass.distinct(this);
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
            public boolean exists(Function1<A, Object> function1) {
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
            public Option<A> find(Function1<A, Object> function1) {
                return IterableLike.Cclass.find(this, function1);
            }

            @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
            public <B, That> That flatMap(Function1<A, GenTraversableOnce<B>> function1, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) TraversableViewLike.Cclass.flatMap(this, function1, canBuildFrom);
            }

            @Override // scala.collection.generic.GenericTraversableTemplate
            public <B> GenTraversable flatten(Function1<A, GenTraversableOnce<B>> function1) {
                return TraversableViewLike.Cclass.flatten(this, function1);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
                return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B foldLeft(B b, Function2<B, A, B> function2) {
                return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public <B> B foldRight(B b, Function2<A, B, B> function2) {
                return (B) IterableLike.Cclass.foldRight(this, b, function2);
            }

            @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public boolean forall(Function1<A, Object> function1) {
                return IterableLike.Cclass.forall(this, function1);
            }

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.TraversableViewLike
            public <B, That> That force(CanBuildFrom<Stream<A>, B, That> canBuildFrom) {
                return (That) StreamViewLike.Cclass.force(this, canBuildFrom);
            }

            @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
            public <U> void foreach(Function1<A, U> function1) {
                IterableLike.Cclass.foreach(this, function1);
            }

            @Override // scala.collection.generic.GenericTraversableTemplate
            public <B> Builder<B, scala.collection.Seq<B>> genericBuilder() {
                return GenericTraversableTemplate.Cclass.genericBuilder(this);
            }

            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
            public <K> Map<K, StreamView<A, Stream<A>>> groupBy(Function1<A, K> function1) {
                return TraversableViewLike.Cclass.groupBy(this, function1);
            }

            @Override // scala.collection.IterableLike
            public Iterator<StreamView<A, Stream<A>>> grouped(int i) {
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

            /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
            public A head() {
                return IterableLike.Cclass.head(this);
            }

            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
            public Option<A> headOption() {
                return TraversableLike.Cclass.headOption(this);
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
            public int indexWhere(Function1<A, Object> function1) {
                return GenSeqLike.Cclass.indexWhere(this, function1);
            }

            @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
            public int indexWhere(Function1<A, Object> function1, int i) {
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
            public Iterator<StreamView<A, Stream<A>>> inits() {
                return TraversableViewLike.Cclass.inits(this);
            }

            @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
            public SeqView intersect(GenSeq genSeq) {
                return SeqViewLike.Cclass.intersect(this, genSeq);
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
                return SeqLike.Cclass.isEmpty(this);
            }

            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
            public final boolean isTraversableAgain() {
                return TraversableLike.Cclass.isTraversableAgain(this);
            }

            @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
            public Iterator<A> iterator() {
                return this.$outer.iterator();
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
            public A last() {
                return TraversableLike.Cclass.last(this);
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
            public int lastIndexWhere(Function1<A, Object> function1) {
                return GenSeqLike.Cclass.lastIndexWhere(this, function1);
            }

            @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
            public int lastIndexWhere(Function1<A, Object> function1, int i) {
                return SeqLike.Cclass.lastIndexWhere(this, function1, i);
            }

            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
            public Option<A> lastOption() {
                return TraversableLike.Cclass.lastOption(this);
            }

            @Override // scala.collection.GenSeqLike
            public int length() {
                return this.$outer.length();
            }

            @Override // scala.collection.SeqLike
            public int lengthCompare(int i) {
                return SeqLike.Cclass.lengthCompare(this, i);
            }

            @Override // scala.PartialFunction
            public Function1<Object, Option<A>> lift() {
                return PartialFunction.Cclass.lift(this);
            }

            @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
            public <B, That> That map(Function1<A, B> function1, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) TraversableViewLike.Cclass.map(this, function1, canBuildFrom);
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> A max(Ordering<B> ordering) {
                return TraversableOnce.Cclass.max(this, ordering);
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> A maxBy(Function1<A, B> function1, Ordering<B> ordering) {
                return TraversableOnce.Cclass.maxBy(this, function1, ordering);
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> A min(Ordering<B> ordering) {
                return TraversableOnce.Cclass.min(this, ordering);
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> A minBy(Function1<A, B> function1, Ordering<B> ordering) {
                return TraversableOnce.Cclass.minBy(this, function1, ordering);
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

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
            public <B> StreamViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<B> newAppended(GenTraversable<B> genTraversable) {
                return StreamViewLike.Cclass.newAppended(this, genTraversable);
            }

            @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
            public Builder<A, StreamView<A, Stream<A>>> newBuilder() {
                return TraversableViewLike.Cclass.newBuilder(this);
            }

            @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
            public SeqViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<A> newDropped(int i) {
                return SeqViewLike.Cclass.newDropped(this, i);
            }

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
            public StreamViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<A> newDroppedWhile(Function1<A, Object> function1) {
                return StreamViewLike.Cclass.newDroppedWhile(this, function1);
            }

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
            public StreamViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<A> newFiltered(Function1<A, Object> function1) {
                return StreamViewLike.Cclass.newFiltered(this, function1);
            }

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
            public <B> StreamViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<B> newFlatMapped(Function1<A, GenTraversableOnce<B>> function1) {
                return StreamViewLike.Cclass.newFlatMapped(this, function1);
            }

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
            public <B> StreamViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<B> newForced(Function0<GenSeq<B>> function0) {
                return StreamViewLike.Cclass.newForced(this, function0);
            }

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
            public <B> StreamViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<B> newMapped(Function1<A, B> function1) {
                return StreamViewLike.Cclass.newMapped(this, function1);
            }

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.SeqViewLike
            public <B> StreamViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<B> newPatched(int i, GenSeq<B> genSeq, int i2) {
                return StreamViewLike.Cclass.newPatched(this, i, genSeq, i2);
            }

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.SeqViewLike
            public <B> StreamViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<B> newPrepended(B b) {
                return StreamViewLike.Cclass.newPrepended(this, b);
            }

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.SeqViewLike
            public StreamViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<A> newReversed() {
                return StreamViewLike.Cclass.newReversed(this);
            }

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
            public StreamViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<A> newSliced(SliceInterval sliceInterval) {
                return StreamViewLike.Cclass.newSliced(this, sliceInterval);
            }

            @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
            public SeqViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<A> newTaken(int i) {
                return SeqViewLike.Cclass.newTaken(this, i);
            }

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
            public StreamViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<A> newTakenWhile(Function1<A, Object> function1) {
                return StreamViewLike.Cclass.newTakenWhile(this, function1);
            }

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.SeqViewLike, scala.collection.IterableViewLike
            public <B> StreamViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<Tuple2<A, B>> newZipped(GenIterable<B> genIterable) {
                return StreamViewLike.Cclass.newZipped(this, genIterable);
            }

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.SeqViewLike, scala.collection.IterableViewLike
            public <A1, B> StreamViewLike<A, Stream<A>, StreamView<A, Stream<A>>>.Transformed<Tuple2<A1, B>> newZippedAll(GenIterable<B> genIterable, A1 a1, B b) {
                return StreamViewLike.Cclass.newZippedAll(this, genIterable, a1, b);
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
            public <B, That> That padTo(int i, B b, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) SeqViewLike.Cclass.padTo(this, i, b, canBuildFrom);
            }

            @Override // scala.collection.Parallelizable
            public Parallel par() {
                return Parallelizable.Cclass.par(this);
            }

            @Override // scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
            public Combiner<A, scala.collection.parallel.ParSeq<A>> parCombiner() {
                return SeqLike.Cclass.parCombiner(this);
            }

            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
            public Tuple2<StreamView<A, Stream<A>>, StreamView<A, Stream<A>>> partition(Function1<A, Object> function1) {
                return TraversableViewLike.Cclass.partition(this, function1);
            }

            @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
            public <B, That> That patch(int i, GenSeq<B> genSeq, int i2, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) SeqViewLike.Cclass.patch(this, i, genSeq, i2, canBuildFrom);
            }

            @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
            public Iterator<StreamView<A, Stream<A>>> permutations() {
                return SeqViewLike.Cclass.permutations(this);
            }

            @Override // scala.collection.GenSeqLike
            public int prefixLength(Function1<A, Object> function1) {
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
            public <B> B reduceLeft(Function2<B, A, B> function2) {
                return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> Option<B> reduceLeftOption(Function2<B, A, B> function2) {
                return TraversableOnce.Cclass.reduceLeftOption(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
                return TraversableOnce.Cclass.reduceOption(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public <B> B reduceRight(Function2<A, B, B> function2) {
                return (B) IterableLike.Cclass.reduceRight(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> Option<B> reduceRightOption(Function2<A, B, B> function2) {
                return TraversableOnce.Cclass.reduceRightOption(this, function2);
            }

            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
            public Object repr() {
                return TraversableLike.Cclass.repr(this);
            }

            @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
            public SeqView reverse() {
                return SeqViewLike.Cclass.reverse(this);
            }

            @Override // scala.collection.SeqLike
            public Iterator<A> reverseIterator() {
                return SeqLike.Cclass.reverseIterator(this);
            }

            @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
            public <B, That> That reverseMap(Function1<A, B> function1, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) SeqViewLike.Cclass.reverseMap(this, function1, canBuildFrom);
            }

            @Override // scala.collection.TraversableOnce
            public List<A> reversed() {
                return TraversableOnce.Cclass.reversed(this);
            }

            @Override // scala.PartialFunction
            public <U> Function1<Object, Object> runWith(Function1<A, U> function1) {
                return PartialFunction.Cclass.runWith(this, function1);
            }

            @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
            public <B> boolean sameElements(GenIterable<B> genIterable) {
                return IterableLike.Cclass.sameElements(this, genIterable);
            }

            @Override // scala.collection.TraversableViewLike
            public /* synthetic */ TraversableView scala$collection$TraversableViewLike$$super$tail() {
                return (TraversableView) TraversableLike.Cclass.tail(this);
            }

            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
            public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
            }

            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
            public <B, That> That scanLeft(B b, Function2<B, A, B> function2, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) TraversableViewLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
            }

            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
            public <B, That> That scanRight(B b, Function2<A, B, B> function2, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) TraversableViewLike.Cclass.scanRight(this, b, function2, canBuildFrom);
            }

            @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
            public int segmentLength(Function1<A, Object> function1, int i) {
                return SeqLike.Cclass.segmentLength(this, function1, i);
            }

            @Override // scala.collection.Seq, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
            public scala.collection.Seq<A> seq() {
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
            public Iterator<StreamView<A, Stream<A>>> sliding(int i) {
                return IterableViewLike.Cclass.sliding(this, i);
            }

            @Override // scala.collection.IterableLike
            public Iterator<StreamView<A, Stream<A>>> sliding(int i, int i2) {
                return IterableViewLike.Cclass.sliding(this, i, i2);
            }

            @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
            public SeqView sortBy(Function1 function1, Ordering ordering) {
                return SeqViewLike.Cclass.sortBy(this, function1, ordering);
            }

            @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
            public SeqView sortWith(Function2 function2) {
                return SeqViewLike.Cclass.sortWith(this, function2);
            }

            @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
            public SeqView sorted(Ordering ordering) {
                return SeqViewLike.Cclass.sorted(this, ordering);
            }

            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
            public Tuple2<StreamView<A, Stream<A>>, StreamView<A, Stream<A>>> span(Function1<A, Object> function1) {
                return TraversableViewLike.Cclass.span(this, function1);
            }

            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
            public Tuple2<StreamView<A, Stream<A>>, StreamView<A, Stream<A>>> splitAt(int i) {
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

            @Override // scala.collection.immutable.StreamViewLike, scala.collection.SeqViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
            public String stringPrefix() {
                return StreamViewLike.Cclass.stringPrefix(this);
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
            public Iterator<StreamView<A, Stream<A>>> tails() {
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
            public scala.collection.Seq<A> thisCollection() {
                return SeqLike.Cclass.thisCollection(this);
            }

            @Override // scala.collection.ViewMkString
            public scala.collection.Seq<A> thisSeq() {
                return ViewMkString.Cclass.thisSeq(this);
            }

            @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            /* renamed from: to */
            public <Col> Col mo1to(CanBuildFrom<Nothing$, A, Col> canBuildFrom) {
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
            public scala.collection.Seq toCollection(Object obj) {
                return SeqLike.Cclass.toCollection(this, obj);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public IndexedSeq<A> toIndexedSeq() {
                return TraversableOnce.Cclass.toIndexedSeq(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public scala.collection.Iterable<A> toIterable() {
                return IterableLike.Cclass.toIterable(this);
            }

            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Iterator<A> toIterator() {
                return IterableLike.Cclass.toIterator(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public List<A> toList() {
                return TraversableOnce.Cclass.toList(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <T, U> Map<T, U> toMap(Predef$$less$colon$less<A, Tuple2<T, U>> predef$$less$colon$less) {
                return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
            public scala.collection.Seq<A> toSeq() {
                return SeqLike.Cclass.toSeq(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
            public <B> Set<B> toSet() {
                return TraversableOnce.Cclass.toSet(this);
            }

            @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Stream<A> toStream() {
                return IterableLike.Cclass.toStream(this);
            }

            @Override // scala.Function1
            public String toString() {
                return TraversableViewLike.Cclass.toString(this);
            }

            @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public scala.collection.Traversable<A> toTraversable() {
                return TraversableLike.Cclass.toTraversable(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public Vector<A> toVector() {
                return TraversableOnce.Cclass.toVector(this);
            }

            @Override // scala.collection.generic.GenericTraversableTemplate
            public GenTraversable transpose(Function1 function1) {
                return GenericTraversableTemplate.Cclass.transpose(this, function1);
            }

            @Override // scala.collection.TraversableViewLike
            public Stream<A> underlying() {
                return this.bitmap$0 ? this.underlying : underlying$lzycompute();
            }

            @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
            public <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) SeqViewLike.Cclass.union(this, genSeq, canBuildFrom);
            }

            @Override // scala.collection.generic.GenericTraversableTemplate
            public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<A, Tuple2<A1, A2>> function1) {
                return TraversableViewLike.Cclass.unzip(this, function1);
            }

            @Override // scala.collection.generic.GenericTraversableTemplate
            public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<A, Tuple3<A1, A2, A3>> function1) {
                return TraversableViewLike.Cclass.unzip3(this, function1);
            }

            @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
            public <B, That> That updated(int i, B b, CanBuildFrom<StreamView<A, Stream<A>>, B, That> canBuildFrom) {
                return (That) SeqViewLike.Cclass.updated(this, i, b, canBuildFrom);
            }

            @Override // scala.collection.TraversableLike, scala.collection.IterableLike
            public Object view() {
                return SeqLike.Cclass.view(this);
            }

            @Override // scala.collection.TraversableLike, scala.collection.IterableLike
            public SeqView<A, StreamView<A, Stream<A>>> view(int i, int i2) {
                return SeqLike.Cclass.view(this, i, i2);
            }

            @Override // scala.collection.TraversableViewLike
            public String viewIdString() {
                return TraversableViewLike.Cclass.viewIdString(this);
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
            public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<StreamView<A, Stream<A>>, Tuple2<A1, B>, That> canBuildFrom) {
                return (That) IterableViewLike.Cclass.zip(this, genIterable, canBuildFrom);
            }

            @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
            public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<StreamView<A, Stream<A>>, Tuple2<A1, B>, That> canBuildFrom) {
                return (That) IterableViewLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
            }

            @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
            public <A1, That> That zipWithIndex(CanBuildFrom<StreamView<A, Stream<A>>, Tuple2<A1, Object>, That> canBuildFrom) {
                return (That) IterableViewLike.Cclass.zipWithIndex(this, canBuildFrom);
            }
        };
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
    public final Stream<A>.StreamWithFilter withFilter(Function1<A, Object> function1) {
        return new StreamWithFilter(this, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [scala.collection.immutable.Stream$Cons] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v8, types: [scala.collection.immutable.Stream$Empty$] */
    /* JADX WARN: Type inference failed for: r10v0, types: [scala.collection.generic.CanBuildFrom, scala.collection.generic.CanBuildFrom<scala.collection.immutable.Stream<A>, scala.Tuple2<A1, B>, That>] */
    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public final <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<Stream<A>, Tuple2<A1, B>, That> canBuildFrom) {
        That that;
        if (!(canBuildFrom.apply(repr()) instanceof StreamBuilder)) {
            that = IterableLike.Cclass.zip(this, genIterable, canBuildFrom);
        } else if (isEmpty() || genIterable.isEmpty()) {
            that = Stream$Empty$.MODULE$;
        } else {
            Stream$cons$ stream$cons$ = Stream$cons$.MODULE$;
            that = new Cons(new Tuple2(head(), genIterable.head()), new Stream$$anonfun$zip$1(this, genIterable));
        }
        return that;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, That> That zipWithIndex(CanBuildFrom<Stream<A>, Tuple2<A1, Object>, That> canBuildFrom) {
        return (That) zip(Stream$.MODULE$.from(0), canBuildFrom);
    }
}
