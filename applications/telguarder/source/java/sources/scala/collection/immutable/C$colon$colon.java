package scala.collection.immutable;

import scala.Serializable;
import scala.collection.Iterator;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\u0005\rd\u0001B\u0001\u0003\u0005&\u0011A\u0002J2pY>tGeY8m_:T!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0012'\u0011\u00011b\u0007\u0010\u0011\u00071iq\"D\u0001\u0003\u0013\tq!A\u0001\u0003MSN$\bC\u0001\t\u0012\u0019\u0001!QA\u0005\u0001C\u0002M\u0011\u0011AQ\t\u0003)a\u0001\"!\u0006\f\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z!\t)B$\u0003\u0002\u001e\r\t9\u0001K]8ek\u000e$\bCA\u000b \u0013\t\u0001cA\u0001\u0007TKJL\u0017\r\\5{C\ndW\r\u0003\u0005#\u0001\tU\r\u0011\"\u0011$\u0003\u0011AW-\u00193\u0016\u0003=A\u0001\"\n\u0001\u0003\u0012\u0003\u0006IaD\u0001\u0006Q\u0016\fG\r\t\u0005\nO\u0001\u0011\t\u0019!C\u0001\r!\n!\u0001\u001e7\u0016\u0003-A\u0011B\u000b\u0001\u0003\u0002\u0004%\tAB\u0016\u0002\rQdw\fJ3r)\tas\u0006\u0005\u0002\u0016[%\u0011aF\u0002\u0002\u0005+:LG\u000fC\u00041S\u0005\u0005\t\u0019A\u0006\u0002\u0007a$\u0013\u0007\u0003\u00053\u0001\tE\t\u0015)\u0003\f\u0003\r!H\u000e\t\u0005\u0006i\u0001!\t!N\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0007Y:\u0004\bE\u0002\r\u0001=AQAI\u001aA\u0002=AQaJ\u001aA\u0002-AQA\u000f\u0001\u0005B!\nA\u0001^1jY\")A\b\u0001C!{\u00059\u0011n]#naRLX#\u0001 \u0011\u0005Uy\u0014B\u0001!\u0007\u0005\u001d\u0011un\u001c7fC:DqA\u0011\u0001\u0002\u0002\u0013\u00051)\u0001\u0003d_BLXC\u0001#H)\r)\u0005*\u0013\t\u0004\u0019\u00011\u0005C\u0001\tH\t\u0015\u0011\u0012I1\u0001\u0014\u0011\u001d\u0011\u0013\t%AA\u0002\u0019CqaJ!\u0011\u0002\u0003\u0007!\nE\u0002\r\u001b\u0019Cq\u0001\u0014\u0001\u0012\u0002\u0013\u0005Q*\u0001\bd_BLH\u0005Z3gCVdG\u000fJ\u0019\u0016\u00059KV#A(+\u0005=\u00016&A)\u0011\u0005I;V\"A*\u000b\u0005Q+\u0016!C;oG\",7m[3e\u0015\t1f!\u0001\u0006b]:|G/\u0019;j_:L!\u0001W*\u0003#Ut7\r[3dW\u0016$g+\u0019:jC:\u001cW\rB\u0003\u0013\u0017\n\u00071\u0003C\u0004\\\u0001E\u0005I\u0011\u0001/\u0002\u001d\r|\u0007/\u001f\u0013eK\u001a\fW\u000f\u001c;%eU\u0011QlX\u000b\u0002=*\u00121\u0002\u0015\u0003\u0006%i\u0013\ra\u0005\u0005\bC\u0002I\t\u0011\"\u0001)\u0003\u0011!H\u000eJ\u0019\t\u000f\r\u0004\u0011\u0011!C!I\u0006i\u0001O]8ek\u000e$\bK]3gSb,\u0012!\u001a\t\u0003M.l\u0011a\u001a\u0006\u0003Q&\fA\u0001\\1oO*\t!.\u0001\u0003kCZ\f\u0017B\u00017h\u0005\u0019\u0019FO]5oO\"9a\u000eAA\u0001\n\u0003y\u0017\u0001\u00049s_\u0012,8\r^!sSRLX#\u00019\u0011\u0005U\t\u0018B\u0001:\u0007\u0005\rIe\u000e\u001e\u0005\bi\u0002\t\t\u0011\"\u0001v\u00039\u0001(o\u001c3vGR,E.Z7f]R$\"\u0001\u0007<\t\u000fA\u001a\u0018\u0011!a\u0001a\"9\u0001\u0010AA\u0001\n\u0003J\u0018a\u00049s_\u0012,8\r^%uKJ\fGo\u001c:\u0016\u0003i\u00042a\u001f?\u0019\u001b\u0005!\u0011BA?\u0005\u0005!IE/\u001a:bi>\u0014\bF\u0002\u0001��\u0003\u000b\t9\u0001E\u0002\u0016\u0003\u0003I1!a\u0001\u0007\u0005A\u0019VM]5bYZ+'o]5p]VKE)A\u0003wC2,XM\b\u0005\b'\u0005\u0016].LR\u001c\u0010%\tYAAA\u0001\u0012\u0003\ti!\u0001\u0007%G>dwN\u001c\u0013d_2|g\u000eE\u0002\r\u0003\u001f1\u0001\"\u0001\u0002\u0002\u0002#\u0005\u0011\u0011C\n\u0006\u0003\u001f\t\u0019B\b\t\u0004+\u0005U\u0011bAA\f\r\t1\u0011I\\=SK\u001aDq\u0001NA\b\t\u0003\tY\u0002\u0006\u0002\u0002\u000e!Q\u0011qDA\b\u0003\u0003%)%!\t\u0002\u0011Q|7\u000b\u001e:j]\u001e$\u0012!\u001a\u0005\u000b\u0003K\ty!!A\u0005\u0002\u0006\u001d\u0012!B1qa2LX\u0003BA\u0015\u0003_!b!a\u000b\u00022\u0005M\u0002\u0003\u0002\u0007\u0001\u0003[\u00012\u0001EA\u0018\t\u0019\u0011\u00121\u0005b\u0001'!9!%a\tA\u0002\u00055\u0002bB\u0014\u0002$\u0001\u0007\u0011Q\u0007\t\u0005\u00195\ti\u0003\u0003\u0006\u0002:\u0005=\u0011\u0011!CA\u0003w\tq!\u001e8baBd\u00170\u0006\u0003\u0002>\u00055C\u0003BA \u0003#\u0002R!FA!\u0003\u000bJ1!a\u0011\u0007\u0005\u0019y\u0005\u000f^5p]B9Q#a\u0012\u0002L\u0005=\u0013bAA%\r\t1A+\u001e9mKJ\u00022\u0001EA'\t\u0019\u0011\u0012q\u0007b\u0001'A!A\"DA&\u0011)\t\u0019&a\u000e\u0002\u0002\u0003\u0007\u0011QK\u0001\u0004q\u0012\u0002\u0004\u0003\u0002\u0007\u0001\u0003\u0017B!\"!\u0017\u0002\u0010\u0005\u0005I\u0011BA.\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\u0005u\u0003c\u00014\u0002`%\u0019\u0011\u0011M4\u0003\r=\u0013'.Z2u\u0001")
/* renamed from: scala.collection.immutable.$colon$colon */
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/$colon$colon.class */
public final class C$colon$colon<B> extends List<B> implements Serializable {
    public static final long serialVersionUID = 509929039250432923L;
    private final B head;

