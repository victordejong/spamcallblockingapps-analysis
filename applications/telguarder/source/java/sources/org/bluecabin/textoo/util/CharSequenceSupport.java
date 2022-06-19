package org.bluecabin.textoo.util;

import android.text.Spannable;
import android.text.Spanned;
import scala.Product;
import scala.Serializable;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
import scala.runtime.Statics;
@ScalaSignature(bytes = "\u0006\u0001\tur!B\u0001\u0003\u0011\u0003Y\u0011aE\"iCJ\u001cV-];f]\u000e,7+\u001e9q_J$(BA\u0002\u0005\u0003\u0011)H/\u001b7\u000b\u0005\u00151\u0011A\u0002;fqR|wN\u0003\u0002\b\u0011\u0005I!\r\\;fG\u0006\u0014\u0017N\u001c\u0006\u0002\u0013\u0005\u0019qN]4\u0004\u0001A\u0011A\"D\u0007\u0002\u0005\u0019)aB\u0001E\u0001\u001f\t\u00192\t[1s'\u0016\fX/\u001a8dKN+\b\u000f]8siN\u0011Q\u0002\u0005\t\u0003#Qi\u0011A\u0005\u0006\u0002'\u0005)1oY1mC&\u0011QC\u0005\u0002\u0007\u0003:L(+\u001a4\t\u000b]iA\u0011\u0001\r\u0002\rqJg.\u001b;?)\u0005Y\u0001\"\u0002\u000e\u000e\t\u0003Y\u0012!\u0003;p'B\fgN\\3e)\taB\u0005\u0005\u0002\u001eE5\taD\u0003\u0002 A\u0005!A/\u001a=u\u0015\u0005\t\u0013aB1oIJ|\u0017\u000eZ\u0005\u0003Gy\u0011qa\u00159b]:,G\rC\u0003&3\u0001\u0007a%A\u0003dQ\u0006\u00148\u000f\u0005\u0002(Y5\t\u0001F\u0003\u0002*U\u0005!A.\u00198h\u0015\u0005Y\u0013\u0001\u00026bm\u0006L!!\f\u0015\u0003\u0019\rC\u0017M]*fcV,gnY3\t\u000b=jA\u0011\u0001\u0019\u0002\u0017Q|7\u000b]1o]\u0006\u0014G.\u001a\u000b\u0003cQ\u0002\"!\b\u001a\n\u0005Mr\"!C*qC:t\u0017M\u00197f\u0011\u0015)c\u00061\u0001'\u0011\u00151T\u0002\"\u00038\u0003A\u0019\u0007.\u0019:t)>\u001c\u0006/\u00198oC\ndW\r\u0006\u00022q!)Q%\u000ea\u0001M\u0019!!(D\u0002<\u0005QIU\u000e\u001d7jG&$8\t[1s'\u0016\fX/\u001a8dKN\u0011\u0011\b\u0010\t\u0003#uJ!A\u0010\n\u0003\r\u0005s\u0017PV1m\u0011!)\u0013H!b\u0001\n\u0003\u0001U#\u0001\u0014\t\u0011\tK$\u0011!Q\u0001\n\u0019\naa\u00195beN\u0004\u0003\"B\f:\t\u0003!ECA#H!\t1\u0015(D\u0001\u000e\u0011\u0015)3\t1\u0001'\u0011\u0015y\u0013\b\"\u0001J+\u0005\t\u0004\"\u0002\u000e:\t\u0003YU#\u0001\u000f\t\u000b5KD\u0011\u0001(\u0002\u0011\u0005dG\u000eT5oWN,\u0012a\u0014\t\u0004!b[fBA)W\u001d\t\u0011V+D\u0001T\u0015\t!&\"\u0001\u0004=e>|GOP\u0005\u0002'%\u0011qKE\u0001\ba\u0006\u001c7.Y4f\u0013\tI&LA\u0002TKFT!a\u0016\n\u0011\u0005\u0019cf\u0001B/\u000e\u0005z\u0013\u0001b\u00159b]&sgm\\\n\u00059By&\r\u0005\u0002\u0012A&\u0011\u0011M\u0005\u0002\b!J|G-^2u!\t\t2-\u0003\u0002e%\ta1+\u001a:jC2L'0\u00192mK\"Aa\r\u0018BK\u0002\u0013\u0005q-\u0001\u0003ta\u0006tW#\u0001\t\t\u0011%d&\u0011#Q\u0001\nA\tQa\u001d9b]\u0002B\u0001b\u001b/\u0003\u0016\u0004%\t\u0001\\\u0001\u0006gR\f'\u000f^\u000b\u0002[B\u0011\u0011C\\\u0005\u0003_J\u00111!\u00138u\u0011!\tHL!E!\u0002\u0013i\u0017AB:uCJ$\b\u0005\u0003\u0005t9\nU\r\u0011\"\u0001m\u0003\r)g\u000e\u001a\u0005\tkr\u0013\t\u0012)A\u0005[\u0006!QM\u001c3!\u0011!9HL!f\u0001\n\u0003a\u0017!\u00024mC\u001e\u001c\b\u0002C=]\u0005#\u0005\u000b\u0011B7\u0002\r\u0019d\u0017mZ:!\u0011\u00159B\f\"\u0001|)\u0015YF0 @��\u0011\u00151'\u00101\u0001\u0011\u0011\u0015Y'\u00101\u0001n\u0011\u0015\u0019(\u00101\u0001n\u0011\u00159(\u00101\u0001n\u0011\u001d\t\u0019\u0001\u0018C\u0001\u0003\u000b\tAb\u001c<fe2\f\u0007o],ji\"$B!a\u0002\u0002\u000eA\u0019\u0011#!\u0003\n\u0007\u0005-!CA\u0004C_>dW-\u00198\t\u000f\u0005=\u0011\u0011\u0001a\u00017\u0006)q\u000e\u001e5fe\"9\u00111\u0003/\u0005\u0002\u0005U\u0011!B1eIR{G\u0003BA\f\u0003;\u00012!EA\r\u0013\r\tYB\u0005\u0002\u0005+:LG\u000fC\u0004\u0002 \u0005E\u0001\u0019A\u0019\u0002\u0013M\u0004\u0018M\u001c8bE2,\u0007\"CA\u00129\u0006\u0005I\u0011AA\u0013\u0003\u0011\u0019w\u000e]=\u0015\u0013m\u000b9#!\u000b\u0002,\u00055\u0002\u0002\u00034\u0002\"A\u0005\t\u0019\u0001\t\t\u0011-\f\t\u0003%AA\u00025D\u0001b]A\u0011!\u0003\u0005\r!\u001c\u0005\to\u0006\u0005\u0002\u0013!a\u0001[\"I\u0011\u0011\u0007/\u0012\u0002\u0013\u0005\u00111G\u0001\u000fG>\u0004\u0018\u0010\n3fM\u0006,H\u000e\u001e\u00132+\t\t)DK\u0002\u0011\u0003oY#!!\u000f\u0011\t\u0005m\u0012QI\u0007\u0003\u0003{QA!a\u0010\u0002B\u0005IQO\\2iK\u000e\\W\r\u001a\u0006\u0004\u0003\u0007\u0012\u0012AC1o]>$\u0018\r^5p]&!\u0011qIA\u001f\u0005E)hn\u00195fG.,GMV1sS\u0006t7-\u001a\u0005\n\u0003\u0017b\u0016\u0013!C\u0001\u0003\u001b\nabY8qs\u0012\"WMZ1vYR$#'\u0006\u0002\u0002P)\u001aQ.a\u000e\t\u0013\u0005MC,%A\u0005\u0002\u00055\u0013AD2paf$C-\u001a4bk2$He\r\u0005\n\u0003/b\u0016\u0013!C\u0001\u0003\u001b\nabY8qs\u0012\"WMZ1vYR$C\u0007C\u0005\u0002\\q\u000b\t\u0011\"\u0011\u0002^\u0005i\u0001O]8ek\u000e$\bK]3gSb,\"!a\u0018\u0011\u0007\u001d\n\t'C\u0002\u0002d!\u0012aa\u0015;sS:<\u0007\u0002CA49\u0006\u0005I\u0011\u00017\u0002\u0019A\u0014x\u000eZ;di\u0006\u0013\u0018\u000e^=\t\u0013\u0005-D,!A\u0005\u0002\u00055\u0014A\u00049s_\u0012,8\r^#mK6,g\u000e\u001e\u000b\u0005\u0003_\n)\bE\u0002\u0012\u0003cJ1!a\u001d\u0013\u0005\r\te.\u001f\u0005\n\u0003o\nI'!AA\u00025\f1\u0001\u001f\u00132\u0011%\tY\bXA\u0001\n\u0003\ni(A\bqe>$Wo\u0019;Ji\u0016\u0014\u0018\r^8s+\t\ty\b\u0005\u0004\u0002\u0002\u0006\u001d\u0015qN\u0007\u0003\u0003\u0007S1!!\"\u0013\u0003)\u0019w\u000e\u001c7fGRLwN\\\u0005\u0005\u0003\u0013\u000b\u0019I\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011%\ti\tXA\u0001\n\u0003\ty)\u0001\u0005dC:,\u0015/^1m)\u0011\t9!!%\t\u0015\u0005]\u00141RA\u0001\u0002\u0004\ty\u0007C\u0005\u0002\u0016r\u000b\t\u0011\"\u0011\u0002\u0018\u0006A\u0001.Y:i\u0007>$W\rF\u0001n\u0011%\tY\nXA\u0001\n\u0003\ni*\u0001\u0005u_N#(/\u001b8h)\t\ty\u0006C\u0005\u0002\"r\u000b\t\u0011\"\u0011\u0002$\u00061Q-];bYN$B!a\u0002\u0002&\"Q\u0011qOAP\u0003\u0003\u0005\r!a\u001c\t\u0013\u0005U\u0015(!A\u0005B\u0005]\u0005\"CAQs\u0005\u0005I\u0011IAV)\u0011\t9!!,\t\u0015\u0005]\u0014\u0011VA\u0001\u0002\u0004\ty\u0007C\u0005\u000226\t\t\u0011b\u0001\u00024\u0006!\u0012*\u001c9mS\u000eLGo\u00115beN+\u0017/^3oG\u0016$2!RA[\u0011\u0019)\u0013q\u0016a\u0001M\u001dI\u0011\u0011X\u0007\u0002\u0002#\u0005\u00111X\u0001\t'B\fg.\u00138g_B\u0019a)!0\u0007\u0011uk\u0011\u0011!E\u0001\u0003\u007f\u001bR!!0\u0002B\n\u0004\u0012\"a1\u0002JBiW.\\.\u000e\u0005\u0005\u0015'bAAd%\u00059!/\u001e8uS6,\u0017\u0002BAf\u0003\u000b\u0014\u0011#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c85\u0011\u001d9\u0012Q\u0018C\u0001\u0003\u001f$\"!a/\t\u0015\u0005m\u0015QXA\u0001\n\u000b\ni\n\u0003\u0006\u0002V\u0006u\u0016\u0011!CA\u0003/\fQ!\u00199qYf$\u0012bWAm\u00037\fi.a8\t\r\u0019\f\u0019\u000e1\u0001\u0011\u0011\u0019Y\u00171\u001ba\u0001[\"11/a5A\u00025Daa^Aj\u0001\u0004i\u0007BCAr\u0003{\u000b\t\u0011\"!\u0002f\u00069QO\\1qa2LH\u0003BAt\u0003g\u0004R!EAu\u0003[L1!a;\u0013\u0005\u0019y\u0005\u000f^5p]B9\u0011#a<\u0011[6l\u0017bAAy%\t1A+\u001e9mKRB\u0011\"!>\u0002b\u0006\u0005\t\u0019A.\u0002\u0007a$\u0003\u0007\u0003\u0006\u0002z\u0006u\u0016\u0011!C\u0005\u0003w\f1B]3bIJ+7o\u001c7wKR\u0011\u0011Q \t\u0004O\u0005}\u0018b\u0001B\u0001Q\t1qJ\u00196fGR<\u0011\"!-\u000e\u0003\u0003E\tA!\u0002\u0011\u0007\u0019\u00139A\u0002\u0005;\u001b\u0005\u0005\t\u0012\u0001B\u0005'\r\u00119\u0001\u0005\u0005\b/\t\u001dA\u0011\u0001B\u0007)\t\u0011)\u0001\u0003\u0005\u0003\u0012\t\u001dAQ\u0001B\n\u0003U!xn\u00159b]:\f'\r\\3%Kb$XM\\:j_:$2!\rB\u000b\u0011\u001d\u00119Ba\u0004A\u0002\u0015\u000bQ\u0001\n;iSND\u0001Ba\u0007\u0003\b\u0011\u0015!QD\u0001\u0014i>\u001c\u0006/\u00198oK\u0012$S\r\u001f;f]NLwN\u001c\u000b\u00049\t}\u0001b\u0002B\f\u00053\u0001\r!\u0012\u0005\t\u0005G\u00119\u0001\"\u0002\u0003&\u0005\u0011\u0012\r\u001c7MS:\\7\u000fJ3yi\u0016t7/[8o)\ry%q\u0005\u0005\b\u0005/\u0011\t\u00031\u0001F\u0011)\u0011YCa\u0002\u0002\u0002\u0013\u0015!QF\u0001\u0013Q\u0006\u001c\bnQ8eK\u0012*\u0007\u0010^3og&|g\u000e\u0006\u0003\u0002\u0018\n=\u0002b\u0002B\f\u0005S\u0001\r!\u0012\u0005\u000b\u0005g\u00119!!A\u0005\u0006\tU\u0012\u0001E3rk\u0006d7\u000fJ3yi\u0016t7/[8o)\u0011\u00119Da\u000f\u0015\t\u0005\u001d!\u0011\b\u0005\u000b\u0003o\u0012\t$!AA\u0002\u0005=\u0004b\u0002B\f\u0005c\u0001\r!\u0012")
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/util/CharSequenceSupport.class */
public final class CharSequenceSupport {

