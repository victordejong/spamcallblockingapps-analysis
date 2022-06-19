package scala.collection.script;

import scala.Option;
import scala.Product;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\u0005-d\u0001B\u0001\u0003\u0001&\u0011aAU3n_Z,'BA\u0002\u0005\u0003\u0019\u00198M]5qi*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"F\n\u0006\u0001-ya$\t\t\u0003\u00195i\u0011AB\u0005\u0003\u001d\u0019\u0011a!\u00118z%\u00164\u0007c\u0001\t\u0012'5\t!!\u0003\u0002\u0013\u0005\t9Q*Z:tC\u001e,\u0007C\u0001\u000b\u0016\u0019\u0001!aA\u0006\u0001\u0005\u0006\u00049\"!A!\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0003\u0019}I!\u0001\t\u0004\u0003\u000fA\u0013x\u000eZ;diB\u0011ABI\u0005\u0003G\u0019\u0011AbU3sS\u0006d\u0017N_1cY\u0016D\u0001\"\n\u0001\u0003\u0016\u0004%\tAJ\u0001\tY>\u001c\u0017\r^5p]V\tq\u0005\u0005\u0002\u0011Q%\u0011\u0011F\u0001\u0002\t\u0019>\u001c\u0017\r^5p]\"A1\u0006\u0001B\tB\u0003%q%A\u0005m_\u000e\fG/[8oA!AQ\u0006\u0001BK\u0002\u0013\u0005a&\u0001\u0003fY\u0016lW#A\n\t\u0011A\u0002!\u0011#Q\u0001\nM\tQ!\u001a7f[\u0002BQA\r\u0001\u0005\u0002M\na\u0001P5oSRtDc\u0001\u001b6mA\u0019\u0001\u0003A\n\t\u000b\u0015\n\u0004\u0019A\u0014\t\u000b5\n\u0004\u0019A\n\t\u000bI\u0002A\u0011\u0001\u001d\u0015\u0005QJ\u0004\"B\u00178\u0001\u0004\u0019\u0002bB\u001e\u0001\u0003\u0003%\t\u0001P\u0001\u0005G>\u0004\u00180\u0006\u0002>\u0001R\u0019a(\u0011\"\u0011\u0007A\u0001q\b\u0005\u0002\u0015\u0001\u0012)aC\u000fb\u0001/!9QE\u000fI\u0001\u0002\u00049\u0003bB\u0017;!\u0003\u0005\ra\u0010\u0005\b\t\u0002\t\n\u0011\"\u0001F\u00039\u0019w\u000e]=%I\u00164\u0017-\u001e7uIE*\"AR)\u0016\u0003\u001dS#a\n%,\u0003%\u0003\"AS(\u000e\u0003-S!\u0001T'\u0002\u0013Ut7\r[3dW\u0016$'B\u0001(\u0007\u0003)\tgN\\8uCRLwN\\\u0005\u0003!.\u0013\u0011#\u001e8dQ\u0016\u001c7.\u001a3WCJL\u0017M\\2f\t\u001512I1\u0001\u0018\u0011\u001d\u0019\u0006!%A\u0005\u0002Q\u000babY8qs\u0012\"WMZ1vYR$#'\u0006\u0002V/V\taK\u000b\u0002\u0014\u0011\u0012)aC\u0015b\u0001/!9\u0011\fAA\u0001\n\u0003R\u0016!\u00049s_\u0012,8\r\u001e)sK\u001aL\u00070F\u0001\\!\ta\u0016-D\u0001^\u0015\tqv,\u0001\u0003mC:<'\"\u00011\u0002\t)\fg/Y\u0005\u0003Ev\u0013aa\u0015;sS:<\u0007b\u00023\u0001\u0003\u0003%\t!Z\u0001\raJ|G-^2u\u0003JLG/_\u000b\u0002MB\u0011AbZ\u0005\u0003Q\u001a\u00111!\u00138u\u0011\u001dQ\u0007!!A\u0005\u0002-\fa\u0002\u001d:pIV\u001cG/\u00127f[\u0016tG\u000f\u0006\u0002\u001cY\"9Q.[A\u0001\u0002\u00041\u0017a\u0001=%c!9q\u000eAA\u0001\n\u0003\u0002\u0018a\u00049s_\u0012,8\r^%uKJ\fGo\u001c:\u0016\u0003E\u00042A]:\u001c\u001b\u0005!\u0011B\u0001;\u0005\u0005!IE/\u001a:bi>\u0014\bb\u0002<\u0001\u0003\u0003%\ta^\u0001\tG\u0006tW)];bYR\u0011\u0001p\u001f\t\u0003\u0019eL!A\u001f\u0004\u0003\u000f\t{w\u000e\\3b]\"9Q.^A\u0001\u0002\u0004Y\u0002bB?\u0001\u0003\u0003%\tE`\u0001\tQ\u0006\u001c\bnQ8eKR\ta\rC\u0005\u0002\u0002\u0001\t\t\u0011\"\u0011\u0002\u0004\u0005AAo\\*ue&tw\rF\u0001\\\u0011%\t9\u0001AA\u0001\n\u0003\nI!\u0001\u0004fcV\fGn\u001d\u000b\u0004q\u0006-\u0001\u0002C7\u0002\u0006\u0005\u0005\t\u0019A\u000e)\u000f\u0001\ty!!\u0006\u0002\u001aA\u0019A\"!\u0005\n\u0007\u0005MaA\u0001\u0006eKB\u0014XmY1uK\u0012\f#!a\u0006\u00021M\u001b'/\u001b9uS:<\u0007%[:!I\u0016\u0004(/Z2bi\u0016$g&\t\u0002\u0002\u001c\u00051!GL\u00192]A:\u0011\"a\b\u0003\u0003\u0003E\t!!\t\u0002\rI+Wn\u001c<f!\r\u0001\u00121\u0005\u0004\t\u0003\t\t\t\u0011#\u0001\u0002&M!\u00111E\u0006\"\u0011\u001d\u0011\u00141\u0005C\u0001\u0003S!\"!!\t\t\u0015\u0005\u0005\u00111EA\u0001\n\u000b\n\u0019\u0001\u0003\u0006\u00020\u0005\r\u0012\u0011!CA\u0003c\tQ!\u00199qYf,B!a\r\u0002:Q1\u0011QGA\u001e\u0003{\u0001B\u0001\u0005\u0001\u00028A\u0019A#!\u000f\u0005\rY\tiC1\u0001\u0018\u0011\u0019)\u0013Q\u0006a\u0001O!9Q&!\fA\u0002\u0005]\u0002BCA!\u0003G\t\t\u0011\"!\u0002D\u00059QO\\1qa2LX\u0003BA#\u0003+\"B!a\u0012\u0002XA)A\"!\u0013\u0002N%\u0019\u00111\n\u0004\u0003\r=\u0003H/[8o!\u0019a\u0011qJ\u0014\u0002T%\u0019\u0011\u0011\u000b\u0004\u0003\rQ+\b\u000f\\33!\r!\u0012Q\u000b\u0003\u0007-\u0005}\"\u0019A\f\t\u0015\u0005e\u0013qHA\u0001\u0002\u0004\tY&A\u0002yIA\u0002B\u0001\u0005\u0001\u0002T!Q\u0011qLA\u0012\u0003\u0003%I!!\u0019\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0003\u0003G\u00022\u0001XA3\u0013\r\t9'\u0018\u0002\u0007\u001f\nTWm\u0019;)\u0011\u0005\r\u0012qBA\u000b\u00033\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/script/Remove.class */
public class Remove<A> implements Message<A>, Product, Serializable {
    private final A elem;
    private final Location location;

