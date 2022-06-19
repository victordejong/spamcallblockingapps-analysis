package org.bluecabin.textoo.impl;

import android.text.Spannable;
import android.text.Spanned;
import android.text.util.Linkify;
import java.util.Objects;
import java.util.regex.Pattern;
import org.bluecabin.textoo.Configurator;
import org.bluecabin.textoo.TextLinkify;
import org.bluecabin.textoo.impl.Change;
import org.bluecabin.textoo.util.CharSequenceSupport;
import org.bluecabin.textoo.util.CharSequenceSupport$;
import org.bluecabin.textoo.util.CharSequenceSupport$ImplicitCharSequence$;
import scala.Function1;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Product;
import scala.Serializable;
import scala.Some;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.immutable.Queue;
import scala.collection.immutable.Queue$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
import scala.runtime.Statics;
@ScalaSignature(bytes = "\u0006\u0001\t=eaB\u0001\u0003!\u0003\rIa\u0003\u0002\u0010)\u0016DH\u000fT5oW&4\u00170S7qY*\u00111\u0001B\u0001\u0005S6\u0004HN\u0003\u0002\u0006\r\u00051A/\u001a=u_>T!a\u0002\u0005\u0002\u0013\tdW/Z2bE&t'\"A\u0005\u0002\u0007=\u0014xm\u0001\u0001\u0016\u00071\u0019Be\u0005\u0003\u0001\u001b}Q\u0003c\u0001\b\u0010#5\tA!\u0003\u0002\u0011\t\ta1i\u001c8gS\u001e,(/\u0019;peB\u0011!c\u0005\u0007\u0001\t\u0015!\u0002A1\u0001\u0016\u0005\u0005!\u0016C\u0001\f\u001d!\t9\"$D\u0001\u0019\u0015\u0005I\u0012!B:dC2\f\u0017BA\u000e\u0019\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"aF\u000f\n\u0005yA\"aA!osB!\u0001%I\t$\u001b\u0005\u0011\u0011B\u0001\u0012\u0003\u0005A\u0019uN\u001c4jOV\u0014\u0018\r^8s\u00136\u0004H\u000e\u0005\u0002\u0013I\u0011)Q\u0005\u0001b\u0001M\t\t1)\u0005\u0002\u0017OI\u0019\u0001&\u0004\u0016\u0007\t%\u0002\u0001a\n\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0005\u001d-\n2%\u0003\u0002-\t\tYA+\u001a=u\u0019&t7.\u001b4z\u0011\u0015q\u0003\u0001\"\u00010\u0003\u0019!\u0013N\\5uIQ\t\u0001\u0007\u0005\u0002\u0018c%\u0011!\u0007\u0007\u0002\u0005+:LG\u000fC\u00035\u0001\u0011\u0015S'A\nmS:\\\u0017NZ=QQ>tWMT;nE\u0016\u00148\u000fF\u0001$\u0011\u00159\u0004\u0001\"\u00126\u0003Ua\u0017N\\6jMf,U.Y5m\u0003\u0012$'/Z:tKNDQ!\u000f\u0001\u0005FU\n!\u0002\\5oW&4\u00170\u00117m\u0011\u0015Y\u0004\u0001\"\u00126\u0003Ma\u0017N\\6jMfl\u0015\r]!eIJ,7o]3t\u0011\u0015i\u0004\u0001\"\u00126\u00039a\u0017N\\6jMf<VMY+sYNDQa\u0010\u0001\u0005F\u0001\u000bq\u0001\\5oW&4\u0017\u0010F\u0002$\u00036CQA\u0011 A\u0002\r\u000bq\u0001]1ui\u0016\u0014h\u000e\u0005\u0002E\u00176\tQI\u0003\u0002G\u000f\u0006)!/Z4fq*\u0011\u0001*S\u0001\u0005kRLGNC\u0001K\u0003\u0011Q\u0017M^1\n\u00051+%a\u0002)biR,'O\u001c\u0005\u0006\u001dz\u0002\raT\u0001\u0007g\u000eDW-\\3\u0011\u0005A\u001bfBA\fR\u0013\t\u0011\u0006$\u0001\u0004Qe\u0016$WMZ\u0005\u0003)V\u0013aa\u0015;sS:<'B\u0001*\u0019\u0011\u0015y\u0004\u0001\"\u0012X)\u0015\u0019\u0003LW.s\u0011\u0015If\u000b1\u0001D\u0003\u0005\u0001\b\"\u0002(W\u0001\u0004y\u0005\"\u0002/W\u0001\u0004i\u0016aC7bi\u000eDg)\u001b7uKJ\u0004\"AX8\u000f\u0005}cgB\u00011k\u001d\t\twM\u0004\u0002cK6\t1M\u0003\u0002e\u0015\u00051AH]8pizJ\u0011AZ\u0001\bC:$'o\\5e\u0013\tA\u0017.\u0001\u0003uKb$(\"\u00014\n\u0005!['B\u00015j\u0013\tig.A\u0004MS:\\\u0017NZ=\u000b\u0005![\u0017B\u00019r\u0005-i\u0015\r^2i\r&dG/\u001a:\u000b\u00055t\u0007\"B:W\u0001\u0004!\u0018a\u0004;sC:\u001chm\u001c:n\r&dG/\u001a:\u0011\u0005y+\u0018B\u0001<r\u0005=!&/\u00198tM>\u0014XNR5mi\u0016\u0014h\u0001\u0002=\u0001\tf\u0014\u0001\"Q;u_2Kgn[\n\bojl\u0018\u0011AA\u0004!\t920\u0003\u0002}1\t1\u0011I\\=SK\u001a\u00042\u0001\t@\u0012\u0013\ty(A\u0001\u0004DQ\u0006tw-\u001a\t\u0004/\u0005\r\u0011bAA\u00031\t9\u0001K]8ek\u000e$\bcA\f\u0002\n%\u0019\u00111\u0002\r\u0003\u0019M+'/[1mSj\f'\r\\3\t\u0015\u0005=qO!f\u0001\n\u0003\t\t\"\u0001\u0003nCN\\WCAA\n!\r9\u0012QC\u0005\u0004\u0003/A\"aA%oi\"Q\u00111D<\u0003\u0012\u0003\u0006I!a\u0005\u0002\u000b5\f7o\u001b\u0011\t\u000f\u0005}q\u000f\"\u0001\u0002\"\u00051A(\u001b8jiz\"B!a\t\u0002(A\u0019\u0011QE<\u000e\u0003\u0001A\u0001\"a\u0004\u0002\u001e\u0001\u0007\u00111\u0003\u0005\b\u0003W9H\u0011BA\u0017\u0003\u0015iWM]4f)!\ty#!\u0014\u0002d\u0005\u001d\u0004#BA\u0019\u0003\u000f\nb\u0002BA\u001a\u0003\u0007rA!!\u000e\u0002B9!\u0011qGA \u001d\u0011\tI$!\u0010\u000f\u0007\t\fY$C\u0001\n\u0013\t9\u0001\"\u0003\u0002\u0006\r%\u00111\u0001B\u0005\u0004\u0003\u000b\u0012\u0011AB\"iC:<W-\u0003\u0003\u0002J\u0005-#aC\"iC:<W-U;fk\u0016T1!!\u0012\u0003\u0011!\ty%!\u000bA\u0002\u0005E\u0013a\u00029f]\u0012Lgn\u001a\t\u0006\u0003'\ni& \b\u0005\u0003+\nIFD\u0002c\u0003/J\u0011!G\u0005\u0004\u00037B\u0012a\u00029bG.\fw-Z\u0005\u0005\u0003?\n\tGA\u0002TKFT1!a\u0017\u0019\u0011!\t)'!\u000bA\u0002\u0005M\u0011a\u00028fo6\u000b7o\u001b\u0005\t\u0003S\nI\u00031\u0001\u00020\u0005!Am\u001c8f\u0011\u001d\tig\u001eC!\u0003_\nQ!\u00193e)>$B!a\f\u0002r!A\u00111OA6\u0001\u0004\ty#A\u0004dQ\u0006tw-Z:\t\u000f\u0005]t\u000f\"\u0011\u0002z\u0005)\u0011\r\u001d9msR\u0019\u0011#a\u001f\t\r!\f)\b1\u0001\u0012\u0011%\tyh^A\u0001\n\u0003\t\t)\u0001\u0003d_BLH\u0003BA\u0012\u0003\u0007C!\"a\u0004\u0002~A\u0005\t\u0019AA\n\u0011%\t9i^I\u0001\n\u0003\tI)\u0001\bd_BLH\u0005Z3gCVdG\u000fJ\u0019\u0016\u0005\u0005-%\u0006BA\n\u0003\u001b[#!a$\u0011\t\u0005E\u00151T\u0007\u0003\u0003'SA!!&\u0002\u0018\u0006IQO\\2iK\u000e\\W\r\u001a\u0006\u0004\u00033C\u0012AC1o]>$\u0018\r^5p]&!\u0011QTAJ\u0005E)hn\u00195fG.,GMV1sS\u0006t7-\u001a\u0005\n\u0003C;\u0018\u0011!C!\u0003G\u000bQ\u0002\u001d:pIV\u001cG\u000f\u0015:fM&DXCAAS!\u0011\t9+!,\u000e\u0005\u0005%&bAAV\u0013\u0006!A.\u00198h\u0013\r!\u0016\u0011\u0016\u0005\n\u0003c;\u0018\u0011!C\u0001\u0003#\tA\u0002\u001d:pIV\u001cG/\u0011:jifD\u0011\"!.x\u0003\u0003%\t!a.\u0002\u001dA\u0014x\u000eZ;di\u0016cW-\\3oiR\u0019A$!/\t\u0015\u0005m\u00161WA\u0001\u0002\u0004\t\u0019\"A\u0002yIEB\u0011\"a0x\u0003\u0003%\t%!1\u0002\u001fA\u0014x\u000eZ;di&#XM]1u_J,\"!a1\u0011\u000b\u0005\u0015\u00171\u001a\u000f\u000e\u0005\u0005\u001d'bAAe1\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\n\t\u00055\u0017q\u0019\u0002\t\u0013R,'/\u0019;pe\"I\u0011\u0011[<\u0002\u0002\u0013\u0005\u00111[\u0001\tG\u0006tW)];bYR!\u0011Q[An!\r9\u0012q[\u0005\u0004\u00033D\"a\u0002\"p_2,\u0017M\u001c\u0005\n\u0003w\u000by-!AA\u0002qA\u0011\"a8x\u0003\u0003%\t%!9\u0002\u0011!\f7\u000f[\"pI\u0016$\"!a\u0005\t\u0013\u0005\u0015x/!A\u0005B\u0005\u001d\u0018\u0001\u0003;p'R\u0014\u0018N\\4\u0015\u0005\u0005\u0015\u0006\"CAvo\u0006\u0005I\u0011IAw\u0003\u0019)\u0017/^1mgR!\u0011Q[Ax\u0011%\tY,!;\u0002\u0002\u0003\u0007AdB\u0005\u0002t\u0002\t\t\u0011#\u0003\u0002v\u0006A\u0011)\u001e;p\u0019&t7\u000e\u0005\u0003\u0002&\u0005]h\u0001\u0003=\u0001\u0003\u0003EI!!?\u0014\r\u0005]\u00181`A\u0004!!\tiPa\u0001\u0002\u0014\u0005\rRBAA��\u0015\r\u0011\t\u0001G\u0001\beVtG/[7f\u0013\u0011\u0011)!a@\u0003#\u0005\u00137\u000f\u001e:bGR4UO\\2uS>t\u0017\u0007\u0003\u0005\u0002 \u0005]H\u0011\u0001B\u0005)\t\t)\u0010\u0003\u0006\u0002f\u0006]\u0018\u0011!C#\u0003OD!\"a\u001e\u0002x\u0006\u0005I\u0011\u0011B\b)\u0011\t\u0019C!\u0005\t\u0011\u0005=!Q\u0002a\u0001\u0003'A!B!\u0006\u0002x\u0006\u0005I\u0011\u0011B\f\u0003\u001d)h.\u00199qYf$BA!\u0007\u0003 A)qCa\u0007\u0002\u0014%\u0019!Q\u0004\r\u0003\r=\u0003H/[8o\u0011)\u0011\tCa\u0005\u0002\u0002\u0003\u0007\u00111E\u0001\u0004q\u0012\u0002\u0004B\u0003B\u0013\u0003o\f\t\u0011\"\u0003\u0003(\u0005Y!/Z1e%\u0016\u001cx\u000e\u001c<f)\t\u0011I\u0003\u0005\u0003\u0002(\n-\u0012\u0002\u0002B\u0017\u0003S\u0013aa\u00142kK\u000e$\bb\u0002B\u0019\u0001\u0011%!1G\u0001\u0010C\u0012$\u0017)\u001e;p\u0019&t7.T1tWR\u00191E!\u000e\t\u0011\u0005=!q\u0006a\u0001\u0003'AqA!\u000f\u0001\t\u0013\u0011Y$A\u000bqe\u0016\u001cXM\u001d<f\u000bbL7\u000f^5oO2Kgn[:\u0015\t\tu\"q\t\u000b\u0004#\t}\u0002bB \u00038\u0001\u0007!\u0011\t\t\u0006/\t\r\u0013#E\u0005\u0004\u0005\u000bB\"!\u0003$v]\u000e$\u0018n\u001c82\u0011\u0019A'q\u0007a\u0001#!9!1\n\u0001\u0007\u0012\t5\u0013a\u00037j].Lg-\u001f+fqR$R!\u0005B(\u0005#Ba\u0001\u001bB%\u0001\u0004\t\u0002\u0002CA\b\u0005\u0013\u0002\r!a\u0005\t\u000f\t-\u0003A\"\u0005\u0003VQ9\u0011Ca\u0016\u0003Z\tm\u0003B\u00025\u0003T\u0001\u0007\u0011\u0003\u0003\u0004C\u0005'\u0002\ra\u0011\u0005\u0007\u001d\nM\u0003\u0019A(\t\u000f\t-\u0003A\"\u0005\u0003`QY\u0011C!\u0019\u0003d\t\u0015$q\rB8\u0011\u0019A'Q\fa\u0001#!1!I!\u0018A\u0002\rCaA\u0014B/\u0001\u0004y\u0005b\u0002/\u0003^\u0001\u0007!\u0011\u000e\t\u0004\u0005Wzgb\u0001B7Y6\ta\u000eC\u0004t\u0005;\u0002\rA!\u001d\u0011\u0007\t-T\u000fC\u0004\u0003v\u00011\tBa\u001e\u0002\u0015\u001d,Go\u00159b]:,G\r\u0006\u0003\u0003z\t\u0005\u0005\u0003\u0002B>\u0005{j\u0011a[\u0005\u0004\u0005\u007fZ'aB*qC:tW\r\u001a\u0005\u0007Q\nM\u0004\u0019A\t\t\u000f\t\u0015\u0005A\"\u0005\u0003\b\u0006Q1/\u001a;Ta\u0006tg.\u001a3\u0015\u000bE\u0011IIa#\t\r!\u0014\u0019\t1\u0001\u0012\u0011!\u0011iIa!A\u0002\te\u0014aB:qC:tW\r\u001a")
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextLinkifyImpl.class */
public interface TextLinkifyImpl<T, C extends Configurator<T> & TextLinkify<T, C>> extends ConfiguratorImpl<T, C>, TextLinkify<T, C> {

