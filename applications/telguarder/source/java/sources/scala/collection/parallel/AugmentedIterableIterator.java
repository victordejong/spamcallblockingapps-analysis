package scala.collection.parallel;

import scala.Function1;
import scala.Function2;
import scala.PartialFunction;
import scala.Predef$;
import scala.Tuple2;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.TraversableOnce;
import scala.collection.mutable.Builder;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichInt$;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\rEb\u0001C\u0001\u0003!\u0003\r\t\u0001\u0002\u0005\u00033\u0005+x-\\3oi\u0016$\u0017\n^3sC\ndW-\u0013;fe\u0006$xN\u001d\u0006\u0003\u0007\u0011\t\u0001\u0002]1sC2dW\r\u001c\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\fWCA\u0005\u0015'\r\u0001!B\u0004\t\u0003\u00171i\u0011AB\u0005\u0003\u001b\u0019\u0011a!\u00118z%\u00164\u0007cA\b\u0011%5\t!!\u0003\u0002\u0012\u0005\ty!+Z7bS:\u001c\u0018\n^3sCR|'\u000f\u0005\u0002\u0014)1\u0001AAB\u000b\u0001\t\u000b\u0007qCA\u0001U\u0007\u0001\t\"\u0001G\u000e\u0011\u0005-I\u0012B\u0001\u000e\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"a\u0003\u000f\n\u0005u1!aA!os\")q\u0004\u0001C\u0001A\u00051A%\u001b8ji\u0012\"\u0012!\t\t\u0003\u0017\tJ!a\t\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0006K\u0001!\tEJ\u0001\u0006G>,h\u000e\u001e\u000b\u0003O)\u0002\"a\u0003\u0015\n\u0005%2!aA%oi\")1\u0006\na\u0001Y\u0005\t\u0001\u000f\u0005\u0003\f[Iy\u0013B\u0001\u0018\u0007\u0005%1UO\\2uS>t\u0017\u0007\u0005\u0002\fa%\u0011\u0011G\u0002\u0002\b\u0005>|G.Z1o\u0011\u0015\u0019\u0004\u0001\"\u00115\u0003\u0019\u0011X\rZ;dKV\u0011Qg\u000e\u000b\u0003mi\u0002\"aE\u001c\u0005\u000ba\u0012$\u0019A\u001d\u0003\u0003U\u000b\"AE\u000e\t\u000bm\u0012\u0004\u0019\u0001\u001f\u0002\u0005=\u0004\b#B\u0006>mY2\u0014B\u0001 \u0007\u0005%1UO\\2uS>t'\u0007C\u0003A\u0001\u0011\u0005\u0013)\u0001\u0003g_2$WC\u0001\"F)\t\u0019\u0005\n\u0006\u0002E\rB\u00111#\u0012\u0003\u0006q}\u0012\r!\u000f\u0005\u0006w}\u0002\ra\u0012\t\u0006\u0017u\"E\t\u0012\u0005\u0006\u0013~\u0002\r\u0001R\u0001\u0002u\")1\n\u0001C!\u0019\u0006\u00191/^7\u0016\u00055{EC\u0001(Q!\t\u0019r\nB\u00039\u0015\n\u0007\u0011\bC\u0003R\u0015\u0002\u000f!+A\u0002ok6\u00042a\u0015,O\u001d\tYA+\u0003\u0002V\r\u00059\u0001/Y2lC\u001e,\u0017BA,Y\u0005\u001dqU/\\3sS\u000eT!!\u0016\u0004\t\u000bi\u0003A\u0011I.\u0002\u000fA\u0014x\u000eZ;diV\u0011AL\u0018\u000b\u0003;~\u0003\"a\u00050\u0005\u000baJ&\u0019A\u001d\t\u000bEK\u00069\u00011\u0011\u0007M3V\fC\u0003c\u0001\u0011\u00053-A\u0002nS:,\"\u0001Z6\u0015\u0005I)\u0007\"\u00024b\u0001\b9\u0017aA8sIB\u00191\u000b\u001b6\n\u0005%D&\u0001C(sI\u0016\u0014\u0018N\\4\u0011\u0005MYG!\u0002\u001db\u0005\u0004I\u0004\"B7\u0001\t\u0003r\u0017aA7bqV\u0011qn\u001d\u000b\u0003%ADQA\u001a7A\u0004E\u00042a\u00155s!\t\u00192\u000fB\u00039Y\n\u0007\u0011\bC\u0003v\u0001\u0011\u0005c/A\u0006d_BLHk\\!se\u0006LXCA<\u007f)\u0015\t\u0003p`A\u0002\u0011\u0015IH\u000f1\u0001{\u0003\u0015\t'O]1z!\rY10`\u0005\u0003y\u001a\u0011Q!\u0011:sCf\u0004\"a\u0005@\u0005\u000ba\"(\u0019A\u001d\t\r\u0005\u0005A\u000f1\u0001(\u0003\u00111'o\\7\t\r\u0005\u0015A\u000f1\u0001(\u0003\raWM\u001c\u0005\b\u0003\u0013\u0001A\u0011AA\u0006\u0003)\u0011X\rZ;dK2+g\r^\u000b\u0005\u0003\u001b\t\t\u0002\u0006\u0004\u0002\u0010\u0005M\u0011q\u0003\t\u0004'\u0005EAA\u0002\u001d\u0002\b\t\u0007\u0011\bC\u0004\u0002\u0016\u0005\u001d\u0001\u0019A\u0014\u0002\u000f!|w/\\1os\"91(a\u0002A\u0002\u0005e\u0001\u0003C\u0006>\u0003\u001f\ty!a\u0004\t\u000f\u0005u\u0001\u0001\"\u0001\u0002 \u0005aQ.\u001993G>l'-\u001b8feV1\u0011\u0011EA\u0016\u0003c!b!a\t\u00026\u0005m\u0002cB\b\u0002&\u0005%\u0012qF\u0005\u0004\u0003O\u0011!\u0001C\"p[\nLg.\u001a:\u0011\u0007M\tY\u0003B\u0004\u0002.\u0005m!\u0019A\f\u0003\u0003M\u00032aEA\u0019\t\u001d\t\u0019$a\u0007C\u0002]\u0011A\u0001\u00165bi\"A\u0011qGA\u000e\u0001\u0004\tI$A\u0001g!\u0015YQFEA\u0015\u0011!\ti$a\u0007A\u0002\u0005\r\u0012AA2c\u0011\u001d\t\t\u0005\u0001C\u0001\u0003\u0007\n\u0001cY8mY\u0016\u001cGOM2p[\nLg.\u001a:\u0016\r\u0005\u0015\u00131JA()\u0019\t9%!\u0015\u0002\\A9q\"!\n\u0002J\u00055\u0003cA\n\u0002L\u00119\u0011QFA \u0005\u00049\u0002cA\n\u0002P\u00119\u00111GA \u0005\u00049\u0002\u0002CA*\u0003\u007f\u0001\r!!\u0016\u0002\u0005A4\u0007CB\u0006\u0002XI\tI%C\u0002\u0002Z\u0019\u0011q\u0002U1si&\fGNR;oGRLwN\u001c\u0005\t\u0003{\ty\u00041\u0001\u0002H!9\u0011q\f\u0001\u0005\u0002\u0005\u0005\u0014\u0001\u00054mCRl\u0017\r\u001d\u001ad_6\u0014\u0017N\\3s+\u0019\t\u0019'!\u001b\u0002nQ1\u0011QMA8\u0003w\u0002raDA\u0013\u0003O\nY\u0007E\u0002\u0014\u0003S\"q!!\f\u0002^\t\u0007q\u0003E\u0002\u0014\u0003[\"q!a\r\u0002^\t\u0007q\u0003\u0003\u0005\u00028\u0005u\u0003\u0019AA9!\u0015YQFEA:!\u0019\t)(a\u001e\u0002h5\tA!C\u0002\u0002z\u0011\u0011!cR3o)J\fg/\u001a:tC\ndWm\u00148dK\"A\u0011QHA/\u0001\u0004\t)\u0007C\u0004\u0002��\u0001!\t!!!\u0002\u0019\r|\u0007/\u001f\u001ack&dG-\u001a:\u0016\u0011\u0005\r\u00151TAP\u0003\u000f#B!!\"\u0002$B\u00191#a\"\u0005\u0011\u0005%\u0015Q\u0010b\u0001\u0003\u0017\u00131A\u00117e#\rA\u0012Q\u0012\t\t\u0003\u001f\u000b)*!'\u0002\u001e6\u0011\u0011\u0011\u0013\u0006\u0004\u0003'#\u0011aB7vi\u0006\u0014G.Z\u0005\u0005\u0003/\u000b\tJA\u0004Ck&dG-\u001a:\u0011\u0007M\tY\n\u0002\u00049\u0003{\u0012\r!\u000f\t\u0004'\u0005}EaBAQ\u0003{\u0012\ra\u0006\u0002\u0005\u0007>dG\u000e\u0003\u0005\u0002&\u0006u\u0004\u0019AAC\u0003\u0005\u0011\u0007bBAU\u0001\u0011\u0005\u00111V\u0001\u0010M&dG/\u001a:3G>l'-\u001b8feV1\u0011QVAZ\u0003o#b!a,\u0002<\u0006}\u0006cB\b\u0002&\u0005E\u0016Q\u0017\t\u0004'\u0005MFA\u0002\u001d\u0002(\n\u0007\u0011\bE\u0002\u0014\u0003o#q!!/\u0002(\n\u0007qC\u0001\u0003UQ&\u001c\bbBA_\u0003O\u0003\r\u0001L\u0001\u0005aJ,G\r\u0003\u0005\u0002>\u0005\u001d\u0006\u0019AAX\u0011\u001d\t\u0019\r\u0001C\u0001\u0003\u000b\f!CZ5mi\u0016\u0014hj\u001c;3G>l'-\u001b8feV1\u0011qYAg\u0003#$b!!3\u0002T\u0006U\u0007cB\b\u0002&\u0005-\u0017q\u001a\t\u0004'\u00055GA\u0002\u001d\u0002B\n\u0007\u0011\bE\u0002\u0014\u0003#$q!!/\u0002B\n\u0007q\u0003C\u0004\u0002>\u0006\u0005\u0007\u0019\u0001\u0017\t\u0011\u0005u\u0012\u0011\u0019a\u0001\u0003\u0013Dq!!7\u0001\t\u0003\tY.A\nqCJ$\u0018\u000e^5p]J\u001aw.\u001c2j]\u0016\u00148/\u0006\u0004\u0002^\u0006%\u0018Q\u001e\u000b\t\u0003?\fy/!=\u0002vB91\"!9\u0002f\u0006\u0015\u0018bAAr\r\t1A+\u001e9mKJ\u0002raDA\u0013\u0003O\fY\u000fE\u0002\u0014\u0003S$a\u0001OAl\u0005\u0004I\u0004cA\n\u0002n\u00129\u0011\u0011XAl\u0005\u00049\u0002bBA_\u0003/\u0004\r\u0001\f\u0005\t\u0003g\f9\u000e1\u0001\u0002f\u0006)!\r\u001e:vK\"A\u0011q_Al\u0001\u0004\t)/\u0001\u0004cM\u0006d7/\u001a\u0005\b\u0003w\u0004A\u0011AA\u007f\u00035!\u0018m[33G>l'-\u001b8feV1\u0011q B\u0003\u0005\u0013!bA!\u0001\u0003\f\t=\u0001cB\b\u0002&\t\r!q\u0001\t\u0004'\t\u0015AA\u0002\u001d\u0002z\n\u0007\u0011\bE\u0002\u0014\u0005\u0013!q!!/\u0002z\n\u0007q\u0003C\u0004\u0003\u000e\u0005e\b\u0019A\u0014\u0002\u00039D\u0001\"!\u0010\u0002z\u0002\u0007!\u0011\u0001\u0005\b\u0005'\u0001A\u0011\u0001B\u000b\u00035!'o\u001c93G>l'-\u001b8feV1!q\u0003B\u000f\u0005C!bA!\u0007\u0003$\t\u0015\u0002cB\b\u0002&\tm!q\u0004\t\u0004'\tuAA\u0002\u001d\u0003\u0012\t\u0007\u0011\bE\u0002\u0014\u0005C!q!!/\u0003\u0012\t\u0007q\u0003C\u0004\u0003\u000e\tE\u0001\u0019A\u0014\t\u0011\u0005u\"\u0011\u0003a\u0001\u00053AqA!\u000b\u0001\t\u0003\u0011Y#\u0001\btY&\u001cWMM2p[\nLg.\u001a:\u0016\r\t5\"1\u0007B\u001c)!\u0011yC!\u000f\u0003<\t}\u0002cB\b\u0002&\tE\"Q\u0007\t\u0004'\tMBA\u0002\u001d\u0003(\t\u0007\u0011\bE\u0002\u0014\u0005o!q!!/\u0003(\t\u0007q\u0003C\u0004\u0002\u0002\t\u001d\u0002\u0019A\u0014\t\u000f\tu\"q\u0005a\u0001O\u0005)QO\u001c;jY\"A\u0011Q\bB\u0014\u0001\u0004\u0011y\u0003C\u0004\u0003D\u0001!\tA!\u0012\u0002#M\u0004H.\u001b;BiJ\u001aw.\u001c2j]\u0016\u00148/\u0006\u0004\u0003H\t=#1\u000b\u000b\t\u0005\u0013\u0012)F!\u0017\u0003^A91\"!9\u0003L\t-\u0003cB\b\u0002&\t5#\u0011\u000b\t\u0004'\t=CA\u0002\u001d\u0003B\t\u0007\u0011\bE\u0002\u0014\u0005'\"q!!/\u0003B\t\u0007q\u0003C\u0004\u0003X\t\u0005\u0003\u0019A\u0014\u0002\u0005\u0005$\b\u0002\u0003B.\u0005\u0003\u0002\rAa\u0013\u0002\r\t,gm\u001c:f\u0011!\u0011yF!\u0011A\u0002\t-\u0013!B1gi\u0016\u0014\bb\u0002B2\u0001\u0011\u0005!QM\u0001\u0013i\u0006\\Wm\u00165jY\u0016\u00144m\\7cS:,'/\u0006\u0004\u0003h\t=$1\u000f\u000b\u0007\u0005S\u0012)Ha\u001e\u0011\r-\t\tOa\u001b0!\u001dy\u0011Q\u0005B7\u0005c\u00022a\u0005B8\t\u0019A$\u0011\rb\u0001sA\u00191Ca\u001d\u0005\u000f\u0005e&\u0011\rb\u0001/!11F!\u0019A\u00021B\u0001\"!\u0010\u0003b\u0001\u0007!1\u000e\u0005\b\u0005w\u0002A\u0011\u0001B?\u00039\u0019\b/\u001983G>l'-\u001b8feN,bAa \u0003\b\n-E\u0003\u0003BA\u0005\u001b\u0013yI!%\u0011\u000f-\t\tOa!\u0003\u0004B9q\"!\n\u0003\u0006\n%\u0005cA\n\u0003\b\u00121\u0001H!\u001fC\u0002e\u00022a\u0005BF\t\u001d\tIL!\u001fC\u0002]Aaa\u000bB=\u0001\u0004a\u0003\u0002\u0003B.\u0005s\u0002\rAa!\t\u0011\t}#\u0011\u0010a\u0001\u0005\u0007CqA!&\u0001\t\u0003\u00119*A\u0006tG\u0006tGk\\!se\u0006LXC\u0002BM\u0005?\u0013Y\u000bF\u0005\"\u00057\u0013\tK!*\u00032\"9\u0011Ja%A\u0002\tu\u0005cA\n\u0003 \u00121\u0001Ha%C\u0002eBqa\u000fBJ\u0001\u0004\u0011\u0019\u000b\u0005\u0005\f{\tu%Q\u0014BO\u0011\u001dI(1\u0013a\u0001\u0005O\u0003BaC>\u0003*B\u00191Ca+\u0005\u0011\t5&1\u0013b\u0001\u0005_\u0013\u0011!Q\t\u0004\u0005;[\u0002bBA\u0001\u0005'\u0003\ra\n\u0005\b\u0005k\u0003A\u0011\u0001B\\\u00039\u00198-\u00198U_\u000e{WNY5oKJ,bA!/\u0003@\n\rG\u0003\u0003B^\u0005\u000b\u0014IM!4\u0011\u000f=\t)C!0\u0003BB\u00191Ca0\u0005\ra\u0012\u0019L1\u0001:!\r\u0019\"1\u0019\u0003\b\u0003g\u0011\u0019L1\u0001\u0018\u0011!\u00119Ma-A\u0002\tu\u0016AC:uCJ$h+\u00197vK\"91Ha-A\u0002\t-\u0007\u0003C\u0006>\u0005{\u0013iL!0\t\u0011\u0005u\"1\u0017a\u0001\u0005wCqA!.\u0001\t\u0003\u0011\t.\u0006\u0004\u0003T\ne'Q\u001c\u000b\u000b\u0005+\u0014yN!9\u0003d\n\u001d\bcB\b\u0002&\t]'1\u001c\t\u0004'\teGA\u0002\u001d\u0003P\n\u0007\u0011\bE\u0002\u0014\u0005;$q!a\r\u0003P\n\u0007q\u0003C\u0004\u0002\u0016\t=\u0007\u0019A\u0014\t\u0011\t\u001d'q\u001aa\u0001\u0005/Dqa\u000fBh\u0001\u0004\u0011)\u000f\u0005\u0005\f{\t]'q\u001bBl\u0011!\tiDa4A\u0002\tU\u0007b\u0002Bv\u0001\u0011\u0005!Q^\u0001\ru&\u0004(gY8nE&tWM]\u000b\t\u0005_\u00149Pa?\u0003��R1!\u0011_B\u0001\u0007\u000f\u0001raDA\u0013\u0005g\u0014i\u0010E\u0004\f\u0003C\u0014)P!?\u0011\u0007M\u00119\u0010\u0002\u00049\u0005S\u0014\r!\u000f\t\u0004'\tmHaBA\u0017\u0005S\u0014\ra\u0006\t\u0004'\t}HaBA\u001a\u0005S\u0014\ra\u0006\u0005\t\u0007\u0007\u0011I\u000f1\u0001\u0004\u0006\u0005Aq\u000e\u001e5feBLG\u000f\u0005\u0003\u0010!\te\b\u0002CA\u001f\u0005S\u0004\rA!=\t\u000f\r-\u0001\u0001\"\u0001\u0004\u000e\u0005y!0\u001b9BY2\u00144m\\7cS:,'/\u0006\u0005\u0004\u0010\r]11DB\u0010))\u0019\tb!\t\u0004(\r-2q\u0006\t\b\u001f\u0005\u001521CB\u000f!\u001dY\u0011\u0011]B\u000b\u00073\u00012aEB\f\t\u0019A4\u0011\u0002b\u0001sA\u00191ca\u0007\u0005\u000f\u000552\u0011\u0002b\u0001/A\u00191ca\b\u0005\u000f\u0005M2\u0011\u0002b\u0001/!A11EB\u0005\u0001\u0004\u0019)#\u0001\u0003uQ\u0006$\b\u0003B\b\u0011\u00073A\u0001b!\u000b\u0004\n\u0001\u00071QC\u0001\ti\"L7/\u001a7f[\"A1QFB\u0005\u0001\u0004\u0019I\"\u0001\u0005uQ\u0006$X\r\\3n\u0011!\tid!\u0003A\u0002\rE\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/AugmentedIterableIterator.class */
public interface AugmentedIterableIterator<T> extends RemainsIterator<T> {