    /* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence.class */
    public static final class ImplicitCharSequence {
        private final CharSequence chars;

        public ImplicitCharSequence(CharSequence charSequence) {
            this.chars = charSequence;
        }

        public Seq<SpanInfo> allLinks() {
            return CharSequenceSupport$ImplicitCharSequence$.MODULE$.allLinks$extension(chars());
        }

        public CharSequence chars() {
            return this.chars;
        }

        public boolean equals(Object obj) {
            return CharSequenceSupport$ImplicitCharSequence$.MODULE$.equals$extension(chars(), obj);
        }

        public int hashCode() {
            return CharSequenceSupport$ImplicitCharSequence$.MODULE$.hashCode$extension(chars());
        }

        public Spannable toSpannable() {
            return CharSequenceSupport$ImplicitCharSequence$.MODULE$.toSpannable$extension(chars());
        }

        public Spanned toSpanned() {
            return CharSequenceSupport$ImplicitCharSequence$.MODULE$.toSpanned$extension(chars());
        }
    }

    /* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/util/CharSequenceSupport$SpanInfo.class */
    public static final class SpanInfo implements Product, Serializable {
        private final int end;
        private final int flags;
        private final Object span;
        private final int start;

        public SpanInfo(Object obj, int i, int i2, int i3) {
            this.span = obj;
            this.start = i;
            this.end = i2;
            this.flags = i3;
            Product.Cclass.$init$(this);
        }