    /* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink.class */
    public class AutoLink implements Change<T>, Product, Serializable {
        public final /* synthetic */ TextLinkifyImpl $outer;
        private final int mask;

        public AutoLink(TextLinkifyImpl<T, C> textLinkifyImpl, int i) {
            this.mask = i;
            Objects.requireNonNull(textLinkifyImpl);
            this.$outer = textLinkifyImpl;
            Change.Cclass.$init$(this);
            Product.Cclass.$init$(this);
        }

        private Queue<Change<T>> merge(Seq<Change<T>> seq, int i, Queue<Change<T>> queue) {
            Option<Change<T>> headOption;
            while (true) {
                boolean z = false;
                Some some = null;
                headOption = seq.headOption();
                if (headOption instanceof Some) {
                    z = true;
                    some = (Some) headOption;
                    Change change = (Change) some.m362x();
                    if (change instanceof AutoLink) {
                        int mask = ((AutoLink) change).mask();
                        seq = (Seq) seq.tail();
                        i |= mask;
                    }
                }
                if (!z) {
                    break;
                }
                Change change2 = (Change) some.m362x();
                seq = (Seq) seq.tail();
                queue = queue.enqueue((Queue<Change<T>>) change2);
            }
            if (None$.MODULE$.equals(headOption)) {
                return (Queue<Change<T>>) queue.enqueue((Queue<Change<T>>) new AutoLink(org$bluecabin$textoo$impl$TextLinkifyImpl$AutoLink$$$outer(), i));
            }
            throw new MatchError(headOption);
        }