    /* renamed from: scala.collection.parallel.AugmentedIterableIterator$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/AugmentedIterableIterator$class.class */
    public abstract class Cclass {
        public static void $init$(AugmentedIterableIterator augmentedIterableIterator) {
        }

        public static Combiner collect2combiner(AugmentedIterableIterator augmentedIterableIterator, PartialFunction partialFunction, Combiner combiner) {
            Function1 runWith = partialFunction.runWith(new AugmentedIterableIterator$$anonfun$2(augmentedIterableIterator, combiner));
            while (augmentedIterableIterator.hasNext()) {
                runWith.apply(augmentedIterableIterator.next());
            }
            return combiner;
        }

        public static Builder copy2builder(AugmentedIterableIterator augmentedIterableIterator, Builder builder) {
            if (augmentedIterableIterator.isRemainingCheap()) {
                builder.sizeHint(augmentedIterableIterator.remaining());
            }
            while (augmentedIterableIterator.hasNext()) {
                builder.$plus$eq((Builder) augmentedIterableIterator.next());
            }
            return builder;
        }

        public static void copyToArray(AugmentedIterableIterator augmentedIterableIterator, Object obj, int i, int i2) {
            for (int i3 = i; i3 < i2 + i && augmentedIterableIterator.hasNext(); i3++) {
                ScalaRunTime$.MODULE$.array_update(obj, i3, augmentedIterableIterator.next());
            }
        }

