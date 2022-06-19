package scala.collection.mutable;

import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.Predef$;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.CustomParallelizable;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.IndexedSeq;
import scala.collection.IndexedSeqLike;
import scala.collection.IndexedSeqOptimized;
import scala.collection.IterableLike;
import scala.collection.Iterator;
import scala.collection.SeqLike;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.mutable.ArrayLike;
import scala.collection.mutable.IndexedSeq;
import scala.collection.mutable.IndexedSeqLike;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParArray;
import scala.collection.parallel.mutable.ParArray$;
import scala.reflect.ClassTag;
import scala.reflect.ClassTag$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\ref!B\u0001\u0003\u0003\u0003I!\u0001D,sCB\u0004X\rZ!se\u0006L(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)\"AC\t\u0014\u000b\u0001Y1D\b\u0012\u0011\u00071iq\"D\u0001\u0003\u0013\tq!AA\u0006BEN$(/Y2u'\u0016\f\bC\u0001\t\u0012\u0019\u0001!QA\u0005\u0001C\u0002M\u0011\u0011\u0001V\t\u0003)a\u0001\"!\u0006\f\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z!\raAdD\u0005\u0003;\t\u0011!\"\u00138eKb,GmU3r!\u0011aqdD\u0011\n\u0005\u0001\u0012!!C!se\u0006LH*[6f!\ra\u0001a\u0004\t\u0005G\u0011za%D\u0001\u0005\u0013\t)CA\u0001\u000bDkN$x.\u001c)be\u0006dG.\u001a7ju\u0006\u0014G.\u001a\t\u0004O-zQ\"\u0001\u0015\u000b\u0005\rI#B\u0001\u0016\u0005\u0003!\u0001\u0018M]1mY\u0016d\u0017B\u0001\u0017)\u0005!\u0001\u0016M]!se\u0006L\b\"\u0002\u0018\u0001\t\u0003y\u0013A\u0002\u001fj]&$h\bF\u0001\"\u0011\u0019\t\u0004\u0001)C)e\u0005qA\u000f[5t\u0007>dG.Z2uS>tW#A\u0011\t\rQ\u0002\u0001\u0015\"\u00156\u00031!xnQ8mY\u0016\u001cG/[8o)\t\tc\u0007C\u00038g\u0001\u0007\u0011%\u0001\u0003sKB\u0014\b\"B\u001d\u0001\r\u0003Q\u0014aB3mK6$\u0016mZ\u000b\u0002wA\u0019AhP\b\u000e\u0003uR!A\u0010\u0004\u0002\u000fI,g\r\\3di&\u0011\u0001)\u0010\u0002\t\u00072\f7o\u001d+bO\")!\t\u0001C\u0001\u0007\u0006aQ\r\\3n\u001b\u0006t\u0017NZ3tiV\tA\tE\u0002F\u0011>q!!\u0006$\n\u0005\u001d3\u0011A\u0002)sK\u0012,g-\u0003\u0002J\u0015\ni1\t\\1tg6\u000bg.\u001b4fgRT!a\u0012\u0004)\t\u0005cu*\u0015\t\u0003+5K!A\u0014\u0004\u0003\u0015\u0011,\u0007O]3dCR,G-I\u0001Q\u0003M)8/\u001a\u0011fY\u0016lG+Y4!S:\u001cH/Z1eC\u0005\u0011\u0016A\u0002\u001a/cAr\u0003\u0007C\u0003U\u0001\u0019\u0005Q+\u0001\u0004mK:<G\u000f[\u000b\u0002-B\u0011QcV\u0005\u00031\u001a\u00111!\u00138u\u0011\u0015Q\u0006A\"\u0001\\\u0003\u0015\t\u0007\u000f\u001d7z)\tyA\fC\u0003^3\u0002\u0007a+A\u0003j]\u0012,\u0007\u0010C\u0003`\u0001\u0019\u0005\u0001-\u0001\u0004va\u0012\fG/\u001a\u000b\u0004C\u0012,\u0007CA\u000bc\u0013\t\u0019gA\u0001\u0003V]&$\b\"B/_\u0001\u00041\u0006\"\u00024_\u0001\u0004y\u0011\u0001B3mK6DQ\u0001\u001b\u0001\u0007\u0002%\fQ!\u0019:sCf,\u0012A\u001b\t\u0004+-|\u0011B\u00017\u0007\u0005\u0015\t%O]1z\u0011\u0015q\u0007\u0001\"\u0011p\u0003\r\u0001\u0018M]\u000b\u0002M!)\u0011\u000f\u0001C\u0005e\u0006aQ\r\\3nK:$8\t\\1tgV\t1\u000f\r\u0002uqB\u0019Q)^<\n\u0005YT%!B\"mCN\u001c\bC\u0001\ty\t%I\b/!A\u0001\u0002\u000b\u00051CA\u0002`IEBQa\u001f\u0001\u0005Bq\fq\u0001^8BeJ\f\u00170F\u0002~\u0003\u0003!2A`A\u0004!\r)2n \t\u0004!\u0005\u0005AaBA\u0002u\n\u0007\u0011Q\u0001\u0002\u0002+F\u0011q\u0002\u0007\u0005\n\u0003\u0013Q\u0018\u0011!a\u0002\u0003\u0017\t!\"\u001a<jI\u0016t7-\u001a\u00132!\rath \u0005\b\u0003\u001f\u0001A\u0011IA\t\u00031\u0019HO]5oOB\u0013XMZ5y+\t\t\u0019\u0002\u0005\u0003\u0002\u0016\u0005}QBAA\f\u0015\u0011\tI\"a\u0007\u0002\t1\fgn\u001a\u0006\u0003\u0003;\tAA[1wC&!\u0011\u0011EA\f\u0005\u0019\u0019FO]5oO\"1\u0011Q\u0005\u0001\u0005B=\nQa\u00197p]\u0016D\u0001\"!\u000b\u0001A\u0013E\u00131F\u0001\u000b]\u0016<()^5mI\u0016\u0014XCAA\u0017!\u0015a\u0011qF\b\"\u0013\r\t\tD\u0001\u0002\b\u0005VLG\u000eZ3s\u000f\u001d\t)D\u0001E\u0001\u0003o\tAb\u0016:baB,G-\u0011:sCf\u00042\u0001DA\u001d\r\u0019\t!\u0001#\u0001\u0002<M!\u0011\u0011HA\u001f!\r)\u0012qH\u0005\u0004\u0003\u00032!AB!osJ+g\rC\u0004/\u0003s!\t!!\u0012\u0015\u0005\u0005]\u0002BCA%\u0003s\u0011\r\u0011\"\u0003\u0002L\u0005\tR)\u001c9us^\u0013\u0018\r\u001d9fI\u0006\u0013(/Y=\u0016\u0005\u00055\u0003CBA(\u0003#\ni$\u0004\u0002\u0002:\u00199\u00111KA\u001d\u0005\u0005U#!B8g%\u00164W\u0003BA,\u0003;\u001ab!!\u0015\u0002Z\u0005\u0005\u0004\u0003\u0002\u0007\u0001\u00037\u00022\u0001EA/\t\u001d\u0011\u0012\u0011\u000bb\u0001\u0003?\n2\u0001FA\u001f!\r)\u00121M\u0005\u0004\u0003K2!\u0001D*fe&\fG.\u001b>bE2,\u0007B\u00035\u0002R\t\u0015\r\u0011\"\u0001\u0002jU\u0011\u00111\u000e\t\u0005+-\fY\u0006C\u0006\u0002p\u0005E#\u0011!Q\u0001\n\u0005-\u0014AB1se\u0006L\b\u0005C\u0004/\u0003#\"\t!a\u001d\u0015\t\u0005U\u0014q\u000f\t\u0007\u0003\u001f\n\t&a\u0017\t\u000f!\f\t\b1\u0001\u0002l!Q\u0011(!\u0015\t\u0006\u0004%\t!a\u001f\u0016\u0005\u0005u\u0004\u0003\u0002\u001f@\u00037B1\"!!\u0002R!\u0005\t\u0015)\u0003\u0002~\u0005AQ\r\\3n)\u0006<\u0007\u0005\u0003\u0004U\u0003#\"\t!\u0016\u0005\b5\u0006EC\u0011AAD)\u0011\tY&!#\t\ru\u000b)\t1\u0001W\u0011\u001dy\u0016\u0011\u000bC\u0001\u0003\u001b#R!YAH\u0003#Ca!XAF\u0001\u00041\u0006b\u00024\u0002\f\u0002\u0007\u00111\f\u0005\n\u0003+\u000bI\u0004)A\u0005\u0003\u001b\n!#R7qif<&/\u00199qK\u0012\f%O]1zA!A\u0011\u0011TA\u001d\t\u0003\tY*A\u0003f[B$\u00180\u0006\u0003\u0002\u001e\u0006\rVCAAP!\u0011a\u0001!!)\u0011\u0007A\t\u0019\u000bB\u0004\u0013\u0003/\u0013\r!a\u0018\t\u0011\u0005\u001d\u0016\u0011\bC\u0001\u0003S\u000bA!\\1lKV!\u00111VAY)\u0011\ti+a-\u0011\t1\u0001\u0011q\u0016\t\u0004!\u0005EFA\u0002\n\u0002&\n\u00071\u0003\u0003\u0005\u00026\u0006\u0015\u0006\u0019AA\u001f\u0003\u0005A\b\u0002CA]\u0003s!\u0019!a/\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\t\u0005u\u0016q\u001b\u000b\u0005\u0003\u007f\u000bY\u000e\u0005\u0006\u0002B\u0006\u001d\u00171ZAk\u00033l!!a1\u000b\u0007\u0005\u0015G!A\u0004hK:,'/[2\n\t\u0005%\u00171\u0019\u0002\r\u0007\u0006t')^5mI\u001a\u0013x.\u001c\u0019\u0005\u0003\u001b\f\t\u000e\u0005\u0003\r\u0001\u0005=\u0007c\u0001\t\u0002R\u0012Y\u00111[A\\\u0003\u0003\u0005\tQ!\u0001\u0014\u0005\ryFE\r\t\u0004!\u0005]GA\u0002\n\u00028\n\u00071\u0003\u0005\u0003\r\u0001\u0005U\u0007\u0002CAo\u0003o\u0003\u001d!a8\u0002\u00035\u0004B\u0001P \u0002V\"A\u0011\u0011FA\u001d\t\u0003\t\u0019/\u0006\u0003\u0002f\u0006-XCAAt!\u001da\u0011qFAu\u0003_\u00042\u0001EAv\t\u001d\ti/!9C\u0002M\u0011\u0011!\u0011\t\u0005\u0019q\tIOB\u0004\u0002t\u0006e\"!!>\u0003\r=4')\u001f;f'\u0019\t\t0a>\u0002bA!A\u0002AA}!\r)\u00121`\u0005\u0004\u0003{4!\u0001\u0002\"zi\u0016D!\u0002[Ay\u0005\u000b\u0007I\u0011\u0001B\u0001+\t\u0011\u0019\u0001\u0005\u0003\u0016W\u0006e\bbCA8\u0003c\u0014\t\u0011)A\u0005\u0005\u0007AqALAy\t\u0003\u0011I\u0001\u0006\u0003\u0003\f\t5\u0001\u0003BA(\u0003cDq\u0001\u001bB\u0004\u0001\u0004\u0011\u0019\u0001C\u0004:\u0003c$\tA!\u0005\u0016\u0005\tM\u0001\u0003\u0002\u001f@\u0003sDa\u0001VAy\t\u0003)\u0006b\u0002.\u0002r\u0012\u0005!\u0011\u0004\u000b\u0005\u0003s\u0014Y\u0002\u0003\u0004^\u0005/\u0001\rA\u0016\u0005\b?\u0006EH\u0011\u0001B\u0010)\u0015\t'\u0011\u0005B\u0012\u0011\u0019i&Q\u0004a\u0001-\"9aM!\bA\u0002\u0005eha\u0002B\u0014\u0003s\u0011!\u0011\u0006\u0002\b_\u001a\u001c\u0006n\u001c:u'\u0019\u0011)Ca\u000b\u0002bA!A\u0002\u0001B\u0017!\r)\"qF\u0005\u0004\u0005c1!!B*i_J$\bB\u00035\u0003&\t\u0015\r\u0011\"\u0001\u00036U\u0011!q\u0007\t\u0005+-\u0014i\u0003C\u0006\u0002p\t\u0015\"\u0011!Q\u0001\n\t]\u0002b\u0002\u0018\u0003&\u0011\u0005!Q\b\u000b\u0005\u0005\u007f\u0011\t\u0005\u0005\u0003\u0002P\t\u0015\u0002b\u00025\u0003<\u0001\u0007!q\u0007\u0005\bs\t\u0015B\u0011\u0001B#+\t\u00119\u0005\u0005\u0003=\u007f\t5\u0002B\u0002+\u0003&\u0011\u0005Q\u000bC\u0004[\u0005K!\tA!\u0014\u0015\t\t5\"q\n\u0005\u0007;\n-\u0003\u0019\u0001,\t\u000f}\u0013)\u0003\"\u0001\u0003TQ)\u0011M!\u0016\u0003X!1QL!\u0015A\u0002YCqA\u001aB)\u0001\u0004\u0011iCB\u0004\u0003\\\u0005e\"A!\u0018\u0003\r=47\t[1s'\u0019\u0011IFa\u0018\u0002bA!A\u0002\u0001B1!\r)\"1M\u0005\u0004\u0005K2!\u0001B\"iCJD!\u0002\u001bB-\u0005\u000b\u0007I\u0011\u0001B5+\t\u0011Y\u0007\u0005\u0003\u0016W\n\u0005\u0004bCA8\u00053\u0012\t\u0011)A\u0005\u0005WBqA\fB-\t\u0003\u0011\t\b\u0006\u0003\u0003t\tU\u0004\u0003BA(\u00053Bq\u0001\u001bB8\u0001\u0004\u0011Y\u0007C\u0004:\u00053\"\tA!\u001f\u0016\u0005\tm\u0004\u0003\u0002\u001f@\u0005CBa\u0001\u0016B-\t\u0003)\u0006b\u0002.\u0003Z\u0011\u0005!\u0011\u0011\u000b\u0005\u0005C\u0012\u0019\t\u0003\u0004^\u0005\u007f\u0002\rA\u0016\u0005\b?\neC\u0011\u0001BD)\u0015\t'\u0011\u0012BF\u0011\u0019i&Q\u0011a\u0001-\"9aM!\"A\u0002\t\u0005da\u0002BH\u0003s\u0011!\u0011\u0013\u0002\u0006_\u001aLe\u000e^\n\u0007\u0005\u001b\u0013\u0019*!\u0019\u0011\u00071\u0001a\u000b\u0003\u0006i\u0005\u001b\u0013)\u0019!C\u0001\u0005/+\"A!'\u0011\u0007UYg\u000bC\u0006\u0002p\t5%\u0011!Q\u0001\n\te\u0005b\u0002\u0018\u0003\u000e\u0012\u0005!q\u0014\u000b\u0005\u0005C\u0013\u0019\u000b\u0005\u0003\u0002P\t5\u0005b\u00025\u0003\u001e\u0002\u0007!\u0011\u0014\u0005\bs\t5E\u0011\u0001BT+\t\u0011I\u000bE\u0002=\u007fYCa\u0001\u0016BG\t\u0003)\u0006b\u0002.\u0003\u000e\u0012\u0005!q\u0016\u000b\u0004-\nE\u0006BB/\u0003.\u0002\u0007a\u000bC\u0004`\u0005\u001b#\tA!.\u0015\u000b\u0005\u00149L!/\t\ru\u0013\u0019\f1\u0001W\u0011\u00191'1\u0017a\u0001-\u001a9!QXA\u001d\u0005\t}&AB8g\u0019>twm\u0005\u0004\u0003<\n\u0005\u0017\u0011\r\t\u0005\u0019\u0001\u0011\u0019\rE\u0002\u0016\u0005\u000bL1Aa2\u0007\u0005\u0011auN\\4\t\u0015!\u0014YL!b\u0001\n\u0003\u0011Y-\u0006\u0002\u0003NB!Qc\u001bBb\u0011-\tyGa/\u0003\u0002\u0003\u0006IA!4\t\u000f9\u0012Y\f\"\u0001\u0003TR!!Q\u001bBl!\u0011\tyEa/\t\u000f!\u0014\t\u000e1\u0001\u0003N\"9\u0011Ha/\u0005\u0002\tmWC\u0001Bo!\u0011atHa1\t\rQ\u0013Y\f\"\u0001V\u0011\u001dQ&1\u0018C\u0001\u0005G$BAa1\u0003f\"1QL!9A\u0002YCqa\u0018B^\t\u0003\u0011I\u000fF\u0003b\u0005W\u0014i\u000f\u0003\u0004^\u0005O\u0004\rA\u0016\u0005\bM\n\u001d\b\u0019\u0001Bb\r\u001d\u0011\t0!\u000f\u0003\u0005g\u0014qa\u001c4GY>\fGo\u0005\u0004\u0003p\nU\u0018\u0011\r\t\u0005\u0019\u0001\u00119\u0010E\u0002\u0016\u0005sL1Aa?\u0007\u0005\u00151En\\1u\u0011)A'q\u001eBC\u0002\u0013\u0005!q`\u000b\u0003\u0007\u0003\u0001B!F6\u0003x\"Y\u0011q\u000eBx\u0005\u0003\u0005\u000b\u0011BB\u0001\u0011\u001dq#q\u001eC\u0001\u0007\u000f!Ba!\u0003\u0004\fA!\u0011q\nBx\u0011\u001dA7Q\u0001a\u0001\u0007\u0003Aq!\u000fBx\t\u0003\u0019y!\u0006\u0002\u0004\u0012A!Ah\u0010B|\u0011\u0019!&q\u001eC\u0001+\"9!La<\u0005\u0002\r]A\u0003\u0002B|\u00073Aa!XB\u000b\u0001\u00041\u0006bB0\u0003p\u0012\u00051Q\u0004\u000b\u0006C\u000e}1\u0011\u0005\u0005\u0007;\u000em\u0001\u0019\u0001,\t\u000f\u0019\u001cY\u00021\u0001\u0003x\u001a91QEA\u001d\u0005\r\u001d\"\u0001C8g\t>,(\r\\3\u0014\r\r\r2\u0011FA1!\u0011a\u0001aa\u000b\u0011\u0007U\u0019i#C\u0002\u00040\u0019\u0011a\u0001R8vE2,\u0007B\u00035\u0004$\t\u0015\r\u0011\"\u0001\u00044U\u00111Q\u0007\t\u0005+-\u001cY\u0003C\u0006\u0002p\r\r\"\u0011!Q\u0001\n\rU\u0002b\u0002\u0018\u0004$\u0011\u000511\b\u000b\u0005\u0007{\u0019y\u0004\u0005\u0003\u0002P\r\r\u0002b\u00025\u0004:\u0001\u00071Q\u0007\u0005\bs\r\rB\u0011AB\"+\t\u0019)\u0005\u0005\u0003=\u007f\r-\u0002B\u0002+\u0004$\u0011\u0005Q\u000bC\u0004[\u0007G!\taa\u0013\u0015\t\r-2Q\n\u0005\u0007;\u000e%\u0003\u0019\u0001,\t\u000f}\u001b\u0019\u0003\"\u0001\u0004RQ)\u0011ma\u0015\u0004V!1Qla\u0014A\u0002YCqAZB(\u0001\u0004\u0019YCB\u0004\u0004Z\u0005e\"aa\u0017\u0003\u0013=4'i\\8mK\u0006t7CBB,\u0007;\n\t\u0007\u0005\u0003\r\u0001\r}\u0003cA\u000b\u0004b%\u001911\r\u0004\u0003\u000f\t{w\u000e\\3b]\"Q\u0001na\u0016\u0003\u0006\u0004%\taa\u001a\u0016\u0005\r%\u0004\u0003B\u000bl\u0007?B1\"a\u001c\u0004X\t\u0005\t\u0015!\u0003\u0004j!9afa\u0016\u0005\u0002\r=D\u0003BB9\u0007g\u0002B!a\u0014\u0004X!9\u0001n!\u001cA\u0002\r%\u0004bB\u001d\u0004X\u0011\u00051qO\u000b\u0003\u0007s\u0002B\u0001P \u0004`!1Aka\u0016\u0005\u0002UCqAWB,\t\u0003\u0019y\b\u0006\u0003\u0004`\r\u0005\u0005BB/\u0004~\u0001\u0007a\u000bC\u0004`\u0007/\"\ta!\"\u0015\u000b\u0005\u001c9i!#\t\ru\u001b\u0019\t1\u0001W\u0011\u001d171\u0011a\u0001\u0007?2qa!$\u0002:\t\u0019yI\u0001\u0004pMVs\u0017\u000e^\n\u0007\u0007\u0017\u001b\t*!\u0019\u0011\u00071\u0001\u0011\r\u0003\u0006i\u0007\u0017\u0013)\u0019!C\u0001\u0007++\"aa&\u0011\u0007UY\u0017\rC\u0006\u0002p\r-%\u0011!Q\u0001\n\r]\u0005b\u0002\u0018\u0004\f\u0012\u00051Q\u0014\u000b\u0005\u0007?\u001b\t\u000b\u0005\u0003\u0002P\r-\u0005b\u00025\u0004\u001c\u0002\u00071q\u0013\u0005\bs\r-E\u0011ABS+\t\u00199\u000bE\u0002=\u007f\u0005Da\u0001VBF\t\u0003)\u0006b\u0002.\u0004\f\u0012\u00051Q\u0016\u000b\u0004C\u000e=\u0006BB/\u0004,\u0002\u0007a\u000bC\u0004`\u0007\u0017#\taa-\u0015\u000b\u0005\u001c)la.\t\ru\u001b\t\f1\u0001W\u0011\u001917\u0011\u0017a\u0001C\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WrappedArray.class */
public abstract class WrappedArray<T> extends AbstractSeq<T> implements IndexedSeq<T>, ArrayLike<T, WrappedArray<T>>, CustomParallelizable<T, ParArray<T>> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WrappedArray$ofBoolean.class */
    public static final class ofBoolean extends WrappedArray<Object> implements Serializable {
        private final boolean[] array;

        public ofBoolean(boolean[] zArr) {
            this.array = zArr;
        }

        @Override // scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToBoolean(apply(BoxesRunTime.unboxToInt(obj)));
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public boolean apply(int i) {
            return apply$mcZI$sp(i);
        }

        @Override // scala.collection.AbstractSeq, scala.Function1
        public boolean apply$mcZI$sp(int i) {
            return array()[i];
        }

        @Override // scala.collection.mutable.WrappedArray
        public boolean[] array() {
            return this.array;
        }

        @Override // scala.collection.mutable.WrappedArray
        public ClassTag<Object> elemTag() {
            return ClassTag$.MODULE$.Boolean();
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public int length() {
            return array().length;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        public /* bridge */ /* synthetic */ void update(int i, Object obj) {
            update(i, BoxesRunTime.unboxToBoolean(obj));
        }

        public void update(int i, boolean z) {
            array()[i] = z;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WrappedArray$ofByte.class */
    public static final class ofByte extends WrappedArray<Object> implements Serializable {
        private final byte[] array;

        public ofByte(byte[] bArr) {
            this.array = bArr;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public byte apply(int i) {
            return array()[i];
        }

        @Override // scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToByte(apply(BoxesRunTime.unboxToInt(obj)));
        }

        @Override // scala.collection.mutable.WrappedArray
        public byte[] array() {
            return this.array;
        }

        @Override // scala.collection.mutable.WrappedArray
        public ClassTag<Object> elemTag() {
            return ClassTag$.MODULE$.Byte();
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public int length() {
            return array().length;
        }

        public void update(int i, byte b) {
            array()[i] = b;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        public /* bridge */ /* synthetic */ void update(int i, Object obj) {
            update(i, BoxesRunTime.unboxToByte(obj));
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WrappedArray$ofChar.class */
    public static final class ofChar extends WrappedArray<Object> implements Serializable {
        private final char[] array;

        public ofChar(char[] cArr) {
            this.array = cArr;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public char apply(int i) {
            return array()[i];
        }

        @Override // scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToCharacter(apply(BoxesRunTime.unboxToInt(obj)));
        }

        @Override // scala.collection.mutable.WrappedArray
        public char[] array() {
            return this.array;
        }

        @Override // scala.collection.mutable.WrappedArray
        public ClassTag<Object> elemTag() {
            return ClassTag$.MODULE$.Char();
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public int length() {
            return array().length;
        }

        public void update(int i, char c) {
            array()[i] = c;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        public /* bridge */ /* synthetic */ void update(int i, Object obj) {
            update(i, BoxesRunTime.unboxToChar(obj));
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WrappedArray$ofDouble.class */
    public static final class ofDouble extends WrappedArray<Object> implements Serializable {
        private final double[] array;

        public ofDouble(double[] dArr) {
            this.array = dArr;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public double apply(int i) {
            return apply$mcDI$sp(i);
        }

        @Override // scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToDouble(apply(BoxesRunTime.unboxToInt(obj)));
        }

        @Override // scala.collection.AbstractSeq, scala.Function1
        public double apply$mcDI$sp(int i) {
            return array()[i];
        }

        @Override // scala.collection.mutable.WrappedArray
        public double[] array() {
            return this.array;
        }

        @Override // scala.collection.mutable.WrappedArray
        public ClassTag<Object> elemTag() {
            return ClassTag$.MODULE$.Double();
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public int length() {
            return array().length;
        }

        public void update(int i, double d) {
            array()[i] = d;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        public /* bridge */ /* synthetic */ void update(int i, Object obj) {
            update(i, BoxesRunTime.unboxToDouble(obj));
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WrappedArray$ofFloat.class */
    public static final class ofFloat extends WrappedArray<Object> implements Serializable {
        private final float[] array;

        public ofFloat(float[] fArr) {
            this.array = fArr;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public float apply(int i) {
            return apply$mcFI$sp(i);
        }

        @Override // scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToFloat(apply(BoxesRunTime.unboxToInt(obj)));
        }

        @Override // scala.collection.AbstractSeq, scala.Function1
        public float apply$mcFI$sp(int i) {
            return array()[i];
        }

        @Override // scala.collection.mutable.WrappedArray
        public float[] array() {
            return this.array;
        }

        @Override // scala.collection.mutable.WrappedArray
        public ClassTag<Object> elemTag() {
            return ClassTag$.MODULE$.Float();
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public int length() {
            return array().length;
        }

        public void update(int i, float f) {
            array()[i] = f;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        public /* bridge */ /* synthetic */ void update(int i, Object obj) {
            update(i, BoxesRunTime.unboxToFloat(obj));
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WrappedArray$ofInt.class */
    public static final class ofInt extends WrappedArray<Object> implements Serializable {
        private final int[] array;

        public ofInt(int[] iArr) {
            this.array = iArr;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public int apply(int i) {
            return apply$mcII$sp(i);
        }

        @Override // scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj)));
        }

        @Override // scala.collection.AbstractSeq, scala.Function1
        public int apply$mcII$sp(int i) {
            return array()[i];
        }

        @Override // scala.collection.mutable.WrappedArray
        public int[] array() {
            return this.array;
        }

        @Override // scala.collection.mutable.WrappedArray
        public ClassTag<Object> elemTag() {
            return ClassTag$.MODULE$.Int();
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public int length() {
            return array().length;
        }

        public void update(int i, int i2) {
            array()[i] = i2;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        public /* bridge */ /* synthetic */ void update(int i, Object obj) {
            update(i, BoxesRunTime.unboxToInt(obj));
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WrappedArray$ofLong.class */
    public static final class ofLong extends WrappedArray<Object> implements Serializable {
        private final long[] array;

        public ofLong(long[] jArr) {
            this.array = jArr;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public long apply(int i) {
            return apply$mcJI$sp(i);
        }

        @Override // scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToLong(apply(BoxesRunTime.unboxToInt(obj)));
        }

        @Override // scala.collection.AbstractSeq, scala.Function1
        public long apply$mcJI$sp(int i) {
            return array()[i];
        }

        @Override // scala.collection.mutable.WrappedArray
        public long[] array() {
            return this.array;
        }

        @Override // scala.collection.mutable.WrappedArray
        public ClassTag<Object> elemTag() {
            return ClassTag$.MODULE$.Long();
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public int length() {
            return array().length;
        }

        public void update(int i, long j) {
            array()[i] = j;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        public /* bridge */ /* synthetic */ void update(int i, Object obj) {
            update(i, BoxesRunTime.unboxToLong(obj));
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WrappedArray$ofRef.class */
    public static final class ofRef<T> extends WrappedArray<T> implements Serializable {
        private final T[] array;
        private volatile boolean bitmap$0;
        private ClassTag<T> elemTag;

        public ofRef(T[] tArr) {
            this.array = tArr;
        }

        private ClassTag elemTag$lzycompute() {
            synchronized (this) {
                if (!this.bitmap$0) {
                    this.elemTag = ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayElementClass(array().getClass()));
                    this.bitmap$0 = true;
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.elemTag;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public T apply(int i) {
            return array()[i];
        }

        @Override // scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return apply(BoxesRunTime.unboxToInt(obj));
        }

        @Override // scala.collection.mutable.WrappedArray
        public T[] array() {
            return this.array;
        }

        @Override // scala.collection.mutable.WrappedArray
        public ClassTag<T> elemTag() {
            return this.bitmap$0 ? this.elemTag : elemTag$lzycompute();
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public int length() {
            return array().length;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        public void update(int i, T t) {
            array()[i] = t;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WrappedArray$ofShort.class */
    public static final class ofShort extends WrappedArray<Object> implements Serializable {
        private final short[] array;

        public ofShort(short[] sArr) {
            this.array = sArr;
        }

        @Override // scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToShort(apply(BoxesRunTime.unboxToInt(obj)));
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public short apply(int i) {
            return array()[i];
        }

        @Override // scala.collection.mutable.WrappedArray
        public short[] array() {
            return this.array;
        }

        @Override // scala.collection.mutable.WrappedArray
        public ClassTag<Object> elemTag() {
            return ClassTag$.MODULE$.Short();
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public int length() {
            return array().length;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        public /* bridge */ /* synthetic */ void update(int i, Object obj) {
            update(i, BoxesRunTime.unboxToShort(obj));
        }

        public void update(int i, short s) {
            array()[i] = s;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WrappedArray$ofUnit.class */
    public static final class ofUnit extends WrappedArray<BoxedUnit> implements Serializable {
        private final BoxedUnit[] array;

        public ofUnit(BoxedUnit[] boxedUnitArr) {
            this.array = boxedUnitArr;
        }

        @Override // scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            apply(BoxesRunTime.unboxToInt(obj));
            return BoxedUnit.UNIT;
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public void apply(int i) {
            apply$mcVI$sp(i);
        }

        @Override // scala.collection.AbstractSeq, scala.Function1
        public void apply$mcVI$sp(int i) {
            BoxedUnit boxedUnit = array()[i];
        }

        @Override // scala.collection.mutable.WrappedArray
        public BoxedUnit[] array() {
            return this.array;
        }

        @Override // scala.collection.mutable.WrappedArray
        public ClassTag<BoxedUnit> elemTag() {
            return ClassTag$.MODULE$.Unit();
        }

        @Override // scala.collection.mutable.WrappedArray, scala.collection.GenSeqLike
        public int length() {
            return array().length;
        }

        public void update(int i, BoxedUnit boxedUnit) {
            array()[i] = boxedUnit;
        }
    }

    public WrappedArray() {
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        IndexedSeqOptimized.Cclass.$init$(this);
        ArrayLike.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
    }

    public static <T> CanBuildFrom<WrappedArray<?>, T, WrappedArray<T>> canBuildFrom(ClassTag<T> classTag) {
        return WrappedArray$.MODULE$.canBuildFrom(classTag);
    }

    private Class<?> elementClass() {
        return ScalaRunTime$.MODULE$.arrayElementClass(array().getClass());
    }

    public static <T> WrappedArray<T> empty() {
        return WrappedArray$.MODULE$.empty();
    }

    public static <T> WrappedArray<T> make(Object obj) {
        return WrappedArray$.MODULE$.make(obj);
    }

    @Override // scala.collection.GenSeqLike
    public abstract T apply(int i);

    public abstract Object array();

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.mutable.Cloneable
    public WrappedArray<T> clone() {
        return WrappedArray$.MODULE$.make(ScalaRunTime$.MODULE$.array_clone(array()));
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<IndexedSeq> companion() {
        return IndexedSeq.Cclass.companion(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> void copyToArray(Object obj, int i, int i2) {
        IndexedSeqOptimized.Cclass.copyToArray(this, obj, i, i2);
    }

    @Override // scala.collection.mutable.ArrayLike
    public scala.collection.IndexedSeq<Object> deep() {
        return ArrayLike.Cclass.deep(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object drop(int i) {
        return IndexedSeqOptimized.Cclass.drop(this, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public Object dropRight(int i) {
        return IndexedSeqOptimized.Cclass.dropRight(this, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object dropWhile(Function1 function1) {
        return IndexedSeqOptimized.Cclass.dropWhile(this, function1);
    }

    public ClassTag<T> elemManifest() {
        return Predef$.MODULE$.ClassManifest().fromClass(ScalaRunTime$.MODULE$.arrayElementClass(elemTag()));
    }

    public abstract ClassTag<T> elemTag();

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B> boolean endsWith(GenSeq<B> genSeq) {
        return IndexedSeqOptimized.Cclass.endsWith(this, genSeq);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<T, Object> function1) {
        return IndexedSeqOptimized.Cclass.exists(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<T> find(Function1<T, Object> function1) {
        return IndexedSeqOptimized.Cclass.find(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B foldLeft(B b, Function2<B, T, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.foldLeft(this, b, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B foldRight(B b, Function2<T, B, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<T, Object> function1) {
        return IndexedSeqOptimized.Cclass.forall(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<T, U> function1) {
        IndexedSeqOptimized.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return IndexedSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public T head() {
        return (T) IndexedSeqOptimized.Cclass.head(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int indexWhere(Function1<T, Object> function1, int i) {
        return IndexedSeqOptimized.Cclass.indexWhere(this, function1, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object init() {
        return IndexedSeqOptimized.Cclass.init(this);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return IndexedSeqOptimized.Cclass.isEmpty(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<T> iterator() {
        return IndexedSeqLike.Cclass.iterator(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public T last() {
        return (T) IndexedSeqOptimized.Cclass.last(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int lastIndexWhere(Function1<T, Object> function1, int i) {
        return IndexedSeqOptimized.Cclass.lastIndexWhere(this, function1, i);
    }

    @Override // scala.collection.GenSeqLike
    public abstract int length();

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public int lengthCompare(int i) {
        return IndexedSeqOptimized.Cclass.lengthCompare(this, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<T, WrappedArray<T>> newBuilder() {
        return new WrappedArrayBuilder(elemTag());
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.Parallelizable
    public ParArray<T> par() {
        return ParArray$.MODULE$.handoff(array());
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<T, ParArray<T>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public <B> B reduceLeft(Function2<B, T, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B reduceRight(Function2<T, B, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public Object reverse() {
        return IndexedSeqOptimized.Cclass.reverse(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public Iterator<T> reverseIterator() {
        return IndexedSeqOptimized.Cclass.reverseIterator(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B> boolean sameElements(GenIterable<B> genIterable) {
        return IndexedSeqOptimized.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ boolean scala$collection$IndexedSeqOptimized$$super$endsWith(GenSeq genSeq) {
        return SeqLike.Cclass.endsWith(this, genSeq);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$head() {
        return IterableLike.Cclass.head(this);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$init() {
        return TraversableLike.Cclass.init(this);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$last() {
        return TraversableLike.Cclass.last(this);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$reduceLeft(Function2 function2) {
        return TraversableOnce.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$reduceRight(Function2 function2) {
        return IterableLike.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ boolean scala$collection$IndexedSeqOptimized$$super$sameElements(GenIterable genIterable) {
        return IterableLike.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$tail() {
        return TraversableLike.Cclass.tail(this);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$zip(GenIterable genIterable, CanBuildFrom canBuildFrom) {
        return IterableLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int segmentLength(Function1<T, Object> function1, int i) {
        return IndexedSeqOptimized.Cclass.segmentLength(this, function1, i);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public IndexedSeq<T> seq() {
        return IndexedSeq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object slice(int i, int i2) {
        return IndexedSeqOptimized.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<WrappedArray<T>, WrappedArray<T>> span(Function1<T, Object> function1) {
        return IndexedSeqOptimized.Cclass.span(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<WrappedArray<T>, WrappedArray<T>> splitAt(int i) {
        return IndexedSeqOptimized.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B> boolean startsWith(GenSeq<B> genSeq, int i) {
        return IndexedSeqOptimized.Cclass.startsWith(this, genSeq, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "WrappedArray";
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object tail() {
        return IndexedSeqOptimized.Cclass.tail(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object take(int i) {
        return IndexedSeqOptimized.Cclass.take(this, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public Object takeRight(int i) {
        return IndexedSeqOptimized.Cclass.takeRight(this, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object takeWhile(Function1 function1) {
        return IndexedSeqOptimized.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public WrappedArray<T> thisCollection() {
        return this;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <U> Object toArray(ClassTag<U> classTag) {
        ScalaRunTime$ scalaRunTime$ = ScalaRunTime$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        return elementClass() == scalaRunTime$.arrayElementClass(classTag) ? array() : TraversableOnce.Cclass.toArray(this, classTag);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Buffer<A1> toBuffer() {
        return IndexedSeqLike.Cclass.toBuffer(this);
    }

    public WrappedArray<T> toCollection(WrappedArray<T> wrappedArray) {
        return wrappedArray;
    }

    @Override // scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    public abstract void update(int i, T t);

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public Object view() {
        return IndexedSeqLike.Cclass.view(this);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IndexedSeqView<T, WrappedArray<T>> view(int i, int i2) {
        return IndexedSeqLike.Cclass.view(this, i, i2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<WrappedArray<T>, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IndexedSeqOptimized.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, That> That zipWithIndex(CanBuildFrom<WrappedArray<T>, Tuple2<A1, Object>, That> canBuildFrom) {
        return (That) IndexedSeqOptimized.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