        @Override // org.bluecabin.textoo.impl.Change
        public Queue<Change<T>> addTo(Queue<Change<T>> queue) {
            return merge((Seq) Seq$.MODULE$.apply(queue), mask(), Queue$.MODULE$.empty());
        }

        @Override // org.bluecabin.textoo.impl.Change
        public T apply(T t) {
            return (T) Cclass.org$bluecabin$textoo$impl$TextLinkifyImpl$$preserveExistingLinks(org$bluecabin$textoo$impl$TextLinkifyImpl$AutoLink$$$outer(), t, new TextLinkifyImpl$AutoLink$$anonfun$apply$3(this));
        }

        @Override // scala.Equals
        public boolean canEqual(Object obj) {
            return obj instanceof AutoLink;
        }

        public TextLinkifyImpl<T, C>.AutoLink copy(int i) {
            return new AutoLink(org$bluecabin$textoo$impl$TextLinkifyImpl$AutoLink$$$outer(), i);
        }

        public int copy$default$1() {
            return mask();
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
            if ((mask() == r0.mask() && r0.canEqual(r3)) != false) goto L14;
         */
        @Override // scala.Equals
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
                r0 = r3
                r1 = r4
                if (r0 == r1) goto L38
                r0 = r5
                r6 = r0
                r0 = r4
                boolean r0 = r0 instanceof org.bluecabin.textoo.impl.TextLinkifyImpl.AutoLink
                if (r0 == 0) goto L3a
                r0 = r4
                org.bluecabin.textoo.impl.TextLinkifyImpl$AutoLink r0 = (org.bluecabin.textoo.impl.TextLinkifyImpl.AutoLink) r0
                r4 = r0
                r0 = r3
                int r0 = r0.mask()
                r1 = r4
                int r1 = r1.mask()
                if (r0 != r1) goto L2e
                r0 = r4
                r1 = r3
                boolean r0 = r0.canEqual(r1)
                if (r0 == 0) goto L2e
                r0 = 1
                r7 = r0
                goto L31
            L2e:
                r0 = 0
                r7 = r0
            L31:
                r0 = r5
                r6 = r0
                r0 = r7
                if (r0 == 0) goto L3a
            L38:
                r0 = 1
                r6 = r0
            L3a:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: org.bluecabin.textoo.impl.TextLinkifyImpl.AutoLink.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            return Statics.finalizeHash(Statics.mix(-889275714, mask()), 1);
        }