        public static int count(AugmentedIterableIterator augmentedIterableIterator, Function1 function1) {
            int i = 0;
            while (augmentedIterableIterator.hasNext()) {
                if (BoxesRunTime.unboxToBoolean(function1.apply(augmentedIterableIterator.next()))) {
                    i++;
                }
            }
            return i;
        }

        public static Combiner drop2combiner(AugmentedIterableIterator augmentedIterableIterator, int i, Combiner combiner) {
            augmentedIterableIterator.drop(i);
            if (augmentedIterableIterator.isRemainingCheap()) {
                combiner.sizeHint(augmentedIterableIterator.remaining());
            }
            while (augmentedIterableIterator.hasNext()) {
                combiner.$plus$eq((Combiner) augmentedIterableIterator.next());
            }
            return combiner;
        }

        public static Combiner filter2combiner(AugmentedIterableIterator augmentedIterableIterator, Function1 function1, Combiner combiner) {
            while (augmentedIterableIterator.hasNext()) {
                T next = augmentedIterableIterator.next();
                if (BoxesRunTime.unboxToBoolean(function1.apply(next))) {
                    combiner.$plus$eq((Combiner) next);
                } else {
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                }
            }
            return combiner;
        }

        public static Combiner filterNot2combiner(AugmentedIterableIterator augmentedIterableIterator, Function1 function1, Combiner combiner) {
            while (augmentedIterableIterator.hasNext()) {
                T next = augmentedIterableIterator.next();
                if (BoxesRunTime.unboxToBoolean(function1.apply(next))) {
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                } else {
                    combiner.$plus$eq((Combiner) next);
                }
            }
            return combiner;
        }

