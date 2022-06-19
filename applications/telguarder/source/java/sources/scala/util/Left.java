package scala.util;

import scala.Option;
import scala.Product;
import scala.Serializable;
import scala.collection.Iterator;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\u0005%c\u0001B\u0001\u0003\u0005\u001e\u0011A\u0001T3gi*\u00111\u0001B\u0001\u0005kRLGNC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001)2\u0001C\b\u001b'\u0011\u0001\u0011\u0002H\u0010\u0011\t)YQ\"G\u0007\u0002\u0005%\u0011AB\u0001\u0002\u0007\u000b&$\b.\u001a:\u0011\u00059yA\u0002\u0001\u0003\u0007!\u0001!)\u0019A\t\u0003\u0003\u0005\u000b\"A\u0005\f\u0011\u0005M!R\"\u0001\u0003\n\u0005U!!a\u0002(pi\"Lgn\u001a\t\u0003']I!\u0001\u0007\u0003\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u000f5\u001111\u0004\u0001CC\u0002E\u0011\u0011A\u0011\t\u0003'uI!A\b\u0003\u0003\u000fA\u0013x\u000eZ;diB\u00111\u0003I\u0005\u0003C\u0011\u0011AbU3sS\u0006d\u0017N_1cY\u0016D\u0001b\t\u0001\u0003\u0016\u0004%\t\u0001J\u0001\u0002CV\tQ\u0002\u0003\u0005'\u0001\tE\t\u0015!\u0003\u000e\u0003\t\t\u0007\u0005C\u0003)\u0001\u0011\u0005\u0011&\u0001\u0004=S:LGO\u0010\u000b\u0003U-\u0002BA\u0003\u0001\u000e3!)1e\na\u0001\u001b!)Q\u0006\u0001C\u0001]\u00051\u0011n\u001d'fMR,\u0012a\f\t\u0003'AJ!!\r\u0003\u0003\u000f\t{w\u000e\\3b]\")1\u0007\u0001C\u0001]\u00059\u0011n\u001d*jO\"$\bbB\u001b\u0001\u0003\u0003%\tAN\u0001\u0005G>\u0004\u00180F\u00028uq\"\"\u0001O\u001f\u0011\t)\u0001\u0011h\u000f\t\u0003\u001di\"Q\u0001\u0005\u001bC\u0002E\u0001\"A\u0004\u001f\u0005\u000bm!$\u0019A\t\t\u000f\r\"\u0004\u0013!a\u0001s!9q\bAI\u0001\n\u0003\u0001\u0015AD2paf$C-\u001a4bk2$H%M\u000b\u0004\u00032kU#\u0001\"+\u00055\u00195&\u0001#\u0011\u0005\u0015SU\"\u0001$\u000b\u0005\u001dC\u0015!C;oG\",7m[3e\u0015\tIE!\u0001\u0006b]:|G/\u0019;j_:L!a\u0013$\u0003#Ut7\r[3dW\u0016$g+\u0019:jC:\u001cW\rB\u0003\u0011}\t\u0007\u0011\u0003B\u0003\u001c}\t\u0007\u0011\u0003C\u0004P\u0001\u0005\u0005I\u0011\t)\u0002\u001bA\u0014x\u000eZ;diB\u0013XMZ5y+\u0005\t\u0006C\u0001*X\u001b\u0005\u0019&B\u0001+V\u0003\u0011a\u0017M\\4\u000b\u0003Y\u000bAA[1wC&\u0011\u0001l\u0015\u0002\u0007'R\u0014\u0018N\\4\t\u000fi\u0003\u0011\u0011!C\u00017\u0006a\u0001O]8ek\u000e$\u0018I]5usV\tA\f\u0005\u0002\u0014;&\u0011a\f\u0002\u0002\u0004\u0013:$\bb\u00021\u0001\u0003\u0003%\t!Y\u0001\u000faJ|G-^2u\u000b2,W.\u001a8u)\t1\"\rC\u0004d?\u0006\u0005\t\u0019\u0001/\u0002\u0007a$\u0013\u0007C\u0004f\u0001\u0005\u0005I\u0011\t4\u0002\u001fA\u0014x\u000eZ;di&#XM]1u_J,\u0012a\u001a\t\u0004Q.4R\"A5\u000b\u0005)$\u0011AC2pY2,7\r^5p]&\u0011A.\u001b\u0002\t\u0013R,'/\u0019;pe\"9a\u000eAA\u0001\n\u0003y\u0017\u0001C2b]\u0016\u000bX/\u00197\u0015\u0005=\u0002\bbB2n\u0003\u0003\u0005\rA\u0006\u0005\be\u0002\t\t\u0011\"\u0011t\u0003!A\u0017m\u001d5D_\u0012,G#\u0001/\t\u000fU\u0004\u0011\u0011!C!m\u0006AAo\\*ue&tw\rF\u0001R\u0011\u001dA\b!!A\u0005Be\fa!Z9vC2\u001cHCA\u0018{\u0011\u001d\u0019w/!AA\u0002Y9q\u0001 \u0002\u0002\u0002#\u0005Q0\u0001\u0003MK\u001a$\bC\u0001\u0006\u007f\r\u001d\t!!!A\t\u0002}\u001cBA`A\u0001?A\u00191#a\u0001\n\u0007\u0005\u0015AA\u0001\u0004B]f\u0014VM\u001a\u0005\u0007Qy$\t!!\u0003\u0015\u0003uDq!\u001e@\u0002\u0002\u0013\u0015c\u000fC\u0005\u0002\u0010y\f\t\u0011\"!\u0002\u0012\u0005)\u0011\r\u001d9msV1\u00111CA\r\u0003;!B!!\u0006\u0002 A1!\u0002AA\f\u00037\u00012ADA\r\t\u0019\u0001\u0012Q\u0002b\u0001#A\u0019a\"!\b\u0005\rm\tiA1\u0001\u0012\u0011\u001d\u0019\u0013Q\u0002a\u0001\u0003/A\u0011\"a\t\u007f\u0003\u0003%\t)!\n\u0002\u000fUt\u0017\r\u001d9msV1\u0011qEA\u0019\u0003w!B!!\u000b\u00024A)1#a\u000b\u00020%\u0019\u0011Q\u0006\u0003\u0003\r=\u0003H/[8o!\rq\u0011\u0011\u0007\u0003\u0007!\u0005\u0005\"\u0019A\t\t\u0015\u0005U\u0012\u0011EA\u0001\u0002\u0004\t9$A\u0002yIA\u0002bA\u0003\u0001\u00020\u0005e\u0002c\u0001\b\u0002<\u001111$!\tC\u0002EA\u0011\"a\u0010\u007f\u0003\u0003%I!!\u0011\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0003\u0003\u0007\u00022AUA#\u0013\r\t9e\u0015\u0002\u0007\u001f\nTWm\u0019;")
/* loaded from: classes3-dex2jar.jar:scala/util/Left.class */
public final class Left<A, B> extends Either<A, B> implements Product, Serializable {