        public void addTo(Spannable spannable) {
            spannable.setSpan(span(), start(), end(), flags());
        }

        @Override // scala.Equals
        public boolean canEqual(Object obj) {
            return obj instanceof SpanInfo;
        }

        public SpanInfo copy(Object obj, int i, int i2, int i3) {
            return new SpanInfo(obj, i, i2, i3);
        }

        public Object copy$default$1() {
            return span();
        }

        public int copy$default$2() {
            return start();
        }

        public int copy$default$3() {
            return end();
        }

        public int copy$default$4() {
            return flags();
        }

        public int end() {
            return this.end;
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
            if ((scala.runtime.BoxesRunTime.equals(span(), r0.span()) && start() == r0.start() && end() == r0.end() && flags() == r0.flags()) != false) goto L18;
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
                if (r0 == r1) goto L54
                r0 = r5
                r6 = r0
                r0 = r4
                boolean r0 = r0 instanceof org.bluecabin.textoo.util.CharSequenceSupport.SpanInfo
                if (r0 == 0) goto L56
                r0 = r4
                org.bluecabin.textoo.util.CharSequenceSupport$SpanInfo r0 = (org.bluecabin.textoo.util.CharSequenceSupport.SpanInfo) r0
                r4 = r0
                r0 = r3
                java.lang.Object r0 = r0.span()
                r1 = r4
                java.lang.Object r1 = r1.span()
                boolean r0 = scala.runtime.BoxesRunTime.equals(r0, r1)
                if (r0 == 0) goto L4a
                r0 = r3
                int r0 = r0.start()
                r1 = r4
                int r1 = r1.start()
                if (r0 != r1) goto L4a
                r0 = r3
                int r0 = r0.end()
                r1 = r4
                int r1 = r1.end()
                if (r0 != r1) goto L4a
                r0 = r3
                int r0 = r0.flags()
                r1 = r4
                int r1 = r1.flags()
                if (r0 != r1) goto L4a
                r0 = 1
                r7 = r0
                goto L4d
            L4a:
                r0 = 0
                r7 = r0
            L4d:
                r0 = r5
                r6 = r0
                r0 = r7
                if (r0 == 0) goto L56
            L54:
                r0 = 1
                r6 = r0
            L56:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: org.bluecabin.textoo.util.CharSequenceSupport.SpanInfo.equals(java.lang.Object):boolean");
        }