        public static Combiner flatmap2combiner(AugmentedIterableIterator augmentedIterableIterator, Function1 function1, Combiner combiner) {
            while (augmentedIterableIterator.hasNext()) {
                TraversableOnce seq = ((GenTraversableOnce) function1.apply(augmentedIterableIterator.next())).seq();
                if (seq instanceof Iterable) {
                    combiner.$plus$plus$eq(((Iterable) seq).iterator());
                } else {
                    combiner.$plus$plus$eq(seq);
                }
            }
            return combiner;
        }

        public static Object fold(AugmentedIterableIterator augmentedIterableIterator, Object obj, Function2 function2) {
            while (augmentedIterableIterator.hasNext()) {
                obj = function2.apply(obj, augmentedIterableIterator.next());
            }
            return obj;
        }

        public static Combiner map2combiner(AugmentedIterableIterator augmentedIterableIterator, Function1 function1, Combiner combiner) {
            if (augmentedIterableIterator.isRemainingCheap()) {
                combiner.sizeHint(augmentedIterableIterator.remaining());
            }
            while (augmentedIterableIterator.hasNext()) {
                combiner.$plus$eq((Combiner) function1.apply(augmentedIterableIterator.next()));
            }
            return combiner;
        }

        public static Object max(AugmentedIterableIterator augmentedIterableIterator, Ordering ordering) {
            T next = augmentedIterableIterator.next();
            while (augmentedIterableIterator.hasNext()) {
                T next2 = augmentedIterableIterator.next();
                if (ordering.gteq(next2, next)) {
                    next = next2;
                }
            }
            return next;
        }

