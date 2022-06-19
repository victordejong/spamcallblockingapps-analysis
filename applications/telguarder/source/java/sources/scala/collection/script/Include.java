package scala.collection.script;

import scala.Option;
import scala.Product;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\u0005-d\u0001B\u0001\u0003\u0001&\u0011q!\u00138dYV$WM\u0003\u0002\u0004\t\u000511o\u0019:jaRT!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)\"AC\u000b\u0014\u000b\u0001YqBH\u0011\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\rE\u0002\u0011#Mi\u0011AA\u0005\u0003%\t\u0011q!T3tg\u0006<W\r\u0005\u0002\u0015+1\u0001AA\u0002\f\u0001\t\u000b\u0007qCA\u0001B#\tA2\u0004\u0005\u0002\r3%\u0011!D\u0002\u0002\b\u001d>$\b.\u001b8h!\taA$\u0003\u0002\u001e\r\t\u0019\u0011I\\=\u0011\u00051y\u0012B\u0001\u0011\u0007\u0005\u001d\u0001&o\u001c3vGR\u0004\"\u0001\u0004\u0012\n\u0005\r2!\u0001D*fe&\fG.\u001b>bE2,\u0007\u0002C\u0013\u0001\u0005+\u0007I\u0011\u0001\u0014\u0002\u00111|7-\u0019;j_:,\u0012a\n\t\u0003!!J!!\u000b\u0002\u0003\u00111{7-\u0019;j_:D\u0001b\u000b\u0001\u0003\u0012\u0003\u0006IaJ\u0001\nY>\u001c\u0017\r^5p]\u0002B\u0001\"\f\u0001\u0003\u0016\u0004%\tAL\u0001\u0005K2,W.F\u0001\u0014\u0011!\u0001\u0004A!E!\u0002\u0013\u0019\u0012!B3mK6\u0004\u0003\"\u0002\u001a\u0001\t\u0003\u0019\u0014A\u0002\u001fj]&$h\bF\u00025kY\u00022\u0001\u0005\u0001\u0014\u0011\u0015)\u0013\u00071\u0001(\u0011\u0015i\u0013\u00071\u0001\u0014\u0011\u0015\u0011\u0004\u0001\"\u00019)\t!\u0014\bC\u0003.o\u0001\u00071\u0003C\u0004<\u0001\u0005\u0005I\u0011\u0001\u001f\u0002\t\r|\u0007/_\u000b\u0003{\u0001#2AP!C!\r\u0001\u0002a\u0010\t\u0003)\u0001#QA\u0006\u001eC\u0002]Aq!\n\u001e\u0011\u0002\u0003\u0007q\u0005C\u0004.uA\u0005\t\u0019A \t\u000f\u0011\u0003\u0011\u0013!C\u0001\u000b\u0006q1m\u001c9zI\u0011,g-Y;mi\u0012\nTC\u0001$R+\u00059%FA\u0014IW\u0005I\u0005C\u0001&P\u001b\u0005Y%B\u0001'N\u0003%)hn\u00195fG.,GM\u0003\u0002O\r\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\u0005A[%!E;oG\",7m[3e-\u0006\u0014\u0018.\u00198dK\u0012)ac\u0011b\u0001/!91\u000bAI\u0001\n\u0003!\u0016AD2paf$C-\u001a4bk2$HEM\u000b\u0003+^+\u0012A\u0016\u0016\u0003'!#QA\u0006*C\u0002]Aq!\u0017\u0001\u0002\u0002\u0013\u0005#,A\u0007qe>$Wo\u0019;Qe\u00164\u0017\u000e_\u000b\u00027B\u0011A,Y\u0007\u0002;*\u0011alX\u0001\u0005Y\u0006twMC\u0001a\u0003\u0011Q\u0017M^1\n\u0005\tl&AB*ue&tw\rC\u0004e\u0001\u0005\u0005I\u0011A3\u0002\u0019A\u0014x\u000eZ;di\u0006\u0013\u0018\u000e^=\u0016\u0003\u0019\u0004\"\u0001D4\n\u0005!4!aA%oi\"9!\u000eAA\u0001\n\u0003Y\u0017A\u00049s_\u0012,8\r^#mK6,g\u000e\u001e\u000b\u000371Dq!\\5\u0002\u0002\u0003\u0007a-A\u0002yIEBqa\u001c\u0001\u0002\u0002\u0013\u0005\u0003/A\bqe>$Wo\u0019;Ji\u0016\u0014\u0018\r^8s+\u0005\t\bc\u0001:t75\tA!\u0003\u0002u\t\tA\u0011\n^3sCR|'\u000fC\u0004w\u0001\u0005\u0005I\u0011A<\u0002\u0011\r\fg.R9vC2$\"\u0001_>\u0011\u00051I\u0018B\u0001>\u0007\u0005\u001d\u0011un\u001c7fC:Dq!\\;\u0002\u0002\u0003\u00071\u0004C\u0004~\u0001\u0005\u0005I\u0011\t@\u0002\u0011!\f7\u000f[\"pI\u0016$\u0012A\u001a\u0005\n\u0003\u0003\u0001\u0011\u0011!C!\u0003\u0007\t\u0001\u0002^8TiJLgn\u001a\u000b\u00027\"I\u0011q\u0001\u0001\u0002\u0002\u0013\u0005\u0013\u0011B\u0001\u0007KF,\u0018\r\\:\u0015\u0007a\fY\u0001\u0003\u0005n\u0003\u000b\t\t\u00111\u0001\u001cQ\u001d\u0001\u0011qBA\u000b\u00033\u00012\u0001DA\t\u0013\r\t\u0019B\u0002\u0002\u000bI\u0016\u0004(/Z2bi\u0016$\u0017EAA\f\u0003a\u00196M]5qi&tw\rI5tA\u0011,\u0007O]3dCR,GML\u0011\u0003\u00037\taA\r\u00182c9\u0002t!CA\u0010\u0005\u0005\u0005\t\u0012AA\u0011\u0003\u001dIen\u00197vI\u0016\u00042\u0001EA\u0012\r!\t!!!A\t\u0002\u0005\u00152\u0003BA\u0012\u0017\u0005BqAMA\u0012\t\u0003\tI\u0003\u0006\u0002\u0002\"!Q\u0011\u0011AA\u0012\u0003\u0003%)%a\u0001\t\u0015\u0005=\u00121EA\u0001\n\u0003\u000b\t$A\u0003baBd\u00170\u0006\u0003\u00024\u0005eBCBA\u001b\u0003w\ti\u0004\u0005\u0003\u0011\u0001\u0005]\u0002c\u0001\u000b\u0002:\u00111a#!\fC\u0002]Aa!JA\u0017\u0001\u00049\u0003bB\u0017\u0002.\u0001\u0007\u0011q\u0007\u0005\u000b\u0003\u0003\n\u0019#!A\u0005\u0002\u0006\r\u0013aB;oCB\u0004H._\u000b\u0005\u0003\u000b\n)\u0006\u0006\u0003\u0002H\u0005]\u0003#\u0002\u0007\u0002J\u00055\u0013bAA&\r\t1q\n\u001d;j_:\u0004b\u0001DA(O\u0005M\u0013bAA)\r\t1A+\u001e9mKJ\u00022\u0001FA+\t\u00191\u0012q\bb\u0001/!Q\u0011\u0011LA \u0003\u0003\u0005\r!a\u0017\u0002\u0007a$\u0003\u0007\u0005\u0003\u0011\u0001\u0005M\u0003BCA0\u0003G\t\t\u0011\"\u0003\u0002b\u0005Y!/Z1e%\u0016\u001cx\u000e\u001c<f)\t\t\u0019\u0007E\u0002]\u0003KJ1!a\u001a^\u0005\u0019y%M[3di\"B\u00111EA\b\u0003+\tI\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/script/Include.class */
public class Include<A> implements Message<A>, Product, Serializable {
    private final A elem;
    private final Location location;