    public Remove(A a) {
        this(NoLo$.MODULE$, a);
    }

    public Remove(Location location, A a) {
        this.location = location;
        this.elem = a;
        Product.Cclass.$init$(this);
    }

    public static <A> Remove<A> apply(Location location, A a) {
        return Remove$.MODULE$.apply(location, a);
    }

    public static <A> Option<Tuple2<Location, A>> unapply(Remove<A> remove) {
        return Remove$.MODULE$.unapply(remove);
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof Remove;
    }

    public <A> Remove<A> copy(Location location, A a) {
        return new Remove<>(location, a);
    }

    public <A> Location copy$default$1() {
        return location();
    }

    public <A> A copy$default$2() {
        return elem();
    }

    public A elem() {
        return this.elem;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a7, code lost:
        if (r9 == false) goto L34;
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
            if (r0 == r1) goto Laa
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof scala.collection.script.Remove
            if (r0 == 0) goto Lac
            r0 = r4
            scala.collection.script.Remove r0 = (scala.collection.script.Remove) r0
            r4 = r0
            r0 = r3
            scala.collection.script.Location r0 = r0.location()
            r7 = r0
            r0 = r4
            scala.collection.script.Location r0 = r0.location()
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L2e
            r0 = r8
            if (r0 == 0) goto L38
            goto La0
        L2e:
            r0 = r7
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto La0
        L38:
            r0 = r3
            java.lang.Object r0 = r0.elem()
            r8 = r0
            r0 = r4
            java.lang.Object r0 = r0.elem()
            r7 = r0
            r0 = r8
            r1 = r7
            if (r0 != r1) goto L50
            r0 = 1
            r6 = r0
            goto L8e
        L50:
            r0 = r8
            if (r0 != 0) goto L5a
            r0 = 0
            r6 = r0
            goto L8e
        L5a:
            r0 = r8
            boolean r0 = r0 instanceof java.lang.Number
            if (r0 == 0) goto L70
            r0 = r8
            java.lang.Number r0 = (java.lang.Number) r0
            r1 = r7
            boolean r0 = scala.runtime.BoxesRunTime.equalsNumObject(r0, r1)
            r6 = r0
            goto L8e
        L70:
            r0 = r8
            boolean r0 = r0 instanceof java.lang.Character
            if (r0 == 0) goto L86
            r0 = r8
            java.lang.Character r0 = (java.lang.Character) r0
            r1 = r7
            boolean r0 = scala.runtime.BoxesRunTime.equalsCharObject(r0, r1)
            r6 = r0
            goto L8e
        L86:
            r0 = r8
            r1 = r7
            boolean r0 = r0.equals(r1)
            r6 = r0
        L8e:
            r0 = r6
            if (r0 == 0) goto La0
            r0 = r4
            r1 = r3
            boolean r0 = r0.canEqual(r1)
            if (r0 == 0) goto La0
            r0 = 1
            r9 = r0
            goto La3
        La0:
            r0 = 0
            r9 = r0
        La3:
            r0 = r5
            r6 = r0
            r0 = r9
            if (r0 == 0) goto Lac
        Laa:
            r0 = 1
            r6 = r0
        Lac:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.script.Remove.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ScalaRunTime$.MODULE$._hashCode(this);
    }

    public Location location() {
        return this.location;
    }

    @Override // scala.Product
    public int productArity() {
        return 2;
    }

    @Override // scala.Product
    public Object productElement(int i) {
        Object obj;
        if (i == 0) {
            obj = location();
        } else if (i != 1) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        } else {
            obj = elem();
        }
        return obj;
    }

    @Override // scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.Product
    public String productPrefix() {
        return "Remove";
    }

    public String toString() {
        return ScalaRunTime$.MODULE$._toString(this);
    }
}
