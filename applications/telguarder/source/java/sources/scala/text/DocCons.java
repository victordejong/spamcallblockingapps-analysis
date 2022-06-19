package scala.text;

import scala.Function1;
import scala.Option;
import scala.Product;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\u00055b\u0001B\u0001\u0003\u0001\u001e\u0011q\u0001R8d\u0007>t7O\u0003\u0002\u0004\t\u0005!A/\u001a=u\u0015\u0005)\u0011!B:dC2\f7\u0001A\n\u0005\u0001!a\u0001\u0003\u0005\u0002\n\u00155\t!!\u0003\u0002\f\u0005\tAAi\\2v[\u0016tG\u000f\u0005\u0002\u000e\u001d5\tA!\u0003\u0002\u0010\t\t9\u0001K]8ek\u000e$\bCA\u0007\u0012\u0013\t\u0011BA\u0001\u0007TKJL\u0017\r\\5{C\ndW\r\u0003\u0005\u0015\u0001\tU\r\u0011\"\u0001\u0016\u0003\tAG-F\u0001\t\u0011!9\u0002A!E!\u0002\u0013A\u0011a\u00015eA!A\u0011\u0004\u0001BK\u0002\u0013\u0005Q#\u0001\u0002uY\"A1\u0004\u0001B\tB\u0003%\u0001\"A\u0002uY\u0002BQ!\b\u0001\u0005\u0002y\ta\u0001P5oSRtDcA\u0010!CA\u0011\u0011\u0002\u0001\u0005\u0006)q\u0001\r\u0001\u0003\u0005\u00063q\u0001\r\u0001\u0003\u0005\bG\u0001\t\t\u0011\"\u0001%\u0003\u0011\u0019w\u000e]=\u0015\u0007})c\u0005C\u0004\u0015EA\u0005\t\u0019\u0001\u0005\t\u000fe\u0011\u0003\u0013!a\u0001\u0011!9\u0001\u0006AI\u0001\n\u0003I\u0013AD2paf$C-\u001a4bk2$H%M\u000b\u0002U)\u0012\u0001bK\u0016\u0002YA\u0011QFM\u0007\u0002])\u0011q\u0006M\u0001\nk:\u001c\u0007.Z2lK\u0012T!!\r\u0003\u0002\u0015\u0005tgn\u001c;bi&|g.\u0003\u00024]\t\tRO\\2iK\u000e\\W\r\u001a,be&\fgnY3\t\u000fU\u0002\u0011\u0013!C\u0001S\u0005q1m\u001c9zI\u0011,g-Y;mi\u0012\u0012\u0004bB\u001c\u0001\u0003\u0003%\t\u0005O\u0001\u000eaJ|G-^2u!J,g-\u001b=\u0016\u0003e\u0002\"AO \u000e\u0003mR!\u0001P\u001f\u0002\t1\fgn\u001a\u0006\u0002}\u0005!!.\u0019<b\u0013\t\u00015H\u0001\u0004TiJLgn\u001a\u0005\b\u0005\u0002\t\t\u0011\"\u0001D\u00031\u0001(o\u001c3vGR\f%/\u001b;z+\u0005!\u0005CA\u0007F\u0013\t1EAA\u0002J]RDq\u0001\u0013\u0001\u0002\u0002\u0013\u0005\u0011*\u0001\bqe>$Wo\u0019;FY\u0016lWM\u001c;\u0015\u0005)k\u0005CA\u0007L\u0013\taEAA\u0002B]fDqAT$\u0002\u0002\u0003\u0007A)A\u0002yIEBq\u0001\u0015\u0001\u0002\u0002\u0013\u0005\u0013+A\bqe>$Wo\u0019;Ji\u0016\u0014\u0018\r^8s+\u0005\u0011\u0006cA*W\u00156\tAK\u0003\u0002V\t\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\n\u0005]#&\u0001C%uKJ\fGo\u001c:\t\u000fe\u0003\u0011\u0011!C\u00015\u0006A1-\u00198FcV\fG\u000e\u0006\u0002\\=B\u0011Q\u0002X\u0005\u0003;\u0012\u0011qAQ8pY\u0016\fg\u000eC\u0004O1\u0006\u0005\t\u0019\u0001&\t\u000f\u0001\u0004\u0011\u0011!C!C\u0006A\u0001.Y:i\u0007>$W\rF\u0001E\u0011\u001d\u0019\u0007!!A\u0005B\u0011\f\u0001\u0002^8TiJLgn\u001a\u000b\u0002s!9a\rAA\u0001\n\u0003:\u0017AB3rk\u0006d7\u000f\u0006\u0002\\Q\"9a*ZA\u0001\u0002\u0004Q\u0005\u0006\u0002\u0001k[>\u0004\"!D6\n\u00051$!A\u00033faJ,7-\u0019;fI\u0006\na.A\u000eUQ&\u001c\be\u00197bgN\u0004s/\u001b7mA\t,\u0007E]3n_Z,GML\u0011\u0002a\u00061!GL\u00192]A:qA\u001d\u0002\u0002\u0002#\u00051/A\u0004E_\u000e\u001cuN\\:\u0011\u0005%!haB\u0001\u0003\u0003\u0003E\t!^\n\u0004iZ\u0004\u0002#B<{\u0011!yR\"\u0001=\u000b\u0005e$\u0011a\u0002:v]RLW.Z\u0005\u0003wb\u0014\u0011#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c83\u0011\u0015iB\u000f\"\u0001~)\u0005\u0019\bbB2u\u0003\u0003%)\u0005\u001a\u0005\n\u0003\u0003!\u0018\u0011!CA\u0003\u0007\tQ!\u00199qYf$RaHA\u0003\u0003\u000fAQ\u0001F@A\u0002!AQ!G@A\u0002!A\u0011\"a\u0003u\u0003\u0003%\t)!\u0004\u0002\u000fUt\u0017\r\u001d9msR!\u0011qBA\u000e!\u0015i\u0011\u0011CA\u000b\u0013\r\t\u0019\u0002\u0002\u0002\u0007\u001fB$\u0018n\u001c8\u0011\u000b5\t9\u0002\u0003\u0005\n\u0007\u0005eAA\u0001\u0004UkBdWM\r\u0005\n\u0003;\tI!!AA\u0002}\t1\u0001\u001f\u00131\u0011%\t\t\u0003^A\u0001\n\u0013\t\u0019#A\u0006sK\u0006$'+Z:pYZ,GCAA\u0013!\rQ\u0014qE\u0005\u0004\u0003SY$AB(cU\u0016\u001cG\u000f\u000b\u0003uU6|\u0007")
/* loaded from: classes3-dex2jar.jar:scala/text/DocCons.class */
public class DocCons extends Document implements Product, Serializable {

