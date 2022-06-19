package scala.collection;

import java.util.Arrays;
import java.util.Objects;
import scala.Array$;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.MatchError;
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
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.IterableViewLike;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.SeqLike;
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
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Nil$;
import scala.collection.immutable.Range;
import scala.collection.immutable.Range$;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.HashMap;
import scala.collection.mutable.HashMap$;
import scala.collection.mutable.HashSet;
import scala.collection.mutable.HashSet$;
import scala.collection.mutable.Map;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParSeq;
import scala.collection.parallel.ParSeq$;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.Ordering$;
import scala.math.Ordering$$anon$9;
import scala.math.Ordering$Int$;
import scala.math.package$;
import scala.reflect.ClassTag;
import scala.reflect.ClassTag$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
import scala.runtime.Nothing$;
import scala.runtime.ObjectRef;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001\u0011\u0005f!C\u0001\u0003!\u0003\r\taBBz\u0005\u001d\u0019V-\u001d'jW\u0016T!a\u0001\u0003\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001)2\u0001C\n\u001b'\u0015\u0001\u0011\"\u0004\u000f !\tQ1\"D\u0001\u0005\u0013\taAAA\u0002B]f\u0004BAD\b\u001235\t!!\u0003\u0002\u0011\u0005\ta\u0011\n^3sC\ndW\rT5lKB\u0011!c\u0005\u0007\u0001\t\u0019!\u0002\u0001\"b\u0001+\t\t\u0011)\u0005\u0002\u0017\u0013A\u0011!bF\u0005\u00031\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u00135\u001111\u0004\u0001CC\u0002U\u0011AAU3qeB!a\"H\t\u001a\u0013\tq\"A\u0001\u0006HK:\u001cV-\u001d'jW\u0016\u0004BA\u0004\u0011\u0012E%\u0011\u0011E\u0001\u0002\u000f!\u0006\u0014\u0018\r\u001c7fY&T\u0018M\u00197f!\r\u0019c%E\u0007\u0002I)\u0011QEA\u0001\ta\u0006\u0014\u0018\r\u001c7fY&\u0011q\u0005\n\u0002\u0007!\u0006\u00148+Z9\t\u000b%\u0002A\u0011\u0001\u0016\u0002\r\u0011Jg.\u001b;%)\u0005Y\u0003C\u0001\u0006-\u0013\tiCA\u0001\u0003V]&$\bBB\u0018\u0001A\u0013E\u0003'\u0001\buQ&\u001c8i\u001c7mK\u000e$\u0018n\u001c8\u0016\u0003E\u00022A\u0004\u001a\u0012\u0013\t\u0019$AA\u0002TKFDa!\u000e\u0001!\n#2\u0014\u0001\u0004;p\u0007>dG.Z2uS>tGCA\u00198\u0011\u0015AD\u00071\u0001\u001a\u0003\u0011\u0011X\r\u001d:\t\u000bi\u0002a\u0011A\u001e\u0002\r1,gn\u001a;i+\u0005a\u0004C\u0001\u0006>\u0013\tqDAA\u0002J]RDQ\u0001\u0011\u0001\u0007\u0002\u0005\u000bQ!\u00199qYf$\"!\u0005\"\t\u000b\r{\u0004\u0019\u0001\u001f\u0002\u0007%$\u0007\u0010\u0003\u0004F\u0001\u0001&\tFR\u0001\fa\u0006\u00148i\\7cS:,'/F\u0001H!\u0011\u0019\u0003*\u0005\u0012\n\u0005%##\u0001C\"p[\nLg.\u001a:\t\u000b-\u0003A\u0011\u0001'\u0002\u001b1,gn\u001a;i\u0007>l\u0007/\u0019:f)\taT\nC\u0003O\u0015\u0002\u0007A(A\u0002mK:DQ\u0001\u0015\u0001\u0005BE\u000bq![:F[B$\u00180F\u0001S!\tQ1+\u0003\u0002U\t\t9!i\\8mK\u0006t\u0007\"\u0002,\u0001\t\u0003Z\u0014\u0001B:ju\u0016DQ\u0001\u0017\u0001\u0005\u0002e\u000bQb]3h[\u0016tG\u000fT3oORDGc\u0001\u001f[?\")1l\u0016a\u00019\u0006\t\u0001\u000f\u0005\u0003\u000b;F\u0011\u0016B\u00010\u0005\u0005%1UO\\2uS>t\u0017\u0007C\u0003a/\u0002\u0007A(\u0001\u0003ge>l\u0007\"\u00022\u0001\t\u0003\u0019\u0017AC5oI\u0016Dx\u000b[3sKR\u0019A\bZ3\t\u000bm\u000b\u0007\u0019\u0001/\t\u000b\u0001\f\u0007\u0019\u0001\u001f\t\u000b\u001d\u0004A\u0011\u00015\u0002\u001d1\f7\u000f^%oI\u0016Dx\u000b[3sKR\u0019A(\u001b6\t\u000bm3\u0007\u0019\u0001/\t\u000b-4\u0007\u0019\u0001\u001f\u0002\u0007\u0015tG\rC\u0003n\u0001\u0011\u0005a.\u0001\u0007qKJlW\u000f^1uS>t7/F\u0001p!\rq\u0001/G\u0005\u0003c\n\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\u0006g\u0002!\t\u0001^\u0001\rG>l'-\u001b8bi&|gn\u001d\u000b\u0003_VDQA\u001e:A\u0002q\n\u0011A\u001c\u0004\u0005q\u0002!\u0011PA\bQKJlW\u000f^1uS>t7/\u0013;s'\t9(\u0010E\u0002\u000fwfI!\u0001 \u0002\u0003!\u0005\u00137\u000f\u001e:bGRLE/\u001a:bi>\u0014\b\"\u0002@x\t\u0003y\u0018A\u0002\u001fj]&$h\b\u0006\u0002\u0002\u0002A\u0019\u00111A<\u000e\u0003\u0001AA\"a\u0002x!\u0003\u0005\u0019\u0011)A\u0005\u0003\u0013\t1\u0001\u001f\u00132!\u001dQ\u00111BA\b\u00037I1!!\u0004\u0005\u0005\u0019!V\u000f\u001d7feA)\u0011\u0011CA\f#5\u0011\u00111\u0003\u0006\u0004\u0003+\u0011\u0011aB7vi\u0006\u0014G.Z\u0005\u0005\u00033\t\u0019B\u0001\u0004Ck\u001a4WM\u001d\t\u0005\u0015\u0005uA(C\u0002\u0002 \u0011\u0011Q!\u0011:sCfD\u0001\"a\txA\u0003%\u0011qB\u0001\u0005K2l7\u000f\u0003\u0005\u0002(]\u0004\u000b\u0011BA\u000e\u0003\u0011IG\r_:\t\u0011\u0005-r\u000f1A\u0005\nE\u000b\u0001b\u00185bg:+\u0007\u0010\u001e\u0005\n\u0003_9\b\u0019!C\u0005\u0003c\tAb\u00185bg:+\u0007\u0010^0%KF$2aKA\u001a\u0011%\t9!!\f\u0002\u0002\u0003\u0007!\u000bC\u0004\u00028]\u0004\u000b\u0015\u0002*\u0002\u0013}C\u0017m\u001d(fqR\u0004\u0003BBA\u001eo\u0012\u0005\u0011+A\u0004iCNtU\r\u001f;\t\u000f\u0005}r\u000f\"\u0001\u0002B\u0005!a.\u001a=u)\u0005I\u0002bBA#o\u0012%\u0011qI\u0001\u0005g^\f\u0007\u000fF\u0003,\u0003\u0013\ni\u0005C\u0004\u0002L\u0005\r\u0003\u0019\u0001\u001f\u0002\u0003%Dq!a\u0014\u0002D\u0001\u0007A(A\u0001k\u0011!\t\u0019f\u001eQ\u0005\n\u0005U\u0013\u0001B5oSR$\"!!\u0003\u0007\r\u0005e\u0003\u0001BA.\u0005=\u0019u.\u001c2j]\u0006$\u0018n\u001c8t\u0013R\u00148cAA,u\"Ia/a\u0016\u0003\u0002\u0003\u0006I\u0001\u0010\u0005\b}\u0006]C\u0011AA1)\u0011\t\u0019'!\u001a\u0011\t\u0005\r\u0011q\u000b\u0005\u0007m\u0006}\u0003\u0019\u0001\u001f\t\u001b\u0005%\u0014q\u000bI\u0001\u0002\u0007\u0005\u000b\u0011BA6\u0003\rAH\u0005\u000e\t\n\u0015\u00055\u0014\u0011OA\u000e\u00037I1!a\u001c\u0005\u0005\u0019!V\u000f\u001d7fgA!a\"a\u001d\u0012\u0013\r\t)H\u0001\u0002\u000b\u0013:$W\r_3e'\u0016\f\bBCA\u0012\u0003/\u0012\r\u0011\"\u0003\u0002zU\u0011\u0011\u0011\u000f\u0005\n\u0003{\n9\u0006)A\u0005\u0003c\nQ!\u001a7ng\u0002B!\"!!\u0002X\t\u0007I\u0011BAB\u0003\u0011\u0019g\u000e^:\u0016\u0005\u0005m\u0001\"CAD\u0003/\u0002\u000b\u0011BA\u000e\u0003\u0015\u0019g\u000e^:!\u0011)\tY)a\u0016C\u0002\u0013%\u00111Q\u0001\u0005]Vl7\u000fC\u0005\u0002\u0010\u0006]\u0003\u0015!\u0003\u0002\u001c\u0005)a.^7tA!Q\u00111SA,\u0005\u0004%I!a!\u0002\t=4gm\u001d\u0005\n\u0003/\u000b9\u0006)A\u0005\u00037\tQa\u001c4gg\u0002B\u0011\"a\u000b\u0002X\u0001\u0007I\u0011B)\t\u0015\u0005=\u0012q\u000ba\u0001\n\u0013\ti\nF\u0002,\u0003?C\u0011\"a\u0002\u0002\u001c\u0006\u0005\t\u0019\u0001*\t\u0011\u0005]\u0012q\u000bQ!\nICq!a\u000f\u0002X\u0011\u0005\u0011\u000b\u0003\u0005\u0002@\u0005]C\u0011AA!\u0011!\t\u0019&a\u0016\u0005\n\u0005%FCAA6\u0011\u001d\ti\u000b\u0001C\u0001\u0003_\u000bqA]3wKJ\u001cX-F\u0001\u001a\u0011\u001d\t\u0019\f\u0001C\u0001\u0003k\u000b!B]3wKJ\u001cX-T1q+\u0019\t9,a5\u0002>R!\u0011\u0011XAl)\u0011\tY,!1\u0011\u0007I\ti\fB\u0004\u0002@\u0006E&\u0019A\u000b\u0003\tQC\u0017\r\u001e\u0005\t\u0003\u0007\f\t\fq\u0001\u0002F\u0006\u0011!M\u001a\t\n\u0003\u000f\fi-GAi\u0003wk!!!3\u000b\u0007\u0005-'!A\u0004hK:,'/[2\n\t\u0005=\u0017\u0011\u001a\u0002\r\u0007\u0006t')^5mI\u001a\u0013x.\u001c\t\u0004%\u0005MGaBAk\u0003c\u0013\r!\u0006\u0002\u0002\u0005\"A\u0011\u0011\\AY\u0001\u0004\tY.A\u0001g!\u0015QQ,EAi\u0011\u001d\ty\u000e\u0001C\u0001\u0003C\fqB]3wKJ\u001cX-\u0013;fe\u0006$xN]\u000b\u0003\u0003G\u00042A\u00049\u0012\u0011\u001d\t9\u000f\u0001C\u0001\u0003S\f!b\u001d;beR\u001cx+\u001b;i+\u0011\tY/!?\u0015\u000bI\u000bi/a?\t\u0011\u0005=\u0018Q\u001da\u0001\u0003c\fA\u0001\u001e5biB)a\"a=\u0002x&\u0019\u0011Q\u001f\u0002\u0003\r\u001d+gnU3r!\r\u0011\u0012\u0011 \u0003\b\u0003+\f)O1\u0001\u0016\u0011\u001d\ti0!:A\u0002q\naa\u001c4gg\u0016$\bb\u0002B\u0001\u0001\u0011\u0005!1A\u0001\tK:$7oV5uQV!!Q\u0001B\u0007)\r\u0011&q\u0001\u0005\t\u0003_\fy\u00101\u0001\u0003\nA)a\"a=\u0003\fA\u0019!C!\u0004\u0005\u000f\u0005U\u0017q b\u0001+!9!\u0011\u0003\u0001\u0005\u0002\tM\u0011\u0001D5oI\u0016DxJZ*mS\u000e,W\u0003\u0002B\u000b\u0005;!2\u0001\u0010B\f\u0011!\tyOa\u0004A\u0002\te\u0001#\u0002\b\u0002t\nm\u0001c\u0001\n\u0003\u001e\u0011A\u0011Q\u001bB\b\u0005\u0004\u0011y\"\u0005\u0002\u0012\u0013!9!\u0011\u0003\u0001\u0005\u0002\t\rR\u0003\u0002B\u0013\u0005[!R\u0001\u0010B\u0014\u0005_A\u0001\"a<\u0003\"\u0001\u0007!\u0011\u0006\t\u0006\u001d\u0005M(1\u0006\t\u0004%\t5B\u0001CAk\u0005C\u0011\rAa\b\t\r\u0001\u0014\t\u00031\u0001=\u0011\u001d\u0011\u0019\u0004\u0001C\u0001\u0005k\t\u0001\u0003\\1ti&sG-\u001a=PMNc\u0017nY3\u0016\t\t]\"q\b\u000b\u0004y\te\u0002\u0002CAx\u0005c\u0001\rAa\u000f\u0011\u000b9\t\u0019P!\u0010\u0011\u0007I\u0011y\u0004\u0002\u0005\u0002V\nE\"\u0019\u0001B\u0010\u0011\u001d\u0011\u0019\u0004\u0001C\u0001\u0005\u0007*BA!\u0012\u0003NQ)AHa\u0012\u0003P!A\u0011q\u001eB!\u0001\u0004\u0011I\u0005E\u0003\u000f\u0003g\u0014Y\u0005E\u0002\u0013\u0005\u001b\"\u0001\"!6\u0003B\t\u0007!q\u0004\u0005\u0007W\n\u0005\u0003\u0019\u0001\u001f\t\u000f\tM\u0003\u0001\"\u0001\u0003V\u0005i1m\u001c8uC&t7o\u00157jG\u0016,BAa\u0016\u0003`Q\u0019!K!\u0017\t\u0011\u0005=(\u0011\u000ba\u0001\u00057\u0002RADAz\u0005;\u00022A\u0005B0\t\u001d\t)N!\u0015C\u0002UAqAa\u0019\u0001\t\u0003\u0011)'\u0001\u0005d_:$\u0018-\u001b8t+\u0011\u00119Ga\u001c\u0015\u0007I\u0013I\u0007\u0003\u0005\u0003l\t\u0005\u0004\u0019\u0001B7\u0003\u0011)G.Z7\u0011\u0007I\u0011y\u0007\u0002\u0005\u0003r\t\u0005$\u0019\u0001B\u0010\u0005\t\t\u0015\u0007C\u0004\u0003v\u0001!\tEa\u001e\u0002\u000bUt\u0017n\u001c8\u0016\r\te$q\u0011B@)\u0011\u0011YH!#\u0015\t\tu$\u0011\u0011\t\u0004%\t}DaBA`\u0005g\u0012\r!\u0006\u0005\t\u0003\u0007\u0014\u0019\bq\u0001\u0003\u0004BI\u0011qYAg3\t\u0015%Q\u0010\t\u0004%\t\u001dE\u0001CAk\u0005g\u0012\rAa\b\t\u0011\u0005=(1\u000fa\u0001\u0005\u0017\u0003RADAz\u0005\u000bCqAa$\u0001\t\u0003\u0011\t*\u0001\u0003eS\u001a4W\u0003\u0002BJ\u00057#2!\u0007BK\u0011!\tyO!$A\u0002\t]\u0005#\u0002\b\u0002t\ne\u0005c\u0001\n\u0003\u001c\u0012A\u0011Q\u001bBG\u0005\u0004\u0011y\u0002C\u0004\u0003 \u0002!\tA!)\u0002\u0013%tG/\u001a:tK\u000e$X\u0003\u0002BR\u0005W#2!\u0007BS\u0011!\tyO!(A\u0002\t\u001d\u0006#\u0002\b\u0002t\n%\u0006c\u0001\n\u0003,\u0012A\u0011Q\u001bBO\u0005\u0004\u0011y\u0002C\u0004\u00030\u0002!IA!-\u0002\u0013=\u001c7mQ8v]R\u001cX\u0003\u0002BZ\u0005{#BA!.\u0003@B9\u0011\u0011\u0003B\\\u0005wc\u0014\u0002\u0002B]\u0003'\u00111!T1q!\r\u0011\"Q\u0018\u0003\b\u0003+\u0014iK1\u0001\u0016\u0011!\u0011\tM!,A\u0002\t\r\u0017AA:r!\u0011q!Ga/\t\u000f\t\u001d\u0007\u0001\"\u0001\u00020\u0006AA-[:uS:\u001cG\u000fC\u0004\u0003L\u0002!\tA!4\u0002\u000bA\fGo\u00195\u0016\r\t='Q\u001cBk)!\u0011\tNa8\u0003b\n\u0015H\u0003\u0002Bj\u0005/\u00042A\u0005Bk\t\u001d\tyL!3C\u0002UA\u0001\"a1\u0003J\u0002\u000f!\u0011\u001c\t\n\u0003\u000f\fi-\u0007Bn\u0005'\u00042A\u0005Bo\t!\t)N!3C\u0002\t}\u0001B\u00021\u0003J\u0002\u0007A\b\u0003\u0005\u0003L\n%\u0007\u0019\u0001Br!\u0015q\u00111\u001fBn\u0011\u001d\u00119O!3A\u0002q\n\u0001B]3qY\u0006\u001cW\r\u001a\u0005\b\u0005W\u0004A\u0011\u0001Bw\u0003\u001d)\b\u000fZ1uK\u0012,bAa<\u0003~\nUHC\u0002By\u0005\u007f\u001c\u0019\u0001\u0006\u0003\u0003t\n]\bc\u0001\n\u0003v\u00129\u0011q\u0018Bu\u0005\u0004)\u0002\u0002CAb\u0005S\u0004\u001dA!?\u0011\u0013\u0005\u001d\u0017QZ\r\u0003|\nM\bc\u0001\n\u0003~\u0012A\u0011Q\u001bBu\u0005\u0004\u0011y\u0002C\u0004\u0004\u0002\t%\b\u0019\u0001\u001f\u0002\u000b%tG-\u001a=\t\u0011\t-$\u0011\u001ea\u0001\u0005wDqaa\u0002\u0001\t\u0003\u0019I!A\u0006%a2,8\u000fJ2pY>tWCBB\u0006\u00073\u0019\t\u0002\u0006\u0003\u0004\u000e\rmA\u0003BB\b\u0007'\u00012AEB\t\t\u001d\tyl!\u0002C\u0002UA\u0001\"a1\u0004\u0006\u0001\u000f1Q\u0003\t\n\u0003\u000f\fi-GB\f\u0007\u001f\u00012AEB\r\t!\t)n!\u0002C\u0002\t}\u0001\u0002\u0003B6\u0007\u000b\u0001\raa\u0006\t\u000f\r}\u0001\u0001\"\u0001\u0004\"\u0005YAeY8m_:$\u0003\u000f\\;t+\u0019\u0019\u0019c!\r\u0004*Q!1QEB\u001a)\u0011\u00199ca\u000b\u0011\u0007I\u0019I\u0003B\u0004\u0002@\u000eu!\u0019A\u000b\t\u0011\u0005\r7Q\u0004a\u0002\u0007[\u0001\u0012\"a2\u0002Nf\u0019yca\n\u0011\u0007I\u0019\t\u0004\u0002\u0005\u0002V\u000eu!\u0019\u0001B\u0010\u0011!\u0011Yg!\bA\u0002\r=\u0002bBB\u001c\u0001\u0011\u00051\u0011H\u0001\u0006a\u0006$Gk\\\u000b\u0007\u0007w\u0019Ie!\u0011\u0015\r\ru21JB')\u0011\u0019yda\u0011\u0011\u0007I\u0019\t\u0005B\u0004\u0002@\u000eU\"\u0019A\u000b\t\u0011\u0005\r7Q\u0007a\u0002\u0007\u000b\u0002\u0012\"a2\u0002Nf\u00199ea\u0010\u0011\u0007I\u0019I\u0005\u0002\u0005\u0002V\u000eU\"\u0019\u0001B\u0010\u0011\u0019q5Q\u0007a\u0001y!A!1NB\u001b\u0001\u0004\u00199\u0005C\u0004\u0004R\u0001!\taa\u0015\u0002\u0017\r|'O]3ta>tGm]\u000b\u0005\u0007+\u001a\u0019\u0007\u0006\u0003\u0004X\r\u0015Dc\u0001*\u0004Z!91la\u0014A\u0002\rm\u0003c\u0002\u0006\u0004^E\u0019\tGU\u0005\u0004\u0007?\"!!\u0003$v]\u000e$\u0018n\u001c83!\r\u001121\r\u0003\b\u0003+\u001cyE1\u0001\u0016\u0011!\tyoa\u0014A\u0002\r\u001d\u0004#\u0002\b\u0002t\u000e\u0005\u0004bBB6\u0001\u0011\u00051QN\u0001\tg>\u0014HoV5uQR\u0019\u0011da\u001c\t\u0011\rE4\u0011\u000ea\u0001\u0007g\n!\u0001\u001c;\u0011\r)\u0019i&E\tS\u0011\u001d\u00199\b\u0001C\u0001\u0007s\naa]8si\nKX\u0003BB>\u0007##Ba! \u0004\u0014R\u0019\u0011da \t\u0011\r\u00055Q\u000fa\u0002\u0007\u0007\u000b1a\u001c:e!\u0019\u0019)ia#\u0004\u00106\u00111q\u0011\u0006\u0004\u0007\u0013#\u0011\u0001B7bi\"LAa!$\u0004\b\nAqJ\u001d3fe&tw\rE\u0002\u0013\u0007##q!!6\u0004v\t\u0007Q\u0003\u0003\u0005\u0002Z\u000eU\u0004\u0019ABK!\u0015QQ,EBH\u0011\u001d\u0019I\n\u0001C\u0001\u00077\u000baa]8si\u0016$W\u0003BBO\u0007K#2!GBP\u0011!\u0019\tia&A\u0004\r\u0005\u0006CBBC\u0007\u0017\u001b\u0019\u000bE\u0002\u0013\u0007K#\u0001\"!6\u0004\u0018\n\u0007!q\u0004\u0005\u0007\u0007S\u0003A\u0011\t\u0019\u0002\u000bQ|7+Z9\t\u000f\r5\u0006\u0001\"\u0001\u00040\u00069\u0011N\u001c3jG\u0016\u001cXCABY!\u0011\u0019\u0019l!/\u000e\u0005\rU&bAB\\\u0005\u0005I\u0011.\\7vi\u0006\u0014G.Z\u0005\u0005\u0007w\u001b)LA\u0003SC:<W\rC\u0004\u0004@\u0002!\te!1\u0002\tYLWm^\u000b\u0003\u0007\u0007\u0014ba!2\u0004J\u000e=gaBBd\u0007{\u000311\u0019\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0004\u0015\r-\u0017bABg\t\t1\u0011I\\=SK\u001a\u0004RADBi#eI1aa5\u0003\u0005\u001d\u0019V-\u001d,jK^Dqaa0\u0001\t\u0003\u001a9\u000e\u0006\u0004\u0004P\u000ee71\u001c\u0005\u0007A\u000eU\u0007\u0019\u0001\u001f\t\u000f\ru7Q\u001ba\u0001y\u0005)QO\u001c;jY\"91\u0011\u001d\u0001\u0005B\r\r\u0018\u0001\u0003;p'R\u0014\u0018N\\4\u0015\u0005\r\u0015\b\u0003BBt\u0007[t1ACBu\u0013\r\u0019Y\u000fB\u0001\u0007!J,G-\u001a4\n\t\r=8\u0011\u001f\u0002\u0007'R\u0014\u0018N\\4\u000b\u0007\r-H\u0001\u0005\u0003\u000f\u0001EIraBB|\u0005!\u00051\u0011`\u0001\b'\u0016\fH*[6f!\rq11 \u0004\u0007\u0003\tA\ta!@\u0014\t\rm8\u0011\u001a\u0005\b}\u000emH\u0011\u0001C\u0001)\t\u0019I\u0010\u0003\u0005\u0005\u0006\rmH\u0011\u0002C\u0004\u0003=YW\u000e](qi&l\u0017N_3X_J$W\u0003\u0002C\u0005\t\u001f!\"\u0002b\u0003\u0005\u0012\u0011]A1\u0004C\u0010!\u0015q\u00111\u000fC\u0007!\r\u0011Bq\u0002\u0003\b\u0003+$\u0019A1\u0001\u0016\u0011!!\u0019\u0002b\u0001A\u0002\u0011U\u0011!A,\u0011\t9\u0011DQ\u0002\u0005\b\t3!\u0019\u00011\u0001=\u0003\tq\u0007\u0007C\u0004\u0005\u001e\u0011\r\u0001\u0019\u0001\u001f\u0002\u00059\f\u0004b\u0002C\u0011\t\u0007\u0001\rAU\u0001\bM>\u0014x/\u0019:e\u0011!!)ca?\u0005\n\u0011\u001d\u0012\u0001D6na*+X\u000e\u001d+bE2,W\u0003\u0002C\u0015\tg!b!a\u0007\u0005,\u0011U\u0002\u0002\u0003C\u0017\tG\u0001\r\u0001b\f\u0002\t]{\u0007\u000f\u001e\t\u0006\u001d\u0005MD\u0011\u0007\t\u0004%\u0011MBaBAk\tG\u0011\r!\u0006\u0005\b\to!\u0019\u00031\u0001=\u0003\u00119H.\u001a8\t\u0011\u0011m21 C\u0005\t{\t\u0011b[7q'\u0016\f'o\u00195\u0016\t\u0011}B\u0011\n\u000b\u0010y\u0011\u0005C1\nC(\t'\")\u0006b\u0016\u0005Z!AA1\tC\u001d\u0001\u0004!)%A\u0001T!\u0011q!\u0007b\u0012\u0011\u0007I!I\u0005B\u0004\u0002V\u0012e\"\u0019A\u000b\t\u000f\u00115C\u0011\ba\u0001y\u0005\u0011Q\u000e\r\u0005\b\t#\"I\u00041\u0001=\u0003\ti\u0017\u0007\u0003\u0005\u0005\u0014\u0011e\u0002\u0019\u0001C#\u0011\u001d!I\u0002\"\u000fA\u0002qBq\u0001\"\b\u0005:\u0001\u0007A\bC\u0004\u0005\"\u0011e\u0002\u0019\u0001*\t\u0011\u0011u31 C\u0001\t?\nq!\u001b8eKb|e-\u0006\u0003\u0005b\u0011-Dc\u0004\u001f\u0005d\u00115D\u0011\u000fC;\ts\"i\b\"!\t\u0011\u0011\u0015D1\fa\u0001\tO\naa]8ve\u000e,\u0007\u0003\u0002\b3\tS\u00022A\u0005C6\t\u001d\t)\u000eb\u0017C\u0002UAq\u0001b\u001c\u0005\\\u0001\u0007A(\u0001\u0007t_V\u00148-Z(gMN,G\u000fC\u0004\u0005t\u0011m\u0003\u0019\u0001\u001f\u0002\u0017M|WO]2f\u0007>,h\u000e\u001e\u0005\t\to\"Y\u00061\u0001\u0005h\u00051A/\u0019:hKRDq\u0001b\u001f\u0005\\\u0001\u0007A(\u0001\u0007uCJ<W\r^(gMN,G\u000fC\u0004\u0005��\u0011m\u0003\u0019\u0001\u001f\u0002\u0017Q\f'oZ3u\u0007>,h\u000e\u001e\u0005\b\t\u0007#Y\u00061\u0001=\u0003%1'o\\7J]\u0012,\u0007\u0010\u0003\u0005\u0005\b\u000emH\u0011\u0001CE\u0003-a\u0017m\u001d;J]\u0012,\u0007p\u00144\u0016\t\u0011-E1\u0013\u000b\u0010y\u00115EQ\u0013CL\t3#Y\n\"(\u0005 \"AAQ\rCC\u0001\u0004!y\t\u0005\u0003\u000fe\u0011E\u0005c\u0001\n\u0005\u0014\u00129\u0011Q\u001bCC\u0005\u0004)\u0002b\u0002C8\t\u000b\u0003\r\u0001\u0010\u0005\b\tg\")\t1\u0001=\u0011!!9\b\"\"A\u0002\u0011=\u0005b\u0002C>\t\u000b\u0003\r\u0001\u0010\u0005\b\t\u007f\")\t1\u0001=\u0011\u001d!\u0019\t\"\"A\u0002q\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike.class */
public interface SeqLike<A, Repr> extends IterableLike<A, Repr>, GenSeqLike<A, Repr> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$CombinationsItr.class */
    public class CombinationsItr extends AbstractIterator<Repr> {
        public final /* synthetic */ SeqLike $outer;
        private boolean _hasNext;

        /* renamed from: n */
        private final int f1523n;
        private final int[] scala$collection$SeqLike$CombinationsItr$$cnts;
        private final IndexedSeq<A> scala$collection$SeqLike$CombinationsItr$$elms;
        private final int[] scala$collection$SeqLike$CombinationsItr$$nums;
        private final int[] scala$collection$SeqLike$CombinationsItr$$offs;
        private final /* synthetic */ Tuple3 x$4;

        public CombinationsItr(SeqLike<A, Repr> seqLike, int i) {
            this.f1523n = i;
            Objects.requireNonNull(seqLike);
            this.$outer = seqLike;
            Tuple3<IndexedSeq<A>, int[], int[]> init = init();
            if (init != null) {
                Tuple3 tuple3 = new Tuple3(init.mo240_1(), init.mo239_2(), init.mo238_3());
                this.x$4 = tuple3;
                this.scala$collection$SeqLike$CombinationsItr$$elms = (IndexedSeq) tuple3.mo240_1();
                this.scala$collection$SeqLike$CombinationsItr$$cnts = (int[]) tuple3.mo239_2();
                this.scala$collection$SeqLike$CombinationsItr$$nums = (int[]) tuple3.mo238_3();
                this.scala$collection$SeqLike$CombinationsItr$$offs = (int[]) Predef$.MODULE$.intArrayOps(scala$collection$SeqLike$CombinationsItr$$cnts()).scanLeft(BoxesRunTime.boxToInteger(0), new SeqLike$CombinationsItr$$anonfun$1(this), Array$.MODULE$.canBuildFrom(ClassTag$.MODULE$.Int()));
                this._hasNext = true;
                return;
            }
            throw new MatchError(init);
        }

        private boolean _hasNext() {
            return this._hasNext;
        }

        private void _hasNext_$eq(boolean z) {
            this._hasNext = z;
        }

        private Tuple3<IndexedSeq<A>, int[], int[]> init() {
            HashMap$ hashMap$ = HashMap$.MODULE$;
            HashMap hashMap = (HashMap) ((GenMap) ((Builder) new HashMap().$plus$plus$eq(Nil$.MODULE$)).result());
            Tuple2 unzip = ((GenericTraversableTemplate) ((SeqLike) scala$collection$SeqLike$CombinationsItr$$$outer().thisCollection().map(new SeqLike$CombinationsItr$$anonfun$4(this, hashMap), Seq$.MODULE$.ReusableCBF())).sortBy(new SeqLike$CombinationsItr$$anonfun$5(this), Ordering$Int$.MODULE$)).unzip(Predef$.MODULE$.$conforms());
            if (unzip != null) {
                Tuple2 tuple2 = new Tuple2(unzip.mo269_1(), unzip.mo268_2());
                Seq seq = (Seq) tuple2.mo269_1();
                Seq seq2 = (Seq) tuple2.mo268_2();
                int size = hashMap.size();
                int[] iArr = new int[size];
                seq2.foreach(new SeqLike$CombinationsItr$$anonfun$init$1(this, iArr));
                int[] iArr2 = new int[size];
                IntRef create = IntRef.create(this.f1523n);
                Predef$ predef$ = Predef$.MODULE$;
                Range$ range$ = Range$.MODULE$;
                Range range = new Range(0, size, 1);
                SeqLike$CombinationsItr$$anonfun$init$2 seqLike$CombinationsItr$$anonfun$init$2 = new SeqLike$CombinationsItr$$anonfun$init$2(this, iArr, iArr2, create);
                range.scala$collection$immutable$Range$$validateMaxLength();
                boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
                int start = range.start();
                int terminalElement = range.terminalElement();
                int step = range.step();
                int i = 0;
                while (true) {
                    if (!(!z ? i < range.numRangeElements() : start != terminalElement)) {
                        return new Tuple3<>(seq.toIndexedSeq(), iArr, iArr2);
                    }
                    int[] iArr3 = seqLike$CombinationsItr$$anonfun$init$2.ns$1;
                    Predef$ predef$2 = Predef$.MODULE$;
                    int i2 = seqLike$CombinationsItr$$anonfun$init$2.r$1.elem;
                    int i3 = seqLike$CombinationsItr$$anonfun$init$2.cs$1[start];
                    package$ package_ = package$.MODULE$;
                    iArr3[start] = Math.min(i2, i3);
                    seqLike$CombinationsItr$$anonfun$init$2.r$1.elem -= seqLike$CombinationsItr$$anonfun$init$2.ns$1[start];
                    i++;
                    start += step;
                }
            } else {
                throw new MatchError(unzip);
            }
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return _hasNext();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0113, code lost:
            if (r18 != r0) goto L36;
         */
        /* JADX WARN: Removed duplicated region for block: B:40:0x012e A[LOOP:1: B:30:0x0108->B:40:0x012e, LOOP_END] */
        @Override // scala.collection.Iterator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Repr next() {
            /*
                Method dump skipped, instructions count: 723
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.SeqLike.CombinationsItr.next():java.lang.Object");
        }

        public /* synthetic */ SeqLike scala$collection$SeqLike$CombinationsItr$$$outer() {
            return this.$outer;
        }

        public int[] scala$collection$SeqLike$CombinationsItr$$cnts() {
            return this.scala$collection$SeqLike$CombinationsItr$$cnts;
        }

        public IndexedSeq<A> scala$collection$SeqLike$CombinationsItr$$elms() {
            return this.scala$collection$SeqLike$CombinationsItr$$elms;
        }

        public int[] scala$collection$SeqLike$CombinationsItr$$nums() {
            return this.scala$collection$SeqLike$CombinationsItr$$nums;
        }

        public int[] scala$collection$SeqLike$CombinationsItr$$offs() {
            return this.scala$collection$SeqLike$CombinationsItr$$offs;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$PermutationsItr.class */
    public class PermutationsItr extends AbstractIterator<Repr> {
        public final /* synthetic */ SeqLike $outer;
        private boolean _hasNext;
        private final Buffer<A> elms;
        private final int[] idxs;
        private final /* synthetic */ Tuple2 x$1;

        public PermutationsItr(SeqLike<A, Repr> seqLike) {
            Objects.requireNonNull(seqLike);
            this.$outer = seqLike;
            Tuple2<Buffer<A>, int[]> init = init();
            if (init != null) {
                Tuple2 tuple2 = new Tuple2(init.mo269_1(), init.mo268_2());
                this.x$1 = tuple2;
                this.elms = (Buffer) tuple2.mo269_1();
                this.idxs = (int[]) tuple2.mo268_2();
                this._hasNext = true;
                return;
            }
            throw new MatchError(init);
        }

        private boolean _hasNext() {
            return this._hasNext;
        }

        private void _hasNext_$eq(boolean z) {
            this._hasNext = z;
        }

        private Tuple2<Buffer<A>, int[]> init() {
            Tuple2 unzip = ((GenericTraversableTemplate) ((SeqLike) scala$collection$SeqLike$PermutationsItr$$$outer().thisCollection().map(new SeqLike$PermutationsItr$$anonfun$2(this, (HashMap) HashMap$.MODULE$.apply(Nil$.MODULE$)), Seq$.MODULE$.canBuildFrom())).sortBy(new SeqLike$PermutationsItr$$anonfun$3(this), Ordering$Int$.MODULE$)).unzip(Predef$.MODULE$.$conforms());
            if (unzip != null) {
                Tuple2 tuple2 = new Tuple2(unzip.mo269_1(), unzip.mo268_2());
                return new Tuple2<>(((Seq) tuple2.mo269_1()).toBuffer(), ((Seq) tuple2.mo268_2()).toArray(ClassTag$.MODULE$.Int()));
            }
            throw new MatchError(unzip);
        }

        private void swap(int i, int i2) {
            int[] iArr = this.idxs;
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            A apply = this.elms.apply(i);
            Buffer<A> buffer = this.elms;
            buffer.update(i, buffer.apply(i2));
            this.elms.update(i2, apply);
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return _hasNext();
        }

        @Override // scala.collection.Iterator
        public Repr next() {
            if (hasNext()) {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            } else {
                Iterator$.MODULE$.empty().next();
            }
            Repr repr = (Repr) ((Builder) scala$collection$SeqLike$PermutationsItr$$$outer().newBuilder().$plus$plus$eq(new ArrayBuffer(this.elms.size()).$plus$plus$eq((TraversableOnce) this.elms))).result();
            int length = this.idxs.length - 2;
            while (length >= 0) {
                int[] iArr = this.idxs;
                if (iArr[length] < iArr[length + 1]) {
                    break;
                }
                length--;
            }
            if (length < 0) {
                _hasNext_$eq(false);
            } else {
                int length2 = this.idxs.length;
                while (true) {
                    length2--;
                    int[] iArr2 = this.idxs;
                    if (iArr2[length2] > iArr2[length]) {
                        break;
                    }
                }
                swap(length, length2);
                int length3 = (this.idxs.length - length) / 2;
                for (int i = 1; i <= length3; i++) {
                    swap(length + i, this.idxs.length - i);
                }
            }
            return repr;
        }

        public /* synthetic */ SeqLike scala$collection$SeqLike$PermutationsItr$$$outer() {
            return this.$outer;
        }
    }

    /* renamed from: scala.collection.SeqLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$class.class */
    public abstract class Cclass {
        public static Object $colon$plus(SeqLike seqLike, Object obj, CanBuildFrom canBuildFrom) {
            Builder apply = canBuildFrom.apply(seqLike.repr());
            apply.$plus$plus$eq(seqLike.thisCollection());
            apply.$plus$eq((Builder) obj);
            return apply.result();
        }

        public static void $init$(SeqLike seqLike) {
        }

        public static Object $plus$colon(SeqLike seqLike, Object obj, CanBuildFrom canBuildFrom) {
            Builder apply = canBuildFrom.apply(seqLike.repr());
            apply.$plus$eq((Builder) obj);
            apply.$plus$plus$eq(seqLike.thisCollection());
            return apply.result();
        }

        public static Iterator combinations(SeqLike seqLike, int i) {
            return (i < 0 || i > seqLike.size()) ? Iterator$.MODULE$.empty() : new CombinationsItr(seqLike, i);
        }

        public static boolean contains(SeqLike seqLike, Object obj) {
            return seqLike.exists(new SeqLike$$anonfun$contains$1(seqLike, obj));
        }

        public static boolean containsSlice(SeqLike seqLike, GenSeq genSeq) {
            return seqLike.indexOfSlice(genSeq) != -1;
        }

        public static boolean corresponds(SeqLike seqLike, GenSeq genSeq, Function2 function2) {
            Iterator<A> it = seqLike.iterator();
            Iterator<A> it2 = genSeq.iterator();
            while (it.hasNext() && it2.hasNext()) {
                if (!BoxesRunTime.unboxToBoolean(function2.apply(it.next(), it2.next()))) {
                    return false;
                }
            }
            boolean z = false;
            if (!it.hasNext()) {
                z = !it2.hasNext();
            }
            return z;
        }

        public static Object diff(SeqLike seqLike, GenSeq genSeq) {
            Map occCounts = occCounts(seqLike, genSeq.seq());
            Builder<A, Repr> newBuilder = seqLike.newBuilder();
            seqLike.foreach(new SeqLike$$anonfun$diff$1(seqLike, occCounts, newBuilder));
            return newBuilder.result();
        }

        public static Object distinct(SeqLike seqLike) {
            Builder<A, Repr> newBuilder = seqLike.newBuilder();
            seqLike.foreach(new SeqLike$$anonfun$distinct$1(seqLike, newBuilder, (HashSet) HashSet$.MODULE$.apply(Nil$.MODULE$)));
            return newBuilder.result();
        }

        public static boolean endsWith(SeqLike seqLike, GenSeq genSeq) {
            boolean z;
            Iterator<A> drop = seqLike.iterator().drop(seqLike.length() - genSeq.length());
            Iterator<A> it = genSeq.iterator();
            do {
                z = true;
                if (!drop.hasNext() || !it.hasNext()) {
                    return !it.hasNext();
                }
                A next = drop.next();
                A next2 = it.next();
                if (next != next2) {
                    z = next == null ? false : next instanceof Number ? BoxesRunTime.equalsNumObject((Number) next, next2) : next instanceof Character ? BoxesRunTime.equalsCharObject((Character) next, next2) : next.equals(next2);
                }
            } while (z);
            return false;
        }

        public static int indexOfSlice(SeqLike seqLike, GenSeq genSeq) {
            return seqLike.indexOfSlice(genSeq, 0);
        }

        public static int indexOfSlice(SeqLike seqLike, GenSeq genSeq, int i) {
            int i2;
            if (!seqLike.hasDefiniteSize() || !genSeq.hasDefiniteSize()) {
                Seq<A> drop = seqLike.thisCollection().drop(i);
                while (true) {
                    Seq<A> seq = drop;
                    if (seq.isEmpty()) {
                        i2 = -1;
                        break;
                    } else if (seq.startsWith(genSeq)) {
                        return i;
                    } else {
                        i++;
                        drop = seq.tail();
                    }
                }
            } else {
                int length = seqLike.length();
                int length2 = genSeq.length();
                int max = package$.MODULE$.max(0, i);
                i2 = i > length ? -1 : length2 < 1 ? max : length < length2 ? -1 : SeqLike$.MODULE$.scala$collection$SeqLike$$kmpSearch(seqLike.thisCollection(), max, length, genSeq.seq(), 0, length2, true);
            }
            return i2;
        }

        public static int indexWhere(SeqLike seqLike, Function1 function1, int i) {
            Iterator<A> drop = seqLike.iterator().drop(i);
            while (drop.hasNext()) {
                if (BoxesRunTime.unboxToBoolean(function1.apply(drop.next()))) {
                    return i;
                }
                i++;
            }
            return -1;
        }

        public static Range indices(SeqLike seqLike) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            return richInt$.until$extension0(0, seqLike.length());
        }

        public static Object intersect(SeqLike seqLike, GenSeq genSeq) {
            Map occCounts = occCounts(seqLike, genSeq.seq());
            Builder<A, Repr> newBuilder = seqLike.newBuilder();
            seqLike.foreach(new SeqLike$$anonfun$intersect$1(seqLike, occCounts, newBuilder));
            return newBuilder.result();
        }

        public static boolean isEmpty(SeqLike seqLike) {
            boolean z = false;
            if (seqLike.lengthCompare(0) == 0) {
                z = true;
            }
            return z;
        }

        public static int lastIndexOfSlice(SeqLike seqLike, GenSeq genSeq) {
            return seqLike.lastIndexOfSlice(genSeq, seqLike.length());
        }

        public static int lastIndexOfSlice(SeqLike seqLike, GenSeq genSeq, int i) {
            int i2;
            int length = seqLike.length();
            int length2 = genSeq.length();
            int min = package$.MODULE$.min(length - length2, i);
            if (i >= 0) {
                if (length2 < 1) {
                    i2 = min;
                } else if (length >= length2) {
                    i2 = SeqLike$.MODULE$.scala$collection$SeqLike$$kmpSearch(seqLike.thisCollection(), 0, min + length2, genSeq.seq(), 0, length2, false);
                }
                return i2;
            }
            i2 = -1;
            return i2;
        }

        public static int lastIndexWhere(SeqLike seqLike, Function1 function1, int i) {
            int length = seqLike.length() - 1;
            Iterator<A> reverseIterator = seqLike.reverseIterator();
            while (reverseIterator.hasNext()) {
                if (!(length > i || !BoxesRunTime.unboxToBoolean(function1.apply(reverseIterator.next())))) {
                    break;
                }
                length--;
            }
            return length;
        }

        public static int lengthCompare(SeqLike seqLike, int i) {
            int i2;
            if (i < 0) {
                i2 = 1;
            } else {
                int i3 = 0;
                Iterator<A> it = seqLike.iterator();
                while (it.hasNext()) {
                    if (i3 == i) {
                        return it.hasNext() ? 1 : 0;
                    }
                    it.next();
                    i3++;
                }
                i2 = i3 - i;
            }
            return i2;
        }

        private static Map occCounts(SeqLike seqLike, Seq seq) {
            HashMap<Object, Object> hashMap = new HashMap<Object, Object>(seqLike) { // from class: scala.collection.SeqLike$$anon$1
                @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
                /* renamed from: default */
                public int mo6041default(Object obj) {
                    return 0;
                }
            };
            seq.foreach(new SeqLike$$anonfun$occCounts$1(seqLike, hashMap));
            return hashMap;
        }

        public static Object padTo(SeqLike seqLike, int i, Object obj, CanBuildFrom canBuildFrom) {
            Builder apply = canBuildFrom.apply(seqLike.repr());
            int length = seqLike.length();
            apply.sizeHint(package$.MODULE$.max(length, i));
            apply.$plus$plus$eq(seqLike.thisCollection());
            for (int i2 = i - length; i2 > 0; i2--) {
                apply.$plus$eq((Builder) obj);
            }
            return apply.result();
        }

        public static Combiner parCombiner(SeqLike seqLike) {
            return ParSeq$.MODULE$.newCombiner();
        }

        public static Object patch(SeqLike seqLike, int i, GenSeq genSeq, int i2, CanBuildFrom canBuildFrom) {
            Builder apply = canBuildFrom.apply(seqLike.repr());
            Iterator<A> it = seqLike.iterator();
            for (int i3 = 0; i3 < i && it.hasNext(); i3++) {
                apply.$plus$eq((Builder) it.next());
            }
            apply.$plus$plus$eq(genSeq.seq());
            while (i2 > 0 && it.hasNext()) {
                it.next();
                i2--;
            }
            while (it.hasNext()) {
                apply.$plus$eq((Builder) it.next());
            }
            return apply.result();
        }

        public static Iterator permutations(SeqLike seqLike) {
            return seqLike.isEmpty() ? Iterator$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{seqLike.repr()})) : new PermutationsItr(seqLike);
        }

        public static Object reverse(SeqLike seqLike) {
            ObjectRef create = ObjectRef.create(Nil$.MODULE$);
            seqLike.foreach(new SeqLike$$anonfun$reverse$1(seqLike, create));
            Builder<A, Repr> newBuilder = seqLike.newBuilder();
            newBuilder.sizeHint(seqLike);
            List list = (List) create.elem;
            SeqLike$$anonfun$reverse$2 seqLike$$anonfun$reverse$2 = new SeqLike$$anonfun$reverse$2(seqLike, newBuilder);
            List list2 = list;
            while (true) {
                List list3 = list2;
                if (list3.isEmpty()) {
                    return newBuilder.result();
                }
                seqLike$$anonfun$reverse$2.b$1.$plus$eq((Builder) list3.head());
                list2 = (List) list3.tail();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Iterator reverseIterator(SeqLike seqLike) {
            return seqLike.toCollection((SeqLike) seqLike.reverse()).iterator();
        }

        public static Object reverseMap(SeqLike seqLike, Function1 function1, CanBuildFrom canBuildFrom) {
            ObjectRef create = ObjectRef.create(Nil$.MODULE$);
            seqLike.foreach(new SeqLike$$anonfun$reverseMap$1(seqLike, create));
            Builder apply = canBuildFrom.apply(seqLike.repr());
            List list = (List) create.elem;
            SeqLike$$anonfun$reverseMap$2 seqLike$$anonfun$reverseMap$2 = new SeqLike$$anonfun$reverseMap$2(seqLike, apply, function1);
            List list2 = list;
            while (true) {
                List list3 = list2;
                if (list3.isEmpty()) {
                    return apply.result();
                }
                seqLike$$anonfun$reverseMap$2.b$2.$plus$eq((Builder) seqLike$$anonfun$reverseMap$2.f$1.apply(list3.head()));
                list2 = (List) list3.tail();
            }
        }

        public static int segmentLength(SeqLike seqLike, Function1 function1, int i) {
            Iterator<A> drop = seqLike.iterator().drop(i);
            int i2 = 0;
            while (drop.hasNext() && BoxesRunTime.unboxToBoolean(function1.apply(drop.next()))) {
                i2++;
            }
            return i2;
        }

        public static int size(SeqLike seqLike) {
            return seqLike.length();
        }

        public static Object sortBy(SeqLike seqLike, Function1 function1, Ordering ordering) {
            return seqLike.sorted(ordering.mo49on(function1));
        }

        public static Object sortWith(SeqLike seqLike, Function2 function2) {
            Ordering$ ordering$ = Ordering$.MODULE$;
            return seqLike.sorted(new Ordering$$anon$9(function2));
        }

        public static Object sorted(SeqLike seqLike, Ordering ordering) {
            int length = seqLike.length();
            Builder<A, Repr> newBuilder = seqLike.newBuilder();
            if (length == 1) {
                newBuilder.$plus$plus$eq(seqLike);
            } else {
                if (length > 1) {
                    newBuilder.sizeHint(length);
                    Object[] objArr = new Object[length];
                    IntRef create = IntRef.create(0);
                    seqLike.foreach(new SeqLike$$anonfun$sorted$1(seqLike, objArr, create));
                    Arrays.sort(objArr, ordering);
                    create.elem = 0;
                    while (create.elem < length) {
                        newBuilder.$plus$eq((Builder<A, Repr>) ((A) objArr[create.elem]));
                        create.elem++;
                    }
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return newBuilder.result();
        }

        public static boolean startsWith(SeqLike seqLike, GenSeq genSeq, int i) {
            boolean z;
            Iterator<A> drop = seqLike.iterator().drop(i);
            Iterator<A> it = genSeq.iterator();
            do {
                z = true;
                if (!it.hasNext() || !drop.hasNext()) {
                    return !it.hasNext();
                }
                A next = drop.next();
                A next2 = it.next();
                if (next != next2) {
                    z = next == null ? false : next instanceof Number ? BoxesRunTime.equalsNumObject((Number) next, next2) : next instanceof Character ? BoxesRunTime.equalsCharObject((Character) next, next2) : next.equals(next2);
                }
            } while (z);
            return false;
        }

        public static Seq thisCollection(SeqLike seqLike) {
            return (Seq) seqLike;
        }

        public static Seq toCollection(SeqLike seqLike, Object obj) {
            return (Seq) obj;
        }

        public static Seq toSeq(SeqLike seqLike) {
            return seqLike.thisCollection();
        }

        public static String toString(SeqLike seqLike) {
            return TraversableLike.Cclass.toString(seqLike);
        }

        public static Object union(SeqLike seqLike, GenSeq genSeq, CanBuildFrom canBuildFrom) {
            return seqLike.$plus$plus(genSeq, canBuildFrom);
        }

        public static Object updated(SeqLike seqLike, int i, Object obj, CanBuildFrom canBuildFrom) {
            if (i >= 0) {
                Builder apply = canBuildFrom.apply(seqLike.repr());
                Iterator<A> it = seqLike.iterator();
                for (int i2 = 0; i2 < i && it.hasNext(); i2++) {
                    apply.$plus$eq((Builder) it.next());
                }
                if (!it.hasNext()) {
                    throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
                }
                apply.$plus$eq((Builder) obj);
                it.next();
                while (it.hasNext()) {
                    apply.$plus$eq((Builder) it.next());
                }
                return apply.result();
            }
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }

        public static SeqView view(SeqLike seqLike) {
            return new SeqView<A, Repr>(seqLike) { // from class: scala.collection.SeqLike$$anon$2
                private final /* synthetic */ SeqLike $outer;
                private volatile boolean bitmap$0;
                private Repr underlying;

                {
                    Objects.requireNonNull(seqLike);
                    this.$outer = seqLike;
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
                }

                private Object underlying$lzycompute() {
                    synchronized (this) {
                        if (!this.bitmap$0) {
                            this.underlying = this.$outer.repr();
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
                public <B, That> That $colon$plus(B b, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.$colon$plus(this, b, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B $div$colon(B b, Function2<B, A, B> function2) {
                    Object foldLeft;
                    foldLeft = foldLeft(b, function2);
                    return (B) foldLeft;
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That $plus$colon(B b, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) newPrepended(b);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(Traversable<B> traversable, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (Traversable) traversable, (CanBuildFrom) canBuildFrom);
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
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
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((SeqLike$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDF$sp(float f) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((SeqLike$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDI$sp(int i) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((SeqLike$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDJ$sp(long j) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((SeqLike$$anon$2) BoxesRunTime.boxToLong(j)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public float apply$mcFD$sp(double d) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((SeqLike$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFF$sp(float f) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((SeqLike$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFI$sp(int i) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((SeqLike$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFJ$sp(long j) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((SeqLike$$anon$2) BoxesRunTime.boxToLong(j)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public int apply$mcID$sp(double d) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((SeqLike$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcIF$sp(float f) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((SeqLike$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcII$sp(int i) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((SeqLike$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcIJ$sp(long j) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((SeqLike$$anon$2) BoxesRunTime.boxToLong(j)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public long apply$mcJD$sp(double d) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((SeqLike$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJF$sp(float f) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((SeqLike$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJI$sp(int i) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((SeqLike$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJJ$sp(long j) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((SeqLike$$anon$2) BoxesRunTime.boxToLong(j)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public void apply$mcVD$sp(double d) {
                    apply((SeqLike$$anon$2) BoxesRunTime.boxToDouble(d));
                }

                @Override // scala.Function1
                public void apply$mcVF$sp(float f) {
                    apply((SeqLike$$anon$2) BoxesRunTime.boxToFloat(f));
                }

                @Override // scala.Function1
                public void apply$mcVI$sp(int i) {
                    apply((SeqLike$$anon$2) BoxesRunTime.boxToInteger(i));
                }

                @Override // scala.Function1
                public void apply$mcVJ$sp(long j) {
                    apply((SeqLike$$anon$2) BoxesRunTime.boxToLong(j));
                }

                @Override // scala.Function1
                public boolean apply$mcZD$sp(double d) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((SeqLike$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZF$sp(float f) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((SeqLike$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZI$sp(int i) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((SeqLike$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZJ$sp(long j) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((SeqLike$$anon$2) BoxesRunTime.boxToLong(j)));
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
                public <B, That> That collect(PartialFunction<A, B> partialFunction, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.collect(this, partialFunction, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce
                public <B> Option<B> collectFirst(PartialFunction<A, B> partialFunction) {
                    return TraversableOnce.Cclass.collectFirst(this, partialFunction);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
                public Iterator<SeqView<A, Repr>> combinations(int i) {
                    return SeqViewLike.Cclass.combinations(this, i);
                }

                @Override // scala.collection.Seq, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public GenericCompanion<Seq> companion() {
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
                public <B> SeqView<A, Repr> diff(GenSeq<B> genSeq) {
                    return SeqViewLike.Cclass.diff(this, genSeq);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public SeqView<A, Repr> distinct() {
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
                public <B, That> That flatMap(Function1<A, GenTraversableOnce<B>> function1, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
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

                @Override // scala.collection.TraversableViewLike
                public <B, That> That force(CanBuildFrom<Repr, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.force(this, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public <U> void foreach(Function1<A, U> function1) {
                    IterableLike.Cclass.foreach(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <B> Builder<B, Seq<B>> genericBuilder() {
                    return GenericTraversableTemplate.Cclass.genericBuilder(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <K> scala.collection.immutable.Map<K, SeqView<A, Repr>> groupBy(Function1<A, K> function1) {
                    return TraversableViewLike.Cclass.groupBy(this, function1);
                }

                @Override // scala.collection.IterableLike
                public Iterator<SeqView<A, Repr>> grouped(int i) {
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
                public Iterator<SeqView<A, Repr>> inits() {
                    return TraversableViewLike.Cclass.inits(this);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B> SeqView<A, Repr> intersect(GenSeq<B> genSeq) {
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
                public <B, That> That map(Function1<A, B> function1, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
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

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<B> newAppended(GenTraversable<B> genTraversable) {
                    return SeqViewLike.Cclass.newAppended(this, genTraversable);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
                public Builder<A, SeqView<A, Repr>> newBuilder() {
                    return TraversableViewLike.Cclass.newBuilder(this);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<A> newDropped(int i) {
                    return SeqViewLike.Cclass.newDropped(this, i);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<A> newDroppedWhile(Function1<A, Object> function1) {
                    return SeqViewLike.Cclass.newDroppedWhile(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<A> newFiltered(Function1<A, Object> function1) {
                    return SeqViewLike.Cclass.newFiltered(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<B> newFlatMapped(Function1<A, GenTraversableOnce<B>> function1) {
                    return SeqViewLike.Cclass.newFlatMapped(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<B> newForced(Function0<GenSeq<B>> function0) {
                    return SeqViewLike.Cclass.newForced(this, function0);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<B> newMapped(Function1<A, B> function1) {
                    return SeqViewLike.Cclass.newMapped(this, function1);
                }

                @Override // scala.collection.SeqViewLike
                public <B> SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<B> newPatched(int i, GenSeq<B> genSeq, int i2) {
                    return SeqViewLike.Cclass.newPatched(this, i, genSeq, i2);
                }

                @Override // scala.collection.SeqViewLike
                public <B> SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<B> newPrepended(B b) {
                    return SeqViewLike.Cclass.newPrepended(this, b);
                }

                @Override // scala.collection.SeqViewLike
                public SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<A> newReversed() {
                    return SeqViewLike.Cclass.newReversed(this);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<A> newSliced(SliceInterval sliceInterval) {
                    return SeqViewLike.Cclass.newSliced(this, sliceInterval);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<A> newTaken(int i) {
                    return SeqViewLike.Cclass.newTaken(this, i);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<A> newTakenWhile(Function1<A, Object> function1) {
                    return SeqViewLike.Cclass.newTakenWhile(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike
                public <B> SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<Tuple2<A, B>> newZipped(GenIterable<B> genIterable) {
                    return SeqViewLike.Cclass.newZipped(this, genIterable);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike
                public <A1, B> SeqViewLike<A, Repr, SeqView<A, Repr>>.Transformed<Tuple2<A1, B>> newZippedAll(GenIterable<B> genIterable, A1 a1, B b) {
                    return SeqViewLike.Cclass.newZippedAll(this, genIterable, a1, b);
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
                public <B, That> That padTo(int i, B b, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.padTo(this, i, b, canBuildFrom);
                }

                @Override // scala.collection.Parallelizable
                public Parallel par() {
                    return Parallelizable.Cclass.par(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
                public Combiner<A, ParSeq<A>> parCombiner() {
                    return SeqLike.Cclass.parCombiner(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<SeqView<A, Repr>, SeqView<A, Repr>> partition(Function1<A, Object> function1) {
                    return TraversableViewLike.Cclass.partition(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That patch(int i, GenSeq<B> genSeq, int i2, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.patch(this, i, genSeq, i2, canBuildFrom);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
                public Iterator<SeqView<A, Repr>> permutations() {
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
                public SeqView<A, Repr> reverse() {
                    return SeqViewLike.Cclass.reverse(this);
                }

                @Override // scala.collection.SeqLike
                public Iterator<A> reverseIterator() {
                    return SeqLike.Cclass.reverseIterator(this);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That reverseMap(Function1<A, B> function1, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
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
                public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanLeft(B b, Function2<B, A, B> function2, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanRight(B b, Function2<A, B, B> function2, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.scanRight(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public int segmentLength(Function1<A, Object> function1, int i) {
                    return SeqLike.Cclass.segmentLength(this, function1, i);
                }

                @Override // scala.collection.Seq, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public Seq<A> seq() {
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
                public Iterator<SeqView<A, Repr>> sliding(int i) {
                    return IterableViewLike.Cclass.sliding(this, i);
                }

                @Override // scala.collection.IterableLike
                public Iterator<SeqView<A, Repr>> sliding(int i, int i2) {
                    return IterableViewLike.Cclass.sliding(this, i, i2);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
                public <B> SeqView<A, Repr> sortBy(Function1<A, B> function1, Ordering<B> ordering) {
                    return SeqViewLike.Cclass.sortBy(this, function1, ordering);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
                public SeqView<A, Repr> sortWith(Function2<A, A, Object> function2) {
                    return SeqViewLike.Cclass.sortWith(this, function2);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
                public <B> SeqView<A, Repr> sorted(Ordering<B> ordering) {
                    return SeqViewLike.Cclass.sorted(this, ordering);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<SeqView<A, Repr>, SeqView<A, Repr>> span(Function1<A, Object> function1) {
                    return TraversableViewLike.Cclass.span(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<SeqView<A, Repr>, SeqView<A, Repr>> splitAt(int i) {
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
                    return SeqViewLike.Cclass.stringPrefix(this);
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
                public Iterator<SeqView<A, Repr>> tails() {
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
                public Seq<A> thisCollection() {
                    return SeqLike.Cclass.thisCollection(this);
                }

                @Override // scala.collection.ViewMkString
                public Seq<A> thisSeq() {
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
                public Seq toCollection(Object obj) {
                    return SeqLike.Cclass.toCollection(this, obj);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public IndexedSeq<A> toIndexedSeq() {
                    return TraversableOnce.Cclass.toIndexedSeq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Iterable<A> toIterable() {
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
                public <T, U> scala.collection.immutable.Map<T, U> toMap(Predef$$less$colon$less<A, Tuple2<T, U>> predef$$less$colon$less) {
                    return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
                public Seq<A> toSeq() {
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
                public Traversable<A> toTraversable() {
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

                /* JADX WARN: Multi-variable type inference failed */
                @Override // scala.collection.TraversableViewLike
                public Repr underlying() {
                    return this.bitmap$0 ? this.underlying : underlying$lzycompute();
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
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
                public <B, That> That updated(int i, B b, CanBuildFrom<SeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.updated(this, i, b, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public Object view() {
                    return SeqLike.Cclass.view(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public SeqView<A, SeqView<A, Repr>> view(int i, int i2) {
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
                public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<SeqView<A, Repr>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableViewLike.Cclass.zip(this, genIterable, canBuildFrom);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<SeqView<A, Repr>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableViewLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, That> That zipWithIndex(CanBuildFrom<SeqView<A, Repr>, Tuple2<A1, Object>, That> canBuildFrom) {
                    return (That) IterableViewLike.Cclass.zipWithIndex(this, canBuildFrom);
                }
            };
        }

        public static SeqView view(SeqLike seqLike, int i, int i2) {
            return (SeqView) seqLike.view().slice(i, i2);
        }
    }

    <B, That> That $colon$plus(B b, CanBuildFrom<Repr, B, That> canBuildFrom);

    <B, That> That $plus$colon(B b, CanBuildFrom<Repr, B, That> canBuildFrom);

    A apply(int i);

    Iterator<Repr> combinations(int i);

    <A1> boolean contains(A1 a1);

    <B> boolean containsSlice(GenSeq<B> genSeq);

    <B> boolean corresponds(GenSeq<B> genSeq, Function2<A, B, Object> function2);

    <B> Repr diff(GenSeq<B> genSeq);

    Repr distinct();

    <B> boolean endsWith(GenSeq<B> genSeq);

    <B> int indexOfSlice(GenSeq<B> genSeq);

    <B> int indexOfSlice(GenSeq<B> genSeq, int i);

    int indexWhere(Function1<A, Object> function1, int i);

    Range indices();

    <B> Repr intersect(GenSeq<B> genSeq);

    @Override // scala.collection.IterableLike
    boolean isEmpty();

    <B> int lastIndexOfSlice(GenSeq<B> genSeq);

    <B> int lastIndexOfSlice(GenSeq<B> genSeq, int i);

    int lastIndexWhere(Function1<A, Object> function1, int i);

    int length();

    int lengthCompare(int i);

    <B, That> That padTo(int i, B b, CanBuildFrom<Repr, B, That> canBuildFrom);

    @Override // scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    Combiner<A, ParSeq<A>> parCombiner();

    <B, That> That patch(int i, GenSeq<B> genSeq, int i2, CanBuildFrom<Repr, B, That> canBuildFrom);

    Iterator<Repr> permutations();

    Repr reverse();

    Iterator<A> reverseIterator();

    <B, That> That reverseMap(Function1<A, B> function1, CanBuildFrom<Repr, B, That> canBuildFrom);

    int segmentLength(Function1<A, Object> function1, int i);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    int size();

    <B> Repr sortBy(Function1<A, B> function1, Ordering<B> ordering);

    Repr sortWith(Function2<A, A, Object> function2);

    <B> Repr sorted(Ordering<B> ordering);

    <B> boolean startsWith(GenSeq<B> genSeq, int i);

    @Override // scala.collection.IterableLike
    Seq<A> thisCollection();

    @Override // scala.collection.IterableLike
    Seq<A> toCollection(Repr repr);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    Seq<A> toSeq();

    @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    String toString();

    <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<Repr, B, That> canBuildFrom);

    <B, That> That updated(int i, B b, CanBuildFrom<Repr, B, That> canBuildFrom);

    @Override // scala.collection.IterableLike
    Object view();

    @Override // scala.collection.IterableLike
    SeqView<A, Repr> view(int i, int i2);
}