    /* renamed from: tl */
    private List<B> f1544tl;

    public C$colon$colon(B b, List<B> list) {
        this.head = b;
        this.f1544tl = list;
    }

    public <B> C$colon$colon<B> copy(B b, List<B> list) {
        return new C$colon$colon<>(b, list);
    }

    public <B> B copy$default$1() {
        return head();
    }

    public <B> List<B> copy$default$2() {
        return m160tl();
    }

    @Override // scala.collection.immutable.List, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public B head() {
        return this.head;
    }

    @Override // scala.collection.immutable.List, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return false;
    }

    @Override // scala.Product
    public int productArity() {
        return 2;
    }

    @Override // scala.Product
    public Object productElement(int i) {
        List<B> list;
        if (i == 0) {
            list = head();
        } else if (i != 1) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        } else {
            list = tl$1();
        }
        return list;
    }

    @Override // scala.collection.immutable.List, scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.collection.immutable.List, scala.Product
    public String productPrefix() {
        return "::";
    }

    @Override // scala.collection.immutable.List, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public List<B> tail() {
        return m160tl();
    }

    /* renamed from: tl */
    public List<B> m160tl() {
        return this.f1544tl;
    }

    public List<B> tl$1() {
        return this.f1544tl;
    }

    public void tl_$eq(List<B> list) {
        this.f1544tl = list;
    }
}
