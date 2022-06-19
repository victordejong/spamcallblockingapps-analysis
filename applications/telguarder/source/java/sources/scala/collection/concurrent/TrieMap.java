package scala.collection.concurrent;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Option$;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.CustomParallelizable;
import scala.collection.GenIterable;
import scala.collection.GenMapLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.IterableView;
import scala.collection.Iterator;
import scala.collection.Map;
import scala.collection.MapLike;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.Set;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.FilterMonadic;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.Growable;
import scala.collection.generic.Shrinkable;
import scala.collection.generic.Shrinkable$$anonfun$$minus$minus$eq$1;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.Cloneable;
import scala.collection.mutable.Iterable;
import scala.collection.mutable.Map;
import scala.collection.mutable.MapLike;
import scala.collection.mutable.StringBuilder;
import scala.collection.mutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParTrieMap;
import scala.math.Equiv;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.ScalaRunTime$;
import scala.util.hashing.Hashing;
import scala.util.hashing.Hashing$;
import scala.util.hashing.package$;
@ScalaSignature(bytes = "\u0006\u0001\r\rg\u0001B\u0001\u0003\u0005%\u0011q\u0001\u0016:jK6\u000b\u0007O\u0003\u0002\u0004\t\u0005Q1m\u001c8dkJ\u0014XM\u001c;\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007))rd\u0005\u0004\u0001\u0017=\t\u0003F\u000e\t\u0003\u00195i\u0011AB\u0005\u0003\u001d\u0019\u0011a!\u00118z%\u00164\u0007\u0003\u0002\t\u0012'yi\u0011AA\u0005\u0003%\t\u00111!T1q!\t!R\u0003\u0004\u0001\u0005\u000bY\u0001!\u0019A\f\u0003\u0003-\u000b\"\u0001G\u000e\u0011\u00051I\u0012B\u0001\u000e\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u000f\n\u0005u1!aA!osB\u0011Ac\b\u0003\u0006A\u0001\u0011\ra\u0006\u0002\u0002-B)!%J\n\u001fO5\t1E\u0003\u0002%\t\u00059Q.\u001e;bE2,\u0017B\u0001\u0014$\u0005\u001di\u0015\r\u001d'jW\u0016\u0004B\u0001\u0005\u0001\u0014=A!\u0011F\u000b\u00170\u001b\u0005!\u0011BA\u0016\u0005\u0005Q\u0019Uo\u001d;p[B\u000b'/\u00197mK2L'0\u00192mKB!A\"L\n\u001f\u0013\tqcA\u0001\u0004UkBdWM\r\t\u0005aQ\u001ab$D\u00012\u0015\t!#G\u0003\u00024\t\u0005A\u0001/\u0019:bY2,G.\u0003\u00026c\tQ\u0001+\u0019:Ue&,W*\u00199\u0011\u000519\u0014B\u0001\u001d\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!Q\u0004A!A!\u0002\u0013Y\u0011!\u0001:\t\u0011q\u0002!\u0011!Q\u0001\nu\nQA\u001d;va\u0012\u0004BA\u0010$(\u00175\tqH\u0003\u0002A\u0003\u00061\u0011\r^8nS\u000eT!a\u0001\"\u000b\u0005\r#\u0015\u0001B;uS2T\u0011!R\u0001\u0005U\u00064\u0018-\u0003\u0002H\u007f\tY\u0012\t^8nS\u000e\u0014VMZ3sK:\u001cWMR5fY\u0012,\u0006\u000fZ1uKJD\u0001\"\u0013\u0001\u0003\u0002\u0003\u0006IAS\u0001\u0006Q\u0006\u001c\bN\u001a\t\u0004\u0017>\u001bR\"\u0001'\u000b\u00055s\u0015a\u00025bg\"Lgn\u001a\u0006\u0003\u0007\u001aI!\u0001\u0015'\u0003\u000f!\u000b7\u000f[5oO\"A!\u000b\u0001B\u0001B\u0003%1+\u0001\u0002fMB\u0019AkV\n\u000f\u00051)\u0016B\u0001,\u0007\u0003\u001d\u0001\u0018mY6bO\u0016L!\u0001W-\u0003\u000b\u0015\u000bX/\u001b<\u000b\u0005Y3\u0001\"B.\u0001\t\u0013a\u0016A\u0002\u001fj]&$h\bF\u0003(;z{\u0006\rC\u0003;5\u0002\u00071\u0002C\u0003=5\u0002\u0007Q\bC\u0003J5\u0002\u0007!\nC\u0003S5\u0002\u00071\u000bC\u0004c\u0001\u0001\u0007I\u0011B2\u0002\u0015!\f7\u000f[5oO>\u0014'.F\u0001K\u0011\u001d)\u0007\u00011A\u0005\n\u0019\fa\u0002[1tQ&twm\u001c2k?\u0012*\u0017\u000f\u0006\u0002hUB\u0011A\u0002[\u0005\u0003S\u001a\u0011A!\u00168ji\"91\u000eZA\u0001\u0002\u0004Q\u0015a\u0001=%c!1Q\u000e\u0001Q!\n)\u000b1\u0002[1tQ&twm\u001c2kA!9q\u000e\u0001a\u0001\n\u0013\u0001\u0018aC3rk\u0006d\u0017\u000e^=pE*,\u0012a\u0015\u0005\be\u0002\u0001\r\u0011\"\u0003t\u0003=)\u0017/^1mSRLxN\u00196`I\u0015\fHCA4u\u0011\u001dY\u0017/!AA\u0002MCaA\u001e\u0001!B\u0013\u0019\u0016\u0001D3rk\u0006d\u0017\u000e^=pE*\u0004\u0003b\u0002=\u0001\u0001\u0004%I!_\u0001\fe>|G/\u001e9eCR,'/F\u0001>\u0011\u001dY\b\u00011A\u0005\nq\fqB]8piV\u0004H-\u0019;fe~#S-\u001d\u000b\u0003OvDqa\u001b>\u0002\u0002\u0003\u0007Q\b\u0003\u0004��\u0001\u0001\u0006K!P\u0001\re>|G/\u001e9eCR,'\u000f\t\u0005\u0006\u001b\u0002!\ta\u0019\u0005\u0007\u0003\u000b\u0001A\u0011\u00019\u0002\u0011\u0015\fX/\u00197jifD\u0011\"!\u0003\u0001\u0001\u0004%\t!a\u0003\u0002\tI|w\u000e^\u000b\u0002\u0017!I\u0011q\u0002\u0001A\u0002\u0013\u0005\u0011\u0011C\u0001\te>|Go\u0018\u0013fcR\u0019q-a\u0005\t\u0011-\fi!!AA\u0002-Aq!a\u0006\u0001A\u0003&1\"A\u0003s_>$\b\u0005\u000b\u0003\u0002\u0016\u0005m\u0001c\u0001\u0007\u0002\u001e%\u0019\u0011q\u0004\u0004\u0003\u0011Y|G.\u0019;jY\u0016Daa\u0017\u0001\u0005\u0002\u0005\rB#B\u0014\u0002&\u0005\u001d\u0002BB%\u0002\"\u0001\u0007!\n\u0003\u0004S\u0003C\u0001\ra\u0015\u0005\u00077\u0002!\t!a\u000b\u0015\u0003\u001dBq!a\f\u0001\t\u0013\t\t$A\u0006xe&$Xm\u00142kK\u000e$HcA4\u00024!A\u0011QGA\u0017\u0001\u0004\t9$A\u0002pkR\u0004B!!\u000f\u0002@5\u0011\u00111\b\u0006\u0004\u0003{!\u0015AA5p\u0013\u0011\t\t%a\u000f\u0003%=\u0013'.Z2u\u001fV$\b/\u001e;TiJ,\u0017-\u001c\u0005\b\u0003\u000b\u0002A\u0011BA$\u0003)\u0011X-\u00193PE*,7\r\u001e\u000b\u0004O\u0006%\u0003\u0002CA&\u0003\u0007\u0002\r!!\u0014\u0002\u0005%t\u0007\u0003BA\u001d\u0003\u001fJA!!\u0015\u0002<\t\trJ\u00196fGRLe\u000e];u'R\u0014X-Y7\t\u000f\u0005U\u0003\u0001\"\u0001\u0002X\u0005A1)Q*`%>{E\u000b\u0006\u0004\u0002Z\u0005}\u00131\r\t\u0004\u0019\u0005m\u0013bAA/\r\t9!i\\8mK\u0006t\u0007bBA1\u0003'\u0002\raC\u0001\u0003_ZDq!!\u001a\u0002T\u0001\u00071\"\u0001\u0002om\"9\u0011\u0011\u000e\u0001\u0005\u0002\u0005-\u0014\u0001\u0003:fC\u0012\u0014vn\u001c;\u0015\t\u00055\u00141\u000f\t\u0006!\u0005=4CH\u0005\u0004\u0003c\u0012!!B%O_\u0012,\u0007BCA;\u0003O\u0002\n\u00111\u0001\u0002Z\u0005)\u0011MY8si\"9\u0011\u0011\u0010\u0001\u0005\u0002\u0005m\u0014a\u0004*E\u0007N\u001bvLU#B\t~\u0013vj\u0014+\u0015\t\u00055\u0014Q\u0010\u0005\u000b\u0003k\n9\b%AA\u0002\u0005e\u0003bBAA\u0001\u0011%\u00111Q\u0001\u000f%\u0012\u001b5kU0D_6\u0004H.\u001a;f)\u0011\ti'!\"\t\u0011\u0005U\u0014q\u0010a\u0001\u00033BC!a \u0002\nB!\u00111RAI\u001b\t\tiIC\u0002\u0002\u0010\u001a\t!\"\u00198o_R\fG/[8o\u0013\u0011\t\u0019*!$\u0003\u000fQ\f\u0017\u000e\u001c:fG\"9\u0011q\u0013\u0001\u0005\n\u0005e\u0015A\u0003*E\u0007N\u001bvLU(P)RA\u0011\u0011LAN\u0003;\u000b9\u000b\u0003\u0005\u0002b\u0005U\u0005\u0019AA7\u0011!\ty*!&A\u0002\u0005\u0005\u0016\u0001D3ya\u0016\u001cG/\u001a3nC&t\u0007#\u0002\t\u0002$Nq\u0012bAAS\u0005\tAQ*Y5o\u001d>$W\r\u0003\u0005\u0002f\u0005U\u0005\u0019AA7\u0011\u001d\tY\u000b\u0001C\u0005\u0003[\u000b\u0001\"\u001b8tKJ$\bn\u0019\u000b\bO\u0006=\u00161WA_\u0011\u001d\t\t,!+A\u0002M\t\u0011a\u001b\u0005\t\u0003k\u000bI\u000b1\u0001\u00028\u0006\u0011\u0001n\u0019\t\u0004\u0019\u0005e\u0016bAA^\r\t\u0019\u0011J\u001c;\t\u000f\u0005}\u0016\u0011\u0016a\u0001=\u0005\ta\u000f\u000b\u0003\u0002*\u0006%\u0005bBAc\u0001\u0011%\u0011qY\u0001\u000bS:\u001cXM\u001d;jM\"\u001cGCCAe\u0003\u001f\f\t.a5\u0002VB!A\"a3\u001f\u0013\r\tiM\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\u000f\u0005E\u00161\u0019a\u0001'!A\u0011QWAb\u0001\u0004\t9\fC\u0004\u0002@\u0006\r\u0007\u0019\u0001\u0010\t\u000f\u0005]\u00171\u0019a\u0001\u0017\u0005!1m\u001c8eQ\u0011\t\u0019-!#\t\u000f\u0005u\u0007\u0001\"\u0003\u0002`\u0006AAn\\8lkBD7\rF\u0003\f\u0003C\f\u0019\u000fC\u0004\u00022\u0006m\u0007\u0019A\n\t\u0011\u0005U\u00161\u001ca\u0001\u0003oCC!a7\u0002\n\"9\u0011\u0011\u001e\u0001\u0005\n\u0005-\u0018\u0001\u0003:f[>4X\r[2\u0015\u0011\u0005%\u0017Q^Ax\u0003cDq!!-\u0002h\u0002\u00071\u0003C\u0004\u0002@\u0006\u001d\b\u0019\u0001\u0010\t\u0011\u0005U\u0016q\u001da\u0001\u0003oCC!a:\u0002\n\"9\u0011q\u001f\u0001\u0005\u0002\u0005e\u0018AB:ue&tw-\u0006\u0002\u0002|B!\u0011Q B\u0002\u001d\ra\u0011q`\u0005\u0004\u0005\u00031\u0011A\u0002)sK\u0012,g-\u0003\u0003\u0003\u0006\t\u001d!AB*ue&twMC\u0002\u0003\u0002\u0019AqAa\u0003\u0001\t\u0003\u0012i!A\u0002tKF,\u0012a\n\u0005\b\u0005#\u0001A\u0011\tB\n\u0003\r\u0001\u0018M]\u000b\u0002_!9!q\u0003\u0001\u0005B\t5\u0011!B3naRL\bb\u0002B\u000e\u0001\u0011\u0005!QD\u0001\u000bSN\u0014V-\u00193P]2LXCAA-\u0011\u001d\u0011\t\u0003\u0001C\u0001\u0005;\t1B\\8o%\u0016\fGm\u00148ms\"9!Q\u0005\u0001\u0005\u0002\u0005-\u0012\u0001C:oCB\u001c\bn\u001c;)\t\t\r\u0012\u0011\u0012\u0005\b\u0005W\u0001A\u0011\u0001B\u0017\u0003A\u0011X-\u00193P]2L8K\\1qg\"|G\u000f\u0006\u0002\u00030A)\u0011F!\r\u0014=%\u0011!\u0003\u0002\u0015\u0005\u0005S\tI\tC\u0004\u00038\u0001!\tE!\u000f\u0002\u000b\rdW-\u0019:\u0015\u0003\u001dDCA!\u000e\u0002\n\"9!q\b\u0001\u0005\u0002\t\u0005\u0013aC2p[B,H/\u001a%bg\"$B!a.\u0003D!9\u0011\u0011\u0017B\u001f\u0001\u0004\u0019\u0002b\u0002B$\u0001\u0011\u0005!\u0011J\u0001\u0007Y>|7.\u001e9\u0015\u0007y\u0011Y\u0005C\u0004\u00022\n\u0015\u0003\u0019A\n\t\u000f\t=\u0003\u0001\"\u0011\u0003R\u0005)\u0011\r\u001d9msR\u0019aDa\u0015\t\u000f\u0005E&Q\na\u0001'!9!q\u000b\u0001\u0005\u0002\te\u0013aA4fiR!\u0011\u0011\u001aB.\u0011\u001d\t\tL!\u0016A\u0002MAqAa\u0018\u0001\t\u0003\u0012\t'A\u0002qkR$b!!3\u0003d\t\u001d\u0004b\u0002B3\u0005;\u0002\raE\u0001\u0004W\u0016L\bb\u0002B5\u0005;\u0002\rAH\u0001\u0006m\u0006dW/\u001a\u0005\b\u0005[\u0002A\u0011\tB8\u0003\u0019)\b\u000fZ1uKR)qM!\u001d\u0003t!9\u0011\u0011\u0017B6\u0001\u0004\u0019\u0002bBA`\u0005W\u0002\rA\b\u0005\b\u0005o\u0002A\u0011\u0001B=\u0003!!\u0003\u000f\\;tI\u0015\fH\u0003\u0002B>\u0005{j\u0011\u0001\u0001\u0005\b\u0005\u007f\u0012)\b1\u0001-\u0003\tYg\u000fC\u0004\u0003\u0004\u0002!\tE!\"\u0002\rI,Wn\u001c<f)\u0011\tIMa\"\t\u000f\u0005E&\u0011\u0011a\u0001'!9!1\u0012\u0001\u0005\u0002\t5\u0015!\u0003\u0013nS:,8\u000fJ3r)\u0011\u0011YHa$\t\u000f\u0005E&\u0011\u0012a\u0001'!9!1\u0013\u0001\u0005\u0002\tU\u0015a\u00039vi&3\u0017IY:f]R$b!!3\u0003\u0018\ne\u0005bBAY\u0005#\u0003\ra\u0005\u0005\b\u0003\u007f\u0013\t\n1\u0001\u001f\u0011\u001d\u0011i\n\u0001C!\u0005?\u000bqbZ3u\u001fJ,En]3Va\u0012\fG/\u001a\u000b\u0006=\t\u0005&1\u0015\u0005\b\u0003c\u0013Y\n1\u0001\u0014\u0011%\u0011)Ka'\u0005\u0002\u0004\u00119+\u0001\u0002paB!AB!+\u001f\u0013\r\u0011YK\u0002\u0002\ty\tLh.Y7f}!9!1\u0011\u0001\u0005\u0002\t=FCBA-\u0005c\u0013\u0019\fC\u0004\u00022\n5\u0006\u0019A\n\t\u000f\u0005}&Q\u0016a\u0001=!9!q\u0017\u0001\u0005\u0002\te\u0016a\u0002:fa2\f7-\u001a\u000b\t\u00033\u0012YL!0\u0003B\"9\u0011\u0011\u0017B[\u0001\u0004\u0019\u0002b\u0002B`\u0005k\u0003\rAH\u0001\t_2$g/\u00197vK\"9!1\u0019B[\u0001\u0004q\u0012\u0001\u00038foZ\fG.^3\t\u000f\t]\u0006\u0001\"\u0001\u0003HR1\u0011\u0011\u001aBe\u0005\u0017Dq!!-\u0003F\u0002\u00071\u0003C\u0004\u0002@\n\u0015\u0007\u0019\u0001\u0010\t\u000f\t=\u0007\u0001\"\u0001\u0003R\u0006A\u0011\u000e^3sCR|'/\u0006\u0002\u0003TB!\u0011F!6-\u0013\r\u00119\u000e\u0002\u0002\t\u0013R,'/\u0019;pe\"9!1\u001c\u0001\u0005\n\tu\u0017AC2bG\",GmU5{KR\u0011\u0011q\u0017\u0005\b\u0005C\u0004A\u0011\tBr\u0003\u0011\u0019\u0018N_3\u0016\u0005\u0005]\u0006b\u0002Bt\u0001\u0011\u0005#\u0011^\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0003\u0005W\u0004BA!<\u0003t6\u0011!q\u001e\u0006\u0004\u0005c$\u0015\u0001\u00027b]\u001eLAA!\u0002\u0003p\"I!q\u001f\u0001\u0012\u0002\u0013\u0005!\u0011`\u0001\u0013e\u0016\fGMU8pi\u0012\"WMZ1vYR$\u0013'\u0006\u0002\u0003|*\"\u0011\u0011\fB\u007fW\t\u0011y\u0010\u0005\u0003\u0004\u0002\r\u001dQBAB\u0002\u0015\u0011\u0019)!!$\u0002\u0013Ut7\r[3dW\u0016$\u0017\u0002BB\u0005\u0007\u0007\u0011\u0011#\u001e8dQ\u0016\u001c7.\u001a3WCJL\u0017M\\2f\u0011%\u0019i\u0001AI\u0001\n\u0003\u0011I0A\rS\t\u000e\u001b6k\u0018*F\u0003\u0012{&kT(UI\u0011,g-Y;mi\u0012\n\u0004f\u0002\u0001\u0004\u0012\t%4q\u0003\t\u0004\u0019\rM\u0011bAB\u000b\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\n\u0012\u0010\tO\u00132\rTD\u0011\u0002  911\u0004\u0002\t\u0002\ru\u0011a\u0002+sS\u0016l\u0015\r\u001d\t\u0004!\r}aAB\u0001\u0003\u0011\u0003\u0019\tcE\u0003\u0004 \r\rb\u0007\u0005\u0004\u0004&\r-2qF\u0007\u0003\u0007OQ1a!\u000b\u0005\u0003\u001d9WM\\3sS\u000eLAa!\f\u0004(\t\tR*\u001e;bE2,W*\u00199GC\u000e$xN]=\u0011\u0005A\u0001\u0001bB.\u0004 \u0011\u000511\u0007\u000b\u0003\u0007;A!ba\u000e\u0004 \t\u0007I\u0011AB\u001d\u00031Ign\u001c3fkB$\u0017\r^3s+\t\u0019Y\u0004\u0005\u0004?\r\u000eu2Q\u000b\u0019\u0007\u0007\u007f\u00199e!\u0015\u0011\u000fA\u0019\te!\u0012\u0004P%\u001911\t\u0002\u0003\u0013%su\u000eZ3CCN,\u0007c\u0001\u000b\u0004H\u0011Y1\u0011JB&\u0003\u0003\u0005\tQ!\u0001\u0018\u0005\ryF\u0005\u000e\u0005\n\u0007\u001b\u001ay\u0002)A\u0005\u0007w\tQ\"\u001b8pI\u0016,\b\u000fZ1uKJ\u0004\u0003c\u0001\u000b\u0004R\u0011Y11KB&\u0003\u0003\u0005\tQ!\u0001\u0018\u0005\ryF%\u000e\u0019\u0007\u0007/\u001aYf!\u0019\u0011\u000fA\t\u0019k!\u0017\u0004`A\u0019Aca\u0017\u0005\u0017\ru31JA\u0001\u0002\u0003\u0015\ta\u0006\u0002\u0004?\u00122\u0004c\u0001\u000b\u0004b\u0011Y11MB&\u0003\u0003\u0005\tQ!\u0001\u0018\u0005\ryFe\u000e\u0005\t\u0007O\u001ay\u0002b\u0001\u0004j\u0005a1-\u00198Ck&dGM\u0012:p[V111NBB\u0007\u000f+\"a!\u001c\u0011\u0015\r\u00152qNB:\u0007\u007f\u001aI)\u0003\u0003\u0004r\r\u001d\"\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007\u0003BB;\u0007oj!aa\b\n\t\re41\u0010\u0002\u0005\u0007>dG.\u0003\u0003\u0004~\r\u001d\"!D$f]6\u000b\u0007OR1di>\u0014\u0018\u0010\u0005\u0004\r[\r\u00055Q\u0011\t\u0004)\r\rEA\u0002\f\u0004f\t\u0007q\u0003E\u0002\u0015\u0007\u000f#a\u0001IB3\u0005\u00049\u0002C\u0002\t\u0001\u0007\u0003\u001b)\t\u0003\u0005\u0003\u0018\r}A\u0011ABG+\u0019\u0019yi!&\u0004\u001aV\u00111\u0011\u0013\t\u0007!\u0001\u0019\u0019ja&\u0011\u0007Q\u0019)\n\u0002\u0004\u0017\u0007\u0017\u0013\ra\u0006\t\u0004)\reEA\u0002\u0011\u0004\f\n\u0007qCB\u0004\u0004\u001e\u000e}\u0001aa(\u0003\u001d5\u000bgn\u001a7fI\"\u000b7\u000f[5oOV!1\u0011UBT'\u0015\u0019YjCBR!\u0011Yuj!*\u0011\u0007Q\u00199\u000b\u0002\u0004\u0017\u00077\u0013\ra\u0006\u0005\b7\u000emE\u0011ABV)\t\u0019i\u000b\u0005\u0004\u0004v\rm5Q\u0015\u0005\t\u0007c\u001bY\n\"\u0001\u00044\u0006!\u0001.Y:i)\u0011\t9l!.\t\u0011\u0005E6q\u0016a\u0001\u0007KC!b!/\u0004 \u0005\u0005I\u0011BB^\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\ru\u0006\u0003\u0002Bw\u0007\u007fKAa!1\u0003p\n1qJ\u00196fGR\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/TrieMap.class */
public final class TrieMap<K, V> implements Map<K, V>, CustomParallelizable<Tuple2<K, V>, ParTrieMap<K, V>>, Serializable {
    public static final long serialVersionUID = -6402774413839597105L;
    private Equiv<K> equalityobj;
    private Hashing<K> hashingobj;
    private volatile Object root;
    private AtomicReferenceFieldUpdater<TrieMap<K, V>, Object> rootupdater;

    /* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/TrieMap$MangledHashing.class */
    public static class MangledHashing<K> implements Hashing<K> {
        @Override // scala.util.hashing.Hashing
        public int hash(K k) {
            return package$.MODULE$.byteswap32(ScalaRunTime$.MODULE$.hash(k));
        }
    }

    public TrieMap() {
        this(Hashing$.MODULE$.m6474default(), scala.package$.MODULE$.Equiv().universal());
    }

    private TrieMap(Object obj, AtomicReferenceFieldUpdater<TrieMap<K, V>, Object> atomicReferenceFieldUpdater, Hashing<K> hashing, Equiv<K> equiv) {
        TraversableOnce.Cclass.$init$(this);
        Parallelizable.Cclass.$init$(this);
        TraversableLike.Cclass.$init$(this);
        GenericTraversableTemplate.Cclass.$init$(this);
        GenTraversable.Cclass.$init$(this);
        Traversable.Cclass.$init$(this);
        Traversable.Cclass.$init$(this);
        GenIterable.Cclass.$init$(this);
        IterableLike.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        GenMapLike.Cclass.$init$(this);
        Function1.Cclass.$init$(this);
        PartialFunction.Cclass.$init$(this);
        Subtractable.Cclass.$init$(this);
        MapLike.Cclass.$init$(this);
        Map.Cclass.$init$(this);
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
        Shrinkable.Cclass.$init$(this);
        Cloneable.Cclass.$init$(this);
        MapLike.Cclass.$init$(this);
        Map.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
        this.hashingobj = hashing instanceof Hashing.Default ? new MangledHashing() : hashing;
        this.equalityobj = equiv;
        this.rootupdater = atomicReferenceFieldUpdater;
        this.root = obj;
    }

    public TrieMap(Hashing<K> hashing, Equiv<K> equiv) {
        this(INode$.MODULE$.newRootNode(), AtomicReferenceFieldUpdater.newUpdater(TrieMap.class, Object.class, "root"), hashing, equiv);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x008f, code lost:
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private scala.collection.concurrent.INode<K, V> RDCSS_Complete(boolean r7) {
        /*
            r6 = this;
        L0:
            r0 = r6
            java.lang.Object r0 = r0.root()
            r8 = r0
            r0 = r8
            boolean r0 = r0 instanceof scala.collection.concurrent.INode
            if (r0 == 0) goto L14
            r0 = r8
            scala.collection.concurrent.INode r0 = (scala.collection.concurrent.INode) r0
            r8 = r0
            goto L8e
        L14:
            r0 = r8
            boolean r0 = r0 instanceof scala.collection.concurrent.RDCSS_Descriptor
            if (r0 == 0) goto L99
            r0 = r8
            scala.collection.concurrent.RDCSS_Descriptor r0 = (scala.collection.concurrent.RDCSS_Descriptor) r0
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L90
            scala.Tuple3 r0 = new scala.Tuple3
            r1 = r0
            r2 = r9
            scala.collection.concurrent.INode r2 = r2.old()
            r3 = r9
            scala.collection.concurrent.MainNode r3 = r3.expectedmain()
            r4 = r9
            scala.collection.concurrent.INode r4 = r4.m181nv()
            r1.<init>(r2, r3, r4)
            r10 = r0
            r0 = r10
            java.lang.Object r0 = r0.mo240_1()
            scala.collection.concurrent.INode r0 = (scala.collection.concurrent.INode) r0
            r8 = r0
            r0 = r10
            java.lang.Object r0 = r0.mo239_2()
            scala.collection.concurrent.MainNode r0 = (scala.collection.concurrent.MainNode) r0
            r11 = r0
            r0 = r10
            java.lang.Object r0 = r0.mo238_3()
            scala.collection.concurrent.INode r0 = (scala.collection.concurrent.INode) r0
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L66
            r0 = r6
            r1 = r9
            r2 = r8
            boolean r0 = r0.CAS_ROOT(r1, r2)
            if (r0 == 0) goto L0
            goto L8e
        L66:
            r0 = r8
            r1 = r6
            scala.collection.concurrent.MainNode r0 = r0.gcasRead(r1)
            r1 = r11
            if (r0 != r1) goto L85
            r0 = r6
            r1 = r9
            r2 = r10
            boolean r0 = r0.CAS_ROOT(r1, r2)
            if (r0 == 0) goto L0
            r0 = r9
            r1 = 1
            r0.committed_$eq(r1)
            r0 = r10
            r8 = r0
            goto L8e
        L85:
            r0 = r6
            r1 = r9
            r2 = r8
            boolean r0 = r0.CAS_ROOT(r1, r2)
            if (r0 == 0) goto L0
        L8e:
            r0 = r8
            return r0
        L90:
            scala.MatchError r0 = new scala.MatchError
            r1 = r0
            r2 = r9
            r1.<init>(r2)
            throw r0
        L99:
            scala.MatchError r0 = new scala.MatchError
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.concurrent.TrieMap.RDCSS_Complete(boolean):scala.collection.concurrent.INode");
    }

    private boolean RDCSS_ROOT(INode<K, V> iNode, MainNode<K, V> mainNode, INode<K, V> iNode2) {
        RDCSS_Descriptor rDCSS_Descriptor = new RDCSS_Descriptor(iNode, mainNode, iNode2);
        boolean z = false;
        if (CAS_ROOT(iNode, rDCSS_Descriptor)) {
            RDCSS_Complete(false);
            z = rDCSS_Descriptor.committed();
        }
        return z;
    }

    private int cachedSize() {
        return RDCSS_READ_ROOT(RDCSS_READ_ROOT$default$1()).cachedSize(this);
    }

    public static <K, V> CanBuildFrom<TrieMap<?, ?>, Tuple2<K, V>, TrieMap<K, V>> canBuildFrom() {
        return TrieMap$.MODULE$.canBuildFrom();
    }

    private Equiv<K> equalityobj() {
        return this.equalityobj;
    }

    private void equalityobj_$eq(Equiv<K> equiv) {
        this.equalityobj = equiv;
    }

    private Hashing<K> hashingobj() {
        return this.hashingobj;
    }

    private void hashingobj_$eq(Hashing<K> hashing) {
        this.hashingobj = hashing;
    }

    public static AtomicReferenceFieldUpdater<INodeBase<?, ?>, MainNode<?, ?>> inodeupdater() {
        return TrieMap$.MODULE$.inodeupdater();
    }

    private void inserthc(K k, int i, V v) {
        INode<K, V> RDCSS_READ_ROOT;
        do {
            RDCSS_READ_ROOT = RDCSS_READ_ROOT(RDCSS_READ_ROOT$default$1());
        } while (!RDCSS_READ_ROOT.rec_insert(k, v, i, 0, null, RDCSS_READ_ROOT.gen, this));
        BoxedUnit boxedUnit = BoxedUnit.UNIT;
    }

    private Option<V> insertifhc(K k, int i, V v, Object obj) {
        Option<V> rec_insertif;
        do {
            INode<K, V> RDCSS_READ_ROOT = RDCSS_READ_ROOT(RDCSS_READ_ROOT$default$1());
            rec_insertif = RDCSS_READ_ROOT.rec_insertif(k, v, i, obj, 0, null, RDCSS_READ_ROOT.gen, this);
        } while (rec_insertif == null);
        return rec_insertif;
    }

    private Object lookuphc(K k, int i) {
        Object rec_lookup;
        do {
            INode<K, V> RDCSS_READ_ROOT = RDCSS_READ_ROOT(RDCSS_READ_ROOT$default$1());
            rec_lookup = RDCSS_READ_ROOT.rec_lookup(k, i, 0, null, RDCSS_READ_ROOT.gen, this);
        } while (rec_lookup == INodeBase.RESTART);
        return rec_lookup;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) {
        root_$eq(INode$.MODULE$.newRootNode());
        rootupdater_$eq(AtomicReferenceFieldUpdater.newUpdater(TrieMap.class, Object.class, "root"));
        hashingobj_$eq((Hashing) objectInputStream.readObject());
        equalityobj_$eq((Equiv) objectInputStream.readObject());
        while (true) {
            Object readObject = objectInputStream.readObject();
            TrieMapSerializationEnd$ trieMapSerializationEnd$ = TrieMapSerializationEnd$.MODULE$;
            if (readObject == null || !readObject.equals(trieMapSerializationEnd$)) {
                update(readObject, objectInputStream.readObject());
            }
            TrieMapSerializationEnd$ trieMapSerializationEnd$2 = TrieMapSerializationEnd$.MODULE$;
            if (readObject != null && readObject.equals(trieMapSerializationEnd$2)) {
                return;
            }
        }
    }

    private Option<V> removehc(K k, V v, int i) {
        Option<V> rec_remove;
        do {
            INode<K, V> RDCSS_READ_ROOT = RDCSS_READ_ROOT(RDCSS_READ_ROOT$default$1());
            rec_remove = RDCSS_READ_ROOT.rec_remove(k, v, i, 0, null, RDCSS_READ_ROOT.gen, this);
        } while (rec_remove == null);
        return rec_remove;
    }

    private AtomicReferenceFieldUpdater<TrieMap<K, V>, Object> rootupdater() {
        return this.rootupdater;
    }

    private void rootupdater_$eq(AtomicReferenceFieldUpdater<TrieMap<K, V>, Object> atomicReferenceFieldUpdater) {
        this.rootupdater = atomicReferenceFieldUpdater;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.writeObject(hashingobj());
        objectOutputStream.writeObject(equalityobj());
        Iterator<Tuple2<K, V>> it = iterator();
        while (it.hasNext()) {
            Tuple2<K, V> next = it.next();
            if (next == null) {
                throw new MatchError(next);
            }
            Tuple2 tuple2 = new Tuple2(next.mo269_1(), next.mo268_2());
            Object mo269_1 = tuple2.mo269_1();
            Object mo268_2 = tuple2.mo268_2();
            objectOutputStream.writeObject(mo269_1);
            objectOutputStream.writeObject(mo268_2);
        }
        objectOutputStream.writeObject(TrieMapSerializationEnd$.MODULE$);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $colon$bslash(B b, Function2<Tuple2<K, V>, B, B> function2) {
        Object foldRight;
        foldRight = foldRight(b, function2);
        return (B) foldRight;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $div$colon(B b, Function2<B, Tuple2<K, V>, B> function2) {
        Object foldLeft;
        foldLeft = foldLeft(b, function2);
        return (B) foldLeft;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
    public scala.collection.mutable.Map $minus(Object obj) {
        return MapLike.Cclass.$minus(this, obj);
    }

    @Override // scala.collection.generic.Subtractable
    public scala.collection.mutable.Map $minus(Object obj, Object obj2, Seq seq) {
        return MapLike.Cclass.$minus(this, obj, obj2, seq);
    }

    @Override // scala.collection.mutable.MapLike, scala.collection.generic.Shrinkable
    public TrieMap<K, V> $minus$eq(K k) {
        remove(k);
        return this;
    }

    @Override // scala.collection.generic.Shrinkable
    public Shrinkable<K> $minus$eq(K k, K k2, Seq<K> seq) {
        return Shrinkable.Cclass.$minus$eq(this, k, k2, seq);
    }

    @Override // scala.collection.generic.Subtractable
    public scala.collection.mutable.Map $minus$minus(GenTraversableOnce genTraversableOnce) {
        return MapLike.Cclass.$minus$minus(this, genTraversableOnce);
    }

    @Override // scala.collection.generic.Shrinkable
    public Shrinkable<K> $minus$minus$eq(TraversableOnce<K> traversableOnce) {
        return traversableOnce.foreach(new Shrinkable$$anonfun$$minus$minus$eq$1(this));
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <B1> scala.collection.mutable.Map<K, B1> $plus(Tuple2<K, B1> tuple2) {
        return MapLike.Cclass.$plus(this, tuple2);
    }

    @Override // scala.collection.MapLike
    public <B1> scala.collection.mutable.Map<K, B1> $plus(Tuple2<K, B1> tuple2, Tuple2<K, B1> tuple22, Seq<Tuple2<K, B1>> seq) {
        return MapLike.Cclass.$plus(this, tuple2, tuple22, seq);
    }

    @Override // scala.collection.mutable.MapLike
    public TrieMap<K, V> $plus$eq(Tuple2<K, V> tuple2) {
        update(tuple2.mo269_1(), tuple2.mo268_2());
        return this;
    }

    @Override // scala.collection.generic.Growable
    public Growable $plus$eq(Object obj, Object obj2, Seq seq) {
        Growable $plus$plus$eq;
        $plus$plus$eq = $plus$eq((TrieMap<K, V>) obj).$plus$eq(obj2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<TrieMap<K, V>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
    }

    @Override // scala.collection.MapLike
    public <B1> scala.collection.mutable.Map<K, B1> $plus$plus(GenTraversableOnce<Tuple2<K, B1>> genTraversableOnce) {
        return MapLike.Cclass.$plus$plus(this, genTraversableOnce);
    }

    @Override // scala.collection.TraversableLike
    public <B, That> That $plus$plus$colon(scala.collection.Traversable<B> traversable, CanBuildFrom<TrieMap<K, V>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (scala.collection.Traversable) traversable, (CanBuildFrom) canBuildFrom);
    }

    @Override // scala.collection.TraversableLike
    public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<TrieMap<K, V>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.$plus$plus$colon(this, traversableOnce, canBuildFrom);
    }

    @Override // scala.collection.generic.Growable
    public Growable<Tuple2<K, V>> $plus$plus$eq(TraversableOnce<Tuple2<K, V>> traversableOnce) {
        return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    public boolean CAS_ROOT(Object obj, Object obj2) {
        return rootupdater().compareAndSet(this, obj, obj2);
    }

    public INode<K, V> RDCSS_READ_ROOT(boolean z) {
        INode<K, V> iNode;
        Object root = root();
        if (root instanceof INode) {
            iNode = (INode) root;
        } else if (!(root instanceof RDCSS_Descriptor)) {
            throw new MatchError(root);
        } else {
            iNode = RDCSS_Complete(z);
        }
        return iNode;
    }

    public boolean RDCSS_READ_ROOT$default$1() {
        return false;
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
        return MapLike.Cclass.addString(this, stringBuilder, str, str2, str3);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B aggregate(Function0<B> function0, Function2<B, Tuple2<K, V>, B> function2, Function2<B, B, B> function22) {
        return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.PartialFunction, scala.Function1
    public <C> PartialFunction<K, C> andThen(Function1<V, C> function1) {
        return PartialFunction.Cclass.andThen(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    public V apply(K k) {
        V v = (V) lookuphc(k, computeHash(k));
        if (v != null) {
            return v;
        }
        throw new NoSuchElementException();
    }

    @Override // scala.Function1
    public double apply$mcDD$sp(double d) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDF$sp(float f) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDI$sp(int i) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDJ$sp(long j) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToLong(j)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public float apply$mcFD$sp(double d) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFF$sp(float f) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFI$sp(int i) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFJ$sp(long j) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToLong(j)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public int apply$mcID$sp(double d) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIF$sp(float f) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcII$sp(int i) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIJ$sp(long j) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToLong(j)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public long apply$mcJD$sp(double d) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJF$sp(float f) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJI$sp(int i) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJJ$sp(long j) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToLong(j)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public void apply$mcVD$sp(double d) {
        apply(BoxesRunTime.boxToDouble(d));
    }

    @Override // scala.Function1
    public void apply$mcVF$sp(float f) {
        apply(BoxesRunTime.boxToFloat(f));
    }

    @Override // scala.Function1
    public void apply$mcVI$sp(int i) {
        apply(BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function1
    public void apply$mcVJ$sp(long j) {
        apply(BoxesRunTime.boxToLong(j));
    }

    @Override // scala.Function1
    public boolean apply$mcZD$sp(double d) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZF$sp(float f) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZI$sp(int i) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZJ$sp(long j) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToLong(j)));
        return unboxToBoolean;
    }

    @Override // scala.PartialFunction
    public <A1 extends K, B1> B1 applyOrElse(A1 a1, Function1<A1, B1> function1) {
        return (B1) PartialFunction.Cclass.applyOrElse(this, a1, function1);
    }

    @Override // scala.collection.IterableLike, scala.Equals
    public boolean canEqual(Object obj) {
        return IterableLike.Cclass.canEqual(this, obj);
    }

    @Override // scala.collection.mutable.MapLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        INode<K, V> RDCSS_READ_ROOT;
        do {
            RDCSS_READ_ROOT = RDCSS_READ_ROOT(RDCSS_READ_ROOT$default$1());
        } while (!RDCSS_ROOT(RDCSS_READ_ROOT, RDCSS_READ_ROOT.gcasRead(this), INode$.MODULE$.newRootNode()));
        BoxedUnit boxedUnit = BoxedUnit.UNIT;
    }

    @Override // scala.collection.mutable.MapLike, scala.collection.mutable.Cloneable
    public scala.collection.mutable.Map clone() {
        return MapLike.Cclass.clone(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That collect(PartialFunction<Tuple2<K, V>, B> partialFunction, CanBuildFrom<TrieMap<K, V>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.collect(this, partialFunction, canBuildFrom);
    }

    @Override // scala.collection.TraversableOnce
    public <B> Option<B> collectFirst(PartialFunction<Tuple2<K, V>, B> partialFunction) {
        return TraversableOnce.Cclass.collectFirst(this, partialFunction);
    }

    @Override // scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<scala.collection.mutable.Iterable> companion() {
        return Iterable.Cclass.companion(this);
    }

    @Override // scala.Function1
    public <A> Function1<A, V> compose(Function1<A, K> function1) {
        return Function1.Cclass.compose(this, function1);
    }

    public int computeHash(K k) {
        return hashingobj().hash(k);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public boolean contains(K k) {
        return MapLike.Cclass.contains(this, k);
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
    public int count(Function1<Tuple2<K, V>, Object> function1) {
        return TraversableOnce.Cclass.count(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    /* renamed from: default */
    public V mo6041default(K k) {
        return (V) MapLike.Cclass.m6058default(this, k);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object drop(int i) {
        return IterableLike.Cclass.drop(this, i);
    }

    @Override // scala.collection.IterableLike
    public Object dropRight(int i) {
        return IterableLike.Cclass.dropRight(this, i);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object dropWhile(Function1 function1) {
        return TraversableLike.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.mutable.Map, scala.collection.Map, scala.collection.MapLike
    public TrieMap<K, V> empty() {
        return new TrieMap<>();
    }

    public Equiv<K> equality() {
        return equalityobj();
    }

    @Override // scala.Equals
    public boolean equals(Object obj) {
        return GenMapLike.Cclass.equals(this, obj);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<Tuple2<K, V>, Object> function1) {
        return IterableLike.Cclass.exists(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object filter(Function1 function1) {
        return TraversableLike.Cclass.filter(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public scala.collection.Map<K, V> filterKeys(Function1<K, Object> function1) {
        return MapLike.Cclass.filterKeys(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
    public scala.collection.Map filterNot(Function1 function1) {
        return MapLike.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<Tuple2<K, V>> find(Function1<Tuple2<K, V>, Object> function1) {
        return IterableLike.Cclass.find(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
    public <B, That> That flatMap(Function1<Tuple2<K, V>, GenTraversableOnce<B>> function1, CanBuildFrom<TrieMap<K, V>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.flatMap(this, function1, canBuildFrom);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable flatten(Function1 function1) {
        return GenericTraversableTemplate.Cclass.flatten(this, function1);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
        return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B foldLeft(B b, Function2<B, Tuple2<K, V>, B> function2) {
        return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B foldRight(B b, Function2<Tuple2<K, V>, B, B> function2) {
        return (B) IterableLike.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<Tuple2<K, V>, Object> function1) {
        return IterableLike.Cclass.forall(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Tuple2<K, V>, U> function1) {
        IterableLike.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <B> Builder<B, scala.collection.mutable.Iterable<B>> genericBuilder() {
        return GenericTraversableTemplate.Cclass.genericBuilder(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<V> get(K k) {
        return Option$.MODULE$.apply(lookuphc(k, computeHash(k)));
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <B1> B1 getOrElse(K k, Function0<B1> function0) {
        return (B1) MapLike.Cclass.getOrElse(this, k, function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.mutable.MapLike
    public V getOrElseUpdate(K k, Function0<V> function0) {
        V lookup = lookup(k);
        V v = lookup;
        if (lookup == null) {
            v = function0.apply();
            Objects.requireNonNull(v, "Concurrent TrieMap values cannot be null.");
            Option<V> insertifhc = insertifhc(k, computeHash(k), v, INode$.MODULE$.KEY_ABSENT());
            if (insertifhc instanceof Some) {
                v = ((Some) insertifhc).m362x();
            } else if (!None$.MODULE$.equals(insertifhc)) {
                throw new MatchError(insertifhc);
            }
        }
        return v;
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <K> scala.collection.immutable.Map<K, TrieMap<K, V>> groupBy(Function1<Tuple2<K, V>, K> function1) {
        return TraversableLike.Cclass.groupBy(this, function1);
    }

    @Override // scala.collection.IterableLike
    public Iterator<TrieMap<K, V>> grouped(int i) {
        return IterableLike.Cclass.grouped(this, i);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return TraversableLike.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.GenMapLike
    public int hashCode() {
        return GenMapLike.Cclass.hashCode(this);
    }

    public Hashing<K> hashing() {
        return hashingobj();
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public Object head() {
        return IterableLike.Cclass.head(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<Tuple2<K, V>> headOption() {
        return TraversableLike.Cclass.headOption(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object init() {
        return TraversableLike.Cclass.init(this);
    }

    @Override // scala.collection.TraversableLike
    public Iterator<TrieMap<K, V>> inits() {
        return TraversableLike.Cclass.inits(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.PartialFunction
    public boolean isDefinedAt(K k) {
        return MapLike.Cclass.isDefinedAt(this, k);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return MapLike.Cclass.isEmpty(this);
    }

    public boolean isReadOnly() {
        return rootupdater() == null;
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
    public final boolean isTraversableAgain() {
        return TraversableLike.Cclass.isTraversableAgain(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<K, V>> iterator() {
        return nonReadOnly() ? readOnlySnapshot().iterator() : new TrieMapIterator(0, this, TrieMapIterator$.MODULE$.$lessinit$greater$default$3());
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Set<K> keySet() {
        return MapLike.Cclass.keySet(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public scala.collection.Iterable<K> keys() {
        return MapLike.Cclass.keys(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<K> keysIterator() {
        return MapLike.Cclass.keysIterator(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object last() {
        return TraversableLike.Cclass.last(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<Tuple2<K, V>> lastOption() {
        return TraversableLike.Cclass.lastOption(this);
    }

    @Override // scala.PartialFunction
    public Function1<K, Option<V>> lift() {
        return PartialFunction.Cclass.lift(this);
    }

    public V lookup(K k) {
        return (V) lookuphc(k, computeHash(k));
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
    public <B, That> That map(Function1<Tuple2<K, V>, B> function1, CanBuildFrom<TrieMap<K, V>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<Tuple2<K, V>, NewTo> mapResult(Function1<TrieMap<K, V>, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <C> scala.collection.Map<K, C> mapValues(Function1<V, C> function1) {
        return MapLike.Cclass.mapValues(this, function1);
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

    @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<Tuple2<K, V>, TrieMap<K, V>> newBuilder() {
        return MapLike.Cclass.newBuilder(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return TraversableOnce.Cclass.nonEmpty(this);
    }

    public boolean nonReadOnly() {
        return rootupdater() != null;
    }

    @Override // scala.PartialFunction
    public <A1 extends K, B1> PartialFunction<A1, B1> orElse(PartialFunction<A1, B1> partialFunction) {
        return PartialFunction.Cclass.orElse(this, partialFunction);
    }

    @Override // scala.collection.Parallelizable
    public ParTrieMap<K, V> par() {
        return new ParTrieMap<>(this);
    }

    @Override // scala.collection.mutable.Iterable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Tuple2<K, V>, ParTrieMap<K, V>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<TrieMap<K, V>, TrieMap<K, V>> partition(Function1<Tuple2<K, V>, Object> function1) {
        return TraversableLike.Cclass.partition(this, function1);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B product(Numeric<B> numeric) {
        return (B) TraversableOnce.Cclass.product(this, numeric);
    }

    @Override // scala.collection.mutable.MapLike
    public Option<V> put(K k, V v) {
        return insertifhc(k, computeHash(k), v, null);
    }

    @Override // scala.collection.concurrent.Map
    public Option<V> putIfAbsent(K k, V v) {
        return insertifhc(k, computeHash(k), v, INode$.MODULE$.KEY_ABSENT());
    }

    public scala.collection.Map<K, V> readOnlySnapshot() {
        INode<K, V> RDCSS_READ_ROOT;
        do {
            RDCSS_READ_ROOT = RDCSS_READ_ROOT(RDCSS_READ_ROOT$default$1());
        } while (!RDCSS_ROOT(RDCSS_READ_ROOT, RDCSS_READ_ROOT.gcasRead(this), RDCSS_READ_ROOT.copyToGen(new Gen(), this)));
        return new TrieMap(RDCSS_READ_ROOT, null, hashing(), equality());
    }

    public INode<K, V> readRoot(boolean z) {
        return RDCSS_READ_ROOT(z);
    }

    public boolean readRoot$default$1() {
        return false;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> A1 reduce(Function2<A1, A1, A1> function2) {
        return (A1) TraversableOnce.Cclass.reduce(this, function2);
    }

    @Override // scala.collection.TraversableOnce
    public <B> B reduceLeft(Function2<B, Tuple2<K, V>, B> function2) {
        return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceLeftOption(Function2<B, Tuple2<K, V>, B> function2) {
        return TraversableOnce.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
        return TraversableOnce.Cclass.reduceOption(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B reduceRight(Function2<Tuple2<K, V>, B, B> function2) {
        return (B) IterableLike.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceRightOption(Function2<Tuple2<K, V>, B, B> function2) {
        return TraversableOnce.Cclass.reduceRightOption(this, function2);
    }

    @Override // scala.collection.mutable.MapLike
    public Option<V> remove(K k) {
        return removehc(k, null, computeHash(k));
    }

    @Override // scala.collection.concurrent.Map
    public boolean remove(K k, V v) {
        return removehc(k, v, computeHash(k)).nonEmpty();
    }

    @Override // scala.collection.concurrent.Map
    public Option<V> replace(K k, V v) {
        return insertifhc(k, computeHash(k), v, INode$.MODULE$.KEY_PRESENT());
    }

    @Override // scala.collection.concurrent.Map
    public boolean replace(K k, V v, V v2) {
        return insertifhc(k, computeHash(k), v2, v).nonEmpty();
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public Object repr() {
        return TraversableLike.Cclass.repr(this);
    }

    @Override // scala.collection.mutable.MapLike, scala.collection.mutable.Builder
    public scala.collection.mutable.Map result() {
        return MapLike.Cclass.result(this);
    }

    @Override // scala.collection.mutable.MapLike
    public scala.collection.mutable.MapLike<K, V, TrieMap<K, V>> retain(Function2<K, V, Object> function2) {
        return MapLike.Cclass.retain(this, function2);
    }

    @Override // scala.collection.TraversableOnce
    public List<Tuple2<K, V>> reversed() {
        return TraversableOnce.Cclass.reversed(this);
    }

    public Object root() {
        return this.root;
    }

    public void root_$eq(Object obj) {
        this.root = obj;
    }

    @Override // scala.PartialFunction
    public <U> Function1<K, Object> runWith(Function1<V, U> function1) {
        return PartialFunction.Cclass.runWith(this, function1);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B> boolean sameElements(GenIterable<B> genIterable) {
        return IterableLike.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.mutable.Cloneable
    public /* synthetic */ Object scala$collection$mutable$Cloneable$$super$clone() {
        return super.clone();
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<TrieMap<K, V>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scanLeft(B b, Function2<B, Tuple2<K, V>, B> function2, CanBuildFrom<TrieMap<K, V>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scanRight(B b, Function2<Tuple2<K, V>, B, B> function2, CanBuildFrom<TrieMap<K, V>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scanRight(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.mutable.Map, scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public TrieMap<K, V> seq() {
        return this;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return nonReadOnly() ? readOnlySnapshot().size() : cachedSize();
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(int i) {
        Builder.Cclass.sizeHint(this, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHint(this, traversableLike);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike, int i) {
        Builder.Cclass.sizeHint(this, traversableLike, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHintBounded(int i, TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHintBounded(this, i, traversableLike);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object slice(int i, int i2) {
        return IterableLike.Cclass.slice(this, i, i2);
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
    public Iterator<TrieMap<K, V>> sliding(int i) {
        return IterableLike.Cclass.sliding(this, i);
    }

    @Override // scala.collection.IterableLike
    public Iterator<TrieMap<K, V>> sliding(int i, int i2) {
        return IterableLike.Cclass.sliding(this, i, i2);
    }

    public TrieMap<K, V> snapshot() {
        INode<K, V> RDCSS_READ_ROOT;
        do {
            RDCSS_READ_ROOT = RDCSS_READ_ROOT(RDCSS_READ_ROOT$default$1());
        } while (!RDCSS_ROOT(RDCSS_READ_ROOT, RDCSS_READ_ROOT.gcasRead(this), RDCSS_READ_ROOT.copyToGen(new Gen(), this)));
        return new TrieMap<>(RDCSS_READ_ROOT.copyToGen(new Gen(), this), rootupdater(), hashing(), equality());
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<TrieMap<K, V>, TrieMap<K, V>> span(Function1<Tuple2<K, V>, Object> function1) {
        return TraversableLike.Cclass.span(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<TrieMap<K, V>, TrieMap<K, V>> splitAt(int i) {
        return TraversableLike.Cclass.splitAt(this, i);
    }

    public String string() {
        return RDCSS_READ_ROOT(RDCSS_READ_ROOT$default$1()).string(0);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "TrieMap";
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B sum(Numeric<B> numeric) {
        return (B) TraversableOnce.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object tail() {
        return TraversableLike.Cclass.tail(this);
    }

    @Override // scala.collection.TraversableLike
    public Iterator<TrieMap<K, V>> tails() {
        return TraversableLike.Cclass.tails(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object take(int i) {
        return IterableLike.Cclass.take(this, i);
    }

    @Override // scala.collection.IterableLike
    public Object takeRight(int i) {
        return IterableLike.Cclass.takeRight(this, i);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object takeWhile(Function1 function1) {
        return IterableLike.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.Iterable<Tuple2<K, V>> thisCollection() {
        return IterableLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    /* renamed from: to */
    public <Col> Col mo1to(CanBuildFrom<Nothing$, Tuple2<K, V>, Col> canBuildFrom) {
        return (Col) TraversableLike.Cclass.m184to(this, canBuildFrom);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Object toArray(ClassTag<B> classTag) {
        return TraversableOnce.Cclass.toArray(this, classTag);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <C> Buffer<C> toBuffer() {
        return MapLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.Iterable toCollection(Object obj) {
        return IterableLike.Cclass.toCollection(this, obj);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public IndexedSeq<Tuple2<K, V>> toIndexedSeq() {
        return TraversableOnce.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public scala.collection.Iterable<Tuple2<K, V>> toIterable() {
        return IterableLike.Cclass.toIterable(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<Tuple2<K, V>> toIterator() {
        return IterableLike.Cclass.toIterator(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<Tuple2<K, V>> toList() {
        return TraversableOnce.Cclass.toList(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <T, U> scala.collection.immutable.Map<T, U> toMap(Predef$$less$colon$less<Tuple2<K, V>, Tuple2<T, U>> predef$$less$colon$less) {
        return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<Tuple2<K, V>> toSeq() {
        return MapLike.Cclass.toSeq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <B> scala.collection.immutable.Set<B> toSet() {
        return TraversableOnce.Cclass.toSet(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<Tuple2<K, V>> toStream() {
        return IterableLike.Cclass.toStream(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return MapLike.Cclass.toString(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public scala.collection.Traversable<Tuple2<K, V>> toTraversable() {
        return TraversableLike.Cclass.toTraversable(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Vector<Tuple2<K, V>> toVector() {
        return TraversableOnce.Cclass.toVector(this);
    }

    @Override // scala.collection.mutable.MapLike
    public scala.collection.mutable.MapLike<K, V, TrieMap<K, V>> transform(Function2<K, V, V> function2) {
        return MapLike.Cclass.transform(this, function2);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable transpose(Function1 function1) {
        return GenericTraversableTemplate.Cclass.transpose(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<Tuple2<K, V>, Tuple2<A1, A2>> function1) {
        return GenericTraversableTemplate.Cclass.unzip(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<Tuple2<K, V>, Tuple3<A1, A2, A3>> function1) {
        return GenericTraversableTemplate.Cclass.unzip3(this, function1);
    }

    @Override // scala.collection.mutable.MapLike
    public void update(K k, V v) {
        inserthc(k, computeHash(k), v);
    }

    @Override // scala.collection.GenMap, scala.collection.MapLike
    public <B1> scala.collection.mutable.Map<K, B1> updated(K k, B1 b1) {
        return MapLike.Cclass.updated(this, k, b1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public scala.collection.Iterable<V> values() {
        return MapLike.Cclass.values(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<V> valuesIterator() {
        return MapLike.Cclass.valuesIterator(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public Object view() {
        return IterableLike.Cclass.view(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public IterableView<Tuple2<K, V>, TrieMap<K, V>> view(int i, int i2) {
        return IterableLike.Cclass.view(this, i, i2);
    }

    @Override // scala.collection.mutable.Map
    public scala.collection.mutable.Map<K, V> withDefault(Function1<K, V> function1) {
        return Map.Cclass.withDefault(this, function1);
    }

    @Override // scala.collection.mutable.Map
    public scala.collection.mutable.Map<K, V> withDefaultValue(V v) {
        return Map.Cclass.withDefaultValue(this, v);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
    public FilterMonadic<Tuple2<K, V>, TrieMap<K, V>> withFilter(Function1<Tuple2<K, V>, Object> function1) {
        return TraversableLike.Cclass.withFilter(this, function1);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<TrieMap<K, V>, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IterableLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<TrieMap<K, V>, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IterableLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, That> That zipWithIndex(CanBuildFrom<TrieMap<K, V>, Tuple2<A1, Object>, That> canBuildFrom) {
        return (That) IterableLike.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