        public static Object min(AugmentedIterableIterator augmentedIterableIterator, Ordering ordering) {
            T next = augmentedIterableIterator.next();
            while (augmentedIterableIterator.hasNext()) {
                T next2 = augmentedIterableIterator.next();
                if (ordering.lteq(next2, next)) {
                    next = next2;
                }
            }
            return next;
        }

        public static Tuple2 partition2combiners(AugmentedIterableIterator augmentedIterableIterator, Function1 function1, Combiner combiner, Combiner combiner2) {
            while (augmentedIterableIterator.hasNext()) {
                T next = augmentedIterableIterator.next();
                if (BoxesRunTime.unboxToBoolean(function1.apply(next))) {
                    combiner.$plus$eq((Combiner) next);
                } else {
                    combiner2.$plus$eq((Combiner) next);
                }
            }
            return new Tuple2(combiner, combiner2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Object product(AugmentedIterableIterator augmentedIterableIterator, Numeric numeric) {
            T t = numeric.one();
            while (true) {
                T t2 = t;
                if (augmentedIterableIterator.hasNext()) {
                    t = numeric.times(t2, augmentedIterableIterator.next());
                } else {
                    return t2;
                }
            }
        }

        public static Object reduce(AugmentedIterableIterator augmentedIterableIterator, Function2 function2) {
            Object next = augmentedIterableIterator.next();
            while (true) {
                Object obj = next;
                if (augmentedIterableIterator.hasNext()) {
                    next = function2.apply(obj, augmentedIterableIterator.next());
                } else {
                    return obj;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Object reduceLeft(AugmentedIterableIterator augmentedIterableIterator, int i, Function2 function2) {
            T next = augmentedIterableIterator.next();
            for (int i2 = i - 1; i2 > 0 && augmentedIterableIterator.hasNext(); i2--) {
                next = function2.apply(next, augmentedIterableIterator.next());
            }
            return next;
        }

        public static void scanToArray(AugmentedIterableIterator augmentedIterableIterator, Object obj, Function2 function2, Object obj2, int i) {
            while (augmentedIterableIterator.hasNext()) {
                obj = function2.apply(obj, augmentedIterableIterator.next());
                ScalaRunTime$.MODULE$.array_update(obj2, i, obj);
                i++;
            }
        }

        public static Combiner scanToCombiner(AugmentedIterableIterator augmentedIterableIterator, int i, Object obj, Function2 function2, Combiner combiner) {
            while (i > 0) {
                obj = function2.apply(obj, augmentedIterableIterator.next());
                combiner.$plus$eq((Combiner) obj);
                i--;
            }
            return combiner;
        }

        public static Combiner scanToCombiner(AugmentedIterableIterator augmentedIterableIterator, Object obj, Function2 function2, Combiner combiner) {
            while (augmentedIterableIterator.hasNext()) {
                obj = function2.apply(obj, augmentedIterableIterator.next());
                combiner.$plus$eq((Combiner) obj);
            }
            return combiner;
        }

        public static Combiner slice2combiner(AugmentedIterableIterator augmentedIterableIterator, int i, int i2, Combiner combiner) {
            augmentedIterableIterator.drop(i);
            int max = package$.MODULE$.max(i2 - i, 0);
            combiner.sizeHint(max);
            while (max > 0) {
                combiner.$plus$eq((Combiner) augmentedIterableIterator.next());
                max--;
            }
            return combiner;
        }

        public static Tuple2 span2combiners(AugmentedIterableIterator augmentedIterableIterator, Function1 function1, Combiner combiner, Combiner combiner2) {
            boolean z = true;
            while (augmentedIterableIterator.hasNext() && z) {
                T next = augmentedIterableIterator.next();
                if (BoxesRunTime.unboxToBoolean(function1.apply(next))) {
                    combiner.$plus$eq((Combiner) next);
                } else {
                    if (augmentedIterableIterator.isRemainingCheap()) {
                        combiner2.sizeHint(augmentedIterableIterator.remaining() + 1);
                    }
                    combiner2.$plus$eq((Combiner) next);
                    z = false;
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                }
            }
            while (augmentedIterableIterator.hasNext()) {
                combiner2.$plus$eq((Combiner) augmentedIterableIterator.next());
            }
            return new Tuple2(combiner, combiner2);
        }

        public static Tuple2 splitAt2combiners(AugmentedIterableIterator augmentedIterableIterator, int i, Combiner combiner, Combiner combiner2) {
            combiner.sizeHint(i);
            int i2 = i;
            if (augmentedIterableIterator.isRemainingCheap()) {
                combiner2.sizeHint(augmentedIterableIterator.remaining() - i);
                i2 = i;
            }
            while (i2 > 0) {
                combiner.$plus$eq((Combiner) augmentedIterableIterator.next());
                i2--;
            }
            while (augmentedIterableIterator.hasNext()) {
                combiner2.$plus$eq((Combiner) augmentedIterableIterator.next());
            }
            return new Tuple2(combiner, combiner2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Object sum(AugmentedIterableIterator augmentedIterableIterator, Numeric numeric) {
            T t = numeric.zero();
            while (true) {
                T t2 = t;
                if (augmentedIterableIterator.hasNext()) {
                    t = numeric.plus(t2, augmentedIterableIterator.next());
                } else {
                    return t2;
                }
            }
        }

        public static Combiner take2combiner(AugmentedIterableIterator augmentedIterableIterator, int i, Combiner combiner) {
            combiner.sizeHint(i);
            while (i > 0) {
                combiner.$plus$eq((Combiner) augmentedIterableIterator.next());
                i--;
            }
            return combiner;
        }

        public static Tuple2 takeWhile2combiner(AugmentedIterableIterator augmentedIterableIterator, Function1 function1, Combiner combiner) {
            boolean z = true;
            while (augmentedIterableIterator.hasNext() && z) {
                T next = augmentedIterableIterator.next();
                if (BoxesRunTime.unboxToBoolean(function1.apply(next))) {
                    combiner.$plus$eq((Combiner) next);
                } else {
                    z = false;
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                }
            }
            return new Tuple2(combiner, BoxesRunTime.boxToBoolean(z));
        }

        public static Combiner zip2combiner(AugmentedIterableIterator augmentedIterableIterator, RemainsIterator remainsIterator, Combiner combiner) {
            if (augmentedIterableIterator.isRemainingCheap() && remainsIterator.isRemainingCheap()) {
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                combiner.sizeHint(richInt$.min$extension(augmentedIterableIterator.remaining(), remainsIterator.remaining()));
            }
            while (augmentedIterableIterator.hasNext() && remainsIterator.hasNext()) {
                combiner.$plus$eq((Combiner) new Tuple2(augmentedIterableIterator.next(), remainsIterator.next()));
            }
            return combiner;
        }

        public static Combiner zipAll2combiner(AugmentedIterableIterator augmentedIterableIterator, RemainsIterator remainsIterator, Object obj, Object obj2, Combiner combiner) {
            if (augmentedIterableIterator.isRemainingCheap() && remainsIterator.isRemainingCheap()) {
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                combiner.sizeHint(richInt$.max$extension(augmentedIterableIterator.remaining(), remainsIterator.remaining()));
            }
            while (augmentedIterableIterator.hasNext() && remainsIterator.hasNext()) {
                combiner.$plus$eq((Combiner) new Tuple2(augmentedIterableIterator.next(), remainsIterator.next()));
            }
            while (augmentedIterableIterator.hasNext()) {
                combiner.$plus$eq((Combiner) new Tuple2(augmentedIterableIterator.next(), obj2));
            }
            while (remainsIterator.hasNext()) {
                combiner.$plus$eq((Combiner) new Tuple2(obj, remainsIterator.next()));
            }
            return combiner;
        }
    }

    <S, That> Combiner<S, That> collect2combiner(PartialFunction<T, S> partialFunction, Combiner<S, That> combiner);

    <U, Coll, Bld extends Builder<U, Coll>> Bld copy2builder(Bld bld);

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    <U> void copyToArray(Object obj, int i, int i2);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    int count(Function1<T, Object> function1);

    <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner);

    <U, This> Combiner<U, This> filter2combiner(Function1<T, Object> function1, Combiner<U, This> combiner);

    <U, This> Combiner<U, This> filterNot2combiner(Function1<T, Object> function1, Combiner<U, This> combiner);

    <S, That> Combiner<S, That> flatmap2combiner(Function1<T, GenTraversableOnce<S>> function1, Combiner<S, That> combiner);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <U> U fold(U u, Function2<U, U, U> function2);

    <S, That> Combiner<S, That> map2combiner(Function1<T, S> function1, Combiner<S, That> combiner);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <U> T max(Ordering<U> ordering);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <U> T min(Ordering<U> ordering);

    <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> partition2combiners(Function1<T, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <U> U product(Numeric<U> numeric);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <U> U reduce(Function2<U, U, U> function2);

    <U> U reduceLeft(int i, Function2<U, U, U> function2);

    <U, A> void scanToArray(U u, Function2<U, U, U> function2, Object obj, int i);

    <U, That> Combiner<U, That> scanToCombiner(int i, U u, Function2<U, U, U> function2, Combiner<U, That> combiner);

    <U, That> Combiner<U, That> scanToCombiner(U u, Function2<U, U, U> function2, Combiner<U, That> combiner);

    <U, This> Combiner<U, This> slice2combiner(int i, int i2, Combiner<U, This> combiner);

    <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> span2combiners(Function1<T, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2);

    <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <U> U sum(Numeric<U> numeric);

    <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner);

    <U, This> Tuple2<Combiner<U, This>, Object> takeWhile2combiner(Function1<T, Object> function1, Combiner<U, This> combiner);

    <U, S, That> Combiner<Tuple2<U, S>, That> zip2combiner(RemainsIterator<S> remainsIterator, Combiner<Tuple2<U, S>, That> combiner);

    <U, S, That> Combiner<Tuple2<U, S>, That> zipAll2combiner(RemainsIterator<S> remainsIterator, U u, S s, Combiner<Tuple2<U, S>, That> combiner);
}
