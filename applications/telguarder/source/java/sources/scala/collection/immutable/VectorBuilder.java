package scala.collection.immutable;

import scala.Function1;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.collection.immutable.VectorPointer;
import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\t4A!\u0001\u0002\u0003\u0013\tia+Z2u_J\u0014U/\u001b7eKJT!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0018'\u0011\u00011b\u0004\u0013\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\r\u0005\u0003\u0011'U\u0001S\"A\t\u000b\u0005I!\u0011aB7vi\u0006\u0014G.Z\u0005\u0003)E\u0011qAQ;jY\u0012,'\u000f\u0005\u0002\u0017/1\u0001A!\u0002\r\u0001\u0005\u0004I\"!A!\u0012\u0005ii\u0002C\u0001\u0007\u001c\u0013\tabAA\u0004O_RD\u0017N\\4\u0011\u00051q\u0012BA\u0010\u0007\u0005\r\te.\u001f\t\u0004C\t*R\"\u0001\u0002\n\u0005\r\u0012!A\u0002,fGR|'\u000fE\u0002\"K\u001dJ!A\n\u0002\u0003\u001bY+7\r^8s!>Lg\u000e^3sU\t)\u0002fK\u0001*!\tQs&D\u0001,\u0015\taS&A\u0005v]\u000eDWmY6fI*\u0011aFB\u0001\u000bC:tw\u000e^1uS>t\u0017B\u0001\u0019,\u0005E)hn\u00195fG.,GMV1sS\u0006t7-\u001a\u0005\u0006e\u0001!\taM\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003Q\u00022!\t\u0001\u0016\u0011\u001d1\u0004\u00011A\u0005\n]\n!B\u00197pG.Le\u000eZ3y+\u0005A\u0004C\u0001\u0007:\u0013\tQdAA\u0002J]RDq\u0001\u0010\u0001A\u0002\u0013%Q(\u0001\bcY>\u001c7.\u00138eKb|F%Z9\u0015\u0005y\n\u0005C\u0001\u0007@\u0013\t\u0001eA\u0001\u0003V]&$\bb\u0002\"<\u0003\u0003\u0005\r\u0001O\u0001\u0004q\u0012\n\u0004B\u0002#\u0001A\u0003&\u0001(A\u0006cY>\u001c7.\u00138eKb\u0004\u0003b\u0002$\u0001\u0001\u0004%IaN\u0001\u0003Y>Dq\u0001\u0013\u0001A\u0002\u0013%\u0011*\u0001\u0004m_~#S-\u001d\u000b\u0003})CqAQ$\u0002\u0002\u0003\u0007\u0001\b\u0003\u0004M\u0001\u0001\u0006K\u0001O\u0001\u0004Y>\u0004\u0003\"\u0002(\u0001\t\u0003y\u0015\u0001\u0003\u0013qYV\u001cH%Z9\u0015\u0005A\u000bV\"\u0001\u0001\t\u000bIk\u0005\u0019A\u000b\u0002\t\u0015dW-\u001c\u0005\u0006)\u0002!\t%V\u0001\u000eIAdWo\u001d\u0013qYV\u001cH%Z9\u0015\u0005A3\u0006\"B,T\u0001\u0004A\u0016A\u0001=t!\rI&,F\u0007\u0002\t%\u00111\f\u0002\u0002\u0010)J\fg/\u001a:tC\ndWm\u00148dK\")Q\f\u0001C\u0001=\u00061!/Z:vYR$\u0012\u0001\t\u0005\u0006A\u0002!\t!Y\u0001\u0006G2,\u0017M\u001d\u000b\u0002}\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/VectorBuilder.class */
public final class VectorBuilder<A> implements Builder<A, Vector<A>>, VectorPointer<A> {
    private int depth;
    private Object[] display0;
    private Object[] display1;
    private Object[] display2;
    private Object[] display3;
    private Object[] display4;
    private Object[] display5;
    private int blockIndex = 0;

    /* renamed from: lo */
    private int f1560lo = 0;

    public VectorBuilder() {
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
        VectorPointer.Cclass.$init$(this);
        display0_$eq(new Object[32]);
        depth_$eq(1);
    }

    private int blockIndex() {
        return this.blockIndex;
    }

    private void blockIndex_$eq(int i) {
        this.blockIndex = i;
    }

    /* renamed from: lo */
    private int m138lo() {
        return this.f1560lo;
    }