        public int flags() {
            return this.flags;
        }

        public int hashCode() {
            return Statics.finalizeHash(Statics.mix(Statics.mix(Statics.mix(Statics.mix(-889275714, Statics.anyHash(span())), start()), end()), flags()), 4);
        }

        public boolean overlapsWith(SpanInfo spanInfo) {
            return start() < spanInfo.end() && spanInfo.start() < end();
        }

        @Override // scala.Product
        public int productArity() {
            return 4;
        }

        @Override // scala.Product
        public Object productElement(int i) {
            Integer num;
            int i2;
            if (i != 0) {
                if (i == 1) {
                    i2 = start();
                } else if (i == 2) {
                    i2 = end();
                } else if (i != 3) {
                    throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
                } else {
                    i2 = flags();
                }
                num = BoxesRunTime.boxToInteger(i2);
            } else {
                num = span();
            }
            return num;
        }

        @Override // scala.Product
        public Iterator<Object> productIterator() {
            return ScalaRunTime$.MODULE$.typedProductIterator(this);
        }

        @Override // scala.Product
        public String productPrefix() {
            return "SpanInfo";
        }

        public Object span() {
            return this.span;
        }

        public int start() {
            return this.start;
        }

        public String toString() {
            return ScalaRunTime$.MODULE$._toString(this);
        }
    }

    public static CharSequence ImplicitCharSequence(CharSequence charSequence) {
        return CharSequenceSupport$.MODULE$.ImplicitCharSequence(charSequence);
    }

    public static Spannable toSpannable(CharSequence charSequence) {
        return CharSequenceSupport$.MODULE$.toSpannable(charSequence);
    }

    public static Spanned toSpanned(CharSequence charSequence) {
        return CharSequenceSupport$.MODULE$.toSpanned(charSequence);
    }
}
