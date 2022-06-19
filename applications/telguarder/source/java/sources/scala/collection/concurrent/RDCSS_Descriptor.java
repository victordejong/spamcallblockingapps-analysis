package scala.collection.concurrent;

import scala.Option;
import scala.Product;
import scala.Serializable;
import scala.Tuple3;
import scala.collection.Iterator;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\u00055f!B\u0001\u0003\u0001\nA!\u0001\u0005*E\u0007N\u001bv\fR3tGJL\u0007\u000f^8s\u0015\t\u0019A!\u0001\u0006d_:\u001cWO\u001d:f]RT!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b+\rIa\u0004K\n\u0005\u0001)q\u0011\u0003\u0005\u0002\f\u00195\ta!\u0003\u0002\u000e\r\t1\u0011I\\=SK\u001a\u0004\"aC\b\n\u0005A1!a\u0002)s_\u0012,8\r\u001e\t\u0003\u0017II!a\u0005\u0004\u0003\u0019M+'/[1mSj\f'\r\\3\t\u0011U\u0001!Q3A\u0005\u0002]\t1a\u001c7e\u0007\u0001)\u0012\u0001\u0007\t\u00053iar%D\u0001\u0003\u0013\tY\"AA\u0003J\u001d>$W\r\u0005\u0002\u001e=1\u0001A!B\u0010\u0001\u0005\u0004\u0001#!A&\u0012\u0005\u0005\"\u0003CA\u0006#\u0013\t\u0019cAA\u0004O_RD\u0017N\\4\u0011\u0005-)\u0013B\u0001\u0014\u0007\u0005\r\te.\u001f\t\u0003;!\"Q!\u000b\u0001C\u0002\u0001\u0012\u0011A\u0016\u0005\tW\u0001\u0011\t\u0012)A\u00051\u0005!q\u000e\u001c3!\u0011!i\u0003A!f\u0001\n\u0003q\u0013\u0001D3ya\u0016\u001cG/\u001a3nC&tW#A\u0018\u0011\te\u0001DdJ\u0005\u0003c\t\u0011\u0001\"T1j]:{G-\u001a\u0005\tg\u0001\u0011\t\u0012)A\u0005_\u0005iQ\r\u001f9fGR,G-\\1j]\u0002B\u0001\"\u000e\u0001\u0003\u0016\u0004%\taF\u0001\u0003]ZD\u0001b\u000e\u0001\u0003\u0012\u0003\u0006I\u0001G\u0001\u0004]Z\u0004\u0003\"B\u001d\u0001\t\u0003Q\u0014A\u0002\u001fj]&$h\b\u0006\u0003<yur\u0004\u0003B\r\u00019\u001dBQ!\u0006\u001dA\u0002aAQ!\f\u001dA\u0002=BQ!\u000e\u001dA\u0002aAq\u0001\u0011\u0001A\u0002\u0013\u0005\u0011)A\u0005d_6l\u0017\u000e\u001e;fIV\t!\t\u0005\u0002\f\u0007&\u0011AI\u0002\u0002\b\u0005>|G.Z1o\u0011\u001d1\u0005\u00011A\u0005\u0002\u001d\u000bQbY8n[&$H/\u001a3`I\u0015\fHC\u0001%L!\tY\u0011*\u0003\u0002K\r\t!QK\\5u\u0011\u001daU)!AA\u0002\t\u000b1\u0001\u001f\u00132\u0011\u0019q\u0005\u0001)Q\u0005\u0005\u0006Q1m\\7nSR$X\r\u001a\u0011)\u00055\u0003\u0006CA\u0006R\u0013\t\u0011fA\u0001\u0005w_2\fG/\u001b7f\u0011\u001d!\u0006!!A\u0005\u0002U\u000bAaY8qsV\u0019a+W.\u0015\t]cf\f\u0019\t\u00053\u0001A&\f\u0005\u0002\u001e3\u0012)qd\u0015b\u0001AA\u0011Qd\u0017\u0003\u0006SM\u0013\r\u0001\t\u0005\b+M\u0003\n\u00111\u0001^!\u0011I\"\u0004\u0017.\t\u000f5\u001a\u0006\u0013!a\u0001?B!\u0011\u0004\r-[\u0011\u001d)4\u000b%AA\u0002uCqA\u0019\u0001\u0012\u0002\u0013\u00051-\u0001\bd_BLH\u0005Z3gCVdG\u000fJ\u0019\u0016\u0007\u0011|\u0007/F\u0001fU\tAbmK\u0001h!\tAW.D\u0001j\u0015\tQ7.A\u0005v]\u000eDWmY6fI*\u0011ANB\u0001\u000bC:tw\u000e^1uS>t\u0017B\u00018j\u0005E)hn\u00195fG.,GMV1sS\u0006t7-\u001a\u0003\u0006?\u0005\u0014\r\u0001\t\u0003\u0006S\u0005\u0014\r\u0001\t\u0005\be\u0002\t\n\u0011\"\u0001t\u00039\u0019w\u000e]=%I\u00164\u0017-\u001e7uII*2\u0001\u001e<x+\u0005)(FA\u0018g\t\u0015y\u0012O1\u0001!\t\u0015I\u0013O1\u0001!\u0011\u001dI\b!%A\u0005\u0002i\fabY8qs\u0012\"WMZ1vYR$3'F\u0002ewr$Qa\b=C\u0002\u0001\"Q!\u000b=C\u0002\u0001BqA \u0001\u0002\u0002\u0013\u0005s0A\u0007qe>$Wo\u0019;Qe\u00164\u0017\u000e_\u000b\u0003\u0003\u0003\u0001B!a\u0001\u0002\u000e5\u0011\u0011Q\u0001\u0006\u0005\u0003\u000f\tI!\u0001\u0003mC:<'BAA\u0006\u0003\u0011Q\u0017M^1\n\t\u0005=\u0011Q\u0001\u0002\u0007'R\u0014\u0018N\\4\t\u0013\u0005M\u0001!!A\u0005\u0002\u0005U\u0011\u0001\u00049s_\u0012,8\r^!sSRLXCAA\f!\rY\u0011\u0011D\u0005\u0004\u000371!aA%oi\"I\u0011q\u0004\u0001\u0002\u0002\u0013\u0005\u0011\u0011E\u0001\u000faJ|G-^2u\u000b2,W.\u001a8u)\r!\u00131\u0005\u0005\n\u0019\u0006u\u0011\u0011!a\u0001\u0003/A\u0011\"a\n\u0001\u0003\u0003%\t%!\u000b\u0002\u001fA\u0014x\u000eZ;di&#XM]1u_J,\"!a\u000b\u0011\u000b\u00055\u0012q\u0006\u0013\u000e\u0003\u0011I1!!\r\u0005\u0005!IE/\u001a:bi>\u0014\b\"CA\u001b\u0001\u0005\u0005I\u0011AA\u001c\u0003!\u0019\u0017M\\#rk\u0006dGc\u0001\"\u0002:!AA*a\r\u0002\u0002\u0003\u0007A\u0005C\u0005\u0002>\u0001\t\t\u0011\"\u0011\u0002@\u0005A\u0001.Y:i\u0007>$W\r\u0006\u0002\u0002\u0018!I\u00111\t\u0001\u0002\u0002\u0013\u0005\u0013QI\u0001\ti>\u001cFO]5oOR\u0011\u0011\u0011\u0001\u0005\n\u0003\u0013\u0002\u0011\u0011!C!\u0003\u0017\na!Z9vC2\u001cHc\u0001\"\u0002N!AA*a\u0012\u0002\u0002\u0003\u0007Ae\u0002\u0006\u0002R\t\t\t\u0011#\u0001\u0003\u0003'\n\u0001C\u0015#D'N{F)Z:de&\u0004Ho\u001c:\u0011\u0007e\t)FB\u0005\u0002\u0005\u0005\u0005\t\u0012\u0001\u0002\u0002XM!\u0011Q\u000b\u0006\u0012\u0011\u001dI\u0014Q\u000bC\u0001\u00037\"\"!a\u0015\t\u0015\u0005\r\u0013QKA\u0001\n\u000b\n)\u0005\u0003\u0006\u0002b\u0005U\u0013\u0011!CA\u0003G\nQ!\u00199qYf,b!!\u001a\u0002l\u0005=D\u0003CA4\u0003c\n)(!\u001f\u0011\re\u0001\u0011\u0011NA7!\ri\u00121\u000e\u0003\u0007?\u0005}#\u0019\u0001\u0011\u0011\u0007u\ty\u0007\u0002\u0004*\u0003?\u0012\r\u0001\t\u0005\b+\u0005}\u0003\u0019AA:!\u0019I\"$!\u001b\u0002n!9Q&a\u0018A\u0002\u0005]\u0004CB\r1\u0003S\ni\u0007C\u00046\u0003?\u0002\r!a\u001d\t\u0015\u0005u\u0014QKA\u0001\n\u0003\u000by(A\u0004v]\u0006\u0004\b\u000f\\=\u0016\r\u0005\u0005\u00151SAL)\u0011\t\u0019)a'\u0011\u000b-\t))!#\n\u0007\u0005\u001deA\u0001\u0004PaRLwN\u001c\t\n\u0017\u0005-\u0015qRAM\u0003\u001fK1!!$\u0007\u0005\u0019!V\u000f\u001d7fgA1\u0011DGAI\u0003+\u00032!HAJ\t\u0019y\u00121\u0010b\u0001AA\u0019Q$a&\u0005\r%\nYH1\u0001!!\u0019I\u0002'!%\u0002\u0016\"Q\u0011QTA>\u0003\u0003\u0005\r!a(\u0002\u0007a$\u0003\u0007\u0005\u0004\u001a\u0001\u0005E\u0015Q\u0013\u0005\u000b\u0003G\u000b)&!A\u0005\n\u0005\u0015\u0016a\u0003:fC\u0012\u0014Vm]8mm\u0016$\"!a*\u0011\t\u0005\r\u0011\u0011V\u0005\u0005\u0003W\u000b)A\u0001\u0004PE*,7\r\u001e")
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/RDCSS_Descriptor.class */
public class RDCSS_Descriptor<K, V> implements Product, Serializable {
    private volatile boolean committed = false;
    private final MainNode<K, V> expectedmain;