        public int mask() {
            return this.mask;
        }

        public /* synthetic */ TextLinkifyImpl org$bluecabin$textoo$impl$TextLinkifyImpl$AutoLink$$$outer() {
            return this.$outer;
        }

        @Override // scala.Product
        public int productArity() {
            return 1;
        }

        @Override // scala.Product
        public Object productElement(int i) {
            if (i == 0) {
                return BoxesRunTime.boxToInteger(mask());
            }
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }

        @Override // scala.Product
        public Iterator<Object> productIterator() {
            return ScalaRunTime$.MODULE$.typedProductIterator(this);
        }

        @Override // scala.Product
        public String productPrefix() {
            return "AutoLink";
        }

        public String toString() {
            return ScalaRunTime$.MODULE$._toString(this);
        }
    }

    /* renamed from: org.bluecabin.textoo.impl.TextLinkifyImpl$class */
    /* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/TextLinkifyImpl$class.class */
    public abstract class Cclass {
        public static void $init$(TextLinkifyImpl textLinkifyImpl) {
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.Configurator] */
        private static Configurator addAutoLinkMask(TextLinkifyImpl textLinkifyImpl, int i) {
            return textLinkifyImpl.addChange(new AutoLink(textLinkifyImpl, i));
        }

        private static final Seq findOverlappingLinks$1(TextLinkifyImpl textLinkifyImpl, Seq seq, Seq seq2, Seq seq3) {
            Object headOption;
            while (true) {
                headOption = seq2.headOption();
                if (!(headOption instanceof Some)) {
                    break;
                }
                CharSequenceSupport.SpanInfo spanInfo = (CharSequenceSupport.SpanInfo) ((Some) headOption).m362x();
                if (seq.exists(new TextLinkifyImpl$$anonfun$findOverlappingLinks$1$1(textLinkifyImpl, spanInfo))) {
                    seq2 = (Seq) seq2.tail();
                    seq3 = (Seq) seq3.$plus$colon(spanInfo, Seq$.MODULE$.canBuildFrom());
                } else {
                    seq2 = seq2.tail();
                }
            }
            if (None$.MODULE$.equals(headOption)) {
                return seq3;
            }
            throw new MatchError(headOption);
        }