    private void lo_$eq(int i) {
        this.f1560lo = i;
    }

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$eq(A a, A a2, Seq<A> seq) {
        Growable<A> $plus$plus$eq;
        $plus$plus$eq = $plus$eq((VectorBuilder<A>) a).$plus$eq(a2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
    public VectorBuilder<A> $plus$eq(A a) {
        if (m138lo() >= display0().length) {
            int blockIndex = blockIndex() + 32;
            gotoNextBlockStartWritable(blockIndex, blockIndex() ^ blockIndex);
            blockIndex_$eq(blockIndex);
            lo_$eq(0);
        }
        display0()[m138lo()] = a;
        lo_$eq(m138lo() + 1);
        return this;
    }

    @Override // scala.collection.generic.Growable
    public VectorBuilder<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
        return (VectorBuilder) Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        display0_$eq(new Object[32]);
        depth_$eq(1);
        blockIndex_$eq(0);
        lo_$eq(0);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final Object[] copyOf(Object[] objArr) {
        return VectorPointer.Cclass.copyOf(this, objArr);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final Object[] copyRange(Object[] objArr, int i, int i2) {
        return VectorPointer.Cclass.copyRange(this, objArr, i, i2);
    }

    @Override // scala.collection.immutable.VectorPointer
    public void debug() {
        VectorPointer.Cclass.debug(this);
    }

    @Override // scala.collection.immutable.VectorPointer
    public int depth() {
        return this.depth;
    }

    @Override // scala.collection.immutable.VectorPointer
    public void depth_$eq(int i) {
        this.depth = i;
    }

    @Override // scala.collection.immutable.VectorPointer
    public Object[] display0() {
        return this.display0;
    }

    @Override // scala.collection.immutable.VectorPointer
    public void display0_$eq(Object[] objArr) {
        this.display0 = objArr;
    }

    @Override // scala.collection.immutable.VectorPointer
    public Object[] display1() {
        return this.display1;
    }

    @Override // scala.collection.immutable.VectorPointer
    public void display1_$eq(Object[] objArr) {
        this.display1 = objArr;
    }

    @Override // scala.collection.immutable.VectorPointer
    public Object[] display2() {
        return this.display2;
    }

    @Override // scala.collection.immutable.VectorPointer
    public void display2_$eq(Object[] objArr) {
        this.display2 = objArr;
    }

    @Override // scala.collection.immutable.VectorPointer
    public Object[] display3() {
        return this.display3;
    }

    @Override // scala.collection.immutable.VectorPointer
    public void display3_$eq(Object[] objArr) {
        this.display3 = objArr;
    }

    @Override // scala.collection.immutable.VectorPointer
    public Object[] display4() {
        return this.display4;
    }

    @Override // scala.collection.immutable.VectorPointer
    public void display4_$eq(Object[] objArr) {
        this.display4 = objArr;
    }

    @Override // scala.collection.immutable.VectorPointer
    public Object[] display5() {
        return this.display5;
    }

    @Override // scala.collection.immutable.VectorPointer
    public void display5_$eq(Object[] objArr) {
        this.display5 = objArr;
    }

    @Override // scala.collection.immutable.VectorPointer
    public final A getElem(int i, int i2) {
        return (A) VectorPointer.Cclass.getElem(this, i, i2);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void gotoFreshPosWritable0(int i, int i2, int i3) {
        VectorPointer.Cclass.gotoFreshPosWritable0(this, i, i2, i3);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void gotoFreshPosWritable1(int i, int i2, int i3) {
        VectorPointer.Cclass.gotoFreshPosWritable1(this, i, i2, i3);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void gotoNextBlockStart(int i, int i2) {
        VectorPointer.Cclass.gotoNextBlockStart(this, i, i2);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void gotoNextBlockStartWritable(int i, int i2) {
        VectorPointer.Cclass.gotoNextBlockStartWritable(this, i, i2);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void gotoPos(int i, int i2) {
        VectorPointer.Cclass.gotoPos(this, i, i2);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void gotoPosWritable0(int i, int i2) {
        VectorPointer.Cclass.gotoPosWritable0(this, i, i2);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void gotoPosWritable1(int i, int i2, int i3) {
        VectorPointer.Cclass.gotoPosWritable1(this, i, i2, i3);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final <U> void initFrom(VectorPointer<U> vectorPointer) {
        VectorPointer.Cclass.initFrom(this, vectorPointer);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final <U> void initFrom(VectorPointer<U> vectorPointer, int i) {
        VectorPointer.Cclass.initFrom(this, vectorPointer, i);
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<A, NewTo> mapResult(Function1<Vector<A>, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final Object[] nullSlotAndCopy(Object[] objArr, int i) {
        return VectorPointer.Cclass.nullSlotAndCopy(this, objArr, i);
    }

    @Override // scala.collection.mutable.Builder
    public Vector<A> result() {
        int blockIndex = blockIndex() + m138lo();
        if (blockIndex == 0) {
            return Vector$.MODULE$.empty();
        }
        Vector<A> vector = new Vector<>(0, blockIndex, 0);
        vector.initFrom(this);
        if (depth() > 1) {
            vector.gotoPos(0, blockIndex - 1);
        }
        return vector;
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(int i) {
        Builder.Cclass.sizeHint(this, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHint(this, traversableLike);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike, int i) {
        Builder.Cclass.sizeHint(this, traversableLike, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHintBounded(int i, TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHintBounded(this, i, traversableLike);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void stabilize(int i) {
        VectorPointer.Cclass.stabilize(this, i);
    }
}