    /* renamed from: nv */
    private final INode<K, V> f1527nv;
    private final INode<K, V> old;

    public RDCSS_Descriptor(INode<K, V> iNode, MainNode<K, V> mainNode, INode<K, V> iNode2) {
        this.old = iNode;
        this.expectedmain = mainNode;
        this.f1527nv = iNode2;
        Product.Cclass.$init$(this);
    }

    public static <K, V> RDCSS_Descriptor<K, V> apply(INode<K, V> iNode, MainNode<K, V> mainNode, INode<K, V> iNode2) {
        return RDCSS_Descriptor$.MODULE$.apply(iNode, mainNode, iNode2);
    }

    public static <K, V> Option<Tuple3<INode<K, V>, MainNode<K, V>, INode<K, V>>> unapply(RDCSS_Descriptor<K, V> rDCSS_Descriptor) {
        return RDCSS_Descriptor$.MODULE$.unapply(rDCSS_Descriptor);
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof RDCSS_Descriptor;
    }

    public boolean committed() {
        return this.committed;
    }

    public void committed_$eq(boolean z) {
        this.committed = z;
    }

    public <K, V> RDCSS_Descriptor<K, V> copy(INode<K, V> iNode, MainNode<K, V> mainNode, INode<K, V> iNode2) {
        return new RDCSS_Descriptor<>(iNode, mainNode, iNode2);
    }