    /* renamed from: hd */
    private final Document f1641hd;

    /* renamed from: tl */
    private final Document f1642tl;

    public DocCons(Document document, Document document2) {
        this.f1641hd = document;
        this.f1642tl = document2;
        Product.Cclass.$init$(this);
    }

    public static DocCons apply(Document document, Document document2) {
        return DocCons$.MODULE$.apply(document, document2);
    }

    public static Function1<Document, Function1<Document, DocCons>> curried() {
        return DocCons$.MODULE$.curried();
    }

    public static Function1<Tuple2<Document, Document>, DocCons> tupled() {
        return DocCons$.MODULE$.tupled();
    }

    public static Option<Tuple2<Document, Document>> unapply(DocCons docCons) {
        return DocCons$.MODULE$.unapply(docCons);
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof DocCons;
    }

    public DocCons copy(Document document, Document document2) {
        return new DocCons(document, document2);
    }

    public Document copy$default$1() {
        return m14hd();
    }

    public Document copy$default$2() {
        return m13tl();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
        if (r9 == false) goto L25;
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
            if (r0 == r1) goto L73
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof scala.text.DocCons
            if (r0 == 0) goto L75
            r0 = r4
            scala.text.DocCons r0 = (scala.text.DocCons) r0
            r4 = r0
            r0 = r3
            scala.text.Document r0 = r0.m14hd()
            r7 = r0
            r0 = r4
            scala.text.Document r0 = r0.m14hd()
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L2e
            r0 = r8
            if (r0 == 0) goto L38
            goto L69
        L2e:
            r0 = r7
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L69
        L38:
            r0 = r3
            scala.text.Document r0 = r0.m13tl()
            r7 = r0
            r0 = r4
            scala.text.Document r0 = r0.m13tl()
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L51
            r0 = r8
            if (r0 == 0) goto L5b
            goto L69
        L51:
            r0 = r7
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L69
        L5b:
            r0 = r4
            r1 = r3
            boolean r0 = r0.canEqual(r1)
            if (r0 == 0) goto L69
            r0 = 1
            r9 = r0
            goto L6c
        L69:
            r0 = 0
            r9 = r0
        L6c:
            r0 = r5
            r6 = r0
            r0 = r9
            if (r0 == 0) goto L75
        L73:
            r0 = 1
            r6 = r0
        L75:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.text.DocCons.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ScalaRunTime$.MODULE$._hashCode(this);
    }

    /* renamed from: hd */
    public Document m14hd() {
        return this.f1641hd;
    }

    @Override // scala.Product
    public int productArity() {
        return 2;
    }

    @Override // scala.Product
    public Object productElement(int i) {
        Document document;
        if (i == 0) {
            document = m14hd();
        } else if (i != 1) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        } else {
            document = m13tl();
        }
        return document;
    }

    @Override // scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.Product
    public String productPrefix() {
        return "DocCons";
    }

    /* renamed from: tl */
    public Document m13tl() {
        return this.f1642tl;
    }

    public String toString() {
        return ScalaRunTime$.MODULE$._toString(this);
    }
}