    /* renamed from: a */
    private final A f1646a;

    public Left(A a) {
        this.f1646a = a;
        Product.Cclass.$init$(this);
    }

    public static <A, B> Left<A, B> apply(A a) {
        return Left$.MODULE$.apply(a);
    }

    public static <A, B> Option<A> unapply(Left<A, B> left) {
        return Left$.MODULE$.unapply(left);
    }

    /* renamed from: a */
    public A m9a() {
        return this.f1646a;
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof Left;
    }

    public <A, B> Left<A, B> copy(A a) {
        return new Left<>(a);
    }

    public <A, B> A copy$default$1() {
        return m9a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x006e, code lost:
        if ((r0 == r0 ? true : r0 == null ? false : r0 instanceof java.lang.Number ? scala.runtime.BoxesRunTime.equalsNumObject((java.lang.Number) r0, r0) : r0 instanceof java.lang.Character ? scala.runtime.BoxesRunTime.equalsCharObject((java.lang.Character) r0, r0) : r0.equals(r0)) != false) goto L21;
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
            if (r0 == r1) goto L71
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof scala.util.Left
            if (r0 == 0) goto L73
            r0 = r4
            scala.util.Left r0 = (scala.util.Left) r0
            r7 = r0
            r0 = r3
            java.lang.Object r0 = r0.m9a()
            r4 = r0
            r0 = r7
            java.lang.Object r0 = r0.m9a()
            r7 = r0
            r0 = r4
            r1 = r7
            if (r0 != r1) goto L2e
            r0 = 1
            r8 = r0
            goto L6a
        L2e:
            r0 = r4
            if (r0 != 0) goto L38
            r0 = 0
            r8 = r0
            goto L6a
        L38:
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Number
            if (r0 == 0) goto L4d
            r0 = r4
            java.lang.Number r0 = (java.lang.Number) r0
            r1 = r7
            boolean r0 = scala.runtime.BoxesRunTime.equalsNumObject(r0, r1)
            r8 = r0
            goto L6a
        L4d:
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Character
            if (r0 == 0) goto L62
            r0 = r4
            java.lang.Character r0 = (java.lang.Character) r0
            r1 = r7
            boolean r0 = scala.runtime.BoxesRunTime.equalsCharObject(r0, r1)
            r8 = r0
            goto L6a
        L62:
            r0 = r4
            r1 = r7
            boolean r0 = r0.equals(r1)
            r8 = r0
        L6a:
            r0 = r5
            r6 = r0
            r0 = r8
            if (r0 == 0) goto L73
        L71:
            r0 = 1
            r6 = r0
        L73:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.util.Left.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ScalaRunTime$.MODULE$._hashCode(this);
    }

    @Override // scala.util.Either
    public boolean isLeft() {
        return true;
    }

    @Override // scala.util.Either
    public boolean isRight() {
        return false;
    }

    @Override // scala.Product
    public int productArity() {
        return 1;
    }

    @Override // scala.Product
    public Object productElement(int i) {
        if (i == 0) {
            return m9a();
        }
        throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
    }

    @Override // scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.Product
    public String productPrefix() {
        return "Left";
    }

    public String toString() {
        return ScalaRunTime$.MODULE$._toString(this);
    }
}