    public Include(A a) {
        this(NoLo$.MODULE$, a);
    }

    public Include(Location location, A a) {
        this.location = location;
        this.elem = a;
        Product.Cclass.$init$(this);
    }

    public static <A> Include<A> apply(Location location, A a) {
        return Include$.MODULE$.apply(location, a);
    }

    public static <A> Option<Tuple2<Location, A>> unapply(Include<A> include) {
        return Include$.MODULE$.unapply(include);
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof Include;
    }

    public <A> Include<A> copy(Location location, A a) {
        return new Include<>(location, a);
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
            boolean r0 = r0 instanceof scala.collection.script.Include
            if (r0 == 0) goto Lac
            r0 = r4
            scala.collection.script.Include r0 = (scala.collection.script.Include) r0
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
            r7 = r0
            r0 = r4
            java.lang.Object r0 = r0.elem()
            r8 = r0
            r0 = r7
            r1 = r8
            if (r0 != r1) goto L50
            r0 = 1
            r6 = r0
            goto L8e
        L50:
            r0 = r7
            if (r0 != 0) goto L5a
            r0 = 0
            r6 = r0
            goto L8e
        L5a:
            r0 = r7
            boolean r0 = r0 instanceof java.lang.Number
            if (r0 == 0) goto L70
            r0 = r7
            java.lang.Number r0 = (java.lang.Number) r0
            r1 = r8
            boolean r0 = scala.runtime.BoxesRunTime.equalsNumObject(r0, r1)
            r6 = r0
            goto L8e
        L70:
            r0 = r7
            boolean r0 = r0 instanceof java.lang.Character
            if (r0 == 0) goto L86
            r0 = r7
            java.lang.Character r0 = (java.lang.Character) r0
            r1 = r8
            boolean r0 = scala.runtime.BoxesRunTime.equalsCharObject(r0, r1)
            r6 = r0
            goto L8e
        L86:
            r0 = r7
            r1 = r8
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
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.script.Include.equals(java.lang.Object):boolean");
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
        return "Include";
    }

    public String toString() {
        return ScalaRunTime$.MODULE$._toString(this);
    }
}
