package scala.collection;

import java.util.NoSuchElementException;
import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.PartialFunction;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.DefaultMap;
import scala.collection.Map;
import scala.collection.MapLike;
import scala.collection.TraversableLike;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.Nil$;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.MapBuilder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParMap;
import scala.collection.parallel.ParMap$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ObjectRef;
@ScalaSignature(bytes = "\u0006\u0001\r-c\u0001C\u0001\u0003!\u0003\r\ta\u0002\u0017\u0003\u000f5\u000b\u0007\u000fT5lK*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U!\u0001B\u0005\u000f''\u001d\u0001\u0011\"\u0004\u00101ge\u0002\"AC\u0006\u000e\u0003\u0011I!\u0001\u0004\u0003\u0003\r\u0005s\u0017PU3g!\u0011Qa\u0002E\u000e\n\u0005=!!a\u0004)beRL\u0017\r\u001c$v]\u000e$\u0018n\u001c8\u0011\u0005E\u0011B\u0002\u0001\u0003\u0006'\u0001\u0011\r\u0001\u0006\u0002\u0002\u0003F\u0011Q\u0003\u0007\t\u0003\u0015YI!a\u0006\u0003\u0003\u000f9{G\u000f[5oOB\u0011!\"G\u0005\u00035\u0011\u00111!\u00118z!\t\tB\u0004\u0002\u0004\u001e\u0001\u0011\u0015\r\u0001\u0006\u0002\u0002\u0005B!q\u0004\t\u0012&\u001b\u0005\u0011\u0011BA\u0011\u0003\u00051IE/\u001a:bE2,G*[6f!\u0011Q1\u0005E\u000e\n\u0005\u0011\"!A\u0002+va2,'\u0007\u0005\u0002\u0012M\u00111q\u0005\u0001CC\u0002!\u0012A\u0001\u00165jgF\u0011Q#\u000b\n\u0004U1jc\u0001B\u0016\u0001\u0001%\u0012A\u0002\u0010:fM&tW-\\3oiz\u0002Ra\b\u0001\u00117\u0015\u0002Ba\b\u0018\u00117%\u0011qF\u0001\u0002\u0004\u001b\u0006\u0004\b#B\u00102!m)\u0013B\u0001\u001a\u0003\u0005)9UM\\'ba2K7.\u001a\t\u0005i]\u0002R%D\u00016\u0015\t1$!A\u0004hK:,'/[2\n\u0005a*$\u0001D*vER\u0014\u0018m\u0019;bE2,\u0007\u0003B\u0010;EqJ!a\u000f\u0002\u0003\u001dA\u000b'/\u00197mK2L'0\u00192mKB!Q\b\u0011\t\u001c\u001b\u0005q$BA \u0003\u0003!\u0001\u0018M]1mY\u0016d\u0017BA!?\u0005\u0019\u0001\u0016M]'ba\")1\t\u0001C\u0001\t\u00061A%\u001b8ji\u0012\"\u0012!\u0012\t\u0003\u0015\u0019K!a\u0012\u0003\u0003\tUs\u0017\u000e\u001e\u0005\u0006\u0013\u00021\tAS\u0001\u0006K6\u0004H/_\u000b\u0002K!1A\n\u0001Q\u0005R5\u000b!B\\3x\u0005VLG\u000eZ3s+\u0005q\u0005\u0003B(SE\u0015j\u0011\u0001\u0015\u0006\u0003#\n\tq!\\;uC\ndW-\u0003\u0002T!\n9!)^5mI\u0016\u0014\b\"B+\u0001\r\u00031\u0016aA4fiR\u0011qK\u0017\t\u0004\u0015a[\u0012BA-\u0005\u0005\u0019y\u0005\u000f^5p]\")1\f\u0016a\u0001!\u0005\u00191.Z=\t\u000bu\u0003a\u0011\u00010\u0002\u0011%$XM]1u_J,\u0012a\u0018\t\u0004?\u0001\u0014\u0013BA1\u0003\u0005!IE/\u001a:bi>\u0014\b\"B2\u0001\r\u0003!\u0017!\u0002\u0013qYV\u001cXCA3i)\t17\u000e\u0005\u0003 ]A9\u0007CA\ti\t\u0015I'M1\u0001k\u0005\t\u0011\u0015'\u0005\u0002\u001c1!)AN\u0019a\u0001[\u0006\u00111N\u001e\t\u0005\u0015\r\u0002r\rC\u0003p\u0001\u0019\u0005\u0001/\u0001\u0004%[&tWo\u001d\u000b\u0003KEDQa\u00178A\u0002AAQa\u001d\u0001\u0005BQ\fq![:F[B$\u00180F\u0001v!\tQa/\u0003\u0002x\t\t9!i\\8mK\u0006t\u0007\"B=\u0001\t\u0003Q\u0018!C4fi>\u0013X\t\\:f+\tYX\u0010F\u0002}}~\u0004\"!E?\u0005\u000b%D(\u0019\u00016\t\u000bmC\b\u0019\u0001\t\t\u0011\u0005\u0005\u0001\u0010\"a\u0001\u0003\u0007\tq\u0001Z3gCVdG\u000f\u0005\u0003\u000b\u0003\u000ba\u0018bAA\u0004\t\tAAHY=oC6,g\bC\u0004\u0002\f\u0001!\t!!\u0004\u0002\u000b\u0005\u0004\b\u000f\\=\u0015\u0007m\ty\u0001\u0003\u0004\\\u0003\u0013\u0001\r\u0001\u0005\u0005\b\u0003'\u0001A\u0011AA\u000b\u0003!\u0019wN\u001c;bS:\u001cHcA;\u0002\u0018!11,!\u0005A\u0002AAq!a\u0007\u0001\t\u0003\ti\"A\u0006jg\u0012+g-\u001b8fI\u0006#HcA;\u0002 !11,!\u0007A\u0002AAq!a\t\u0001\t\u0003\t)#\u0001\u0004lKf\u001cV\r^\u000b\u0003\u0003O\u0001BaHA\u0015!%\u0019\u00111\u0006\u0002\u0003\u0007M+GO\u0002\u0004\u00020\u0001A\u0011\u0011\u0007\u0002\u000e\t\u00164\u0017-\u001e7u\u0017\u0016L8+\u001a;\u0014\u0011\u00055\u00121GA\u0014\u0003s\u0001BaHA\u001b!%\u0019\u0011q\u0007\u0002\u0003\u0017\u0005\u00137\u000f\u001e:bGR\u001cV\r\u001e\t\u0004\u0015\u0005m\u0012bAA\u001f\t\ta1+\u001a:jC2L'0\u00192mK\"A\u0011\u0011IA\u0017\t\u0003\t\u0019%\u0001\u0004=S:LGO\u0010\u000b\u0003\u0003\u000b\u0002B!a\u0012\u0002.5\t\u0001\u0001\u0003\u0005\u0002\u0014\u00055B\u0011AA&)\r)\u0018Q\n\u0005\u00077\u0006%\u0003\u0019\u0001\t\t\u000fu\u000bi\u0003\"\u0001\u0002RU\u0011\u00111\u000b\t\u0004?\u0001\u0004\u0002bB2\u0002.\u0011\u0005\u0011q\u000b\u000b\u0005\u0003O\tI\u0006C\u0004\u0002\\\u0005U\u0003\u0019\u0001\t\u0002\t\u0015dW-\u001c\u0005\b_\u00065B\u0011AA0)\u0011\t9#!\u0019\t\u000f\u0005m\u0013Q\fa\u0001!!A\u0011QMA\u0017\t\u0003\n9'\u0001\u0003tSj,WCAA5!\rQ\u00111N\u0005\u0004\u0003[\"!aA%oi\"A\u0011\u0011OA\u0017\t\u0003\n\u0019(A\u0004g_J,\u0017m\u00195\u0016\t\u0005U\u00141\u0011\u000b\u0004\u000b\u0006]\u0004\u0002CA=\u0003_\u0002\r!a\u001f\u0002\u0003\u0019\u0004bACA?!\u0005\u0005\u0015bAA@\t\tIa)\u001e8di&|g.\r\t\u0004#\u0005\rEaBAC\u0003_\u0012\r\u0001\u0006\u0002\u0002\u0007\"9\u0011\u0011\u0012\u0001\u0005\u0002\u0005E\u0013\u0001D6fsNLE/\u001a:bi>\u0014\bbBAG\u0001\u0011\u0005\u0011qR\u0001\u0005W\u0016L8/\u0006\u0002\u0002\u0012B!q$a%\u0011\u0013\r\t)J\u0001\u0002\t\u0013R,'/\u00192mK\"B\u00111RAM\u0003K\u000bI\u000b\u0005\u0003\u0002\u001c\u0006\u0005VBAAO\u0015\r\ty\nB\u0001\u000bC:tw\u000e^1uS>t\u0017\u0002BAR\u0003;\u0013\u0011\"\\5he\u0006$\u0018n\u001c8\"\u0005\u0005\u001d\u0016a\u000e1lKf\u001c\b\r\t:fiV\u0014hn\u001d\u0011a\u0013R,'/\u00192mKn\u000bU\f\u0019\u0011sCRDWM\u001d\u0011uQ\u0006t\u0007\u0005Y%uKJ\fGo\u001c:\\\u0003v\u0003g&\t\u0002\u0002,\u0006)!G\f\u001d/a!9\u0011q\u0016\u0001\u0005\u0002\u0005E\u0016A\u0002<bYV,7/\u0006\u0002\u00024B!q$a%\u001cQ!\ti+!'\u00028\u0006%\u0016EAA]\u0003e\u0002g/\u00197vKN\u0004\u0007E]3ukJt7\u000f\t1Ji\u0016\u0014\u0018M\u00197f7\nk\u0006\r\t:bi\",'\u000f\t;iC:\u0004\u0003-\u0013;fe\u0006$xN].C;\u0002tcABA_\u0001!\tyLA\u000bEK\u001a\fW\u000f\u001c;WC2,Xm]%uKJ\f'\r\\3\u0014\u0011\u0005m\u0016\u0011YAZ\u0003s\u0001BaHAb7%\u0019\u0011Q\u0019\u0002\u0003!\u0005\u00137\u000f\u001e:bGRLE/\u001a:bE2,\u0007\u0002CA!\u0003w#\t!!3\u0015\u0005\u0005-\u0007\u0003BA$\u0003wCq!XA^\t\u0003\ty-\u0006\u0002\u0002RB\u0019q\u0004Y\u000e\t\u0011\u0005\u0015\u00141\u0018C!\u0003OB\u0001\"!\u001d\u0002<\u0012\u0005\u0013q[\u000b\u0005\u00033\f\t\u000fF\u0002F\u00037D\u0001\"!\u001f\u0002V\u0002\u0007\u0011Q\u001c\t\u0007\u0015\u0005u4$a8\u0011\u0007E\t\t\u000fB\u0004\u0002\u0006\u0006U'\u0019\u0001\u000b\t\u000f\u0005\u0015\b\u0001\"\u0001\u0002P\u0006qa/\u00197vKNLE/\u001a:bi>\u0014\bbBA\u0001\u0001\u0011\u0005\u0011\u0011\u001e\u000b\u00047\u0005-\bBB.\u0002h\u0002\u0007\u0001C\u0002\u0004\u0002p\u0002A\u0011\u0011\u001f\u0002\r\r&dG/\u001a:fI.+\u0017p]\n\u0007\u0003[\f\u00190!?\u0011\u000b}\t)\u0010E\u000e\n\u0007\u0005](AA\u0006BEN$(/Y2u\u001b\u0006\u0004\b#B\u0010\u0002|BY\u0012bAA\u007f\u0005\tQA)\u001a4bk2$X*\u00199\t\u0017\t\u0005\u0011Q\u001eB\u0001B\u0003%!1A\u0001\u0002aB)!\"! \u0011k\"A\u0011\u0011IAw\t\u0003\u00119\u0001\u0006\u0003\u0003\n\t-\u0001\u0003BA$\u0003[D\u0001B!\u0001\u0003\u0006\u0001\u0007!1\u0001\u0005\t\u0003c\ni\u000f\"\u0011\u0003\u0010U!!\u0011\u0003B\r)\r)%1\u0003\u0005\t\u0003s\u0012i\u00011\u0001\u0003\u0016A1!\"! #\u0005/\u00012!\u0005B\r\t\u001d\t)I!\u0004C\u0002QAa!XAw\t\u0003q\u0006\u0002CA\n\u0003[$\tEa\b\u0015\u0007U\u0014\t\u0003\u0003\u0004\\\u0005;\u0001\r\u0001\u0005\u0005\b+\u00065H\u0011\u0001B\u0013)\r9&q\u0005\u0005\u00077\n\r\u0002\u0019\u0001\t\t\u000f\t-\u0002\u0001\"\u0001\u0003.\u0005Qa-\u001b7uKJ\\U-_:\u0015\u00075\u0012y\u0003\u0003\u0005\u0003\u0002\t%\u0002\u0019\u0001B\u0002\r\u0019\u0011\u0019\u0004\u0001\u0005\u00036\taQ*\u00199qK\u00124\u0016\r\\;fgV!!q\u0007B\u001f'\u0019\u0011\tD!\u000f\u0003@A1q$!>\u0011\u0005w\u00012!\u0005B\u001f\t\u001d\t)I!\rC\u0002Q\u0001baHA~!\tm\u0002bCA=\u0005c\u0011\t\u0011)A\u0005\u0005\u0007\u0002bACA?7\tm\u0002\u0002CA!\u0005c!\tAa\u0012\u0015\t\t%#1\n\t\u0007\u0003\u000f\u0012\tDa\u000f\t\u0011\u0005e$Q\ta\u0001\u0005\u0007B\u0001\"!\u001d\u00032\u0011\u0005#qJ\u000b\u0005\u0005#\u0012i\u0006F\u0002F\u0005'B\u0001B!\u0016\u0003N\u0001\u0007!qK\u0001\u0002OB9!\"! \u0003Z\tm\u0003#\u0002\u0006$!\tm\u0002cA\t\u0003^\u00119!q\fB'\u0005\u0004!\"!\u0001#\t\u000fu\u0013\t\u0004\"\u0001\u0003dU\u0011!Q\r\t\u0005?\u0001\u0014I\u0006\u0003\u0005\u0002f\tEB\u0011IA4\u0011!\t\u0019B!\r\u0005B\t-DcA;\u0003n!11L!\u001bA\u0002AAq!\u0016B\u0019\t\u0003\u0011\t\b\u0006\u0003\u0003t\tU\u0004\u0003\u0002\u0006Y\u0005wAaa\u0017B8\u0001\u0004\u0001\u0002b\u0002B=\u0001\u0011\u0005!1P\u0001\n[\u0006\u0004h+\u00197vKN,BA! \u0003\u0004R!!q\u0010BC!\u0015yb\u0006\u0005BA!\r\t\"1\u0011\u0003\b\u0003\u000b\u00139H1\u0001\u0015\u0011!\tIHa\u001eA\u0002\t\u001d\u0005C\u0002\u0006\u0002~m\u0011\t\tC\u0004\u0003\f\u0002!\tA!$\u0002\u000fU\u0004H-\u0019;fIV!!q\u0012BK)\u0019\u0011\tJa&\u0003\u001aB)qD\f\t\u0003\u0014B\u0019\u0011C!&\u0005\r%\u0014II1\u0001k\u0011\u0019Y&\u0011\u0012a\u0001!!A!1\u0014BE\u0001\u0004\u0011\u0019*A\u0003wC2,X\r\u0003\u0004d\u0001\u0011\u0005!qT\u000b\u0005\u0005C\u00139\u000b\u0006\u0005\u0003$\n%&q\u0016BZ!\u0015yb\u0006\u0005BS!\r\t\"q\u0015\u0003\u0007S\nu%\u0019\u00016\t\u0011\t-&Q\u0014a\u0001\u0005[\u000b1a\u001b<2!\u0015Q1\u0005\u0005BS\u0011!\u0011\tL!(A\u0002\t5\u0016aA6we!A!Q\u0017BO\u0001\u0004\u00119,A\u0002lmN\u0004RA\u0003B]\u0005[K1Aa/\u0005\u0005)a$/\u001a9fCR,GM\u0010\u0005\b\u0005\u007f\u0003A\u0011\u0001Ba\u0003)!\u0003\u000f\\;tIAdWo]\u000b\u0005\u0005\u0007\u0014I\r\u0006\u0003\u0003F\n-\u0007#B\u0010/!\t\u001d\u0007cA\t\u0003J\u00121\u0011N!0C\u0002)D\u0001B!4\u0003>\u0002\u0007!qZ\u0001\u0003qN\u0004Ra\bBi\u0005+L1Aa5\u0003\u0005I9UM\u001c+sCZ,'o]1cY\u0016|enY3\u0011\u000b)\u0019\u0003Ca2\t\u000f\te\u0007\u0001\"\u0011\u0003\\\u0006Ia-\u001b7uKJtu\u000e\u001e\u000b\u0004K\tu\u0007\u0002\u0003B\u0001\u0005/\u0004\rAa8\u0011\u000b)\tiHI;\t\u000f\t\r\b\u0001\"\u0011\u0003f\u0006)Ao\\*fcV\u0011!q\u001d\t\u0005?\t%(%C\u0002\u0003l\n\u00111aU3r\u0011\u001d\u0011y\u000f\u0001C!\u0005c\f\u0001\u0002^8Ck\u001a4WM]\u000b\u0005\u0005g\u0014i0\u0006\u0002\u0003vB)qJa>\u0003|&\u0019!\u0011 )\u0003\r\t+hMZ3s!\r\t\"Q \u0003\t\u0003\u000b\u0013iO1\u0001\u0003��F\u0011!\u0005\u0007\u0005\t\u0007\u0007\u0001\u0001\u0015\"\u0015\u0004\u0006\u0005Y\u0001/\u0019:D_6\u0014\u0017N\\3s+\t\u00199\u0001E\u0003>\u0007\u0013\u0011C(C\u0002\u0004\fy\u0012\u0001bQ8nE&tWM\u001d\u0005\b\u0007\u001f\u0001A\u0011IB\t\u0003%\tG\rZ*ue&tw\r\u0006\u0006\u0004\u0014\r\u00052QEB\u001c\u0007w\u0001Ba!\u0006\u0004\u001c9\u0019!ba\u0006\n\u0007\reA!A\u0004qC\u000e\\\u0017mZ3\n\t\ru1q\u0004\u0002\u000e'R\u0014\u0018N\\4Ck&dG-\u001a:\u000b\u0007\reA\u0001\u0003\u0005\u0004$\r5\u0001\u0019AB\n\u0003\u0005\u0011\u0007\u0002CB\u0014\u0007\u001b\u0001\ra!\u000b\u0002\u000bM$\u0018M\u001d;\u0011\t\r-2\u0011\u0007\b\u0004\u0015\r5\u0012bAB\u0018\t\u00051\u0001K]3eK\u001aLAaa\r\u00046\t11\u000b\u001e:j]\u001eT1aa\f\u0005\u0011!\u0019Id!\u0004A\u0002\r%\u0012aA:fa\"A1QHB\u0007\u0001\u0004\u0019I#A\u0002f]\u0012Dqa!\u0011\u0001\t\u0003\u001a\u0019%\u0001\u0007tiJLgn\u001a)sK\u001aL\u00070\u0006\u0002\u0004*!91q\t\u0001\u0005B\r%\u0013\u0001\u0003;p'R\u0014\u0018N\\4\u0015\u0005\r%\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/MapLike.class */
public interface MapLike<A, B, This extends MapLike<A, B, This> & Map<A, B>> extends PartialFunction<A, B>, IterableLike<Tuple2<A, B>, This>, GenMapLike<A, B, This>, Subtractable<A, This> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/MapLike$DefaultKeySet.class */
    public class DefaultKeySet extends AbstractSet<A> implements Serializable {
        public final /* synthetic */ MapLike $outer;

        public DefaultKeySet(MapLike<A, B, This> mapLike) {
            Objects.requireNonNull(mapLike);
            this.$outer = mapLike;
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
        public Set<A> $minus(A a) {
            return (Set<A>) ((SetLike) Set$.MODULE$.apply(Nil$.MODULE$)).$plus$plus(this).$minus((Set) a);
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike
        public Set<A> $plus(A a) {
            return (Set<A>) ((SetLike) Set$.MODULE$.apply(Nil$.MODULE$)).$plus$plus(this).$plus((Set) a);
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike
        public boolean contains(A a) {
            return scala$collection$MapLike$DefaultKeySet$$$outer().contains(a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <C> void foreach(Function1<A, C> function1) {
            scala$collection$MapLike$DefaultKeySet$$$outer().keysIterator().foreach(function1);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<A> iterator() {
            return scala$collection$MapLike$DefaultKeySet$$$outer().keysIterator();
        }

        public /* synthetic */ MapLike scala$collection$MapLike$DefaultKeySet$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return scala$collection$MapLike$DefaultKeySet$$$outer().size();
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/MapLike$DefaultValuesIterable.class */
    public class DefaultValuesIterable extends AbstractIterable<B> implements Serializable {
        public final /* synthetic */ MapLike $outer;

        public DefaultValuesIterable(MapLike<A, B, This> mapLike) {
            Objects.requireNonNull(mapLike);
            this.$outer = mapLike;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <C> void foreach(Function1<B, C> function1) {
            scala$collection$MapLike$DefaultValuesIterable$$$outer().valuesIterator().foreach(function1);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<B> iterator() {
            return scala$collection$MapLike$DefaultValuesIterable$$$outer().valuesIterator();
        }

        public /* synthetic */ MapLike scala$collection$MapLike$DefaultValuesIterable$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return scala$collection$MapLike$DefaultValuesIterable$$$outer().size();
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/MapLike$FilteredKeys.class */
    public class FilteredKeys extends AbstractMap<A, B> implements DefaultMap<A, B> {
        public final /* synthetic */ MapLike $outer;
        public final Function1<A, Object> scala$collection$MapLike$FilteredKeys$$p;

        public FilteredKeys(MapLike<A, B, This> mapLike, Function1<A, Object> function1) {
            this.scala$collection$MapLike$FilteredKeys$$p = function1;
            Objects.requireNonNull(mapLike);
            this.$outer = mapLike;
            DefaultMap.Cclass.$init$(this);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
        public Map<A, B> $minus(A a) {
            return DefaultMap.Cclass.$minus(this, a);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2) {
            return DefaultMap.Cclass.$plus(this, tuple2);
        }

        @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
        public boolean contains(A a) {
            return scala$collection$MapLike$FilteredKeys$$$outer().contains(a) && BoxesRunTime.unboxToBoolean(this.scala$collection$MapLike$FilteredKeys$$p.apply(a));
        }

        @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <C> void foreach(Function1<Tuple2<A, B>, C> function1) {
            scala$collection$MapLike$FilteredKeys$$$outer().foreach(new MapLike$FilteredKeys$$anonfun$foreach$1(this, function1));
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public Option<B> get(A a) {
            return BoxesRunTime.unboxToBoolean(this.scala$collection$MapLike$FilteredKeys$$p.apply(a)) ? scala$collection$MapLike$FilteredKeys$$$outer().get(a) : None$.MODULE$;
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<Tuple2<A, B>> iterator() {
            return scala$collection$MapLike$FilteredKeys$$$outer().iterator().filter(new MapLike$FilteredKeys$$anonfun$iterator$1(this));
        }

        public /* synthetic */ MapLike scala$collection$MapLike$FilteredKeys$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/MapLike$MappedValues.class */
    public class MappedValues<C> extends AbstractMap<A, C> implements DefaultMap<A, C> {
        public final /* synthetic */ MapLike $outer;
        public final Function1<B, C> scala$collection$MapLike$MappedValues$$f;

        public MappedValues(MapLike<A, B, This> mapLike, Function1<B, C> function1) {
            this.scala$collection$MapLike$MappedValues$$f = function1;
            Objects.requireNonNull(mapLike);
            this.$outer = mapLike;
            DefaultMap.Cclass.$init$(this);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
        public Map<A, C> $minus(A a) {
            return DefaultMap.Cclass.$minus(this, a);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2) {
            return DefaultMap.Cclass.$plus(this, tuple2);
        }

        @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
        public boolean contains(A a) {
            return scala$collection$MapLike$MappedValues$$$outer().contains(a);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <D> void foreach(Function1<Tuple2<A, C>, D> function1) {
            scala$collection$MapLike$MappedValues$$$outer().withFilter(new MapLike$MappedValues$$anonfun$foreach$2(this)).foreach(new MapLike$MappedValues$$anonfun$foreach$3(this, function1));
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public Option<C> get(A a) {
            Option<B> option = scala$collection$MapLike$MappedValues$$$outer().get(a);
            return option.isEmpty() ? None$.MODULE$ : new Some(this.scala$collection$MapLike$MappedValues$$f.apply(option.get()));
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<Tuple2<A, C>> iterator() {
            return (Iterator<B>) scala$collection$MapLike$MappedValues$$$outer().iterator().withFilter(new MapLike$MappedValues$$anonfun$iterator$2(this)).map(new MapLike$MappedValues$$anonfun$iterator$3(this));
        }

        public /* synthetic */ MapLike scala$collection$MapLike$MappedValues$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return scala$collection$MapLike$MappedValues$$$outer().size();
        }
    }

    /* renamed from: scala.collection.MapLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/MapLike$class.class */
    public abstract class Cclass {
        public static void $init$(MapLike mapLike) {
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [scala.collection.Map] */
        public static Map $plus(MapLike mapLike, Tuple2 tuple2, Tuple2 tuple22, Seq seq) {
            return mapLike.$plus(tuple2).$plus(tuple22).$plus$plus(seq);
        }

        public static Map $plus$plus(MapLike mapLike, GenTraversableOnce genTraversableOnce) {
            return (Map) genTraversableOnce.seq().$div$colon((Map) mapLike.repr(), new MapLike$$anonfun$$plus$plus$1(mapLike));
        }

        public static StringBuilder addString(MapLike mapLike, StringBuilder stringBuilder, String str, String str2, String str3) {
            return mapLike.iterator().map(new MapLike$$anonfun$addString$1(mapLike)).addString(stringBuilder, str, str2, str3);
        }

        public static Object apply(MapLike mapLike, Object obj) {
            Object obj2;
            Option<B> option = mapLike.get(obj);
            if (None$.MODULE$.equals(option)) {
                obj2 = mapLike.mo6041default(obj);
            } else if (!(option instanceof Some)) {
                throw new MatchError(option);
            } else {
                obj2 = ((Some) option).m362x();
            }
            return obj2;
        }

        public static boolean contains(MapLike mapLike, Object obj) {
            return mapLike.get(obj).isDefined();
        }

        /* renamed from: default */
        public static Object m6058default(MapLike mapLike, Object obj) {
            throw new NoSuchElementException(new StringBuilder().append((Object) "key not found: ").append(obj).toString());
        }

        public static Map filterKeys(MapLike mapLike, Function1 function1) {
            return new FilteredKeys(mapLike, function1);
        }

        public static Map filterNot(MapLike mapLike, Function1 function1) {
            ObjectRef create = ObjectRef.create((Map) mapLike.repr());
            mapLike.foreach(new MapLike$$anonfun$filterNot$1(mapLike, create, function1));
            return (Map) create.elem;
        }

        public static Object getOrElse(MapLike mapLike, Object obj, Function0 function0) {
            Object obj2;
            Option<B> option = mapLike.get(obj);
            if (option instanceof Some) {
                obj2 = ((Some) option).m362x();
            } else if (!None$.MODULE$.equals(option)) {
                throw new MatchError(option);
            } else {
                obj2 = function0.apply();
            }
            return obj2;
        }

        public static boolean isDefinedAt(MapLike mapLike, Object obj) {
            return mapLike.contains(obj);
        }

        public static boolean isEmpty(MapLike mapLike) {
            return mapLike.size() == 0;
        }

        public static Set keySet(MapLike mapLike) {
            return new DefaultKeySet(mapLike);
        }

        public static Iterable keys(MapLike mapLike) {
            return mapLike.keySet();
        }

        public static Iterator keysIterator(MapLike mapLike) {
            return new AbstractIterator<A>(mapLike) { // from class: scala.collection.MapLike$$anon$1
                private final Iterator<Tuple2<A, B>> iter;

                {
                    this.iter = mapLike.iterator();
                }

                private Iterator<Tuple2<A, B>> iter() {
                    return this.iter;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return iter().hasNext();
                }

                /* JADX WARN: Type inference failed for: r0v4, types: [A, java.lang.Object] */
                @Override // scala.collection.Iterator
                public A next() {
                    return ((Tuple2) iter().next()).mo269_1();
                }
            };
        }

        public static Map mapValues(MapLike mapLike, Function1 function1) {
            return new MappedValues(mapLike, function1);
        }

        public static Builder newBuilder(MapLike mapLike) {
            return new MapBuilder(mapLike.empty());
        }

        public static Combiner parCombiner(MapLike mapLike) {
            return ParMap$.MODULE$.newCombiner();
        }

        public static String stringPrefix(MapLike mapLike) {
            return "Map";
        }

        public static Buffer toBuffer(MapLike mapLike) {
            ArrayBuffer arrayBuffer = new ArrayBuffer(mapLike.size());
            mapLike.copyToBuffer(arrayBuffer);
            return arrayBuffer;
        }

        public static Seq toSeq(MapLike mapLike) {
            return mapLike.toBuffer();
        }

        public static String toString(MapLike mapLike) {
            return TraversableLike.Cclass.toString(mapLike);
        }

        public static Map updated(MapLike mapLike, Object obj, Object obj2) {
            return mapLike.$plus(new Tuple2(obj, obj2));
        }

        public static Iterable values(MapLike mapLike) {
            return new DefaultValuesIterable(mapLike);
        }

        public static Iterator valuesIterator(MapLike mapLike) {
            return new AbstractIterator<B>(mapLike) { // from class: scala.collection.MapLike$$anon$2
                private final Iterator<Tuple2<A, B>> iter;

                {
                    this.iter = mapLike.iterator();
                }

                private Iterator<Tuple2<A, B>> iter() {
                    return this.iter;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return iter().hasNext();
                }

                /* JADX WARN: Type inference failed for: r0v4, types: [B, java.lang.Object] */
                @Override // scala.collection.Iterator
                public B next() {
                    return ((Tuple2) iter().next()).mo268_2();
                }
            };
        }
    }

    This $minus(A a);

    <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2);

    <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq);

    <B1> Map<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce);

    @Override // scala.collection.TraversableOnce
    StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3);

    @Override // scala.Function1
    B apply(A a);

    boolean contains(A a);

    /* renamed from: default */
    B mo6041default(A a);

    This empty();

    Map<A, B> filterKeys(Function1<A, Object> function1);

    This filterNot(Function1<Tuple2<A, B>, Object> function1);

    Option<B> get(A a);

    <B1> B1 getOrElse(A a, Function0<B1> function0);

    @Override // scala.PartialFunction
    boolean isDefinedAt(A a);

    @Override // scala.collection.IterableLike
    boolean isEmpty();

    @Override // scala.collection.IterableLike, scala.collection.GenSetLike
    Iterator<Tuple2<A, B>> iterator();

    Set<A> keySet();

    Iterable<A> keys();

    Iterator<A> keysIterator();

    <C> Map<A, C> mapValues(Function1<B, C> function1);

    Builder<Tuple2<A, B>, This> newBuilder();

    @Override // scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    Combiner<Tuple2<A, B>, ParMap<A, B>> parCombiner();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    String stringPrefix();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <C> Buffer<C> toBuffer();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    Seq<Tuple2<A, B>> toSeq();

    @Override // scala.Function1
    String toString();

    <B1> Map<A, B1> updated(A a, B1 b1);

    Iterable<B> values();

    Iterator<B> valuesIterator();
}