    public <K, V> INode<K, V> copy$default$1() {
        return old();
    }

    public <K, V> MainNode<K, V> copy$default$2() {
        return expectedmain();
    }

    public <K, V> INode<K, V> copy$default$3() {
        return m181nv();
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0093, code lost:
        if (r9 == false) goto L31;
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
            if (r0 == r1) goto L96
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof scala.collection.concurrent.RDCSS_Descriptor
            if (r0 == 0) goto L98
            r0 = r4
            scala.collection.concurrent.RDCSS_Descriptor r0 = (scala.collection.concurrent.RDCSS_Descriptor) r0
            r4 = r0
            r0 = r3
            scala.collection.concurrent.INode r0 = r0.old()
            r7 = r0
            r0 = r4
            scala.collection.concurrent.INode r0 = r0.old()
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L2e
            r0 = r8
            if (r0 == 0) goto L38
            goto L8c
        L2e:
            r0 = r7
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L8c
        L38:
            r0 = r3
            scala.collection.concurrent.MainNode r0 = r0.expectedmain()
            r8 = r0
            r0 = r4
            scala.collection.concurrent.MainNode r0 = r0.expectedmain()
            r7 = r0
            r0 = r8
            if (r0 != 0) goto L51
            r0 = r7
            if (r0 == 0) goto L5b
            goto L8c
        L51:
            r0 = r8
            r1 = r7
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L8c
        L5b:
            r0 = r3
            scala.collection.concurrent.INode r0 = r0.m181nv()
            r8 = r0
            r0 = r4
            scala.collection.concurrent.INode r0 = r0.m181nv()
            r7 = r0
            r0 = r8
            if (r0 != 0) goto L74
            r0 = r7
            if (r0 == 0) goto L7e
            goto L8c
        L74:
            r0 = r8
            r1 = r7
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L8c
        L7e:
            r0 = r4
            r1 = r3
            boolean r0 = r0.canEqual(r1)
            if (r0 == 0) goto L8c
            r0 = 1
            r9 = r0
            goto L8f
        L8c:
            r0 = 0
            r9 = r0
        L8f:
            r0 = r5
            r6 = r0
            r0 = r9
            if (r0 == 0) goto L98
        L96:
            r0 = 1
            r6 = r0
        L98:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.concurrent.RDCSS_Descriptor.equals(java.lang.Object):boolean");
    }

    public MainNode<K, V> expectedmain() {
        return this.expectedmain;
    }

    public int hashCode() {
        return ScalaRunTime$.MODULE$._hashCode(this);
    }

    /* renamed from: nv */
    public INode<K, V> m181nv() {
        return this.f1527nv;
    }

    public INode<K, V> old() {
        return this.old;
    }

    @Override // scala.Product
    public int productArity() {
        return 3;
    }

    @Override // scala.Product
    public Object productElement(int i) {
        INode<K, V> iNode;
        if (i == 0) {
            iNode = old();
        } else if (i == 1) {
            iNode = expectedmain();
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        } else {
            iNode = m181nv();
        }
        return iNode;
    }

    @Override // scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.Product
    public String productPrefix() {
        return "RDCSS_Descriptor";
    }

    public String toString() {
        return ScalaRunTime$.MODULE$._toString(this);
    }
}
