package scala.collection;

import androidx.exifinterface.media.ExifInterface;
import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.None$;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Predef$any2stringadd$;
import scala.Some;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.GenTraversable;
import scala.collection.Parallelizable;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.TraversableView;
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
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParIterable;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BooleanRef;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
import scala.runtime.NonLocalReturnControl;
import scala.runtime.Nothing$;
import scala.runtime.ObjectRef;
@ScalaSignature(bytes = "\u0006\u0001\u0011Uh\u0001C\u0001\u0003!\u0003\r\ta\u0002\u0017\u0003'Q\u0013\u0018M^3sg\u0006\u0014G.\u001a,jK^d\u0015n[3\u000b\u0005\r!\u0011AC2pY2,7\r^5p]*\tQ!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\t!\u0019\"\u0006I\n\u0006\u0001%iA$\f\t\u0003\u0015-i\u0011\u0001B\u0005\u0003\u0019\u0011\u0011a!\u00118z%\u00164\u0007c\u0001\b\u0010#5\t!!\u0003\u0002\u0011\u0005\tYAK]1wKJ\u001c\u0018M\u00197f!\t\u00112\u0003\u0004\u0001\u0005\rQ\u0001AQ1\u0001\u0016\u0005\u0005\t\u0015C\u0001\f\u001a!\tQq#\u0003\u0002\u0019\t\t9aj\u001c;iS:<\u0007C\u0001\u0006\u001b\u0013\tYBAA\u0002B]f\u0004BAD\u000f\u0012?%\u0011aD\u0001\u0002\u0010)J\fg/\u001a:tC\ndW\rT5lKB\u0011!\u0003\t\u0003\u0007C\u0001!)\u0019\u0001\u0012\u0003\tQC\u0017n]\t\u0003-\r\u00122\u0001\n\u0014-\r\u0011)\u0003\u0001A\u0012\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\t99\u0013#K\u0005\u0003Q\t\u0011q\u0002\u0016:bm\u0016\u00148/\u00192mKZKWm\u001e\t\u0003%)\"aa\u000b\u0001\u0005\u0006\u0004)\"\u0001B\"pY2\u0004RA\u0004\u0001\u0012S}\u00012A\u0004\u0018\u0012\u0013\ty#A\u0001\u0007WS\u0016<Xj[*ue&tw\rC\u00032\u0001\u0011\u0005!'\u0001\u0004%S:LG\u000f\n\u000b\u0002gA\u0011!\u0002N\u0005\u0003k\u0011\u0011A!\u00168ji\")q\u0007\u0001D\tq\u0005QQO\u001c3fe2L\u0018N\\4\u0016\u0003%BaA\u000f\u0001!\n#Y\u0014A\u0004<jK^LE-\u001a8uS\u001aLWM]\u000b\u0002yA\u0011Q\b\u0011\b\u0003\u0015yJ!a\u0010\u0003\u0002\rA\u0013X\rZ3g\u0013\t\t%I\u0001\u0004TiJLgn\u001a\u0006\u0003\u007f\u0011Aa\u0001\u0012\u0001!\n#Y\u0014\u0001\u0004<jK^LEm\u0015;sS:<\u0007\"\u0002$\u0001\t\u00039\u0015\u0001\u0004<jK^$vn\u0015;sS:<W#\u0001%\u0011\u0005%sU\"\u0001&\u000b\u0005-c\u0015\u0001\u00027b]\u001eT\u0011!T\u0001\u0005U\u00064\u0018-\u0003\u0002B\u0015\")\u0001\u000b\u0001C!\u000f\u0006a1\u000f\u001e:j]\u001e\u0004&/\u001a4jq\"1!\u000b\u0001Q\u0005RM\u000b!B\\3x\u0005VLG\u000eZ3s+\u0005!\u0006\u0003B+Y#}i\u0011A\u0016\u0006\u0003/\n\tq!\\;uC\ndW-\u0003\u0002Z-\n9!)^5mI\u0016\u0014\b\"B.\u0001\t\u0003a\u0016!\u00024pe\u000e,WcA/k?R\u0011a,\u0019\t\u0003%}#Q\u0001\u0019.C\u0002U\u0011A\u0001\u00165bi\")!M\u0017a\u0002G\u0006\u0011!M\u001a\t\u0006I\u001eL\u0013NX\u0007\u0002K*\u0011aMA\u0001\bO\u0016tWM]5d\u0013\tAWM\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\u0005\u0002\u0013U\u0012)1N\u0017b\u0001Y\n\t!)\u0005\u0002\u00123\u00191a\u000eAA\u0001\u0005=\u00141#\u00112tiJ\f7\r\u001e+sC:\u001chm\u001c:nK\u0012,\"\u0001]:\u0014\t5L\u0011\u000f\u001e\t\u0004\u001d=\u0011\bC\u0001\nt\t\u0019YW\u000e\"b\u0001+A\u0019QO\u001e:\u000e\u0003\u00011qa\u001e\u0001\u0011\u0002\u0007\u0005\u0001PA\u0006Ue\u0006t7OZ8s[\u0016$WCA=}'\r1\u0018B\u001f\t\u0005\u001d\u001dZ\u0018\u0006\u0005\u0002\u0013y\u001211N\u001eCC\u0002UAQ!\r<\u0005\u0002IBaa <\u0007\u0002\u0005\u0005\u0011a\u00024pe\u0016\f7\r[\u000b\u0005\u0003\u0007\t\t\u0002F\u00024\u0003\u000bAq!a\u0002\u007f\u0001\u0004\tI!A\u0001g!\u0019Q\u00111B>\u0002\u0010%\u0019\u0011Q\u0002\u0003\u0003\u0013\u0019+hn\u0019;j_:\f\u0004c\u0001\n\u0002\u0012\u00111\u00111\u0003@C\u0002U\u0011\u0011!\u0016\u0005\toYD)\u0019!C\u0001q!I\u0011\u0011\u0004<\t\u0002\u0003\u0006K!K\u0001\fk:$WM\u001d7zS:<\u0007\u0005\u0003\u0004Em\u0002&)f\u0012\u0005\b\u0003?1H\u0011IA\u0011\u0003)AW-\u00193PaRLwN\\\u000b\u0003\u0003G\u0001BACA\u0013w&\u0019\u0011q\u0005\u0003\u0003\r=\u0003H/[8o\u0011\u001d\tYC\u001eC!\u0003C\t!\u0002\\1ti>\u0003H/[8o\u0011\u0015\u0001f\u000f\"\u0011H\u0011\u001d\t\tD\u001eC!\u0003g\t\u0001\u0002^8TiJLgn\u001a\u000b\u0002\u0011\"9\u0011qG7\u0005\u0002\u0005e\u0012A\u0002\u001fj]&$h\b\u0006\u0002\u0002<A\u0019Q/\u001c:\u0007\u0013\u0005}\u0002\u0001%A\u0002\u0002\u0005\u0005#!C#naRLh+[3x'\u0015\ti$CA\"!\r)hO\u0006\u0005\u0007c\u0005uB\u0011\u0001\u001a\t\u0011\u0005%\u0013Q\bC#\u0003\u0017\nq![:F[B$\u00180\u0006\u0002\u0002NA\u0019!\"a\u0014\n\u0007\u0005ECAA\u0004C_>dW-\u00198\t\u000f}\fi\u0004\"\u0012\u0002VU!\u0011qKA0)\r\u0019\u0014\u0011\f\u0005\t\u0003\u000f\t\u0019\u00061\u0001\u0002\\A1!\"a\u0003\u0017\u0003;\u00022AEA0\t\u001d\t\u0019\"a\u0015C\u0002U1\u0011\"a\u0019\u0001!\u0003\r\t!!\u001a\u0003\r\u0019{'oY3e+\u0011\t9'!\u001c\u0014\u000b\u0005\u0005\u0014\"!\u001b\u0011\tU4\u00181\u000e\t\u0004%\u00055DAB6\u0002b\t\u0007Q\u0003\u0003\u00042\u0003C\"\tA\r\u0005\u000b\u0003g\n\tG1Q\u0007\u0012\u0005U\u0014A\u00024pe\u000e,G-\u0006\u0002\u0002xA)a\"!\u001f\u0002l%\u0019\u00111\u0010\u0002\u0003\r\u001d+gnU3r\u0011\u001dy\u0018\u0011\rC\u0001\u0003\u007f*B!!!\u0002\nR\u00191'a!\t\u0011\u0005\u001d\u0011Q\u0010a\u0001\u0003\u000b\u0003rACA\u0006\u0003W\n9\tE\u0002\u0013\u0003\u0013#q!a\u0005\u0002~\t\u0007Q\u0003C\u0004;\u0003C\u0002KQK$\u0007\u0013\u0005=\u0005\u0001%A\u0002\u0002\u0005E%AB*mS\u000e,GmE\u0003\u0002\u000e&\t\u0019\nE\u0002vmFAa!MAG\t\u0003\u0011\u0004BCAM\u0003\u001b\u0013\rU\"\u0005\u0002\u001c\u0006IQM\u001c3q_&tGo]\u000b\u0003\u0003;\u00032\u0001ZAP\u0013\r\t\t+\u001a\u0002\u000e'2L7-Z%oi\u0016\u0014h/\u00197\t\u0013\u0005\u0015\u0016Q\u0012Q\u0005\u0012\u0005\u001d\u0016\u0001\u00024s_6,\"!!+\u0011\u0007)\tY+C\u0002\u0002.\u0012\u00111!\u00138u\u0011%\t\t,!$!\n#\t9+A\u0003v]RLG\u000eC\u0004��\u0003\u001b#\t!!.\u0016\t\u0005]\u0016q\u0018\u000b\u0004g\u0005e\u0006\u0002CA\u0004\u0003g\u0003\r!a/\u0011\r)\tY!EA_!\r\u0011\u0012q\u0018\u0003\b\u0003'\t\u0019L1\u0001\u0016\u0011\u001dQ\u0014Q\u0012Q\u0005V\u001d3\u0011\"!2\u0001!\u0003\r\t!a2\u0003\r5\u000b\u0007\u000f]3e+\u0011\tI-a4\u0014\u000b\u0005\r\u0017\"a3\u0011\tU4\u0018Q\u001a\t\u0004%\u0005=GAB6\u0002D\n\u0007Q\u0003\u0003\u00042\u0003\u0007$\tA\r\u0005\u000b\u0003+\f\u0019M1Q\u0007\u0012\u0005]\u0017aB7baBLgnZ\u000b\u0003\u00033\u0004bACA\u0006#\u00055\u0007bB@\u0002D\u0012\u0005\u0011Q\\\u000b\u0005\u0003?\f9\u000fF\u00024\u0003CD\u0001\"a\u0002\u0002\\\u0002\u0007\u00111\u001d\t\b\u0015\u0005-\u0011QZAs!\r\u0011\u0012q\u001d\u0003\b\u0003'\tYN1\u0001\u0016\u0011\u001dQ\u00141\u0019Q\u0005V\u001d3\u0011\"!<\u0001!\u0003\r\t!a<\u0003\u0015\u0019c\u0017\r^'baB,G-\u0006\u0003\u0002r\u0006]8#BAv\u0013\u0005M\b\u0003B;w\u0003k\u00042AEA|\t\u0019Y\u00171\u001eb\u0001+!1\u0011'a;\u0005\u0002IB!\"!6\u0002l\n\u0007k\u0011CA\u007f+\t\ty\u0010\u0005\u0004\u000b\u0003\u0017\t\"\u0011\u0001\t\u0006\u001d\t\r\u0011Q_\u0005\u0004\u0005\u000b\u0011!AE$f]R\u0013\u0018M^3sg\u0006\u0014G.Z(oG\u0016Dqa`Av\t\u0003\u0011I!\u0006\u0003\u0003\f\tMAcA\u001a\u0003\u000e!A\u0011q\u0001B\u0004\u0001\u0004\u0011y\u0001E\u0004\u000b\u0003\u0017\t)P!\u0005\u0011\u0007I\u0011\u0019\u0002B\u0004\u0002\u0014\t\u001d!\u0019A\u000b\t\u000fi\nY\u000f)C+\u000f\u001aI!\u0011\u0004\u0001\u0011\u0002\u0007\u0005!1\u0004\u0002\t\u0003B\u0004XM\u001c3fIV!!Q\u0004B\u0012'\u0015\u00119\"\u0003B\u0010!\u0011)hO!\t\u0011\u0007I\u0011\u0019\u0003\u0002\u0004l\u0005/\u0011\r\u0001\u001c\u0005\u0007c\t]A\u0011\u0001\u001a\t\u0015\t%\"q\u0003b!\u000e#\u0011Y#\u0001\u0003sKN$XC\u0001B\u0017!\u0015q!q\u0006B\u0011\u0013\r\u0011\tD\u0001\u0002\u000f\u000f\u0016tGK]1wKJ\u001c\u0018M\u00197f\u0011\u001dy(q\u0003C\u0001\u0005k)BAa\u000e\u0003@Q\u00191G!\u000f\t\u0011\u0005\u001d!1\u0007a\u0001\u0005w\u0001rACA\u0006\u0005C\u0011i\u0004E\u0002\u0013\u0005\u007f!q!a\u0005\u00034\t\u0007Q\u0003C\u0004;\u0005/\u0001KQK$\u0007\u0013\t\u0015\u0003\u0001%A\u0002\u0002\t\u001d#\u0001\u0003$jYR,'/\u001a3\u0014\u000b\t\r\u0013\"a%\t\rE\u0012\u0019\u0005\"\u00013\u0011)\u0011iEa\u0011CB\u001bE!qJ\u0001\u0005aJ,G-\u0006\u0002\u0003RA1!\"a\u0003\u0012\u0003\u001bBqa B\"\t\u0003\u0011)&\u0006\u0003\u0003X\t}CcA\u001a\u0003Z!A\u0011q\u0001B*\u0001\u0004\u0011Y\u0006\u0005\u0004\u000b\u0003\u0017\t\"Q\f\t\u0004%\t}CaBA\n\u0005'\u0012\r!\u0006\u0005\bu\t\r\u0003\u0015\"\u0016H\r%\u0011)\u0007\u0001I\u0001\u0004\u0003\u00119G\u0001\u0006UC.,gn\u00165jY\u0016\u001cRAa\u0019\n\u0003'Ca!\rB2\t\u0003\u0011\u0004B\u0003B'\u0005G\u0012\rU\"\u0005\u0003P!9qPa\u0019\u0005\u0002\t=T\u0003\u0002B9\u0005s\"2a\rB:\u0011!\t9A!\u001cA\u0002\tU\u0004C\u0002\u0006\u0002\fE\u00119\bE\u0002\u0013\u0005s\"q!a\u0005\u0003n\t\u0007Q\u0003C\u0004;\u0005G\u0002KQK$\u0007\u0013\t}\u0004\u0001%A\u0002\u0002\t\u0005%\u0001\u0004#s_B\u0004X\rZ,iS2,7#\u0002B?\u0013\u0005M\u0005BB\u0019\u0003~\u0011\u0005!\u0007\u0003\u0006\u0003N\tu$\u0019)D\t\u0005\u001fBqa B?\t\u0003\u0011I)\u0006\u0003\u0003\f\nMEcA\u001a\u0003\u000e\"A\u0011q\u0001BD\u0001\u0004\u0011y\t\u0005\u0004\u000b\u0003\u0017\t\"\u0011\u0013\t\u0004%\tMEaBA\n\u0005\u000f\u0013\r!\u0006\u0005\bu\tu\u0004\u0015\"\u0016H\u0011\u001d\u0011I\n\u0001C!\u00057\u000b!\u0002\n9mkN$\u0003\u000f\\;t+\u0019\u0011iJa+\u0003$R!!q\u0014BW)\u0011\u0011\tK!*\u0011\u0007I\u0011\u0019\u000b\u0002\u0004a\u0005/\u0013\r!\u0006\u0005\bE\n]\u00059\u0001BT!\u001d!wm\bBU\u0005C\u00032A\u0005BV\t\u0019Y'q\u0013b\u0001Y\"A!q\u0016BL\u0001\u0004\u0011\t,\u0001\u0002ygB)aBa\u0001\u0003*\"9!Q\u0017\u0001\u0005B\t]\u0016aA7baV1!\u0011\u0018Bd\u0005\u007f#BAa/\u0003JR!!Q\u0018Ba!\r\u0011\"q\u0018\u0003\u0007A\nM&\u0019A\u000b\t\u000f\t\u0014\u0019\fq\u0001\u0003DB9AmZ\u0010\u0003F\nu\u0006c\u0001\n\u0003H\u001211Na-C\u0002UA\u0001\"a\u0002\u00034\u0002\u0007!1\u001a\t\u0007\u0015\u0005-\u0011C!2\t\u000f\t=\u0007\u0001\"\u0011\u0003R\u000691m\u001c7mK\u000e$XC\u0002Bj\u0005C\u0014I\u000e\u0006\u0003\u0003V\n\rH\u0003\u0002Bl\u00057\u00042A\u0005Bm\t\u0019\u0001'Q\u001ab\u0001+!9!M!4A\u0004\tu\u0007c\u00023h?\t}'q\u001b\t\u0004%\t\u0005HAB6\u0003N\n\u0007Q\u0003\u0003\u0005\u0003f\n5\u0007\u0019\u0001Bt\u0003\t\u0001h\r\u0005\u0004\u000b\u0005S\f\"q\\\u0005\u0004\u0005W$!a\u0004)beRL\u0017\r\u001c$v]\u000e$\u0018n\u001c8\t\u000f\t=\b\u0001\"\u0011\u0003r\u00069a\r\\1u\u001b\u0006\u0004XC\u0002Bz\u0007\u0003\u0011I\u0010\u0006\u0003\u0003v\u000e\rA\u0003\u0002B|\u0005w\u00042A\u0005B}\t\u0019\u0001'Q\u001eb\u0001+!9!M!<A\u0004\tu\bc\u00023h?\t}(q\u001f\t\u0004%\r\u0005AAB6\u0003n\n\u0007Q\u0003\u0003\u0005\u0002\b\t5\b\u0019AB\u0003!\u0019Q\u00111B\t\u0004\bA)aBa\u0001\u0003��\"911\u0002\u0001\u0005B\r5\u0011a\u00024mCR$XM\\\u000b\u0005\u0007\u001f\u0019)\u0002\u0006\u0003\u0004\u0012\r]\u0001\u0003B;w\u0007'\u00012AEB\u000b\t\u0019Y7\u0011\u0002b\u0001+!A1\u0011DB\u0005\u0001\b\u0019Y\"A\u0007bgR\u0013\u0018M^3sg\u0006\u0014G.\u001a\t\u0007\u0015\u0005-\u0011c!\b\u0011\u000b9\u0011\u0019aa\u0005\t\u0011\r\u0005\u0002\u0001)C\u0006\u0007G\ta!Y:UQ&\u001cHcA\u0010\u0004&!A!qVB\u0010\u0001\u0004\t\u0019\nC\u0004\u0004*\u0001!\tba\u000b\u0002\u00139,wOR8sG\u0016$W\u0003BB\u0017\u0007g!Baa\f\u00046A!QO^B\u0019!\r\u001121\u0007\u0003\u0007W\u000e\u001d\"\u0019A\u000b\t\u0013\t=6q\u0005CA\u0002\r]\u0002#\u0002\u0006\u0004:\ru\u0012bAB\u001e\t\tAAHY=oC6,g\bE\u0003\u000f\u0003s\u001a\t\u0004C\u0004\u0004B\u0001!\tba\u0011\u0002\u00179,w/\u00119qK:$W\rZ\u000b\u0005\u0007\u000b\u001aY\u0005\u0006\u0003\u0004H\r5\u0003\u0003B;w\u0007\u0013\u00022AEB&\t\u0019Y7q\bb\u0001Y\"A1qJB \u0001\u0004\u0019\t&\u0001\u0003uQ\u0006$\b#\u0002\b\u00030\r%\u0003bBB+\u0001\u0011E1qK\u0001\n]\u0016<X*\u00199qK\u0012,Ba!\u0017\u0004`Q!11LB1!\u0011)ho!\u0018\u0011\u0007I\u0019y\u0006\u0002\u0004l\u0007'\u0012\r!\u0006\u0005\t\u0003\u000f\u0019\u0019\u00061\u0001\u0004dA1!\"a\u0003\u0012\u0007;Bqaa\u001a\u0001\t#\u0019I'A\u0007oK^4E.\u0019;NCB\u0004X\rZ\u000b\u0005\u0007W\u001a\t\b\u0006\u0003\u0004n\rM\u0004\u0003B;w\u0007_\u00022AEB9\t\u0019Y7Q\rb\u0001+!A\u0011qAB3\u0001\u0004\u0019)\b\u0005\u0004\u000b\u0003\u0017\t2q\u000f\t\u0006\u001d\t\r1q\u000e\u0005\b\u0007w\u0002A\u0011CB?\u0003-qWm\u001e$jYR,'/\u001a3\u0015\t\u0005M5q\u0010\u0005\t\u0007\u0003\u001bI\b1\u0001\u0003R\u0005\t\u0001\u000fC\u0004\u0004\u0006\u0002!\tba\"\u0002\u00139,wo\u00157jG\u0016$G\u0003BAJ\u0007\u0013C\u0001ba#\u0004\u0004\u0002\u0007\u0011QT\u0001\u000b?\u0016tG\r]8j]R\u001c\bbBBH\u0001\u0011E1\u0011S\u0001\u0010]\u0016<HI]8qa\u0016$w\u000b[5mKR!\u00111SBJ\u0011!\u0019\ti!$A\u0002\tE\u0003bBBL\u0001\u0011E1\u0011T\u0001\u000e]\u0016<H+Y6f]^C\u0017\u000e\\3\u0015\t\u0005M51\u0014\u0005\t\u0007\u0003\u001b)\n1\u0001\u0003R!91q\u0014\u0001\u0005\u0012\r\u0005\u0016\u0001\u00038foR\u000b7.\u001a8\u0015\t\u0005M51\u0015\u0005\t\u0007K\u001bi\n1\u0001\u0002*\u0006\ta\u000eC\u0004\u0004*\u0002!\tba+\u0002\u00159,w\u000f\u0012:paB,G\r\u0006\u0003\u0002\u0014\u000e5\u0006\u0002CBS\u0007O\u0003\r!!+\t\u000f\rE\u0006\u0001\"\u0011\u00044\u00061a-\u001b7uKJ$2aHB[\u0011!\u0019\tia,A\u0002\tE\u0003bBB]\u0001\u0011\u000531X\u0001\u000bo&$\bNR5mi\u0016\u0014HcA\u0010\u0004>\"A1\u0011QB\\\u0001\u0004\u0011\t\u0006C\u0004\u0004B\u0002!\tea1\u0002\u0013A\f'\u000f^5uS>tG\u0003BBc\u0007\u0017\u0004RACBd?}I1a!3\u0005\u0005\u0019!V\u000f\u001d7fe!A1\u0011QB`\u0001\u0004\u0011\t\u0006C\u0004\u0004P\u0002!\te!5\u0002\t%t\u0017\u000e^\u000b\u0002?!91Q\u001b\u0001\u0005B\r]\u0017\u0001\u00023s_B$2aHBm\u0011!\u0019)ka5A\u0002\u0005%\u0006bBBo\u0001\u0011\u00053q\\\u0001\u0005i\u0006\\W\rF\u0002 \u0007CD\u0001b!*\u0004\\\u0002\u0007\u0011\u0011\u0016\u0005\b\u0007K\u0004A\u0011IBt\u0003\u0015\u0019H.[2f)\u0015y2\u0011^Bv\u0011!\t)ka9A\u0002\u0005%\u0006\u0002CAY\u0007G\u0004\r!!+\t\u000f\r=\b\u0001\"\u0011\u0004r\u0006IAM]8q/\"LG.\u001a\u000b\u0004?\rM\b\u0002CBA\u0007[\u0004\rA!\u0015\t\u000f\r]\b\u0001\"\u0011\u0004z\u0006IA/Y6f/\"LG.\u001a\u000b\u0004?\rm\b\u0002CBA\u0007k\u0004\rA!\u0015\t\u000f\r}\b\u0001\"\u0011\u0005\u0002\u0005!1\u000f]1o)\u0011\u0019)\rb\u0001\t\u0011\r\u00055Q a\u0001\u0005#Bq\u0001b\u0002\u0001\t\u0003\"I!A\u0004ta2LG/\u0011;\u0015\t\r\u0015G1\u0002\u0005\t\u0007K#)\u00011\u0001\u0002*\"9Aq\u0002\u0001\u0005B\u0011E\u0011\u0001C:dC:dUM\u001a;\u0016\r\u0011MA1\u0005C\u000e)\u0011!)\u0002b\f\u0015\t\u0011]AQ\u0005\u000b\u0005\t3!i\u0002E\u0002\u0013\t7!a\u0001\u0019C\u0007\u0005\u0004)\u0002b\u00022\u0005\u000e\u0001\u000fAq\u0004\t\bI\u001e|B\u0011\u0005C\r!\r\u0011B1\u0005\u0003\u0007W\u00125!\u0019A\u000b\t\u0011\u0011\u001dBQ\u0002a\u0001\tS\t!a\u001c9\u0011\u0011)!Y\u0003\"\t\u0012\tCI1\u0001\"\f\u0005\u0005%1UO\\2uS>t'\u0007\u0003\u0005\u00052\u00115\u0001\u0019\u0001C\u0011\u0003\u0005Q\bb\u0002C\u001b\u0001\u0011\u0005CqG\u0001\ng\u000e\fgNU5hQR,b\u0001\"\u000f\u0005J\u0011\u0005C\u0003\u0002C\u001e\t\u001f\"B\u0001\"\u0010\u0005LQ!Aq\bC\"!\r\u0011B\u0011\t\u0003\u0007A\u0012M\"\u0019A\u000b\t\u000f\t$\u0019\u0004q\u0001\u0005FA9AmZ\u0010\u0005H\u0011}\u0002c\u0001\n\u0005J\u001111\u000eb\rC\u0002UA\u0001\u0002b\n\u00054\u0001\u0007AQ\n\t\t\u0015\u0011-\u0012\u0003b\u0012\u0005H!AA\u0011\u0007C\u001a\u0001\u0004!9\u0005\u000b\u0005\u00054\u0011MCq\fC2!\u0011!)\u0006b\u0017\u000e\u0005\u0011]#b\u0001C-\t\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\t\u0011uCq\u000b\u0002\n[&<'/\u0019;j_:\f#\u0001\"\u0019\u0002QRCW\r\t2fQ\u00064\u0018n\u001c:!_\u001a\u0004\u0003m]2b]JKw\r\u001b;aA!\f7\u000fI2iC:<W\r\u001a\u0018!)\",\u0007\u0005\u001d:fm&|Wo\u001d\u0011cK\"\fg/[8sA\r\fg\u000e\t2fAI,\u0007O]8ek\u000e,G\rI<ji\"\u00043oY1o%&<\u0007\u000e\u001e\u0018sKZ,'o]3/C\t!)'A\u00033]er\u0003\u0007C\u0004\u0005j\u0001!\t\u0005b\u001b\u0002\u000f\u001d\u0014x.\u001e9CsV!AQ\u000eC?)\u0011!y\u0007\"!\u0011\u000f\u0011EDq\u000fC>?5\u0011A1\u000f\u0006\u0004\tk\u0012\u0011!C5n[V$\u0018M\u00197f\u0013\u0011!I\bb\u001d\u0003\u00075\u000b\u0007\u000fE\u0002\u0013\t{\"q\u0001b \u0005h\t\u0007QCA\u0001L\u0011!\t9\u0001b\u001aA\u0002\u0011\r\u0005C\u0002\u0006\u0002\fE!Y\bC\u0004\u0005\b\u0002!\t\u0005\"#\u0002\u000bUt'0\u001b9\u0016\r\u0011-E1\u0013CN)\u0011!i\tb(\u0011\u000f)\u00199\rb$\u0005\u0018B!QO\u001eCI!\r\u0011B1\u0013\u0003\b\t+#)I1\u0001\u0016\u0005\t\t\u0015\u0007\u0005\u0003vm\u0012e\u0005c\u0001\n\u0005\u001c\u00129AQ\u0014CC\u0005\u0004)\"AA!3\u0011!!\t\u000b\"\"A\u0004\u0011\r\u0016AB1t!\u0006L'\u000f\u0005\u0004\u000b\u0003\u0017\tBQ\u0015\t\b\u0015\r\u001dG\u0011\u0013CM\u0011\u001d!I\u000b\u0001C!\tW\u000ba!\u001e8{SB\u001cT\u0003\u0003CW\ts#y\f\"2\u0015\t\u0011=F\u0011\u001a\t\n\u0015\u0011EFQ\u0017C^\t\u0003L1\u0001b-\u0005\u0005\u0019!V\u000f\u001d7fgA!QO\u001eC\\!\r\u0011B\u0011\u0018\u0003\b\t+#9K1\u0001\u0016!\u0011)h\u000f\"0\u0011\u0007I!y\fB\u0004\u0005\u001e\u0012\u001d&\u0019A\u000b\u0011\tU4H1\u0019\t\u0004%\u0011\u0015Ga\u0002Cd\tO\u0013\r!\u0006\u0002\u0003\u0003NB\u0001\u0002b3\u0005(\u0002\u000fAQZ\u0001\tCN$&/\u001b9mKB1!\"a\u0003\u0012\t\u001f\u0004\u0012B\u0003CY\to#i\fb1\t\u000f\u0011M\u0007\u0001\"\u0011\u0005V\u0006Ia-\u001b7uKJtu\u000e\u001e\u000b\u0004?\u0011]\u0007\u0002CBA\t#\u0004\rA!\u0015\t\u000f\u0011m\u0007\u0001\"\u0011\u0005^\u0006)\u0011N\\5ugV\u0011Aq\u001c\t\u0005\u001d\u0011\u0005x$C\u0002\u0005d\n\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\b\tO\u0004A\u0011\tCo\u0003\u0015!\u0018-\u001b7t\u0011\u001d!Y\u000f\u0001C!\u0007#\fA\u0001^1jY\"9\u0011\u0011\u0007\u0001\u0005B\u0005M\u0002B\u0004Cy\u0001A\u0005\u0019\u0011!A\u0005\n\rEG1_\u0001\u000bgV\u0004XM\u001d\u0013uC&d\u0017b\u0001Cv;\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike.class */
public interface TraversableViewLike<A, Coll, This extends TraversableView<A, Coll> & TraversableViewLike<A, Coll, This>> extends Traversable<A>, ViewMkString<A> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$AbstractTransformed.class */
    public abstract class AbstractTransformed<B> implements TraversableViewLike<A, Coll, This>.Transformed<B> {
        public final /* synthetic */ TraversableViewLike $outer;
        private volatile boolean bitmap$0;
        private final Coll underlying;

        public AbstractTransformed(TraversableViewLike<A, Coll, This> traversableViewLike) {
            Objects.requireNonNull(traversableViewLike);
            this.$outer = traversableViewLike;
            TraversableOnce.Cclass.$init$(this);
            Parallelizable.Cclass.$init$(this);
            TraversableLike.Cclass.$init$(this);
            GenericTraversableTemplate.Cclass.$init$(this);
            GenTraversable.Cclass.$init$(this);
            Traversable.Cclass.$init$(this);
            ViewMkString.Cclass.$init$(this);
            Cclass.$init$(this);
            Transformed.Cclass.$init$(this);
        }

        private Object underlying$lzycompute() {
            synchronized (this) {
                if (!this.bitmap$0) {
                    this.underlying = (Coll) Transformed.Cclass.underlying(this);
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

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<TraversableView<B, Coll>, B, That> canBuildFrom) {
            return (That) Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
        }

        @Override // scala.collection.TraversableLike
        public <B, That> That $plus$plus$colon(Traversable<B> traversable, CanBuildFrom<TraversableView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (Traversable) traversable, (CanBuildFrom) canBuildFrom);
        }

        @Override // scala.collection.TraversableLike
        public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<TraversableView<B, Coll>, B, That> canBuildFrom) {
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

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That collect(PartialFunction<B, B> partialFunction, CanBuildFrom<TraversableView<B, Coll>, B, That> canBuildFrom) {
            return (That) Cclass.collect(this, partialFunction, canBuildFrom);
        }

        @Override // scala.collection.TraversableOnce
        public <B> Option<B> collectFirst(PartialFunction<B, B> partialFunction) {
            return TraversableOnce.Cclass.collectFirst(this, partialFunction);
        }

        @Override // scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<Traversable> companion() {
            return Traversable.Cclass.companion(this);
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
            TraversableLike.Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> void copyToBuffer(Buffer<B> buffer) {
            TraversableOnce.Cclass.copyToBuffer(this, buffer);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<B, Object> function1) {
            return TraversableOnce.Cclass.count(this, function1);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public TraversableView<B, Coll> drop(int i) {
            return Cclass.drop(this, i);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public TraversableView<B, Coll> dropWhile(Function1<B, Object> function1) {
            return Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<B, Object> function1) {
            return TraversableLike.Cclass.exists(this, function1);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public TraversableView<B, Coll> filter(Function1<B, Object> function1) {
            return Cclass.filter(this, function1);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
        public TraversableView<B, Coll> filterNot(Function1<B, Object> function1) {
            return Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<B> find(Function1<B, Object> function1) {
            return TraversableLike.Cclass.find(this, function1);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
        public <B, That> That flatMap(Function1<B, GenTraversableOnce<B>> function1, CanBuildFrom<TraversableView<B, Coll>, B, That> canBuildFrom) {
            return (That) Cclass.flatMap(this, function1, canBuildFrom);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.generic.GenericTraversableTemplate
        public <B> TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<B> flatten(Function1<B, GenTraversableOnce<B>> function1) {
            return Cclass.flatten(this, function1);
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
            return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<B, Object> function1) {
            return TraversableLike.Cclass.forall(this, function1);
        }

        @Override // scala.collection.TraversableViewLike
        public <B, That> That force(CanBuildFrom<Coll, B, That> canBuildFrom) {
            return (That) Cclass.force(this, canBuildFrom);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <B> Builder<B, Traversable<B>> genericBuilder() {
            return GenericTraversableTemplate.Cclass.genericBuilder(this);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <K> Map<K, TraversableView<B, Coll>> groupBy(Function1<B, K> function1) {
            return Cclass.groupBy(this, function1);
        }

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return TraversableLike.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public B head() {
            return (B) TraversableLike.Cclass.head(this);
        }

        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Option<B> headOption() {
            return Transformed.Cclass.headOption(this);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public TraversableView<B, Coll> init() {
            return Cclass.init(this);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike
        public Iterator<TraversableView<B, Coll>> inits() {
            return Cclass.inits(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return TraversableLike.Cclass.isEmpty(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
        public final boolean isTraversableAgain() {
            return TraversableLike.Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public B last() {
            return (B) TraversableLike.Cclass.last(this);
        }

        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Option<B> lastOption() {
            return Transformed.Cclass.lastOption(this);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
        public <B, That> That map(Function1<B, B> function1, CanBuildFrom<TraversableView<B, Coll>, B, That> canBuildFrom) {
            return (That) Cclass.map(this, function1, canBuildFrom);
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

        @Override // scala.collection.TraversableViewLike
        public <B> TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<B> newAppended(GenTraversable<B> genTraversable) {
            return Cclass.newAppended(this, genTraversable);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
        public Builder<B, TraversableView<B, Coll>> newBuilder() {
            return Cclass.newBuilder(this);
        }

        @Override // scala.collection.TraversableViewLike
        public TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<B> newDropped(int i) {
            return Cclass.newDropped(this, i);
        }

        @Override // scala.collection.TraversableViewLike
        public TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<B> newDroppedWhile(Function1<B, Object> function1) {
            return Cclass.newDroppedWhile(this, function1);
        }

        @Override // scala.collection.TraversableViewLike
        public TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<B> newFiltered(Function1<B, Object> function1) {
            return Cclass.newFiltered(this, function1);
        }

        @Override // scala.collection.TraversableViewLike
        public <B> TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<B> newFlatMapped(Function1<B, GenTraversableOnce<B>> function1) {
            return Cclass.newFlatMapped(this, function1);
        }

        @Override // scala.collection.TraversableViewLike
        public <B> TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<B> newForced(Function0<GenSeq<B>> function0) {
            return Cclass.newForced(this, function0);
        }

        @Override // scala.collection.TraversableViewLike
        public <B> TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<B> newMapped(Function1<B, B> function1) {
            return Cclass.newMapped(this, function1);
        }

        @Override // scala.collection.TraversableViewLike
        public TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<B> newSliced(SliceInterval sliceInterval) {
            return Cclass.newSliced(this, sliceInterval);
        }

        @Override // scala.collection.TraversableViewLike
        public TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<B> newTaken(int i) {
            return Cclass.newTaken(this, i);
        }

        @Override // scala.collection.TraversableViewLike
        public TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<B> newTakenWhile(Function1<B, Object> function1) {
            return Cclass.newTakenWhile(this, function1);
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

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Tuple2<TraversableView<B, Coll>, TraversableView<B, Coll>> partition(Function1<B, Object> function1) {
            return Cclass.partition(this, function1);
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
            return (B) TraversableOnce.Cclass.reduceRight(this, function2);
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

        @Override // scala.collection.TraversableViewLike
        public /* synthetic */ TraversableView scala$collection$TraversableViewLike$$super$tail() {
            return (TraversableView) TraversableLike.Cclass.tail(this);
        }

        /* renamed from: scala$collection$TraversableViewLike$AbstractTransformed$$$outer */
        public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Transformed$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<TraversableView<B, Coll>, B, That> canBuildFrom) {
            return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That scanLeft(B b, Function2<B, B, B> function2, CanBuildFrom<TraversableView<B, Coll>, B, That> canBuildFrom) {
            return (That) Cclass.scanLeft(this, b, function2, canBuildFrom);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public <B, That> That scanRight(B b, Function2<B, B, B> function2, CanBuildFrom<TraversableView<B, Coll>, B, That> canBuildFrom) {
            return (That) Cclass.scanRight(this, b, function2, canBuildFrom);
        }

        @Override // scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Traversable<B> seq() {
            return Traversable.Cclass.seq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return TraversableOnce.Cclass.size(this);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public TraversableView<B, Coll> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.TraversableLike
        public Object sliceWithKnownBound(int i, int i2) {
            return TraversableLike.Cclass.sliceWithKnownBound(this, i, i2);
        }

        @Override // scala.collection.TraversableLike
        public Object sliceWithKnownDelta(int i, int i2, int i3) {
            return TraversableLike.Cclass.sliceWithKnownDelta(this, i, i2, i3);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Tuple2<TraversableView<B, Coll>, TraversableView<B, Coll>> span(Function1<B, Object> function1) {
            return Cclass.span(this, function1);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Tuple2<TraversableView<B, Coll>, TraversableView<B, Coll>> splitAt(int i) {
            return Cclass.splitAt(this, i);
        }

        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
        public String stringPrefix() {
            return Transformed.Cclass.stringPrefix(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B sum(Numeric<B> numeric) {
            return (B) TraversableOnce.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public TraversableView<B, Coll> tail() {
            return Cclass.tail(this);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike
        public Iterator<TraversableView<B, Coll>> tails() {
            return Cclass.tails(this);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public TraversableView<B, Coll> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public TraversableView<B, Coll> takeWhile(Function1<B, Object> function1) {
            return Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.TraversableLike, scala.collection.IterableLike
        public Traversable<B> thisCollection() {
            return TraversableLike.Cclass.thisCollection(this);
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
        public Traversable toCollection(Object obj) {
            return TraversableLike.Cclass.toCollection(this, obj);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public IndexedSeq<B> toIndexedSeq() {
            return TraversableOnce.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterable<B> toIterable() {
            return TraversableOnce.Cclass.toIterable(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<B> toIterator() {
            return TraversableLike.Cclass.toIterator(this);
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
            return TraversableLike.Cclass.toStream(this);
        }

        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
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
        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableViewLike
        public Coll underlying() {
            return this.bitmap$0 ? this.underlying : underlying$lzycompute();
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.generic.GenericTraversableTemplate
        public <A1, A2> Tuple2<TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<A1>, TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<A2>> unzip(Function1<B, Tuple2<A1, A2>> function1) {
            return Cclass.unzip(this, function1);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.generic.GenericTraversableTemplate
        public <A1, A2, A3> Tuple3<TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<A1>, TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<A2>, TraversableViewLike<B, Coll, TraversableView<B, Coll>>.Transformed<A3>> unzip3(Function1<B, Tuple3<A1, A2, A3>> function1) {
            return Cclass.unzip3(this, function1);
        }

        @Override // scala.collection.TraversableLike, scala.collection.IterableLike
        public Object view() {
            return TraversableLike.Cclass.view(this);
        }

        @Override // scala.collection.TraversableLike, scala.collection.IterableLike
        public TraversableView<B, TraversableView<B, Coll>> view(int i, int i2) {
            return TraversableLike.Cclass.view(this, i, i2);
        }

        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableViewLike
        public final String viewIdString() {
            return Transformed.Cclass.viewIdString(this);
        }

        @Override // scala.collection.TraversableViewLike
        public String viewIdentifier() {
            return Cclass.viewIdentifier(this);
        }

        @Override // scala.collection.TraversableViewLike
        public String viewToString() {
            return Cclass.viewToString(this);
        }

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
        public TraversableView<B, Coll> withFilter(Function1<B, Object> function1) {
            return Cclass.withFilter(this, function1);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Appended.class */
    public interface Appended<B> extends TraversableViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.TraversableViewLike$Appended$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Appended$class.class */
        public abstract class Cclass {
            public static void $init$(Appended appended) {
            }

            public static void foreach(Appended appended, Function1 function1) {
                appended.scala$collection$TraversableViewLike$Appended$$$outer().foreach(function1);
                appended.rest().foreach(function1);
            }

            public static final String viewIdentifier(Appended appended) {
                return ExifInterface.GPS_MEASUREMENT_IN_PROGRESS;
            }
        }

        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        <U> void foreach(Function1<B, U> function1);

        GenTraversable<B> rest();

        /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Appended$$$outer();

        @Override // scala.collection.TraversableViewLike
        String viewIdentifier();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$DroppedWhile.class */
    public interface DroppedWhile extends TraversableViewLike<A, Coll, This>.Transformed<A> {

        /* renamed from: scala.collection.TraversableViewLike$DroppedWhile$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$DroppedWhile$class.class */
        public abstract class Cclass {
            public static void $init$(DroppedWhile droppedWhile) {
            }

            public static void foreach(DroppedWhile droppedWhile, Function1 function1) {
                droppedWhile.scala$collection$TraversableViewLike$DroppedWhile$$$outer().foreach(new TraversableViewLike$DroppedWhile$$anonfun$foreach$6(droppedWhile, BooleanRef.create(false), function1));
            }

            public static final String viewIdentifier(DroppedWhile droppedWhile) {
                return "D";
            }
        }

        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        <U> void foreach(Function1<A, U> function1);

        Function1<A, Object> pred();

        /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$DroppedWhile$$$outer();

        @Override // scala.collection.TraversableViewLike
        String viewIdentifier();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$EmptyView.class */
    public interface EmptyView extends TraversableViewLike<A, Coll, This>.Transformed<Nothing$> {

        /* renamed from: scala.collection.TraversableViewLike$EmptyView$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$EmptyView$class.class */
        public abstract class Cclass {
            public static void $init$(EmptyView emptyView) {
            }

            public static final void foreach(EmptyView emptyView, Function1 function1) {
            }

            public static final boolean isEmpty(EmptyView emptyView) {
                return true;
            }
        }

        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        <U> void foreach(Function1<Nothing$, U> function1);

        @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        boolean isEmpty();

        /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$EmptyView$$$outer();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Filtered.class */
    public interface Filtered extends TraversableViewLike<A, Coll, This>.Transformed<A> {

        /* renamed from: scala.collection.TraversableViewLike$Filtered$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Filtered$class.class */
        public abstract class Cclass {
            public static void $init$(Filtered filtered) {
            }

            public static void foreach(Filtered filtered, Function1 function1) {
                filtered.scala$collection$TraversableViewLike$Filtered$$$outer().foreach(new TraversableViewLike$Filtered$$anonfun$foreach$4(filtered, function1));
            }

            public static final String viewIdentifier(Filtered filtered) {
                return "F";
            }
        }

        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        <U> void foreach(Function1<A, U> function1);

        Function1<A, Object> pred();

        /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Filtered$$$outer();

        @Override // scala.collection.TraversableViewLike
        String viewIdentifier();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$FlatMapped.class */
    public interface FlatMapped<B> extends TraversableViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.TraversableViewLike$FlatMapped$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$FlatMapped$class.class */
        public abstract class Cclass {
            public static void $init$(FlatMapped flatMapped) {
            }

            public static void foreach(FlatMapped flatMapped, Function1 function1) {
                flatMapped.scala$collection$TraversableViewLike$FlatMapped$$$outer().foreach(new TraversableViewLike$FlatMapped$$anonfun$foreach$3(flatMapped, function1));
            }

            public static final String viewIdentifier(FlatMapped flatMapped) {
                return "N";
            }
        }

        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        <U> void foreach(Function1<B, U> function1);

        Function1<A, GenTraversableOnce<B>> mapping();

        /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$FlatMapped$$$outer();

        @Override // scala.collection.TraversableViewLike
        String viewIdentifier();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Forced.class */
    public interface Forced<B> extends TraversableViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.TraversableViewLike$Forced$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Forced$class.class */
        public abstract class Cclass {
            public static void $init$(Forced forced) {
            }

            public static void foreach(Forced forced, Function1 function1) {
                forced.forced().foreach(function1);
            }

            public static final String viewIdentifier(Forced forced) {
                return "C";
            }
        }

        GenSeq<B> forced();

        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        <U> void foreach(Function1<B, U> function1);

        /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Forced$$$outer();

        @Override // scala.collection.TraversableViewLike
        String viewIdentifier();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Mapped.class */
    public interface Mapped<B> extends TraversableViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.TraversableViewLike$Mapped$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Mapped$class.class */
        public abstract class Cclass {
            public static void $init$(Mapped mapped) {
            }

            public static void foreach(Mapped mapped, Function1 function1) {
                mapped.scala$collection$TraversableViewLike$Mapped$$$outer().foreach(new TraversableViewLike$Mapped$$anonfun$foreach$2(mapped, function1));
            }

            public static final String viewIdentifier(Mapped mapped) {
                return "M";
            }
        }

        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        <U> void foreach(Function1<B, U> function1);

        Function1<A, B> mapping();

        /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Mapped$$$outer();

        @Override // scala.collection.TraversableViewLike
        String viewIdentifier();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Sliced.class */
    public interface Sliced extends TraversableViewLike<A, Coll, This>.Transformed<A> {

        /* renamed from: scala.collection.TraversableViewLike$Sliced$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Sliced$class.class */
        public abstract class Cclass {
            public static void $init$(Sliced sliced) {
            }

            public static void foreach(Sliced sliced, Function1 function1) {
                Object obj = new Object();
                try {
                    sliced.scala$collection$TraversableViewLike$Sliced$$$outer().foreach(new TraversableViewLike$Sliced$$anonfun$foreach$1(sliced, IntRef.create(0), obj, function1));
                } catch (NonLocalReturnControl e) {
                    if (e.key() != obj) {
                        throw e;
                    }
                    e.value$mcV$sp();
                }
            }

            public static int from(Sliced sliced) {
                return sliced.endpoints().from();
            }

            public static int until(Sliced sliced) {
                return sliced.endpoints().until();
            }

            public static final String viewIdentifier(Sliced sliced) {
                return ExifInterface.LATITUDE_SOUTH;
            }
        }

        SliceInterval endpoints();

        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        <U> void foreach(Function1<A, U> function1);

        int from();

        /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Sliced$$$outer();

        int until();

        @Override // scala.collection.TraversableViewLike
        String viewIdentifier();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$TakenWhile.class */
    public interface TakenWhile extends TraversableViewLike<A, Coll, This>.Transformed<A> {

        /* renamed from: scala.collection.TraversableViewLike$TakenWhile$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$TakenWhile$class.class */
        public abstract class Cclass {
            public static void $init$(TakenWhile takenWhile) {
            }

            public static void foreach(TakenWhile takenWhile, Function1 function1) {
                Object obj = new Object();
                try {
                    takenWhile.scala$collection$TraversableViewLike$TakenWhile$$$outer().foreach(new TraversableViewLike$TakenWhile$$anonfun$foreach$5(takenWhile, obj, function1));
                } catch (NonLocalReturnControl e) {
                    if (e.key() != obj) {
                        throw e;
                    }
                    e.value$mcV$sp();
                }
            }

            public static final String viewIdentifier(TakenWhile takenWhile) {
                return "T";
            }
        }

        @Override // scala.collection.TraversableViewLike.Transformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        <U> void foreach(Function1<A, U> function1);

        Function1<A, Object> pred();

        /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$TakenWhile$$$outer();

        @Override // scala.collection.TraversableViewLike
        String viewIdentifier();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Transformed.class */
    public interface Transformed<B> extends TraversableView<B, Coll> {

        /* renamed from: scala.collection.TraversableViewLike$Transformed$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Transformed$class.class */
        public abstract class Cclass {
            public static void $init$(Transformed transformed) {
            }

            public static Option headOption(Transformed transformed) {
                None$ none$;
                Object obj = new Object();
                try {
                    transformed.foreach(new TraversableViewLike$Transformed$$anonfun$headOption$1(transformed, obj));
                    none$ = None$.MODULE$;
                } catch (NonLocalReturnControl e) {
                    if (e.key() != obj) {
                        throw e;
                    }
                    none$ = (Option) e.value();
                }
                return none$;
            }

            public static Option lastOption(Transformed transformed) {
                BooleanRef create = BooleanRef.create(true);
                ObjectRef create2 = ObjectRef.create(null);
                transformed.foreach(new TraversableViewLike$Transformed$$anonfun$lastOption$1(transformed, create, create2));
                return create.elem ? None$.MODULE$ : new Some(create2.elem);
            }

            public static String stringPrefix(Transformed transformed) {
                return transformed.scala$collection$TraversableViewLike$Transformed$$$outer().stringPrefix();
            }

            public static String toString(Transformed transformed) {
                return transformed.viewToString();
            }

            public static Object underlying(Transformed transformed) {
                return transformed.scala$collection$TraversableViewLike$Transformed$$$outer().underlying();
            }

            public static final String viewIdString(Transformed transformed) {
                return new StringBuilder().append((Object) transformed.scala$collection$TraversableViewLike$Transformed$$$outer().viewIdString()).append((Object) transformed.viewIdentifier()).toString();
            }
        }

        @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        <U> void foreach(Function1<B, U> function1);

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        Option<B> headOption();

        @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
        Option<B> lastOption();

        /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Transformed$$$outer();

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
        String stringPrefix();

        @Override // scala.collection.TraversableViewLike, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
        String toString();

        @Override // scala.collection.TraversableViewLike
        Coll underlying();

        @Override // scala.collection.TraversableViewLike
        String viewIdString();
    }

    /* renamed from: scala.collection.TraversableViewLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$class.class */
    public abstract class Cclass {
        public static void $init$(TraversableViewLike traversableViewLike) {
        }

        public static Object $plus$plus(TraversableViewLike traversableViewLike, GenTraversableOnce genTraversableOnce, CanBuildFrom canBuildFrom) {
            return traversableViewLike.newAppended(genTraversableOnce.seq().toTraversable());
        }

        public static Object collect(TraversableViewLike traversableViewLike, PartialFunction partialFunction, CanBuildFrom canBuildFrom) {
            return traversableViewLike.filter((Function1) new TraversableViewLike$$anonfun$collect$1(traversableViewLike, partialFunction)).map(partialFunction, canBuildFrom);
        }

        public static TraversableView drop(TraversableViewLike traversableViewLike, int i) {
            return scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newDropped(i));
        }

        public static TraversableView dropWhile(TraversableViewLike traversableViewLike, Function1 function1) {
            return scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newDroppedWhile(function1));
        }

        public static TraversableView filter(TraversableViewLike traversableViewLike, Function1 function1) {
            return scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newFiltered(function1));
        }

        public static TraversableView filterNot(TraversableViewLike traversableViewLike, Function1 function1) {
            return scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newFiltered(new TraversableViewLike$$anonfun$filterNot$1(traversableViewLike, function1)));
        }

        public static Object flatMap(TraversableViewLike traversableViewLike, Function1 function1, CanBuildFrom canBuildFrom) {
            return traversableViewLike.newFlatMapped(function1);
        }

        public static Transformed flatten(TraversableViewLike traversableViewLike, Function1 function1) {
            return traversableViewLike.newFlatMapped(function1);
        }

        public static Object force(TraversableViewLike traversableViewLike, CanBuildFrom canBuildFrom) {
            Builder apply = canBuildFrom.apply(traversableViewLike.underlying());
            apply.$plus$plus$eq(traversableViewLike);
            return apply.result();
        }

        public static Map groupBy(TraversableViewLike traversableViewLike, Function1 function1) {
            return traversableViewLike.thisSeq().groupBy(function1).mapValues((Function1) new TraversableViewLike$$anonfun$groupBy$1(traversableViewLike));
        }

        public static TraversableView init(TraversableViewLike traversableViewLike) {
            return scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newSliced(SliceInterval$.MODULE$.apply(0, traversableViewLike.size() - 1)));
        }

        public static Iterator inits(TraversableViewLike traversableViewLike) {
            return traversableViewLike.thisSeq().inits().map(new TraversableViewLike$$anonfun$inits$1(traversableViewLike));
        }

        public static Object map(TraversableViewLike traversableViewLike, Function1 function1, CanBuildFrom canBuildFrom) {
            return traversableViewLike.newMapped(function1);
        }

        public static Transformed newAppended(TraversableViewLike traversableViewLike, GenTraversable genTraversable) {
            return new TraversableViewLike$$anon$2(traversableViewLike, genTraversable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Builder newBuilder(TraversableViewLike traversableViewLike) {
            throw new UnsupportedOperationException(Predef$any2stringadd$.MODULE$.$plus$extension(Predef$.MODULE$.any2stringadd(traversableViewLike), ".newBuilder"));
        }

        public static Transformed newDropped(TraversableViewLike traversableViewLike, int i) {
            return traversableViewLike.newSliced(SliceInterval$.MODULE$.apply(i, Integer.MAX_VALUE));
        }

        public static Transformed newDroppedWhile(TraversableViewLike traversableViewLike, Function1 function1) {
            return new TraversableViewLike$$anon$7(traversableViewLike, function1);
        }

        public static Transformed newFiltered(TraversableViewLike traversableViewLike, Function1 function1) {
            return new TraversableViewLike$$anon$5(traversableViewLike, function1);
        }

        public static Transformed newFlatMapped(TraversableViewLike traversableViewLike, Function1 function1) {
            return new TraversableViewLike$$anon$4(traversableViewLike, function1);
        }

        public static Transformed newForced(TraversableViewLike traversableViewLike, Function0 function0) {
            return new TraversableViewLike$$anon$1(traversableViewLike, function0);
        }

        public static Transformed newMapped(TraversableViewLike traversableViewLike, Function1 function1) {
            return new TraversableViewLike$$anon$3(traversableViewLike, function1);
        }

        public static Transformed newSliced(TraversableViewLike traversableViewLike, SliceInterval sliceInterval) {
            return new TraversableViewLike$$anon$6(traversableViewLike, sliceInterval);
        }

        public static Transformed newTaken(TraversableViewLike traversableViewLike, int i) {
            return traversableViewLike.newSliced(SliceInterval$.MODULE$.apply(0, i));
        }

        public static Transformed newTakenWhile(TraversableViewLike traversableViewLike, Function1 function1) {
            return new TraversableViewLike$$anon$8(traversableViewLike, function1);
        }

        public static Tuple2 partition(TraversableViewLike traversableViewLike, Function1 function1) {
            return new Tuple2(scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newFiltered(function1)), scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newFiltered(new TraversableViewLike$$anonfun$partition$1(traversableViewLike, function1))));
        }

        public static TraversableView scala$collection$TraversableViewLike$$asThis(TraversableViewLike traversableViewLike, Transformed transformed) {
            return transformed;
        }

        public static Object scanLeft(TraversableViewLike traversableViewLike, Object obj, Function2 function2, CanBuildFrom canBuildFrom) {
            return traversableViewLike.newForced(new TraversableViewLike$$anonfun$scanLeft$1(traversableViewLike, obj, function2));
        }

        public static Object scanRight(TraversableViewLike traversableViewLike, Object obj, Function2 function2, CanBuildFrom canBuildFrom) {
            return traversableViewLike.newForced(new TraversableViewLike$$anonfun$scanRight$1(traversableViewLike, obj, function2));
        }

        public static TraversableView slice(TraversableViewLike traversableViewLike, int i, int i2) {
            return scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newSliced(SliceInterval$.MODULE$.apply(i, i2)));
        }

        public static Tuple2 span(TraversableViewLike traversableViewLike, Function1 function1) {
            return new Tuple2(scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newTakenWhile(function1)), scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newDroppedWhile(function1)));
        }

        public static Tuple2 splitAt(TraversableViewLike traversableViewLike, int i) {
            return new Tuple2(scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newTaken(i)), scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newDropped(i)));
        }

        public static String stringPrefix(TraversableViewLike traversableViewLike) {
            return "TraversableView";
        }

        public static TraversableView tail(TraversableViewLike traversableViewLike) {
            return traversableViewLike.isEmpty() ? traversableViewLike.scala$collection$TraversableViewLike$$super$tail() : scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newDropped(1));
        }

        public static Iterator tails(TraversableViewLike traversableViewLike) {
            return traversableViewLike.thisSeq().tails().map(new TraversableViewLike$$anonfun$tails$1(traversableViewLike));
        }

        public static TraversableView take(TraversableViewLike traversableViewLike, int i) {
            return scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newTaken(i));
        }

        public static TraversableView takeWhile(TraversableViewLike traversableViewLike, Function1 function1) {
            return scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newTakenWhile(function1));
        }

        public static String toString(TraversableViewLike traversableViewLike) {
            return traversableViewLike.viewToString();
        }

        public static Tuple2 unzip(TraversableViewLike traversableViewLike, Function1 function1) {
            return new Tuple2(traversableViewLike.newMapped(new TraversableViewLike$$anonfun$unzip$1(traversableViewLike, function1)), traversableViewLike.newMapped(new TraversableViewLike$$anonfun$unzip$2(traversableViewLike, function1)));
        }

        public static Tuple3 unzip3(TraversableViewLike traversableViewLike, Function1 function1) {
            return new Tuple3(traversableViewLike.newMapped(new TraversableViewLike$$anonfun$unzip3$1(traversableViewLike, function1)), traversableViewLike.newMapped(new TraversableViewLike$$anonfun$unzip3$2(traversableViewLike, function1)), traversableViewLike.newMapped(new TraversableViewLike$$anonfun$unzip3$3(traversableViewLike, function1)));
        }

        public static String viewIdString(TraversableViewLike traversableViewLike) {
            return "";
        }

        public static String viewIdentifier(TraversableViewLike traversableViewLike) {
            return "";
        }

        public static String viewToString(TraversableViewLike traversableViewLike) {
            return new StringBuilder().append((Object) traversableViewLike.stringPrefix()).append((Object) traversableViewLike.viewIdString()).append((Object) "(...)").toString();
        }

        public static TraversableView withFilter(TraversableViewLike traversableViewLike, Function1 function1) {
            return scala$collection$TraversableViewLike$$asThis(traversableViewLike, traversableViewLike.newFiltered(function1));
        }
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<This, B, That> canBuildFrom);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    <B, That> That collect(PartialFunction<A, B> partialFunction, CanBuildFrom<This, B, That> canBuildFrom);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    This drop(int i);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    This dropWhile(Function1<A, Object> function1);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    This filter(Function1<A, Object> function1);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
    This filterNot(Function1<A, Object> function1);

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
    <B, That> That flatMap(Function1<A, GenTraversableOnce<B>> function1, CanBuildFrom<This, B, That> canBuildFrom);

    <B> TraversableViewLike<A, Coll, This>.Transformed<B> flatten(Function1<A, GenTraversableOnce<B>> function1);

    <B, That> That force(CanBuildFrom<Coll, B, That> canBuildFrom);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    <K> Map<K, This> groupBy(Function1<A, K> function1);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    This init();

    @Override // scala.collection.TraversableLike
    Iterator<This> inits();

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
    <B, That> That map(Function1<A, B> function1, CanBuildFrom<This, B, That> canBuildFrom);

    <B> TraversableViewLike<A, Coll, This>.Transformed<B> newAppended(GenTraversable<B> genTraversable);

    @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    Builder<A, This> newBuilder();

    TraversableViewLike<A, Coll, This>.Transformed<A> newDropped(int i);

    TraversableViewLike<A, Coll, This>.Transformed<A> newDroppedWhile(Function1<A, Object> function1);

    TraversableViewLike<A, Coll, This>.Transformed<A> newFiltered(Function1<A, Object> function1);

    <B> TraversableViewLike<A, Coll, This>.Transformed<B> newFlatMapped(Function1<A, GenTraversableOnce<B>> function1);

    <B> TraversableViewLike<A, Coll, This>.Transformed<B> newForced(Function0<GenSeq<B>> function0);

    <B> TraversableViewLike<A, Coll, This>.Transformed<B> newMapped(Function1<A, B> function1);

    TraversableViewLike<A, Coll, This>.Transformed<A> newSliced(SliceInterval sliceInterval);

    TraversableViewLike<A, Coll, This>.Transformed<A> newTaken(int i);

    TraversableViewLike<A, Coll, This>.Transformed<A> newTakenWhile(Function1<A, Object> function1);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    Tuple2<This, This> partition(Function1<A, Object> function1);

    /* synthetic */ TraversableView scala$collection$TraversableViewLike$$super$tail();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    <B, That> That scanLeft(B b, Function2<B, A, B> function2, CanBuildFrom<This, B, That> canBuildFrom);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    <B, That> That scanRight(B b, Function2<A, B, B> function2, CanBuildFrom<This, B, That> canBuildFrom);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    This slice(int i, int i2);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    Tuple2<This, This> span(Function1<A, Object> function1);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    Tuple2<This, This> splitAt(int i);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    String stringPrefix();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    This tail();

    @Override // scala.collection.TraversableLike
    Iterator<This> tails();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    This take(int i);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    This takeWhile(Function1<A, Object> function1);

    @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    String toString();

    Coll underlying();

    <A1, A2> Tuple2<TraversableViewLike<A, Coll, This>.Transformed<A1>, TraversableViewLike<A, Coll, This>.Transformed<A2>> unzip(Function1<A, Tuple2<A1, A2>> function1);

    <A1, A2, A3> Tuple3<TraversableViewLike<A, Coll, This>.Transformed<A1>, TraversableViewLike<A, Coll, This>.Transformed<A2>, TraversableViewLike<A, Coll, This>.Transformed<A3>> unzip3(Function1<A, Tuple3<A1, A2, A3>> function1);

    String viewIdString();

    String viewIdentifier();

    String viewToString();

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
    This withFilter(Function1<A, Object> function1);
}
