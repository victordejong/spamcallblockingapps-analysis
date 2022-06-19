package scala.collection.parallel;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.Tuple2$mcIZ$sp;
import scala.collection.BufferedIterator;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenSeqLike;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.SeqLike;
import scala.collection.SeqView;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.generic.Signalling;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Nil$;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.AugmentedIterableIterator;
import scala.collection.parallel.AugmentedSeqIterator;
import scala.collection.parallel.IterableSplitter;
import scala.collection.parallel.ParIterableLike;
import scala.collection.parallel.ParSeq;
import scala.collection.parallel.RemainsIterator;
import scala.collection.parallel.SeqSplitter;
import scala.collection.parallel.Task;
import scala.collection.parallel.immutable.Repetition;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001\u0019Ue!C\u0001\u0003!\u0003\r\t!\u0003DJ\u0005)\u0001\u0016M]*fc2K7.\u001a\u0006\u0003\u0007\u0011\t\u0001\u0002]1sC2dW\r\u001c\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0005\u0015Uy\"f\u0005\u0003\u0001\u0017=1\u0003C\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\b\u0007\u0005\u0019\te.\u001f*fMB!\u0001#E\n\u001f\u001b\u0005!\u0011B\u0001\n\u0005\u0005)9UM\\*fc2K7.\u001a\t\u0003)Ua\u0001\u0001\u0002\u0004\u0017\u0001\u0011\u0015\ra\u0006\u0002\u0002)F\u0011\u0001d\u0007\t\u0003\u0019eI!A\u0007\u0004\u0003\u000f9{G\u000f[5oOB\u0011A\u0002H\u0005\u0003;\u0019\u00111!\u00118z!\t!r\u0004\u0002\u0004!\u0001\u0011\u0015\r!\t\u0002\u0005%\u0016\u0004(/\u0005\u0002\u0019EA\u00191\u0005J\n\u000e\u0003\tI!!\n\u0002\u0003\rA\u000b'oU3r!\u0015\u0019se\u0005\u0010*\u0013\tA#AA\bQCJLE/\u001a:bE2,G*[6f!\t!\"\u0006\u0002\u0004,\u0001\u0011\u0015\r\u0001\f\u0002\u000b'\u0016\fX/\u001a8uS\u0006d\u0017C\u0001\r.%\rq\u0003g\u000e\u0004\u0005_\u0001\u0001QF\u0001\u0007=e\u00164\u0017N\\3nK:$h\bE\u00022iMq!\u0001\u0004\u001a\n\u0005M2\u0011a\u00029bG.\fw-Z\u0005\u0003kY\u00121aU3r\u0015\t\u0019d\u0001\u0005\u0003\u0011qMI\u0013BA\u001d\u0005\u0005\u001d\u0019V-\u001d'jW\u0016DQa\u000f\u0001\u0005\u0002q\na\u0001J5oSR$C#A\u001f\u0011\u00051q\u0014BA \u0007\u0005\u0011)f.\u001b;\u0006\r\u0005\u0003\u0001\u0015!\u0005C\u0005A\u0019V\u000f]3s!\u0006\u0014\u0018\n^3sCR|'\u000fE\u0002$\u0007NI!\u0001\u0012\u0002\u0003!%#XM]1cY\u0016\u001c\u0006\u000f\\5ui\u0016\u0014\bB\u0002$\u0001\r#\u0011q)\u0001\u0005ta2LG\u000f^3s+\u0005A\u0005cA\u0012J'%\u0011!J\u0001\u0002\f'\u0016\f8\u000b\u001d7jiR,'\u000fC\u0003M\u0001\u0011\u0005S*\u0001\u0005ji\u0016\u0014\u0018\r^8s+\u0005q\u0005cA\u0012P'%\u0011\u0001K\u0001\u0002\u0010!J,7-[:f'Bd\u0017\u000e\u001e;fe\")!\u000b\u0001C!'\u0006!1/\u001b>f+\u0005!\u0006C\u0001\u0007V\u0013\t1fAA\u0002J]R4Q\u0001\u0017\u0001\u0002\u0012e\u0013\u0001\"\u00127f[\u0016tGo]\n\u0005/.A%\fE\u000227NI!\u0001\u0018\u001c\u0003!\t+hMZ3sK\u0012LE/\u001a:bi>\u0014\b\u0002\u00030X\u0005\u0003\u0005\u000b\u0011\u0002+\u0002\u000bM$\u0018M\u001d;\t\u0011\u0001<&Q1A\u0005\u0002M\u000b1!\u001a8e\u0011!\u0011wK!A!\u0002\u0013!\u0016\u0001B3oI\u0002BQ\u0001Z,\u0005\u0002\u0015\fa\u0001P5oSRtDc\u00014iSB\u0011qmV\u0007\u0002\u0001!)al\u0019a\u0001)\")\u0001m\u0019a\u0001)\"91n\u0016a\u0001\n\u0013\u0019\u0016!A5\t\u000f5<\u0006\u0019!C\u0005]\u0006)\u0011n\u0018\u0013fcR\u0011Qh\u001c\u0005\ba2\f\t\u00111\u0001U\u0003\rAH%\r\u0005\u0007e^\u0003\u000b\u0015\u0002+\u0002\u0005%\u0004\u0003\"\u0002;X\t\u0003)\u0018a\u00025bg:+\u0007\u0010^\u000b\u0002mB\u0011Ab^\u0005\u0003q\u001a\u0011qAQ8pY\u0016\fg\u000eC\u0003{/\u0012\u000510\u0001\u0003oKb$H#A\n\t\u000bu<F\u0011\u0001@\u0002\t!,\u0017\rZ\u000b\u0002'!1\u0011\u0011A,\u0005\u0006M\u000b\u0011B]3nC&t\u0017N\\4\t\u000f\u0005\u0015q\u000b\"\u0001\u0002\b\u0005\u0019A-\u001e9\u0016\u0003\u0019Dq!a\u0003X\t\u0003\ti!A\u0003ta2LG/\u0006\u0002\u0002\u0010A!\u0001#!\u0005I\u0013\t)D\u0001C\u0004\u0002\u0016]#\t!a\u0006\u0002\rA\u001c\b\u000f\\5u)\u0011\tI\"a\u0007\u0011\u0007E\"\u0004\n\u0003\u0005\u0002\u001e\u0005M\u0001\u0019AA\u0010\u0003\u0015\u0019\u0018N_3t!\u0011a\u0011\u0011\u0005+\n\u0007\u0005\rbA\u0001\u0006=e\u0016\u0004X-\u0019;fIzBq!a\nX\t\u0003\nI#\u0001\u0005u_N#(/\u001b8h)\t\tY\u0003\u0005\u0003\u0002.\u0005]RBAA\u0018\u0015\u0011\t\t$a\r\u0002\t1\fgn\u001a\u0006\u0003\u0003k\tAA[1wC&!\u0011\u0011HA\u0018\u0005\u0019\u0019FO]5oO\"9\u0011Q\b\u0001\u0005\u0002\u0005}\u0012!D:fO6,g\u000e\u001e'f]\u001e$\b\u000eF\u0003U\u0003\u0003\nY\u0005\u0003\u0005\u0002D\u0005m\u0002\u0019AA#\u0003\u0005\u0001\b#\u0002\u0007\u0002HM1\u0018bAA%\r\tIa)\u001e8di&|g.\r\u0005\b\u0003\u001b\nY\u00041\u0001U\u0003\u00111'o\\7\t\u000f\u0005E\u0003\u0001\"\u0001\u0002T\u0005Q\u0011N\u001c3fq^CWM]3\u0015\u000bQ\u000b)&a\u0016\t\u0011\u0005\r\u0013q\na\u0001\u0003\u000bBq!!\u0014\u0002P\u0001\u0007A\u000bC\u0004\u0002\\\u0001!\t!!\u0018\u0002\u001d1\f7\u000f^%oI\u0016Dx\u000b[3sKR)A+a\u0018\u0002b!A\u00111IA-\u0001\u0004\t)\u0005\u0003\u0004a\u00033\u0002\r\u0001\u0016\u0005\b\u0003K\u0002A\u0011AA4\u0003\u001d\u0011XM^3sg\u0016,\u0012A\b\u0005\b\u0003W\u0002A\u0011AA7\u0003)\u0011XM^3sg\u0016l\u0015\r]\u000b\u0007\u0003_\nY)!\u001e\u0015\t\u0005E\u0014q\u0012\u000b\u0005\u0003g\nI\bE\u0002\u0015\u0003k\"q!a\u001e\u0002j\t\u0007qC\u0001\u0003UQ\u0006$\b\u0002CA>\u0003S\u0002\u001d!! \u0002\u0005\t4\u0007#CA@\u0003\u000bs\u0012\u0011RA:\u001b\t\t\tIC\u0002\u0002\u0004\u0012\tqaZ3oKJL7-\u0003\u0003\u0002\b\u0006\u0005%\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007c\u0001\u000b\u0002\f\u00129\u0011QRA5\u0005\u00049\"!A*\t\u0011\u0005E\u0015\u0011\u000ea\u0001\u0003'\u000b\u0011A\u001a\t\u0007\u0019\u0005\u001d3#!#\t\u000f\u0005]\u0005\u0001\"\u0001\u0002\u001a\u0006Q1\u000f^1siN<\u0016\u000e\u001e5\u0016\t\u0005m\u0015\u0011\u0016\u000b\u0006m\u0006u\u00151\u0016\u0005\t\u0003?\u000b)\n1\u0001\u0002\"\u0006!A\u000f[1u!\u0015\u0001\u00121UAT\u0013\r\t)\u000b\u0002\u0002\u0007\u000f\u0016t7+Z9\u0011\u0007Q\tI\u000bB\u0004\u0002\u000e\u0006U%\u0019A\f\t\u000f\u00055\u0016Q\u0013a\u0001)\u00061qN\u001a4tKRDq!!-\u0001\t\u0003\n\u0019,\u0001\u0007tC6,W\t\\3nK:$8/\u0006\u0003\u00026\u0006\u0005Gc\u0001<\u00028\"A\u0011qTAX\u0001\u0004\tI\fE\u0003\u0011\u0003w\u000by,C\u0002\u0002>\u0012\u00111bR3o\u0013R,'/\u00192mKB\u0019A#!1\u0005\u0011\u0005\r\u0017q\u0016b\u0001\u0003\u000b\u0014\u0011!V\t\u0003'mAq!!3\u0001\t\u0003\tY-\u0001\u0005f]\u0012\u001cx+\u001b;i+\u0011\ti-!6\u0015\u0007Y\fy\r\u0003\u0005\u0002 \u0006\u001d\u0007\u0019AAi!\u0015\u0001\u00121UAj!\r!\u0012Q\u001b\u0003\b\u0003\u001b\u000b9M1\u0001\u0018\u0011\u001d\tI\u000e\u0001C\u0001\u00037\fQ\u0001]1uG\",b!!8\u0002l\u0006\rH\u0003CAp\u0003[\fy/a=\u0015\t\u0005\u0005\u0018Q\u001d\t\u0004)\u0005\rHaBA<\u0003/\u0014\ra\u0006\u0005\t\u0003w\n9\u000eq\u0001\u0002hBI\u0011qPAC=\u0005%\u0018\u0011\u001d\t\u0004)\u0005-H\u0001CAb\u0003/\u0014\r!!2\t\u000f\u00055\u0013q\u001ba\u0001)\"A\u0011\u0011\\Al\u0001\u0004\t\t\u0010E\u0003\u0011\u0003G\u000bI\u000fC\u0004\u0002v\u0006]\u0007\u0019\u0001+\u0002\u0011I,\u0007\u000f\\1dK\u0012Dq!!?\u0001\t\u0013\tY0\u0001\tqCR\u001c\u0007nX:fcV,g\u000e^5bYV1\u0011Q B\u0006\u0005\u0007!\u0002\"a@\u0003\u000e\tE!Q\u0003\u000b\u0005\u0005\u0003\u0011)\u0001E\u0002\u0015\u0005\u0007!q!a\u001e\u0002x\n\u0007q\u0003\u0003\u0005\u0002|\u0005]\b9\u0001B\u0004!%\ty(!\"\u001f\u0005\u0013\u0011\t\u0001E\u0002\u0015\u0005\u0017!\u0001\"a1\u0002x\n\u0007\u0011Q\u0019\u0005\b\u0005\u001f\t9\u00101\u0001U\u0003\u001d1'o\\7be\u001eD\u0001\"!7\u0002x\u0002\u0007!1\u0003\t\u0005cQ\u0012I\u0001C\u0004\u0003\u0018\u0005]\b\u0019\u0001+\u0002\u0003IDqAa\u0007\u0001\t\u0003\u0011i\"A\u0004va\u0012\fG/\u001a3\u0016\r\t}!Q\u0006B\u0013)\u0019\u0011\tCa\f\u00034Q!!1\u0005B\u0014!\r!\"Q\u0005\u0003\b\u0003o\u0012IB1\u0001\u0018\u0011!\tYH!\u0007A\u0004\t%\u0002#CA@\u0003\u000bs\"1\u0006B\u0012!\r!\"Q\u0006\u0003\t\u0003\u0007\u0014IB1\u0001\u0002F\"9!\u0011\u0007B\r\u0001\u0004!\u0016!B5oI\u0016D\b\u0002\u0003B\u001b\u00053\u0001\rAa\u000b\u0002\t\u0015dW-\u001c\u0005\b\u0005s\u0001A\u0011\u0001B\u001e\u0003-!\u0003\u000f\\;tI\r|Gn\u001c8\u0016\r\tu\"1\nB\")\u0011\u0011yD!\u0014\u0015\t\t\u0005#Q\t\t\u0004)\t\rCaBA<\u0005o\u0011\ra\u0006\u0005\t\u0003w\u00129\u0004q\u0001\u0003HAI\u0011qPAC=\t%#\u0011\t\t\u0004)\t-C\u0001CAb\u0005o\u0011\r!!2\t\u0011\tU\"q\u0007a\u0001\u0005\u0013BqA!\u0015\u0001\t\u0003\u0011\u0019&A\u0006%G>dwN\u001c\u0013qYV\u001cXC\u0002B+\u0005G\u0012Y\u0006\u0006\u0003\u0003X\t\u0015D\u0003\u0002B-\u0005;\u00022\u0001\u0006B.\t\u001d\t9Ha\u0014C\u0002]A\u0001\"a\u001f\u0003P\u0001\u000f!q\f\t\n\u0003\u007f\n)I\bB1\u00053\u00022\u0001\u0006B2\t!\t\u0019Ma\u0014C\u0002\u0005\u0015\u0007\u0002\u0003B\u001b\u0005\u001f\u0002\rA!\u0019\t\u000f\t%\u0004\u0001\"\u0001\u0003l\u0005)\u0001/\u00193U_V1!Q\u000eB>\u0005g\"bAa\u001c\u0003~\t\u0005E\u0003\u0002B9\u0005k\u00022\u0001\u0006B:\t\u001d\t9Ha\u001aC\u0002]A\u0001\"a\u001f\u0003h\u0001\u000f!q\u000f\t\n\u0003\u007f\n)I\bB=\u0005c\u00022\u0001\u0006B>\t!\t\u0019Ma\u001aC\u0002\u0005\u0015\u0007b\u0002B@\u0005O\u0002\r\u0001V\u0001\u0004Y\u0016t\u0007\u0002\u0003B\u001b\u0005O\u0002\rA!\u001f\t\u000f\t\u0015\u0005\u0001\"\u0011\u0003\b\u0006\u0019!0\u001b9\u0016\u0011\t%%Q\u0014BQ\u0005\u001f#BAa#\u0003$R!!Q\u0012BI!\r!\"q\u0012\u0003\b\u0003o\u0012\u0019I1\u0001\u0018\u0011!\tYHa!A\u0004\tM\u0005#CA@\u0003\u000bs\"Q\u0013BG!\u001da!q\u0013BN\u0005?K1A!'\u0007\u0005\u0019!V\u000f\u001d7feA\u0019AC!(\u0005\u0011\u0005\r'1\u0011b\u0001\u0003\u000b\u00042\u0001\u0006BQ\t\u001d\tiIa!C\u0002]A\u0001\"a(\u0003\u0004\u0002\u0007!Q\u0015\t\u0006!\u0005m&q\u0014\u0005\b\u0005S\u0003A\u0011\u0001BV\u0003-\u0019wN\u001d:fgB|g\u000eZ:\u0016\t\t5&1\u0018\u000b\u0005\u0005_\u0013i\fF\u0002w\u0005cC\u0001\"a\u0011\u0003(\u0002\u0007!1\u0017\t\b\u0019\tU6C!/w\u0013\r\u00119L\u0002\u0002\n\rVt7\r^5p]J\u00022\u0001\u0006B^\t\u001d\tiIa*C\u0002]A\u0001\"a(\u0003(\u0002\u0007!q\u0018\t\u0006!\u0005\r&\u0011\u0018\u0005\b\u0005\u0007\u0004A\u0011\u0001Bc\u0003\u0011!\u0017N\u001a4\u0016\t\t\u001d'q\u001a\u000b\u0004=\t%\u0007\u0002CAP\u0005\u0003\u0004\rAa3\u0011\u000bA\t\u0019K!4\u0011\u0007Q\u0011y\r\u0002\u0005\u0002D\n\u0005'\u0019AAc\u0011\u001d\u0011\u0019\u000e\u0001C\u0001\u0005+\f\u0011\"\u001b8uKJ\u001cXm\u0019;\u0016\t\t]'q\u001c\u000b\u0004=\te\u0007\u0002CAP\u0005#\u0004\rAa7\u0011\u000bA\t\u0019K!8\u0011\u0007Q\u0011y\u000e\u0002\u0005\u0002D\nE'\u0019AAc\u0011\u001d\u0011\u0019\u000f\u0001C\u0001\u0003O\n\u0001\u0002Z5ti&t7\r\u001e\u0005\b\u0003O\u0001A\u0011\tBt)\t\u0011I\u000f\u0005\u0003\u0003l\nEhb\u0001\u0007\u0003n&\u0019!q\u001e\u0004\u0002\rA\u0013X\rZ3g\u0013\u0011\tIDa=\u000b\u0007\t=h\u0001C\u0004\u0003x\u0002!\tE!?\u0002\u000bQ|7+Z9\u0016\u0003\tBqA!@\u0001\t\u0003\u0012y0\u0001\u0003wS\u0016<XCAB\u0001%\u0015\u0019\u0019aCB\u0004\r\u0015y\u0003\u0001AB\u0001\u0013\r\u0011i\u0010\u000f\t\u0006!\r%1#K\u0005\u0004\u0007\u0017!!aB*fcZKWm\u001e\u0015\t\u0005w\u001cya!\u0006\u0004\u001aA\u0019Ab!\u0005\n\u0007\rMaA\u0001\u0006eKB\u0014XmY1uK\u0012\f#aa\u0006\u0002\u001bU\u001cX\r\t\u0018tKFtc/[3xC\t\u0019Y\"\u0001\u00043]E\nd\u0006\r\u0005\t\u0007?\u0001\u0001\u0015\"\u0005\u0004\"\u0005!Am\\<o)\rA51\u0005\u0005\t\u0003\u0007\u001ai\u00021\u0001\u0004&A\"1qEB\u0016!\u0011\u00193i!\u000b\u0011\u0007Q\u0019Y\u0003B\u0006\u0004.\r\r\u0012\u0011!A\u0001\u0006\u00039\"aA0%c\u0019I1\u0011\u0007\u0001\u0011\u0002GE11\u0007\u0002\t\u0003\u000e\u001cWm]:peV11QGB\u001f\u0007\u0007\u001aRaa\f\f\u0007o\u0001raZB\u001d\u0007w\u0019\t%C\u0002\u00042\u001d\u00022\u0001FB\u001f\t\u001d\u0019yda\fC\u0002]\u0011\u0011A\u0015\t\u0004)\r\rCaBB#\u0007_\u0011\ra\u0006\u0002\u0003)BD\u0011b!\u0013\u00040\t\u0007k\u0011C$\u0002\u0007ALGOB\u0005\u0004N\u0001\u0001\n1%\u0005\u0004P\tYAK]1og\u001a|'/\\3s+\u0019\u0019\tfa\u0016\u0004\\M911J\u0006\u0004T\ru\u0003cB4\u00040\rU3\u0011\f\t\u0004)\r]CaBB \u0007\u0017\u0012\ra\u0006\t\u0004)\rmCaBB#\u0007\u0017\u0012\ra\u0006\t\bO\u000e}3QKB-\u0013\r\u0019ie\n\u0004\t\u0007G\u0002\u0001\u0015!\u0005\u0004f\ti1+Z4nK:$H*\u001a8hi\"\u001cRa!\u0019\f\u0007O\u0002raZB\u0018\u0007S\u001aY\u0007E\u0003\r\u0005/#f\u000fE\u0002h\u0007CB1ba\u001c\u0004b\t\u0005\t\u0015!\u0003\u0002F\u0005!\u0001O]3e\u0011)\tie!\u0019\u0003\u0002\u0003\u0006I\u0001\u0016\u0005\u000b\u0007\u0013\u001a\tG!b!\n#9\u0005BCB<\u0007C\u0012\t\u0011)A\u0005\u0011\u0006!\u0001/\u001b;!\u0011\u001d!7\u0011\rC\u0001\u0007w\"\u0002ba\u001b\u0004~\r}4\u0011\u0011\u0005\t\u0007_\u001aI\b1\u0001\u0002F!9\u0011QJB=\u0001\u0004!\u0006bBB%\u0007s\u0002\r\u0001\u0013\u0005\u000b\u0007\u000b\u001b\t\u00071A\u0005\u0002\r\u001d\u0015A\u0002:fgVdG/\u0006\u0002\u0004j!Q11RB1\u0001\u0004%\ta!$\u0002\u0015I,7/\u001e7u?\u0012*\u0017\u000fF\u0002>\u0007\u001fC\u0011\u0002]BE\u0003\u0003\u0005\ra!\u001b\t\u0013\rM5\u0011\rQ!\n\r%\u0014a\u0002:fgVdG\u000f\t\u0015\u0005\u0007#\u001b9\nE\u0002\r\u00073K1aa'\u0007\u0005!1x\u000e\\1uS2,\u0007\u0002CBP\u0007C\"\ta!)\u0002\t1,\u0017M\u001a\u000b\u0004{\r\r\u0006\u0002CBS\u0007;\u0003\raa*\u0002\tA\u0014XM\u001e\t\u0006\u0019\r%6\u0011N\u0005\u0004\u0007W3!AB(qi&|g\u000eC\u0005\u00040\u000e\u0005\u0004\u0015\"\u0005\u00042\u0006Qa.Z<Tk\n$\u0018m]6\u0015\u0007a\u0019\u0019\f\u0003\u0005\u0002D\r5\u0006\u0019AB[!\t9\u0007\t\u0003\u0005\u0002\f\r\u0005D\u0011IB]+\t\u0019Y\f\u0005\u00032i\ru\u0006cB\u0012\u0004@\u000e%41N\u0005\u0004\u0007\u0003\u0014!\u0001\u0002+bg.D\u0001b!2\u0004b\u0011\u00053qY\u0001\u0006[\u0016\u0014x-\u001a\u000b\u0004{\r%\u0007\u0002CAP\u0007\u0007\u0004\raa\u001b\t\u000f\r57\u0011\rC!k\u00069\"/Z9vSJ,7o\u0015;sS\u000e$8\u000b\u001d7jiR,'o\u001d\u0004\t\u0007#\u0004\u0001\u0015!\u0005\u0004T\nQ\u0011J\u001c3fq^CWM]3\u0014\u000b\r=7b!6\u0011\r\u001d\u001cy\u0003VBl!\r97q\u001a\u0005\f\u0007_\u001ayM!A!\u0002\u0013\t)\u0005\u0003\u0006\u0002N\r='\u0011!Q\u0001\nQC!b!\u0013\u0004P\n\u0015\r\u0015\"\u0005H\u0011)\u00199ha4\u0003\u0002\u0003\u0006I\u0001\u0013\u0005\bI\u000e=G\u0011ABr)!\u00199n!:\u0004h\u000e%\b\u0002CB8\u0007C\u0004\r!!\u0012\t\u000f\u000553\u0011\u001da\u0001)\"91\u0011JBq\u0001\u0004A\u0005\"CBC\u0007\u001f\u0004\r\u0011\"\u0001T\u0011)\u0019Yia4A\u0002\u0013\u00051q\u001e\u000b\u0004{\rE\b\u0002\u00039\u0004n\u0006\u0005\t\u0019\u0001+\t\u0011\rM5q\u001aQ!\nQCCaa=\u0004\u0018\"A1qTBh\t\u0003\u0019I\u0010F\u0002>\u0007wD\u0001b!*\u0004x\u0002\u00071Q \t\u0005\u0019\r%F\u000bC\u0005\u00040\u000e=\u0007\u0015\"\u0005\u0005\u0002Q\u0019\u0001\u0004b\u0001\t\u0011\u0005\r3q a\u0001\u0007kC\u0001\"a\u0003\u0004P\u0012\u0005CqA\u000b\u0003\t\u0013\u0001B!\r\u001b\u0005\fA11ea0U\u0007/D\u0001b!2\u0004P\u0012\u0005Cq\u0002\u000b\u0004{\u0011E\u0001\u0002CAP\t\u001b\u0001\raa6\t\u000f\r57q\u001aC!k\u001aAAq\u0003\u0001!\u0002#!IB\u0001\bMCN$\u0018J\u001c3fq^CWM]3\u0014\u000b\u0011U1\u0002b\u0007\u0011\r\u001d\u001cy\u0003\u0016C\u000f!\r9GQ\u0003\u0005\f\u0007_\")B!A!\u0002\u0013\t)\u0005\u0003\u0006\u0005$\u0011U!\u0011!Q\u0001\nQ\u000b1\u0001]8t\u0011)\u0019I\u0005\"\u0006\u0003\u0006\u0004&\tb\u0012\u0005\u000b\u0007o\")B!A!\u0002\u0013A\u0005b\u00023\u0005\u0016\u0011\u0005A1\u0006\u000b\t\t;!i\u0003b\f\u00052!A1q\u000eC\u0015\u0001\u0004\t)\u0005C\u0004\u0005$\u0011%\u0002\u0019\u0001+\t\u000f\r%C\u0011\u0006a\u0001\u0011\"I1Q\u0011C\u000b\u0001\u0004%\ta\u0015\u0005\u000b\u0007\u0017#)\u00021A\u0005\u0002\u0011]BcA\u001f\u0005:!A\u0001\u000f\"\u000e\u0002\u0002\u0003\u0007A\u000b\u0003\u0005\u0004\u0014\u0012U\u0001\u0015)\u0003UQ\u0011!Yda&\t\u0011\r}EQ\u0003C\u0001\t\u0003\"2!\u0010C\"\u0011!\u0019)\u000bb\u0010A\u0002\ru\b\"CBX\t+\u0001K\u0011\u0003C$)\rAB\u0011\n\u0005\t\u0003\u0007\")\u00051\u0001\u00046\"A\u00111\u0002C\u000b\t\u0003\"i%\u0006\u0002\u0005PA!\u0011\u0007\u000eC)!\u0019\u00193q\u0018+\u0005\u001e!A1Q\u0019C\u000b\t\u0003\")\u0006F\u0002>\t/B\u0001\"a(\u0005T\u0001\u0007AQ\u0004\u0005\b\u0007\u001b$)\u0002\"\u0011v\r!!i\u0006\u0001Q\u0001\u0012\u0011}#a\u0002*fm\u0016\u00148/Z\u000b\u0007\tC\"i\u0007\"\u001d\u0014\u000b\u0011m3\u0002b\u0019\u0011\u000f\u001d\u001cY\u0005\"\u001a\u0005xA91\u0005b\u001a\u0005l\u0011=\u0014b\u0001C5\u0005\tA1i\\7cS:,'\u000fE\u0002\u0015\t[\"\u0001\"a1\u0005\\\t\u0007\u0011Q\u0019\t\u0004)\u0011ED\u0001\u0003C:\t7\u0012\r\u0001\"\u001e\u0003\tQC\u0017n]\t\u0003=m\u0001ra\u001aC.\tW\"y\u0007C\u0006\u0005|\u0011m#\u0011!Q\u0001\n\u0011u\u0014aA2cMB)A\u0002b \u0005f%\u0019A\u0011\u0011\u0004\u0003\u0013\u0019+hn\u0019;j_:\u0004\u0004BCB%\t7\u0012)\u0019)C\t\u000f\"Q1q\u000fC.\u0005\u0003\u0005\u000b\u0011\u0002%\t\u000f\u0011$Y\u0006\"\u0001\u0005\nR1Aq\u000fCF\t\u001bC\u0001\u0002b\u001f\u0005\b\u0002\u0007AQ\u0010\u0005\b\u0007\u0013\"9\t1\u0001I\u0011)\u0019)\tb\u0017A\u0002\u0013\u0005A\u0011S\u000b\u0003\tKB!ba#\u0005\\\u0001\u0007I\u0011\u0001CK)\riDq\u0013\u0005\na\u0012M\u0015\u0011!a\u0001\tKB\u0011ba%\u0005\\\u0001\u0006K\u0001\"\u001a)\t\u0011e5q\u0013\u0005\t\u0007?#Y\u0006\"\u0001\u0005 R\u0019Q\b\")\t\u0011\r\u0015FQ\u0014a\u0001\tG\u0003R\u0001DBU\tKB\u0011ba,\u0005\\\u0001&\t\u0002b*\u0015\t\u0011]D\u0011\u0016\u0005\t\u0003\u0007\")\u000b1\u0001\u00046\"A1Q\u0019C.\t\u0003\"i\u000bF\u0002>\t_C\u0001\"a(\u0005,\u0002\u0007Aq\u000f\u0004\t\tg\u0003\u0001\u0015!\u0005\u00056\nQ!+\u001a<feN,W*\u00199\u0016\r\u0011]Fq\u0018Cb'\u0015!\tl\u0003C]!\u001d971\nC^\t\u000b\u0004ra\tC4\t{#\t\rE\u0002\u0015\t\u007f#q!!$\u00052\n\u0007q\u0003E\u0002\u0015\t\u0007$q!a\u001e\u00052\n\u0007q\u0003E\u0004h\tc#i\f\"1\t\u0017\u0005EE\u0011\u0017B\u0001B\u0003%A\u0011\u001a\t\u0007\u0019\u0005\u001d3\u0003\"0\t\u0017\u00115G\u0011\u0017B\u0001B\u0003%AqZ\u0001\u0004a\n4\u0007#\u0002\u0007\u0005��\u0011m\u0006BCB%\tc\u0013)\u0019)C\t\u000f\"Q1q\u000fCY\u0005\u0003\u0005\u000b\u0011\u0002%\t\u000f\u0011$\t\f\"\u0001\u0005XRAAQ\u0019Cm\t7$i\u000e\u0003\u0005\u0002\u0012\u0012U\u0007\u0019\u0001Ce\u0011!!i\r\"6A\u0002\u0011=\u0007bBB%\t+\u0004\r\u0001\u0013\u0005\u000b\u0007\u000b#\t\f1A\u0005\u0002\u0011\u0005XC\u0001C^\u0011)\u0019Y\t\"-A\u0002\u0013\u0005AQ\u001d\u000b\u0004{\u0011\u001d\b\"\u00039\u0005d\u0006\u0005\t\u0019\u0001C^\u0011%\u0019\u0019\n\"-!B\u0013!Y\f\u000b\u0003\u0005j\u000e]\u0005\u0002CBP\tc#\t\u0001b<\u0015\u0007u\"\t\u0010\u0003\u0005\u0004&\u00125\b\u0019\u0001Cz!\u0015a1\u0011\u0016C^\u0011%\u0019y\u000b\"-!\n#!9\u0010\u0006\u0003\u0005F\u0012e\b\u0002CA\"\tk\u0004\ra!.\t\u0011\r\u0015G\u0011\u0017C!\t{$2!\u0010C��\u0011!\ty\nb?A\u0002\u0011\u0015g\u0001CC\u0002\u0001\u0001\u0006\t\"\"\u0002\u0003\u0019M\u000bW.Z#mK6,g\u000e^:\u0016\t\u0015\u001dQqB\n\u0006\u000b\u0003YQ\u0011\u0002\t\u0007O\u000e=b/b\u0003\u0011\u000b\u001d,\t!\"\u0004\u0011\u0007Q)y\u0001\u0002\u0005\u0002D\u0016\u0005!\u0019AAc\u0011)\u0019I%\"\u0001\u0003\u0006\u0004&\tb\u0012\u0005\u000b\u0007o*\tA!A!\u0002\u0013A\u0005bCC\f\u000b\u0003\u0011)\u0019!C\u0001\u000b3\t\u0001b\u001c;iKJ\u0004\u0018\u000e^\u000b\u0003\u000b7\u0001BaI%\u0006\u000e!YQqDC\u0001\u0005\u0003\u0005\u000b\u0011BC\u000e\u0003%yG\u000f[3sa&$\b\u0005C\u0004e\u000b\u0003!\t!b\t\u0015\r\u0015-QQEC\u0014\u0011\u001d\u0019I%\"\tA\u0002!C\u0001\"b\u0006\u0006\"\u0001\u0007Q1\u0004\u0005\n\u0007\u000b+\t\u00011A\u0005\u0002UD!ba#\u0006\u0002\u0001\u0007I\u0011AC\u0017)\riTq\u0006\u0005\ta\u0016-\u0012\u0011!a\u0001m\"A11SC\u0001A\u0003&a\u000f\u000b\u0003\u00062\r]\u0005\u0002CBP\u000b\u0003!\t!b\u000e\u0015\u0007u*I\u0004\u0003\u0005\u0004&\u0016U\u0002\u0019AC\u001e!\u0011a1\u0011\u0016<\t\u0013\r=V\u0011\u0001Q\u0005\u0012\u0015}Bc\u0001\r\u0006B!A\u00111IC\u001f\u0001\u0004\u0019)\f\u0003\u0005\u0002\f\u0015\u0005A\u0011IC#+\t)9\u0005\u0005\u00032i\u0015%\u0003CB\u0012\u0004@Z,Y\u0001\u0003\u0005\u0004F\u0016\u0005A\u0011IC')\riTq\n\u0005\t\u0003?+Y\u00051\u0001\u0006\f!91QZC\u0001\t\u0003*h\u0001CC+\u0001\u0001\u0006\t\"b\u0016\u0003\u000fU\u0003H-\u0019;fIV1Q\u0011LC1\u000bK\u001aR!b\u0015\f\u000b7\u0002raZB&\u000b;*9\u0007E\u0004$\tO*y&b\u0019\u0011\u0007Q)\t\u0007\u0002\u0005\u0002D\u0016M#\u0019AAc!\r!RQ\r\u0003\b\u0003o*\u0019F1\u0001\u0018!\u001d9W1KC0\u000bGB!\u0002b\t\u0006T\t\u0005\t\u0015!\u0003U\u0011-\u0011)$b\u0015\u0003\u0002\u0003\u0006I!b\u0018\t\u0017\u00115W1\u000bB\u0001B\u0003%Qq\u000e\t\bG\u0015ETqLC2\u0013\r)\u0019H\u0001\u0002\u0010\u0007>l'-\u001b8fe\u001a\u000b7\r^8ss\"Q1\u0011JC*\u0005\u000b\u0007K\u0011C$\t\u0015\r]T1\u000bB\u0001B\u0003%\u0001\nC\u0004e\u000b'\"\t!b\u001f\u0015\u0015\u0015\u001dTQPC@\u000b\u0003+\u0019\tC\u0004\u0005$\u0015e\u0004\u0019\u0001+\t\u0011\tUR\u0011\u0010a\u0001\u000b?B\u0001\u0002\"4\u0006z\u0001\u0007Qq\u000e\u0005\b\u0007\u0013*I\b1\u0001I\u0011)\u0019))b\u0015A\u0002\u0013\u0005QqQ\u000b\u0003\u000b;B!ba#\u0006T\u0001\u0007I\u0011ACF)\riTQ\u0012\u0005\na\u0016%\u0015\u0011!a\u0001\u000b;B\u0011ba%\u0006T\u0001\u0006K!\"\u0018)\t\u0015=5q\u0013\u0005\t\u0007?+\u0019\u0006\"\u0001\u0006\u0016R\u0019Q(b&\t\u0011\r\u0015V1\u0013a\u0001\u000b3\u0003R\u0001DBU\u000b;B\u0011ba,\u0006T\u0001&\t\"\"(\u0015\u0007a)y\n\u0003\u0005\u0002D\u0015m\u0005\u0019AB[\u0011!\tY!b\u0015\u0005B\u0015\rVCACS!\u0011\tD'b*\u0011\u000f\r\u001ay,\"\u0018\u0006h!A1QYC*\t\u0003*Y\u000bF\u0002>\u000b[C\u0001\"a(\u0006*\u0002\u0007Qq\r\u0005\b\u0007\u001b,\u0019\u0006\"\u0011v\r!)\u0019\f\u0001Q\u0001\u0012\u0015U&a\u0001.jaVAQqWCa\u000b\u000b,ImE\u0003\u00062.)I\fE\u0004h\u0007\u0017*Y,b3\u0011\u000f\r\"9'\"0\u0006HB9ABa&\u0006@\u0016\r\u0007c\u0001\u000b\u0006B\u0012A\u00111YCY\u0005\u0004\t)\rE\u0002\u0015\u000b\u000b$q!!$\u00062\n\u0007q\u0003E\u0002\u0015\u000b\u0013$q!a\u001e\u00062\n\u0007q\u0003E\u0005h\u000bc+y,b1\u0006H\"Q!qPCY\u0005\u0003\u0005\u000b\u0011\u0002+\t\u0017\u0015EW\u0011\u0017B\u0001B\u0003%Q1[\u0001\u0003G\u001a\u0004raIC9\u000b{+9\r\u0003\u0006\u0004J\u0015E&Q1Q\u0005\u0012\u001dC!ba\u001e\u00062\n\u0005\t\u0015!\u0003I\u0011-)9\"\"-\u0003\u0006\u0004%\t!b7\u0016\u0005\u0015u\u0007\u0003B\u0012J\u000b\u0007D1\"b\b\u00062\n\u0005\t\u0015!\u0003\u0006^\"9A-\"-\u0005\u0002\u0015\rHCCCf\u000bK,9/\";\u0006l\"9!qPCq\u0001\u0004!\u0006\u0002CCi\u000bC\u0004\r!b5\t\u000f\r%S\u0011\u001da\u0001\u0011\"AQqCCq\u0001\u0004)i\u000e\u0003\u0006\u0004\u0006\u0016E\u0006\u0019!C\u0001\u000b_,\"!\"=\u0011\t\u0015MXQ_\u0007\u0003\u000bcKA!b>\u0004@\n1!+Z:vYRD!ba#\u00062\u0002\u0007I\u0011AC~)\riTQ \u0005\na\u0016e\u0018\u0011!a\u0001\u000bcD\u0011ba%\u00062\u0002\u0006K!\"=)\t\u0015}8q\u0013\u0005\t\u0007?+\t\f\"\u0001\u0007\u0006Q\u0019QHb\u0002\t\u0011\r\u0015f1\u0001a\u0001\r\u0013\u0001R\u0001DBU\u000bcD\u0011ba,\u00062\u0002&\tB\"\u0004\u0015\u0007a1y\u0001\u0003\u0005\u0002D\u0019-\u0001\u0019AB[\u0011!\tY!\"-\u0005B\u0019MQC\u0001D\u000b!\u0015\u0001\u0012\u0011CCf\u0011!\u0019)-\"-\u0005B\u0019eAcA\u001f\u0007\u001c!A\u0011q\u0014D\f\u0001\u0004)YM\u0002\u0005\u0007 \u0001\u0001\u000b\u0011\u0003D\u0011\u0005-\u0019uN\u001d:fgB|g\u000eZ:\u0016\t\u0019\rb1F\n\u0006\r;YaQ\u0005\t\u0007O\u000e=bOb\n\u0011\u000b\u001d4iB\"\u000b\u0011\u0007Q1Y\u0003B\u0004\u0002\u000e\u001au!\u0019A\f\t\u0017\u0019=bQ\u0004B\u0001B\u0003%a\u0011G\u0001\u0005G>\u0014(\u000fE\u0004\r\u0005k\u001bb\u0011\u0006<\t\u0015\r%cQ\u0004BCB\u0013Eq\t\u0003\u0006\u0004x\u0019u!\u0011!Q\u0001\n!C1\"b\u0006\u0007\u001e\t\u0015\r\u0011\"\u0001\u0007:U\u0011a1\b\t\u0005G%3I\u0003C\u0006\u0006 \u0019u!\u0011!Q\u0001\n\u0019m\u0002b\u00023\u0007\u001e\u0011\u0005a\u0011\t\u000b\t\rO1\u0019E\"\u0012\u0007H!Aaq\u0006D \u0001\u00041\t\u0004C\u0004\u0004J\u0019}\u0002\u0019\u0001%\t\u0011\u0015]aq\ba\u0001\rwA\u0011b!\"\u0007\u001e\u0001\u0007I\u0011A;\t\u0015\r-eQ\u0004a\u0001\n\u00031i\u0005F\u0002>\r\u001fB\u0001\u0002\u001dD&\u0003\u0003\u0005\rA\u001e\u0005\t\u0007'3i\u0002)Q\u0005m\"\"a\u0011KBL\u0011!\u0019yJ\"\b\u0005\u0002\u0019]CcA\u001f\u0007Z!A1Q\u0015D+\u0001\u0004)Y\u0004C\u0005\u00040\u001au\u0001\u0015\"\u0005\u0007^Q\u0019\u0001Db\u0018\t\u0011\u0005\rc1\fa\u0001\u0007kC\u0001\"a\u0003\u0007\u001e\u0011\u0005c1M\u000b\u0003\rK\u0002B!\r\u001b\u0007hA11ea0w\rOA\u0001b!2\u0007\u001e\u0011\u0005c1\u000e\u000b\u0004{\u00195\u0004\u0002CAP\rS\u0002\rAb\n\t\u000f\r5gQ\u0004C!k\"qa1\u000f\u0001\u0011\u0002\u0007\u0005\t\u0011\"\u0003\u0007v\u0019E\u0015!C:va\u0016\u0014HE_5q+!19Hb\"\u0007\f\u001auD\u0003\u0002D=\r\u001b#BAb\u001f\u0007��A\u0019AC\" \u0005\u000f\u0005]d\u0011\u000fb\u0001/!A\u00111\u0010D9\u0001\b1\t\tE\u0005\u0002��\u0005\u0015eDb!\u0007|A9ABa&\u0007\u0006\u001a%\u0005c\u0001\u000b\u0007\b\u0012A\u00111\u0019D9\u0005\u0004\t)\rE\u0002\u0015\r\u0017#q!!$\u0007r\t\u0007q\u0003\u0003\u0005\u0002 \u001aE\u0004\u0019\u0001DH!\u0015\u0001\u00121\u0018DE\u0013\r\u0011)i\n\t\u0006G\u0001\u0019b$\u000b")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike.class */
public interface ParSeqLike<T, Repr extends ParSeq<T>, Sequential extends Seq<T> & SeqLike<T, Sequential>> extends GenSeqLike<T, Repr>, ParIterableLike<T, Repr, Sequential> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$Accessor.class */
    public interface Accessor<R, Tp> extends ParIterableLike<T, Repr, Sequential>.Accessor<R, Tp> {
        @Override // scala.collection.parallel.ParIterableLike.Accessor
        SeqSplitter<T> pit();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$Corresponds.class */
    public class Corresponds<S> implements ParSeqLike<T, Repr, Sequential>.Accessor<Object, ParSeqLike<T, Repr, Sequential>.Corresponds<S>> {
        public final /* synthetic */ ParSeqLike $outer;
        private final SeqSplitter<S> otherpit;
        private final SeqSplitter<T> pit;
        private volatile boolean result = true;
        public final Function2<T, S, Object> scala$collection$parallel$ParSeqLike$Corresponds$$corr;
        private volatile Throwable throwable;

        public Corresponds(ParSeqLike<T, Repr, Sequential> parSeqLike, Function2<T, S, Object> function2, SeqSplitter<T> seqSplitter, SeqSplitter<S> seqSplitter2) {
            this.scala$collection$parallel$ParSeqLike$Corresponds$$corr = function2;
            this.pit = seqSplitter;
            this.otherpit = seqSplitter2;
            Objects.requireNonNull(parSeqLike);
            this.$outer = parSeqLike;
            throwable_$eq(null);
            ParIterableLike.StrictSplitterCheckTask.Cclass.$init$(this);
            ParIterableLike.Accessor.Cclass.$init$(this);
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<Object> option) {
            if (!pit().isAborted()) {
                result_$eq(pit().corresponds(this.scala$collection$parallel$ParSeqLike$Corresponds$$corr, otherpit()));
                if (result()) {
                    return;
                }
                pit().abort();
            }
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void merge(Object obj) {
            merge((Corresponds) ((Corresponds) obj));
        }

        public void merge(ParSeqLike<T, Repr, Sequential>.Corresponds<S> corresponds) {
            result_$eq(result() && corresponds.result());
        }

        @Override // scala.collection.parallel.Task
        public void mergeThrowables(Task<?, ?> task) {
            Task.Cclass.mergeThrowables(this, task);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public Nothing$ newSubtask(IterableSplitter<T> iterableSplitter) {
            return package$.MODULE$.unsupported();
        }

        public SeqSplitter<S> otherpit() {
            return this.otherpit;
        }

        @Override // scala.collection.parallel.ParSeqLike.Accessor, scala.collection.parallel.ParIterableLike.Accessor
        public SeqSplitter<T> pit() {
            return this.pit;
        }

        @Override // scala.collection.parallel.Task
        public Object repr() {
            return Task.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.StrictSplitterCheckTask
        public boolean requiresStrictSplitters() {
            return true;
        }

        @Override // scala.collection.parallel.Task
        public boolean result() {
            return this.result;
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void result_$eq(Object obj) {
            result_$eq(BoxesRunTime.unboxToBoolean(obj));
        }

        public void result_$eq(boolean z) {
            this.result = z;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        /* renamed from: scala$collection$parallel$ParIterableLike$Accessor$$super$toString */
        public /* synthetic */ String mo109x4f2c1f8b() {
            return super.toString();
        }

        /* renamed from: scala$collection$parallel$ParSeqLike$Corresponds$$$outer */
        public /* synthetic */ ParSeqLike mo108x65cdc205() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return ParIterableLike.Accessor.Cclass.shouldSplitFurther(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public void signalAbort() {
            ParIterableLike.Accessor.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public Seq<Task<Object, ParSeqLike<T, Repr, Sequential>.Corresponds<S>>> split() {
            int remaining = pit().remaining() / 2;
            int remaining2 = pit().remaining() - remaining;
            return (Seq) ((TraversableLike) pit().psplitWithSignalling(Predef$.MODULE$.wrapIntArray(new int[]{remaining, remaining2})).zip(otherpit().psplitWithSignalling(Predef$.MODULE$.wrapIntArray(new int[]{remaining, remaining2})), Seq$.MODULE$.canBuildFrom())).withFilter(new ParSeqLike$Corresponds$$anonfun$split$15(this)).map(new ParSeqLike$Corresponds$$anonfun$split$16(this), Seq$.MODULE$.canBuildFrom());
        }

        @Override // scala.collection.parallel.Task
        public Throwable throwable() {
            return this.throwable;
        }

        @Override // scala.collection.parallel.Task
        public void throwable_$eq(Throwable th) {
            this.throwable = th;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public String toString() {
            return ParIterableLike.Accessor.Cclass.toString(this);
        }

        @Override // scala.collection.parallel.Task
        public void tryLeaf(Option<Object> option) {
            Task.Cclass.tryLeaf(this, option);
        }

        @Override // scala.collection.parallel.Task
        public void tryMerge(Object obj) {
            Task.Cclass.tryMerge(this, obj);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$Elements.class */
    public abstract class Elements implements SeqSplitter<T>, BufferedIterator<T> {
        public final /* synthetic */ ParSeqLike $outer;
        private final int end;
        private int scala$collection$parallel$ParSeqLike$Elements$$i;
        public final int scala$collection$parallel$ParSeqLike$Elements$$start;
        private Signalling signalDelegate;

        public Elements(ParSeqLike<T, Repr, Sequential> parSeqLike, int i, int i2) {
            this.scala$collection$parallel$ParSeqLike$Elements$$start = i;
            this.end = i2;
            Objects.requireNonNull(parSeqLike);
            this.$outer = parSeqLike;
            TraversableOnce.Cclass.$init$(this);
            Iterator.Cclass.$init$(this);
            RemainsIterator.Cclass.$init$(this);
            AugmentedIterableIterator.Cclass.$init$(this);
            DelegatedSignalling.Cclass.$init$(this);
            IterableSplitter.Cclass.$init$(this);
            AugmentedSeqIterator.Cclass.$init$(this);
            SeqSplitter.Cclass.$init$(this);
            BufferedIterator.Cclass.$init$(this);
            this.scala$collection$parallel$ParSeqLike$Elements$$i = i;
        }

        private void scala$collection$parallel$ParSeqLike$Elements$$i_$eq(int i) {
            this.scala$collection$parallel$ParSeqLike$Elements$$i = i;
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
        public <B> B aggregate(Function0<B> function0, Function2<B, T, B> function2, Function2<B, B, B> function22) {
            return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U, PI extends IterableSplitter<U>> IterableSplitter<T>.Appended<U, PI> appendParIterable(PI pi) {
            return IterableSplitter.Cclass.appendParIterable(this, pi);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U, PI extends SeqSplitter<U>> SeqSplitter<T>.Appended<U, PI> appendParSeq(PI pi) {
            return SeqSplitter.Cclass.appendParSeq(this, pi);
        }

        @Override // scala.collection.Iterator
        public BufferedIterator<T> buffered() {
            return BufferedIterator.Cclass.buffered(this);
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
            return AugmentedIterableIterator.Cclass.collect2combiner(this, partialFunction, combiner);
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
            return (Bld) AugmentedIterableIterator.Cclass.copy2builder(this, bld);
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
            AugmentedIterableIterator.Cclass.copyToArray(this, obj, i, i2);
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
            return AugmentedIterableIterator.Cclass.count(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String debugInformation() {
            return IterableSplitter.Cclass.debugInformation(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<T> drop(int i) {
            return Iterator.Cclass.drop(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.drop2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<T> dropWhile(Function1<T, Object> function1) {
            return Iterator.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public ParSeqLike<T, Repr, Sequential>.Elements dup() {
            return new ParSeqLike<T, Repr, Sequential>.Elements(this) { // from class: scala.collection.parallel.ParSeqLike$Elements$$anon$1
                {
                    super(this.scala$collection$parallel$ParSeqLike$Elements$$$outer(), this.scala$collection$parallel$ParSeqLike$Elements$$i(), this.end());
                }
            };
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<T>, Iterator<T>> duplicate() {
            return Iterator.Cclass.duplicate(this);
        }

        public int end() {
            return this.end;
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<T, Object> function1) {
            return Iterator.Cclass.exists(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<T> filter(Function1<T, Object> function1) {
            return Iterator.Cclass.filter(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filter2combiner(Function1<T, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filter2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<T> filterNot(Function1<T, Object> function1) {
            return Iterator.Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filterNot2combiner(Function1<T, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filterNot2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<T> find(Function1<T, Object> function1) {
            return Iterator.Cclass.find(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> flatMap(Function1<T, GenTraversableOnce<B>> function1) {
            return Iterator.Cclass.flatMap(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> flatmap2combiner(Function1<T, GenTraversableOnce<S>> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.flatmap2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U fold(U u, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.fold(this, u, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B foldLeft(B b, Function2<B, T, B> function2) {
            return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<T, B, B> function2) {
            return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<T, Object> function1) {
            return Iterator.Cclass.forall(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<T, U> function1) {
            Iterator.Cclass.foreach(this, function1);
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
            return scala$collection$parallel$ParSeqLike$Elements$$i() < end();
        }

        @Override // scala.collection.BufferedIterator
        public T head() {
            return scala$collection$parallel$ParSeqLike$Elements$$$outer().apply(scala$collection$parallel$ParSeqLike$Elements$$i());
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
            return AugmentedSeqIterator.Cclass.indexWhere(this, function1);
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
            return AugmentedSeqIterator.Cclass.lastIndexWhere(this, function1);
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
            return AugmentedIterableIterator.Cclass.map2combiner(this, function1, combiner);
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
            Nothing$ nothing$;
            if (scala$collection$parallel$ParSeqLike$Elements$$i() < end()) {
                nothing$ = scala$collection$parallel$ParSeqLike$Elements$$$outer().apply(scala$collection$parallel$ParSeqLike$Elements$$i());
                scala$collection$parallel$ParSeqLike$Elements$$i_$eq(scala$collection$parallel$ParSeqLike$Elements$$i() + 1);
            } else {
                nothing$ = Iterator$.MODULE$.empty().next();
            }
            return nothing$;
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
            return AugmentedIterableIterator.Cclass.partition2combiners(this, function1, combiner, combiner2);
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
            return AugmentedSeqIterator.Cclass.prefixLength(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.product(this, numeric);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.PreciseSplitter
        public Seq<SeqSplitter<T>> psplit(Seq<Object> seq) {
            Seq seq2 = (Seq) seq.scanLeft(BoxesRunTime.boxToInteger(0), new ParSeqLike$Elements$$anonfun$1(this), Seq$.MODULE$.canBuildFrom());
            return (Seq) ((TraversableLike) seq2.init().zip(seq2.tail(), Seq$.MODULE$.canBuildFrom())).withFilter(new ParSeqLike$Elements$$anonfun$psplit$1(this)).map(new ParSeqLike$Elements$$anonfun$psplit$2(this), Seq$.MODULE$.canBuildFrom());
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
        public final int remaining() {
            return end() - scala$collection$parallel$ParSeqLike$Elements$$i();
        }

        @Override // scala.collection.parallel.SeqSplitter
        public SeqSplitter<T> reverse() {
            return SeqSplitter.Cclass.reverse(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, This> Combiner<U, This> reverse2combiner(Combiner<U, This> combiner) {
            return AugmentedSeqIterator.Cclass.reverse2combiner(this, combiner);
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
            return Iterator.Cclass.sameElements(this, iterator);
        }

        public /* synthetic */ ParSeqLike scala$collection$parallel$ParSeqLike$Elements$$$outer() {
            return this.$outer;
        }

        public int scala$collection$parallel$ParSeqLike$Elements$$i() {
            return this.scala$collection$parallel$ParSeqLike$Elements$$i;
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
            AugmentedIterableIterator.Cclass.scanToArray(this, u, function2, obj, i);
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
        public Seq<SeqSplitter<T>> split() {
            return psplit(Predef$.MODULE$.wrapIntArray(new int[]{remaining() / 2, remaining() - (remaining() / 2)}));
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
            return (U) AugmentedIterableIterator.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int tag() {
            return DelegatedSignalling.Cclass.tag(this);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<T> take(int i) {
            return SeqSplitter.Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.take2combiner(this, i, combiner);
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
        public <T, U> Map<T, U> toMap(Predef$$less$colon$less<T, Tuple2<T, U>> predef$$less$colon$less) {
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
            return new StringBuilder().append((Object) "Elements(").append(BoxesRunTime.boxToInteger(this.scala$collection$parallel$ParSeqLike$Elements$$start)).append((Object) ", ").append(BoxesRunTime.boxToInteger(end())).append((Object) ")").toString();
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Traversable<T> toTraversable() {
            return Iterator.Cclass.toTraversable(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Vector<T> toVector() {
            return TraversableOnce.Cclass.toVector(this);
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

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$IndexWhere.class */
    public class IndexWhere implements ParSeqLike<T, Repr, Sequential>.Accessor<Object, ParSeqLike<T, Repr, Sequential>.IndexWhere> {
        public final /* synthetic */ ParSeqLike $outer;
        private final int from;
        private final SeqSplitter<T> pit;
        private volatile int result = -1;
        public final Function1<T, Object> scala$collection$parallel$ParSeqLike$IndexWhere$$pred;
        private volatile Throwable throwable;

        public IndexWhere(ParSeqLike<T, Repr, Sequential> parSeqLike, Function1<T, Object> function1, int i, SeqSplitter<T> seqSplitter) {
            this.scala$collection$parallel$ParSeqLike$IndexWhere$$pred = function1;
            this.from = i;
            this.pit = seqSplitter;
            Objects.requireNonNull(parSeqLike);
            this.$outer = parSeqLike;
            throwable_$eq(null);
            ParIterableLike.StrictSplitterCheckTask.Cclass.$init$(this);
            ParIterableLike.Accessor.Cclass.$init$(this);
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<Object> option) {
            int indexWhere;
            if (this.from >= pit().indexFlag() || (indexWhere = pit().indexWhere((Function1<T, Object>) this.scala$collection$parallel$ParSeqLike$IndexWhere$$pred)) == -1) {
                return;
            }
            result_$eq(this.from + indexWhere);
            pit().setIndexFlagIfLesser(this.from);
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void merge(Object obj) {
            merge((IndexWhere) ((IndexWhere) obj));
        }

        public void merge(ParSeqLike<T, Repr, Sequential>.IndexWhere indexWhere) {
            int i;
            if (result() == -1) {
                i = indexWhere.result();
            } else if (indexWhere.result() != -1) {
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                i = richInt$.min$extension(result(), indexWhere.result());
            } else {
                i = result();
            }
            result_$eq(i);
        }

        @Override // scala.collection.parallel.Task
        public void mergeThrowables(Task<?, ?> task) {
            Task.Cclass.mergeThrowables(this, task);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public Nothing$ newSubtask(IterableSplitter<T> iterableSplitter) {
            return package$.MODULE$.unsupported();
        }

        @Override // scala.collection.parallel.ParSeqLike.Accessor, scala.collection.parallel.ParIterableLike.Accessor
        public SeqSplitter<T> pit() {
            return this.pit;
        }

        @Override // scala.collection.parallel.Task
        public Object repr() {
            return Task.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.StrictSplitterCheckTask
        public boolean requiresStrictSplitters() {
            return true;
        }

        @Override // scala.collection.parallel.Task
        public int result() {
            return this.result;
        }

        public void result_$eq(int i) {
            this.result = i;
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void result_$eq(Object obj) {
            result_$eq(BoxesRunTime.unboxToInt(obj));
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        /* renamed from: scala$collection$parallel$ParIterableLike$Accessor$$super$toString */
        public /* synthetic */ String mo109x4f2c1f8b() {
            return super.toString();
        }

        /* renamed from: scala$collection$parallel$ParSeqLike$IndexWhere$$$outer */
        public /* synthetic */ ParSeqLike mo108x65cdc205() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return ParIterableLike.Accessor.Cclass.shouldSplitFurther(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public void signalAbort() {
            ParIterableLike.Accessor.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public Seq<Task<Object, ParSeqLike<T, Repr, Sequential>.IndexWhere>> split() {
            Seq<SeqSplitter<T>> splitWithSignalling = pit().splitWithSignalling();
            return (Seq) ((TraversableLike) splitWithSignalling.zip((GenIterable) splitWithSignalling.scanLeft(BoxesRunTime.boxToInteger(this.from), new ParSeqLike$IndexWhere$$anonfun$split$4(this), Seq$.MODULE$.canBuildFrom()), Seq$.MODULE$.canBuildFrom())).withFilter(new ParSeqLike$IndexWhere$$anonfun$split$5(this)).map(new ParSeqLike$IndexWhere$$anonfun$split$6(this), Seq$.MODULE$.canBuildFrom());
        }

        @Override // scala.collection.parallel.Task
        public Throwable throwable() {
            return this.throwable;
        }

        @Override // scala.collection.parallel.Task
        public void throwable_$eq(Throwable th) {
            this.throwable = th;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public String toString() {
            return ParIterableLike.Accessor.Cclass.toString(this);
        }

        @Override // scala.collection.parallel.Task
        public void tryLeaf(Option<Object> option) {
            Task.Cclass.tryLeaf(this, option);
        }

        @Override // scala.collection.parallel.Task
        public void tryMerge(Object obj) {
            Task.Cclass.tryMerge(this, obj);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$LastIndexWhere.class */
    public class LastIndexWhere implements ParSeqLike<T, Repr, Sequential>.Accessor<Object, ParSeqLike<T, Repr, Sequential>.LastIndexWhere> {
        public final /* synthetic */ ParSeqLike $outer;
        private final SeqSplitter<T> pit;
        private final int pos;
        private volatile int result = -1;
        public final Function1<T, Object> scala$collection$parallel$ParSeqLike$LastIndexWhere$$pred;
        private volatile Throwable throwable;

        public LastIndexWhere(ParSeqLike<T, Repr, Sequential> parSeqLike, Function1<T, Object> function1, int i, SeqSplitter<T> seqSplitter) {
            this.scala$collection$parallel$ParSeqLike$LastIndexWhere$$pred = function1;
            this.pos = i;
            this.pit = seqSplitter;
            Objects.requireNonNull(parSeqLike);
            this.$outer = parSeqLike;
            throwable_$eq(null);
            ParIterableLike.StrictSplitterCheckTask.Cclass.$init$(this);
            ParIterableLike.Accessor.Cclass.$init$(this);
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<Object> option) {
            int lastIndexWhere;
            if (this.pos <= pit().indexFlag() || (lastIndexWhere = pit().lastIndexWhere(this.scala$collection$parallel$ParSeqLike$LastIndexWhere$$pred)) == -1) {
                return;
            }
            result_$eq(this.pos + lastIndexWhere);
            pit().setIndexFlagIfGreater(this.pos);
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void merge(Object obj) {
            merge((LastIndexWhere) ((LastIndexWhere) obj));
        }

        public void merge(ParSeqLike<T, Repr, Sequential>.LastIndexWhere lastIndexWhere) {
            int i;
            if (result() == -1) {
                i = lastIndexWhere.result();
            } else if (lastIndexWhere.result() != -1) {
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                i = richInt$.max$extension(result(), lastIndexWhere.result());
            } else {
                i = result();
            }
            result_$eq(i);
        }

        @Override // scala.collection.parallel.Task
        public void mergeThrowables(Task<?, ?> task) {
            Task.Cclass.mergeThrowables(this, task);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public Nothing$ newSubtask(IterableSplitter<T> iterableSplitter) {
            return package$.MODULE$.unsupported();
        }

        @Override // scala.collection.parallel.ParSeqLike.Accessor, scala.collection.parallel.ParIterableLike.Accessor
        public SeqSplitter<T> pit() {
            return this.pit;
        }

        @Override // scala.collection.parallel.Task
        public Object repr() {
            return Task.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.StrictSplitterCheckTask
        public boolean requiresStrictSplitters() {
            return true;
        }

        @Override // scala.collection.parallel.Task
        public int result() {
            return this.result;
        }

        public void result_$eq(int i) {
            this.result = i;
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void result_$eq(Object obj) {
            result_$eq(BoxesRunTime.unboxToInt(obj));
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        /* renamed from: scala$collection$parallel$ParIterableLike$Accessor$$super$toString */
        public /* synthetic */ String mo109x4f2c1f8b() {
            return super.toString();
        }

        /* renamed from: scala$collection$parallel$ParSeqLike$LastIndexWhere$$$outer */
        public /* synthetic */ ParSeqLike mo108x65cdc205() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return ParIterableLike.Accessor.Cclass.shouldSplitFurther(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public void signalAbort() {
            ParIterableLike.Accessor.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public Seq<Task<Object, ParSeqLike<T, Repr, Sequential>.LastIndexWhere>> split() {
            Seq<SeqSplitter<T>> splitWithSignalling = pit().splitWithSignalling();
            return (Seq) ((TraversableLike) splitWithSignalling.zip((GenIterable) splitWithSignalling.scanLeft(BoxesRunTime.boxToInteger(this.pos), new ParSeqLike$LastIndexWhere$$anonfun$split$7(this), Seq$.MODULE$.canBuildFrom()), Seq$.MODULE$.canBuildFrom())).withFilter(new ParSeqLike$LastIndexWhere$$anonfun$split$8(this)).map(new ParSeqLike$LastIndexWhere$$anonfun$split$9(this), Seq$.MODULE$.canBuildFrom());
        }

        @Override // scala.collection.parallel.Task
        public Throwable throwable() {
            return this.throwable;
        }

        @Override // scala.collection.parallel.Task
        public void throwable_$eq(Throwable th) {
            this.throwable = th;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public String toString() {
            return ParIterableLike.Accessor.Cclass.toString(this);
        }

        @Override // scala.collection.parallel.Task
        public void tryLeaf(Option<Object> option) {
            Task.Cclass.tryLeaf(this, option);
        }

        @Override // scala.collection.parallel.Task
        public void tryMerge(Object obj) {
            Task.Cclass.tryMerge(this, obj);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$Reverse.class */
    public class Reverse<U, This> implements ParSeqLike<T, Repr, Sequential>.Transformer<Combiner<U, This>, ParSeqLike<T, Repr, Sequential>.Reverse<U, This>> {
        public final /* synthetic */ ParSeqLike $outer;
        private final Function0<Combiner<U, This>> cbf;
        private final SeqSplitter<T> pit;
        private volatile Combiner<U, This> result = null;
        private volatile Throwable throwable;

        public Reverse(ParSeqLike<T, Repr, Sequential> parSeqLike, Function0<Combiner<U, This>> function0, SeqSplitter<T> seqSplitter) {
            this.cbf = function0;
            this.pit = seqSplitter;
            Objects.requireNonNull(parSeqLike);
            this.$outer = parSeqLike;
            throwable_$eq(null);
            ParIterableLike.StrictSplitterCheckTask.Cclass.$init$(this);
            ParIterableLike.Accessor.Cclass.$init$(this);
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<Combiner<U, This>> option) {
            result_$eq((Combiner) pit().reverse2combiner(mo108x65cdc205().reuse(option, this.cbf.apply())));
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void merge(Object obj) {
            merge((Reverse) ((Reverse) obj));
        }

        public void merge(ParSeqLike<T, Repr, Sequential>.Reverse<U, This> reverse) {
            result_$eq((Combiner) reverse.result().combine(result()));
        }

        @Override // scala.collection.parallel.Task
        public void mergeThrowables(Task<?, ?> task) {
            Task.Cclass.mergeThrowables(this, task);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public ParSeqLike<T, Repr, Sequential>.Reverse<U, This> newSubtask(IterableSplitter<T> iterableSplitter) {
            return new Reverse<>(mo108x65cdc205(), this.cbf, mo108x65cdc205().down(iterableSplitter));
        }

        @Override // scala.collection.parallel.ParSeqLike.Accessor, scala.collection.parallel.ParIterableLike.Accessor
        public SeqSplitter<T> pit() {
            return this.pit;
        }

        @Override // scala.collection.parallel.Task
        public Object repr() {
            return Task.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.StrictSplitterCheckTask
        public boolean requiresStrictSplitters() {
            return ParIterableLike.StrictSplitterCheckTask.Cclass.requiresStrictSplitters(this);
        }

        @Override // scala.collection.parallel.Task
        public Combiner<U, This> result() {
            return this.result;
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void result_$eq(Object obj) {
            result_$eq((Combiner) ((Combiner) obj));
        }

        public void result_$eq(Combiner<U, This> combiner) {
            this.result = combiner;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        /* renamed from: scala$collection$parallel$ParIterableLike$Accessor$$super$toString */
        public /* synthetic */ String mo109x4f2c1f8b() {
            return super.toString();
        }

        /* renamed from: scala$collection$parallel$ParSeqLike$Reverse$$$outer */
        public /* synthetic */ ParSeqLike mo108x65cdc205() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return ParIterableLike.Accessor.Cclass.shouldSplitFurther(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public void signalAbort() {
            ParIterableLike.Accessor.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public Seq<Task<Combiner<U, This>, ParSeqLike<T, Repr, Sequential>.Reverse<U, This>>> split() {
            return ParIterableLike.Accessor.Cclass.split(this);
        }

        @Override // scala.collection.parallel.Task
        public Throwable throwable() {
            return this.throwable;
        }

        @Override // scala.collection.parallel.Task
        public void throwable_$eq(Throwable th) {
            this.throwable = th;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public String toString() {
            return ParIterableLike.Accessor.Cclass.toString(this);
        }

        @Override // scala.collection.parallel.Task
        public void tryLeaf(Option<Combiner<U, This>> option) {
            Task.Cclass.tryLeaf(this, option);
        }

        @Override // scala.collection.parallel.Task
        public void tryMerge(Object obj) {
            Task.Cclass.tryMerge(this, obj);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$ReverseMap.class */
    public class ReverseMap<S, That> implements ParSeqLike<T, Repr, Sequential>.Transformer<Combiner<S, That>, ParSeqLike<T, Repr, Sequential>.ReverseMap<S, That>> {
        public final /* synthetic */ ParSeqLike $outer;

        /* renamed from: f */
        private final Function1<T, S> f1590f;
        private final Function0<Combiner<S, That>> pbf;
        private final SeqSplitter<T> pit;
        private volatile Combiner<S, That> result = null;
        private volatile Throwable throwable;

        public ReverseMap(ParSeqLike<T, Repr, Sequential> parSeqLike, Function1<T, S> function1, Function0<Combiner<S, That>> function0, SeqSplitter<T> seqSplitter) {
            this.f1590f = function1;
            this.pbf = function0;
            this.pit = seqSplitter;
            Objects.requireNonNull(parSeqLike);
            this.$outer = parSeqLike;
            throwable_$eq(null);
            ParIterableLike.StrictSplitterCheckTask.Cclass.$init$(this);
            ParIterableLike.Accessor.Cclass.$init$(this);
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<Combiner<S, That>> option) {
            result_$eq((Combiner) pit().reverseMap2combiner(this.f1590f, this.pbf.apply()));
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void merge(Object obj) {
            merge((ReverseMap) ((ReverseMap) obj));
        }

        public void merge(ParSeqLike<T, Repr, Sequential>.ReverseMap<S, That> reverseMap) {
            result_$eq((Combiner) reverseMap.result().combine(result()));
        }

        @Override // scala.collection.parallel.Task
        public void mergeThrowables(Task<?, ?> task) {
            Task.Cclass.mergeThrowables(this, task);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public ParSeqLike<T, Repr, Sequential>.ReverseMap<S, That> newSubtask(IterableSplitter<T> iterableSplitter) {
            return new ReverseMap<>(mo108x65cdc205(), this.f1590f, this.pbf, mo108x65cdc205().down(iterableSplitter));
        }

        @Override // scala.collection.parallel.ParSeqLike.Accessor, scala.collection.parallel.ParIterableLike.Accessor
        public SeqSplitter<T> pit() {
            return this.pit;
        }

        @Override // scala.collection.parallel.Task
        public Object repr() {
            return Task.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.StrictSplitterCheckTask
        public boolean requiresStrictSplitters() {
            return ParIterableLike.StrictSplitterCheckTask.Cclass.requiresStrictSplitters(this);
        }

        @Override // scala.collection.parallel.Task
        public Combiner<S, That> result() {
            return this.result;
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void result_$eq(Object obj) {
            result_$eq((Combiner) ((Combiner) obj));
        }

        public void result_$eq(Combiner<S, That> combiner) {
            this.result = combiner;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        /* renamed from: scala$collection$parallel$ParIterableLike$Accessor$$super$toString */
        public /* synthetic */ String mo109x4f2c1f8b() {
            return super.toString();
        }

        /* renamed from: scala$collection$parallel$ParSeqLike$ReverseMap$$$outer */
        public /* synthetic */ ParSeqLike mo108x65cdc205() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return ParIterableLike.Accessor.Cclass.shouldSplitFurther(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public void signalAbort() {
            ParIterableLike.Accessor.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public Seq<Task<Combiner<S, That>, ParSeqLike<T, Repr, Sequential>.ReverseMap<S, That>>> split() {
            return ParIterableLike.Accessor.Cclass.split(this);
        }

        @Override // scala.collection.parallel.Task
        public Throwable throwable() {
            return this.throwable;
        }

        @Override // scala.collection.parallel.Task
        public void throwable_$eq(Throwable th) {
            this.throwable = th;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public String toString() {
            return ParIterableLike.Accessor.Cclass.toString(this);
        }

        @Override // scala.collection.parallel.Task
        public void tryLeaf(Option<Combiner<S, That>> option) {
            Task.Cclass.tryLeaf(this, option);
        }

        @Override // scala.collection.parallel.Task
        public void tryMerge(Object obj) {
            Task.Cclass.tryMerge(this, obj);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$SameElements.class */
    public class SameElements<U> implements ParSeqLike<T, Repr, Sequential>.Accessor<Object, ParSeqLike<T, Repr, Sequential>.SameElements<U>> {
        public final /* synthetic */ ParSeqLike $outer;
        private final SeqSplitter<U> otherpit;
        private final SeqSplitter<T> pit;
        private volatile boolean result = true;
        private volatile Throwable throwable;

        public SameElements(ParSeqLike<T, Repr, Sequential> parSeqLike, SeqSplitter<T> seqSplitter, SeqSplitter<U> seqSplitter2) {
            this.pit = seqSplitter;
            this.otherpit = seqSplitter2;
            Objects.requireNonNull(parSeqLike);
            this.$outer = parSeqLike;
            throwable_$eq(null);
            ParIterableLike.StrictSplitterCheckTask.Cclass.$init$(this);
            ParIterableLike.Accessor.Cclass.$init$(this);
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<Object> option) {
            if (!pit().isAborted()) {
                result_$eq(pit().sameElements(otherpit()));
                if (result()) {
                    return;
                }
                pit().abort();
            }
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void merge(Object obj) {
            merge((SameElements) ((SameElements) obj));
        }

        public void merge(ParSeqLike<T, Repr, Sequential>.SameElements<U> sameElements) {
            result_$eq(result() && sameElements.result());
        }

        @Override // scala.collection.parallel.Task
        public void mergeThrowables(Task<?, ?> task) {
            Task.Cclass.mergeThrowables(this, task);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public Nothing$ newSubtask(IterableSplitter<T> iterableSplitter) {
            return package$.MODULE$.unsupported();
        }

        public SeqSplitter<U> otherpit() {
            return this.otherpit;
        }

        @Override // scala.collection.parallel.ParSeqLike.Accessor, scala.collection.parallel.ParIterableLike.Accessor
        public SeqSplitter<T> pit() {
            return this.pit;
        }

        @Override // scala.collection.parallel.Task
        public Object repr() {
            return Task.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.StrictSplitterCheckTask
        public boolean requiresStrictSplitters() {
            return true;
        }

        @Override // scala.collection.parallel.Task
        public boolean result() {
            return this.result;
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void result_$eq(Object obj) {
            result_$eq(BoxesRunTime.unboxToBoolean(obj));
        }

        public void result_$eq(boolean z) {
            this.result = z;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        /* renamed from: scala$collection$parallel$ParIterableLike$Accessor$$super$toString */
        public /* synthetic */ String mo109x4f2c1f8b() {
            return super.toString();
        }

        /* renamed from: scala$collection$parallel$ParSeqLike$SameElements$$$outer */
        public /* synthetic */ ParSeqLike mo108x65cdc205() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return ParIterableLike.Accessor.Cclass.shouldSplitFurther(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public void signalAbort() {
            ParIterableLike.Accessor.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public Seq<Task<Object, ParSeqLike<T, Repr, Sequential>.SameElements<U>>> split() {
            int remaining = pit().remaining() / 2;
            int remaining2 = pit().remaining() - remaining;
            return (Seq) ((TraversableLike) pit().psplitWithSignalling(Predef$.MODULE$.wrapIntArray(new int[]{remaining, remaining2})).zip(otherpit().psplitWithSignalling(Predef$.MODULE$.wrapIntArray(new int[]{remaining, remaining2})), Seq$.MODULE$.canBuildFrom())).withFilter(new ParSeqLike$SameElements$$anonfun$split$10(this)).map(new ParSeqLike$SameElements$$anonfun$split$11(this), Seq$.MODULE$.canBuildFrom());
        }

        @Override // scala.collection.parallel.Task
        public Throwable throwable() {
            return this.throwable;
        }

        @Override // scala.collection.parallel.Task
        public void throwable_$eq(Throwable th) {
            this.throwable = th;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public String toString() {
            return ParIterableLike.Accessor.Cclass.toString(this);
        }

        @Override // scala.collection.parallel.Task
        public void tryLeaf(Option<Object> option) {
            Task.Cclass.tryLeaf(this, option);
        }

        @Override // scala.collection.parallel.Task
        public void tryMerge(Object obj) {
            Task.Cclass.tryMerge(this, obj);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$SegmentLength.class */
    public class SegmentLength implements ParSeqLike<T, Repr, Sequential>.Accessor<Tuple2<Object, Object>, ParSeqLike<T, Repr, Sequential>.SegmentLength> {
        public final /* synthetic */ ParSeqLike $outer;
        private final SeqSplitter<T> pit;
        private volatile Tuple2<Object, Object> result = null;
        public final int scala$collection$parallel$ParSeqLike$SegmentLength$$from;
        public final Function1<T, Object> scala$collection$parallel$ParSeqLike$SegmentLength$$pred;
        private volatile Throwable throwable;

        public SegmentLength(ParSeqLike<T, Repr, Sequential> parSeqLike, Function1<T, Object> function1, int i, SeqSplitter<T> seqSplitter) {
            this.scala$collection$parallel$ParSeqLike$SegmentLength$$pred = function1;
            this.scala$collection$parallel$ParSeqLike$SegmentLength$$from = i;
            this.pit = seqSplitter;
            Objects.requireNonNull(parSeqLike);
            this.$outer = parSeqLike;
            throwable_$eq(null);
            ParIterableLike.StrictSplitterCheckTask.Cclass.$init$(this);
            ParIterableLike.Accessor.Cclass.$init$(this);
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<Tuple2<Object, Object>> option) {
            boolean z = false;
            if (this.scala$collection$parallel$ParSeqLike$SegmentLength$$from >= pit().indexFlag()) {
                result_$eq((Tuple2<Object, Object>) new Tuple2$mcIZ$sp(0, false));
                return;
            }
            int remaining = pit().remaining();
            int prefixLength = pit().prefixLength(this.scala$collection$parallel$ParSeqLike$SegmentLength$$pred);
            if (remaining == prefixLength) {
                z = true;
            }
            result_$eq((Tuple2<Object, Object>) new Tuple2$mcIZ$sp(prefixLength, z));
            if (result()._2$mcZ$sp()) {
                return;
            }
            pit().setIndexFlagIfLesser(this.scala$collection$parallel$ParSeqLike$SegmentLength$$from);
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void merge(Object obj) {
            merge((SegmentLength) ((SegmentLength) obj));
        }

        public void merge(ParSeqLike<T, Repr, Sequential>.SegmentLength segmentLength) {
            if (result()._2$mcZ$sp()) {
                result_$eq((Tuple2<Object, Object>) new Tuple2$mcIZ$sp(result()._1$mcI$sp() + segmentLength.result()._1$mcI$sp(), segmentLength.result()._2$mcZ$sp()));
            }
        }

        @Override // scala.collection.parallel.Task
        public void mergeThrowables(Task<?, ?> task) {
            Task.Cclass.mergeThrowables(this, task);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public Nothing$ newSubtask(IterableSplitter<T> iterableSplitter) {
            throw new UnsupportedOperationException();
        }

        @Override // scala.collection.parallel.ParSeqLike.Accessor, scala.collection.parallel.ParIterableLike.Accessor
        public SeqSplitter<T> pit() {
            return this.pit;
        }

        @Override // scala.collection.parallel.Task
        public Object repr() {
            return Task.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.StrictSplitterCheckTask
        public boolean requiresStrictSplitters() {
            return true;
        }

        @Override // scala.collection.parallel.Task
        public Tuple2<Object, Object> result() {
            return this.result;
        }

        public void result_$eq(Tuple2<Object, Object> tuple2) {
            this.result = tuple2;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        /* renamed from: scala$collection$parallel$ParIterableLike$Accessor$$super$toString */
        public /* synthetic */ String mo109x4f2c1f8b() {
            return super.toString();
        }

        /* renamed from: scala$collection$parallel$ParSeqLike$SegmentLength$$$outer */
        public /* synthetic */ ParSeqLike mo108x65cdc205() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return ParIterableLike.Accessor.Cclass.shouldSplitFurther(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public void signalAbort() {
            ParIterableLike.Accessor.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public Seq<Task<Tuple2<Object, Object>, ParSeqLike<T, Repr, Sequential>.SegmentLength>> split() {
            Seq<SeqSplitter<T>> splitWithSignalling = pit().splitWithSignalling();
            return (Seq) ((TraversableLike) splitWithSignalling.zip((GenIterable) splitWithSignalling.scanLeft(BoxesRunTime.boxToInteger(0), new ParSeqLike$SegmentLength$$anonfun$split$1(this), Seq$.MODULE$.canBuildFrom()), Seq$.MODULE$.canBuildFrom())).withFilter(new ParSeqLike$SegmentLength$$anonfun$split$2(this)).map(new ParSeqLike$SegmentLength$$anonfun$split$3(this), Seq$.MODULE$.canBuildFrom());
        }

        @Override // scala.collection.parallel.Task
        public Throwable throwable() {
            return this.throwable;
        }

        @Override // scala.collection.parallel.Task
        public void throwable_$eq(Throwable th) {
            this.throwable = th;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public String toString() {
            return ParIterableLike.Accessor.Cclass.toString(this);
        }

        @Override // scala.collection.parallel.Task
        public void tryLeaf(Option<Tuple2<Object, Object>> option) {
            Task.Cclass.tryLeaf(this, option);
        }

        @Override // scala.collection.parallel.Task
        public void tryMerge(Object obj) {
            Task.Cclass.tryMerge(this, obj);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$Transformer.class */
    public interface Transformer<R, Tp> extends ParSeqLike<T, Repr, Sequential>.Accessor<R, Tp>, ParIterableLike<T, Repr, Sequential>.Transformer<R, Tp> {
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$Updated.class */
    public class Updated<U, That> implements ParSeqLike<T, Repr, Sequential>.Transformer<Combiner<U, That>, ParSeqLike<T, Repr, Sequential>.Updated<U, That>> {
        public final /* synthetic */ ParSeqLike $outer;
        private final SeqSplitter<T> pit;
        private volatile Combiner<U, That> result = null;
        public final U scala$collection$parallel$ParSeqLike$Updated$$elem;
        public final CombinerFactory<U, That> scala$collection$parallel$ParSeqLike$Updated$$pbf;
        public final int scala$collection$parallel$ParSeqLike$Updated$$pos;
        private volatile Throwable throwable;

        public Updated(ParSeqLike<T, Repr, Sequential> parSeqLike, int i, U u, CombinerFactory<U, That> combinerFactory, SeqSplitter<T> seqSplitter) {
            this.scala$collection$parallel$ParSeqLike$Updated$$pos = i;
            this.scala$collection$parallel$ParSeqLike$Updated$$elem = u;
            this.scala$collection$parallel$ParSeqLike$Updated$$pbf = combinerFactory;
            this.pit = seqSplitter;
            Objects.requireNonNull(parSeqLike);
            this.$outer = parSeqLike;
            throwable_$eq(null);
            ParIterableLike.StrictSplitterCheckTask.Cclass.$init$(this);
            ParIterableLike.Accessor.Cclass.$init$(this);
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<Combiner<U, That>> option) {
            result_$eq((Combiner) pit().updated2combiner(this.scala$collection$parallel$ParSeqLike$Updated$$pos, this.scala$collection$parallel$ParSeqLike$Updated$$elem, this.scala$collection$parallel$ParSeqLike$Updated$$pbf.apply()));
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void merge(Object obj) {
            merge((Updated) ((Updated) obj));
        }

        public void merge(ParSeqLike<T, Repr, Sequential>.Updated<U, That> updated) {
            result_$eq((Combiner) result().combine((Combiner<U, That>) updated.result()));
        }

        @Override // scala.collection.parallel.Task
        public void mergeThrowables(Task<?, ?> task) {
            Task.Cclass.mergeThrowables(this, task);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public Nothing$ newSubtask(IterableSplitter<T> iterableSplitter) {
            return package$.MODULE$.unsupported();
        }

        @Override // scala.collection.parallel.ParSeqLike.Accessor, scala.collection.parallel.ParIterableLike.Accessor
        public SeqSplitter<T> pit() {
            return this.pit;
        }

        @Override // scala.collection.parallel.Task
        public Object repr() {
            return Task.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.StrictSplitterCheckTask
        public boolean requiresStrictSplitters() {
            return true;
        }

        @Override // scala.collection.parallel.Task
        public Combiner<U, That> result() {
            return this.result;
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void result_$eq(Object obj) {
            result_$eq((Combiner) ((Combiner) obj));
        }

        public void result_$eq(Combiner<U, That> combiner) {
            this.result = combiner;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        /* renamed from: scala$collection$parallel$ParIterableLike$Accessor$$super$toString */
        public /* synthetic */ String mo109x4f2c1f8b() {
            return super.toString();
        }

        /* renamed from: scala$collection$parallel$ParSeqLike$Updated$$$outer */
        public /* synthetic */ ParSeqLike mo108x65cdc205() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return ParIterableLike.Accessor.Cclass.shouldSplitFurther(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public void signalAbort() {
            ParIterableLike.Accessor.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public Seq<Task<Combiner<U, That>, ParSeqLike<T, Repr, Sequential>.Updated<U, That>>> split() {
            Seq<SeqSplitter<T>> splitWithSignalling = pit().splitWithSignalling();
            return (Seq) ((TraversableLike) splitWithSignalling.zip((GenIterable) splitWithSignalling.scanLeft(BoxesRunTime.boxToInteger(0), new ParSeqLike$Updated$$anonfun$split$12(this), Seq$.MODULE$.canBuildFrom()), Seq$.MODULE$.canBuildFrom())).withFilter(new ParSeqLike$Updated$$anonfun$split$13(this)).map(new ParSeqLike$Updated$$anonfun$split$14(this), Seq$.MODULE$.canBuildFrom());
        }

        @Override // scala.collection.parallel.Task
        public Throwable throwable() {
            return this.throwable;
        }

        @Override // scala.collection.parallel.Task
        public void throwable_$eq(Throwable th) {
            this.throwable = th;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public String toString() {
            return ParIterableLike.Accessor.Cclass.toString(this);
        }

        @Override // scala.collection.parallel.Task
        public void tryLeaf(Option<Combiner<U, That>> option) {
            Task.Cclass.tryLeaf(this, option);
        }

        @Override // scala.collection.parallel.Task
        public void tryMerge(Object obj) {
            Task.Cclass.tryMerge(this, obj);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$Zip.class */
    public class Zip<U, S, That> implements ParSeqLike<T, Repr, Sequential>.Transformer<Combiner<Tuple2<U, S>, That>, ParSeqLike<T, Repr, Sequential>.Zip<U, S, That>> {
        public final /* synthetic */ ParSeqLike $outer;

        /* renamed from: cf */
        private final CombinerFactory<Tuple2<U, S>, That> f1591cf;
        private final int len;
        private final SeqSplitter<S> otherpit;
        private final SeqSplitter<T> pit;
        private volatile Combiner<Tuple2<U, S>, That> result = null;
        private volatile Throwable throwable;

        public Zip(ParSeqLike<T, Repr, Sequential> parSeqLike, int i, CombinerFactory<Tuple2<U, S>, That> combinerFactory, SeqSplitter<T> seqSplitter, SeqSplitter<S> seqSplitter2) {
            this.len = i;
            this.f1591cf = combinerFactory;
            this.pit = seqSplitter;
            this.otherpit = seqSplitter2;
            Objects.requireNonNull(parSeqLike);
            this.$outer = parSeqLike;
            throwable_$eq(null);
            ParIterableLike.StrictSplitterCheckTask.Cclass.$init$(this);
            ParIterableLike.Accessor.Cclass.$init$(this);
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<Combiner<Tuple2<U, S>, That>> option) {
            result_$eq((Combiner) pit().zip2combiner(otherpit(), this.f1591cf.apply()));
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void merge(Object obj) {
            merge((Zip) ((Zip) obj));
        }

        public void merge(ParSeqLike<T, Repr, Sequential>.Zip<U, S, That> zip) {
            result_$eq((Combiner) result().combine((Combiner<Tuple2<U, S>, That>) zip.result()));
        }

        @Override // scala.collection.parallel.Task
        public void mergeThrowables(Task<?, ?> task) {
            Task.Cclass.mergeThrowables(this, task);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public Nothing$ newSubtask(IterableSplitter<T> iterableSplitter) {
            return package$.MODULE$.unsupported();
        }

        public SeqSplitter<S> otherpit() {
            return this.otherpit;
        }

        @Override // scala.collection.parallel.ParSeqLike.Accessor, scala.collection.parallel.ParIterableLike.Accessor
        public SeqSplitter<T> pit() {
            return this.pit;
        }

        @Override // scala.collection.parallel.Task
        public Object repr() {
            return Task.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.StrictSplitterCheckTask
        public boolean requiresStrictSplitters() {
            return ParIterableLike.StrictSplitterCheckTask.Cclass.requiresStrictSplitters(this);
        }

        @Override // scala.collection.parallel.Task
        public Combiner<Tuple2<U, S>, That> result() {
            return this.result;
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void result_$eq(Object obj) {
            result_$eq((Combiner) ((Combiner) obj));
        }

        public void result_$eq(Combiner<Tuple2<U, S>, That> combiner) {
            this.result = combiner;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        /* renamed from: scala$collection$parallel$ParIterableLike$Accessor$$super$toString */
        public /* synthetic */ String mo109x4f2c1f8b() {
            return super.toString();
        }

        /* renamed from: scala$collection$parallel$ParSeqLike$Zip$$$outer */
        public /* synthetic */ ParSeqLike mo108x65cdc205() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return ParIterableLike.Accessor.Cclass.shouldSplitFurther(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public void signalAbort() {
            ParIterableLike.Accessor.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor, scala.collection.parallel.Task
        public Seq<ParSeqLike<T, Repr, Sequential>.Zip<U, S, That>> split() {
            int i = this.len;
            int i2 = i / 2;
            int i3 = i - (i / 2);
            Seq<SeqSplitter<T>> psplitWithSignalling = pit().psplitWithSignalling(Predef$.MODULE$.wrapIntArray(new int[]{i2, i3}));
            Seq<SeqSplitter<S>> psplitWithSignalling2 = otherpit().psplitWithSignalling(Predef$.MODULE$.wrapIntArray(new int[]{i2, i3}));
            return (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new Zip[]{new Zip(mo108x65cdc205(), i2, this.f1591cf, psplitWithSignalling.apply(0), psplitWithSignalling2.apply(0)), new Zip(mo108x65cdc205(), i3, this.f1591cf, psplitWithSignalling.apply(1), psplitWithSignalling2.apply(1))}));
        }

        @Override // scala.collection.parallel.Task
        public Throwable throwable() {
            return this.throwable;
        }

        @Override // scala.collection.parallel.Task
        public void throwable_$eq(Throwable th) {
            this.throwable = th;
        }

        @Override // scala.collection.parallel.ParIterableLike.Accessor
        public String toString() {
            return ParIterableLike.Accessor.Cclass.toString(this);
        }

        @Override // scala.collection.parallel.Task
        public void tryLeaf(Option<Combiner<Tuple2<U, S>, That>> option) {
            Task.Cclass.tryLeaf(this, option);
        }

        @Override // scala.collection.parallel.Task
        public void tryMerge(Object obj) {
            Task.Cclass.tryMerge(this, obj);
        }
    }

    /* renamed from: scala.collection.parallel.ParSeqLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$class.class */
    public abstract class Cclass {
        public static void $init$(ParSeqLike parSeqLike) {
        }

        public static boolean corresponds(ParSeqLike parSeqLike, GenSeq genSeq, Function2 function2) {
            return BoxesRunTime.unboxToBoolean(ParallelCollectionImplicits$.MODULE$.traversable2ops(genSeq).ifParSeq(new ParSeqLike$$anonfun$corresponds$2(parSeqLike, function2)).otherwise(new ParSeqLike$$anonfun$corresponds$1(parSeqLike, genSeq, function2)));
        }

        public static ParSeq diff(ParSeqLike parSeqLike, GenSeq genSeq) {
            return (ParSeq) parSeqLike.sequentially(new ParSeqLike$$anonfun$diff$1(parSeqLike, genSeq));
        }

        public static ParSeq distinct(ParSeqLike parSeqLike) {
            return (ParSeq) parSeqLike.sequentially(new ParSeqLike$$anonfun$distinct$1(parSeqLike));
        }

        public static SeqSplitter down(ParSeqLike parSeqLike, IterableSplitter iterableSplitter) {
            return (SeqSplitter) iterableSplitter;
        }

        public static boolean endsWith(ParSeqLike parSeqLike, GenSeq genSeq) {
            return BoxesRunTime.unboxToBoolean(ParallelCollectionImplicits$.MODULE$.traversable2ops(genSeq).ifParSeq(new ParSeqLike$$anonfun$endsWith$2(parSeqLike, genSeq)).otherwise(new ParSeqLike$$anonfun$endsWith$1(parSeqLike, genSeq)));
        }

        public static int indexWhere(ParSeqLike parSeqLike, Function1 function1, int i) {
            int i2;
            if (i >= parSeqLike.length()) {
                i2 = -1;
            } else {
                int i3 = i;
                if (i < 0) {
                    i3 = 0;
                }
                ParSeqLike$$anon$4 parSeqLike$$anon$4 = new ParSeqLike$$anon$4(parSeqLike);
                parSeqLike$$anon$4.setIndexFlag(Integer.MAX_VALUE);
                i2 = BoxesRunTime.unboxToInt(parSeqLike.tasksupport().executeAndWaitResult(new IndexWhere(parSeqLike, function1, i3, (SeqSplitter) parSeqLike.delegatedSignalling2ops(parSeqLike.splitter().psplitWithSignalling(Predef$.MODULE$.wrapIntArray(new int[]{i3, parSeqLike.length() - i3})).apply(1)).assign(parSeqLike$$anon$4))));
            }
            return i2;
        }

        public static ParSeq intersect(ParSeqLike parSeqLike, GenSeq genSeq) {
            return (ParSeq) parSeqLike.sequentially(new ParSeqLike$$anonfun$intersect$1(parSeqLike, genSeq));
        }

        public static PreciseSplitter iterator(ParSeqLike parSeqLike) {
            return parSeqLike.splitter();
        }

        public static int lastIndexWhere(ParSeqLike parSeqLike, Function1 function1, int i) {
            int i2;
            if (i < 0) {
                i2 = -1;
            } else {
                int length = i >= parSeqLike.length() ? parSeqLike.length() : i + 1;
                ParSeqLike$$anon$5 parSeqLike$$anon$5 = new ParSeqLike$$anon$5(parSeqLike);
                parSeqLike$$anon$5.setIndexFlag(Integer.MIN_VALUE);
                i2 = BoxesRunTime.unboxToInt(parSeqLike.tasksupport().executeAndWaitResult(new LastIndexWhere(parSeqLike, function1, 0, (SeqSplitter) parSeqLike.delegatedSignalling2ops(parSeqLike.splitter().psplitWithSignalling(Predef$.MODULE$.wrapIntArray(new int[]{length, parSeqLike.length() - length})).apply(0)).assign(parSeqLike$$anon$5))));
            }
            return i2;
        }

        public static Object padTo(ParSeqLike parSeqLike, int i, Object obj, CanBuildFrom canBuildFrom) {
            return parSeqLike.length() < i ? parSeqLike.patch(parSeqLike.length(), new Repetition(obj, i - parSeqLike.length()), 0, canBuildFrom) : parSeqLike.patch(parSeqLike.length(), Nil$.MODULE$, 0, canBuildFrom);
        }

        public static Object patch(ParSeqLike parSeqLike, int i, GenSeq genSeq, int i2, CanBuildFrom canBuildFrom) {
            Object obj;
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            int min$extension = richInt$.min$extension(i2, parSeqLike.length() - i);
            if (!ParallelCollectionImplicits$.MODULE$.traversable2ops(genSeq).isParSeq() || !parSeqLike.builder2ops(canBuildFrom.apply(parSeqLike.repr())).isCombiner() || (parSeqLike.size() - min$extension) + genSeq.size() <= package$.MODULE$.MIN_FOR_COPY()) {
                obj = patch_sequential(parSeqLike, i, genSeq.seq(), i2, canBuildFrom);
            } else {
                ParSeq<T> asParSeq = ParallelCollectionImplicits$.MODULE$.traversable2ops(genSeq).asParSeq();
                Seq<SeqSplitter<T>> psplitWithSignalling = parSeqLike.splitter().psplitWithSignalling(Predef$.MODULE$.wrapIntArray(new int[]{i, i2, (parSeqLike.length() - i) - min$extension}));
                CombinerFactory combinerFactory = parSeqLike.combinerFactory(new ParSeqLike$$anonfun$2(parSeqLike, canBuildFrom));
                ParIterableLike.Copy copy = new ParIterableLike.Copy(parSeqLike, combinerFactory, psplitWithSignalling.apply(0));
                obj = parSeqLike.tasksupport().executeAndWaitResult(parSeqLike.task2ops(parSeqLike.task2ops(parSeqLike.task2ops(copy).parallel(parSeqLike.wrap(new ParSeqLike$$anonfun$3(parSeqLike, asParSeq, combinerFactory)), new ParSeqLike$$anonfun$patch$1(parSeqLike))).parallel(new ParIterableLike.Copy(parSeqLike, combinerFactory, psplitWithSignalling.apply(2)), new ParSeqLike$$anonfun$patch$2(parSeqLike))).mapResult(new ParSeqLike$$anonfun$patch$3(parSeqLike)));
            }
            return obj;
        }

        private static Object patch_sequential(ParSeqLike parSeqLike, int i, Seq seq, int i2, CanBuildFrom canBuildFrom) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            int max$extension = richInt$.max$extension(0, i);
            Builder apply = canBuildFrom.apply(parSeqLike.repr());
            RichInt$ richInt$2 = RichInt$.MODULE$;
            Predef$ predef$2 = Predef$.MODULE$;
            RichInt$ richInt$3 = RichInt$.MODULE$;
            Predef$ predef$3 = Predef$.MODULE$;
            int max$extension2 = richInt$2.max$extension(richInt$3.min$extension(i2, parSeqLike.length() - max$extension), 0);
            Seq<SeqSplitter<T>> psplitWithSignalling = parSeqLike.splitter().psplitWithSignalling(Predef$.MODULE$.wrapIntArray(new int[]{max$extension, max$extension2, (parSeqLike.length() - max$extension) - max$extension2}));
            apply.$plus$plus$eq(psplitWithSignalling.apply(0));
            apply.$plus$plus$eq(seq);
            apply.$plus$plus$eq(psplitWithSignalling.apply(2));
            return package$.MODULE$.setTaskSupport(apply.result(), parSeqLike.tasksupport());
        }

        public static ParSeq reverse(ParSeqLike parSeqLike) {
            return (ParSeq) parSeqLike.tasksupport().executeAndWaitResult(parSeqLike.task2ops(new Reverse(parSeqLike, new ParSeqLike$$anonfun$reverse$1(parSeqLike), parSeqLike.splitter())).mapResult(new ParSeqLike$$anonfun$reverse$2(parSeqLike)));
        }

        public static Object reverseMap(ParSeqLike parSeqLike, Function1 function1, CanBuildFrom canBuildFrom) {
            return parSeqLike.builder2ops(canBuildFrom.apply(parSeqLike.repr())).isCombiner() ? parSeqLike.tasksupport().executeAndWaitResult(parSeqLike.task2ops(new ReverseMap(parSeqLike, function1, new ParSeqLike$$anonfun$reverseMap$1(parSeqLike, canBuildFrom), parSeqLike.splitter())).mapResult(new ParSeqLike$$anonfun$reverseMap$2(parSeqLike))) : package$.MODULE$.setTaskSupport(parSeqLike.seq().reverseMap(function1, parSeqLike.bf2seq(canBuildFrom)), parSeqLike.tasksupport());
        }

        public static boolean sameElements(ParSeqLike parSeqLike, GenIterable genIterable) {
            return BoxesRunTime.unboxToBoolean(ParallelCollectionImplicits$.MODULE$.traversable2ops(genIterable).ifParSeq(new ParSeqLike$$anonfun$sameElements$2(parSeqLike)).otherwise(new ParSeqLike$$anonfun$sameElements$1(parSeqLike, genIterable)));
        }

        public static int segmentLength(ParSeqLike parSeqLike, Function1 function1, int i) {
            int i2;
            if (i >= parSeqLike.length()) {
                i2 = 0;
            } else {
                int i3 = i;
                if (i < 0) {
                    i3 = 0;
                }
                ParSeqLike$$anon$3 parSeqLike$$anon$3 = new ParSeqLike$$anon$3(parSeqLike);
                parSeqLike$$anon$3.setIndexFlag(Integer.MAX_VALUE);
                i2 = ((Tuple2) parSeqLike.tasksupport().executeAndWaitResult(new SegmentLength(parSeqLike, function1, 0, (SeqSplitter) parSeqLike.delegatedSignalling2ops(parSeqLike.splitter().psplitWithSignalling(Predef$.MODULE$.wrapIntArray(new int[]{i3, parSeqLike.length() - i3})).apply(1)).assign(parSeqLike$$anon$3))))._1$mcI$sp();
            }
            return i2;
        }

        public static int size(ParSeqLike parSeqLike) {
            return parSeqLike.length();
        }

        public static boolean startsWith(ParSeqLike parSeqLike, GenSeq genSeq, int i) {
            return BoxesRunTime.unboxToBoolean(ParallelCollectionImplicits$.MODULE$.traversable2ops(genSeq).ifParSeq(new ParSeqLike$$anonfun$startsWith$2(parSeqLike, i)).otherwise(new ParSeqLike$$anonfun$startsWith$1(parSeqLike, genSeq, i)));
        }

        public static ParSeq toSeq(ParSeqLike parSeqLike) {
            return (ParSeq) parSeqLike;
        }

        public static String toString(ParSeqLike parSeqLike) {
            return parSeqLike.seq().mkString(new StringBuilder().append((Object) parSeqLike.stringPrefix()).append((Object) "(").toString(), ", ", ")");
        }

        public static Object updated(ParSeqLike parSeqLike, int i, Object obj, CanBuildFrom canBuildFrom) {
            return parSeqLike.builder2ops(canBuildFrom.apply(parSeqLike.repr())).isCombiner() ? parSeqLike.tasksupport().executeAndWaitResult(parSeqLike.task2ops(new Updated(parSeqLike, i, obj, parSeqLike.combinerFactory(new ParSeqLike$$anonfun$updated$1(parSeqLike, canBuildFrom)), parSeqLike.splitter())).mapResult(new ParSeqLike$$anonfun$updated$2(parSeqLike))) : package$.MODULE$.setTaskSupport(parSeqLike.seq().updated(i, obj, parSeqLike.bf2seq(canBuildFrom)), parSeqLike.tasksupport());
        }

        public static SeqView view(ParSeqLike parSeqLike) {
            return parSeqLike.seq().view();
        }

        /* JADX WARN: Type inference failed for: r8v2, types: [scala.collection.parallel.SeqSplitter] */
        public static Object zip(ParSeqLike parSeqLike, GenIterable genIterable, CanBuildFrom canBuildFrom) {
            Object obj;
            if (!parSeqLike.builder2ops(canBuildFrom.apply(parSeqLike.repr())).isCombiner() || !ParallelCollectionImplicits$.MODULE$.traversable2ops(genIterable).isParSeq()) {
                obj = parSeqLike.scala$collection$parallel$ParSeqLike$$super$zip(genIterable, canBuildFrom);
            } else {
                ParSeq<T> asParSeq = ParallelCollectionImplicits$.MODULE$.traversable2ops(genIterable).asParSeq();
                TaskSupport tasksupport = parSeqLike.tasksupport();
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                obj = tasksupport.executeAndWaitResult(parSeqLike.task2ops(new Zip(parSeqLike, richInt$.min$extension(parSeqLike.length(), asParSeq.length()), parSeqLike.combinerFactory(new ParSeqLike$$anonfun$zip$1(parSeqLike, canBuildFrom)), parSeqLike.splitter(), asParSeq.splitter())).mapResult(new ParSeqLike$$anonfun$zip$2(parSeqLike)));
            }
            return obj;
        }
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    <U, That> That $colon$plus(U u, CanBuildFrom<Repr, U, That> canBuildFrom);

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    <U, That> That $plus$colon(U u, CanBuildFrom<Repr, U, That> canBuildFrom);

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    <S> boolean corresponds(GenSeq<S> genSeq, Function2<T, S, Object> function2);

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    <U> Repr diff(GenSeq<U> genSeq);

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    Repr distinct();

    SeqSplitter<T> down(IterableSplitter<?> iterableSplitter);

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    <S> boolean endsWith(GenSeq<S> genSeq);

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    int indexWhere(Function1<T, Object> function1, int i);

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    <U> Repr intersect(GenSeq<U> genSeq);

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    PreciseSplitter<T> iterator();

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    int lastIndexWhere(Function1<T, Object> function1, int i);

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    <U, That> That padTo(int i, U u, CanBuildFrom<Repr, U, That> canBuildFrom);

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    <U, That> That patch(int i, GenSeq<U> genSeq, int i2, CanBuildFrom<Repr, U, That> canBuildFrom);

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    Repr reverse();

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    <S, That> That reverseMap(Function1<T, S> function1, CanBuildFrom<Repr, S, That> canBuildFrom);

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    <U> boolean sameElements(GenIterable<U> genIterable);

    /* synthetic */ Object scala$collection$parallel$ParSeqLike$$super$zip(GenIterable genIterable, CanBuildFrom canBuildFrom);

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    int segmentLength(Function1<T, Object> function1, int i);

    @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
    int size();

    @Override // scala.collection.parallel.ParIterableLike
    SeqSplitter<T> splitter();

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    <S> boolean startsWith(GenSeq<S> genSeq, int i);

    @Override // scala.collection.GenSeqLike, scala.collection.GenTraversableOnce, scala.collection.SetLike
    ParSeq<T> toSeq();

    @Override // scala.collection.parallel.ParIterableLike
    String toString();

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    <U, That> That updated(int i, U u, CanBuildFrom<Repr, U, That> canBuildFrom);

    @Override // scala.collection.parallel.ParIterableLike
    Object view();

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    <U, S, That> That zip(GenIterable<S> genIterable, CanBuildFrom<Repr, Tuple2<U, S>, That> canBuildFrom);
}