        private static final Seq findOverlappingLinks$default$3$1(TextLinkifyImpl textLinkifyImpl) {
            return (Seq) Seq$.MODULE$.empty();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.Configurator] */
        public static final Configurator linkify(TextLinkifyImpl textLinkifyImpl, Pattern pattern, String str) {
            return textLinkifyImpl.addChange(new TextLinkifyImpl$$anon$1(textLinkifyImpl, pattern, str));
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [org.bluecabin.textoo.Configurator] */
        public static final Configurator linkify(TextLinkifyImpl textLinkifyImpl, Pattern pattern, String str, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
            return textLinkifyImpl.addChange(new TextLinkifyImpl$$anon$2(textLinkifyImpl, pattern, str, matchFilter, transformFilter));
        }

        public static final Configurator linkifyAll(TextLinkifyImpl textLinkifyImpl) {
            return addAutoLinkMask(textLinkifyImpl, 15);
        }

        public static final Configurator linkifyEmailAddresses(TextLinkifyImpl textLinkifyImpl) {
            return addAutoLinkMask(textLinkifyImpl, 2);
        }

        public static final Configurator linkifyMapAddresses(TextLinkifyImpl textLinkifyImpl) {
            return addAutoLinkMask(textLinkifyImpl, 8);
        }

        public static final Configurator linkifyPhoneNumbers(TextLinkifyImpl textLinkifyImpl) {
            return addAutoLinkMask(textLinkifyImpl, 4);
        }

        public static final Configurator linkifyWebUrls(TextLinkifyImpl textLinkifyImpl) {
            return addAutoLinkMask(textLinkifyImpl, 1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Object org$bluecabin$textoo$impl$TextLinkifyImpl$$preserveExistingLinks(TextLinkifyImpl textLinkifyImpl, Object obj, Function1 function1) {
            Object obj2;
            Seq<CharSequenceSupport.SpanInfo> allLinks$extension = CharSequenceSupport$ImplicitCharSequence$.MODULE$.allLinks$extension(CharSequenceSupport$.MODULE$.ImplicitCharSequence(textLinkifyImpl.getSpanned(obj)));
            Object apply = function1.apply(obj);
            Spanned spanned = textLinkifyImpl.getSpanned(apply);
            Seq findOverlappingLinks$1 = findOverlappingLinks$1(textLinkifyImpl, allLinks$extension, CharSequenceSupport$ImplicitCharSequence$.MODULE$.allLinks$extension(CharSequenceSupport$.MODULE$.ImplicitCharSequence(spanned)), findOverlappingLinks$default$3$1(textLinkifyImpl));
            Spannable spannable = spanned;
            if (!findOverlappingLinks$1.isEmpty()) {
                Spannable spannable$extension = CharSequenceSupport$ImplicitCharSequence$.MODULE$.toSpannable$extension(CharSequenceSupport$.MODULE$.ImplicitCharSequence(spanned));
                findOverlappingLinks$1.foreach(new TextLinkifyImpl$$anonfun$1(textLinkifyImpl, spannable$extension));
                spannable = spannable$extension;
            }
            if (allLinks$extension.isEmpty()) {
                obj2 = apply;
            } else {
                Spannable spannable$extension2 = CharSequenceSupport$ImplicitCharSequence$.MODULE$.toSpannable$extension(CharSequenceSupport$.MODULE$.ImplicitCharSequence(spannable));
                allLinks$extension.foreach(new C2522x82274022(textLinkifyImpl, spannable$extension2));
                obj2 = textLinkifyImpl.setSpanned(apply, spannable$extension2);
            }
            return obj2;
        }
    }

    Spanned getSpanned(T t);

    @Override // org.bluecabin.textoo.TextLinkify
    Configurator linkify(Pattern pattern, String str);

    @Override // org.bluecabin.textoo.TextLinkify
    Configurator linkify(Pattern pattern, String str, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter);

    @Override // org.bluecabin.textoo.TextLinkify
    Configurator linkifyAll();

    @Override // org.bluecabin.textoo.TextLinkify
    Configurator linkifyEmailAddresses();

    @Override // org.bluecabin.textoo.TextLinkify
    Configurator linkifyMapAddresses();

    @Override // org.bluecabin.textoo.TextLinkify
    Configurator linkifyPhoneNumbers();

    T linkifyText(T t, int i);

    T linkifyText(T t, Pattern pattern, String str);

    T linkifyText(T t, Pattern pattern, String str, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter);

    @Override // org.bluecabin.textoo.TextLinkify
    Configurator linkifyWebUrls();

    TextLinkifyImpl$AutoLink$ org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink();

    T setSpanned(T t, Spanned spanned);
}
