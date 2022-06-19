package scala.collection.immutable;

import java.util.NoSuchElementException;
import scala.Predef$;
import scala.collection.AbstractIterator;
import scala.collection.immutable.VectorPointer;
import scala.math.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001=4A!\u0001\u0002\u0001\u0013\tqa+Z2u_JLE/\u001a:bi>\u0014(BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b#M!\u0001aC\u000e\u001f!\raQbD\u0007\u0002\t%\u0011a\u0002\u0002\u0002\u0011\u0003\n\u001cHO]1di&#XM]1u_J\u0004\"\u0001E\t\r\u0001\u00111!\u0003\u0001CC\u0002M\u0011\u0011!Q\t\u0003)a\u0001\"!\u0006\f\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z!\raAdD\u0005\u0003;\u0011\u0011\u0001\"\u0013;fe\u0006$xN\u001d\t\u0004?\u0001\u0012S\"\u0001\u0002\n\u0005\u0005\u0012!!\u0004,fGR|'\u000fU8j]R,'O\u000b\u0002\u0010G-\nA\u0005\u0005\u0002&U5\taE\u0003\u0002(Q\u0005IQO\\2iK\u000e\\W\r\u001a\u0006\u0003S\u0019\t!\"\u00198o_R\fG/[8o\u0013\tYcEA\tv]\u000eDWmY6fIZ\u000b'/[1oG\u0016D\u0001\"\f\u0001\u0003\u0002\u0003\u0006IAL\u0001\f?N$\u0018M\u001d;J]\u0012,\u0007\u0010\u0005\u0002\u0016_%\u0011\u0001G\u0002\u0002\u0004\u0013:$\b\u0002\u0003\u001a\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u0018\u0002\u0011\u0015tG-\u00138eKbDQ\u0001\u000e\u0001\u0005\u0002U\na\u0001P5oSRtDc\u0001\u001c8qA\u0019q\u0004A\b\t\u000b5\u001a\u0004\u0019\u0001\u0018\t\u000bI\u001a\u0004\u0019\u0001\u0018\t\u000fi\u0002\u0001\u0019!C\u0005w\u0005Q!\r\\8dW&sG-\u001a=\u0016\u00039Bq!\u0010\u0001A\u0002\u0013%a(\u0001\bcY>\u001c7.\u00138eKb|F%Z9\u0015\u0005}\u0012\u0005CA\u000bA\u0013\t\teA\u0001\u0003V]&$\bbB\"=\u0003\u0003\u0005\rAL\u0001\u0004q\u0012\n\u0004BB#\u0001A\u0003&a&A\u0006cY>\u001c7.\u00138eKb\u0004\u0003bB$\u0001\u0001\u0004%IaO\u0001\u0003Y>Dq!\u0013\u0001A\u0002\u0013%!*\u0001\u0004m_~#S-\u001d\u000b\u0003\u007f-Cqa\u0011%\u0002\u0002\u0003\u0007a\u0006\u0003\u0004N\u0001\u0001\u0006KAL\u0001\u0004Y>\u0004\u0003bB(\u0001\u0001\u0004%IaO\u0001\u0006K:$Gj\u001c\u0005\b#\u0002\u0001\r\u0011\"\u0003S\u0003%)g\u000e\u001a'p?\u0012*\u0017\u000f\u0006\u0002@'\"91\tUA\u0001\u0002\u0004q\u0003BB+\u0001A\u0003&a&\u0001\u0004f]\u0012du\u000e\t\u0005\u0006/\u0002!\t\u0001W\u0001\bQ\u0006\u001ch*\u001a=u+\u0005I\u0006CA\u000b[\u0013\tYfAA\u0004C_>dW-\u00198\t\u000fu\u0003\u0001\u0019!C\u00051\u0006Aq\f[1t\u001d\u0016DH\u000fC\u0004`\u0001\u0001\u0007I\u0011\u00021\u0002\u0019}C\u0017m\u001d(fqR|F%Z9\u0015\u0005}\n\u0007bB\"_\u0003\u0003\u0005\r!\u0017\u0005\u0007G\u0002\u0001\u000b\u0015B-\u0002\u0013}C\u0017m\u001d(fqR\u0004\u0003\"B3\u0001\t\u00031\u0017\u0001\u00028fqR$\u0012a\u0004\u0005\u0007Q\u0002!\t\u0001B\u001e\u0002+I,W.Y5oS:<W\t\\3nK:$8i\\;oi\"1!\u000e\u0001C\u0001\t-\fqB]3nC&t\u0017N\\4WK\u000e$xN]\u000b\u0002YB\u0019q$\\\b\n\u00059\u0014!A\u0002,fGR|'\u000f")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/VectorIterator.class */
public class VectorIterator<A> extends AbstractIterator<A> implements VectorPointer<A> {
    private boolean _hasNext;
    private int blockIndex;
    private int depth;
    private Object[] display0;
    private Object[] display1;
    private Object[] display2;
    private Object[] display3;
    private Object[] display4;
    private Object[] display5;
    private final int endIndex;
    private int endLo;

    /* renamed from: lo */
    private int f1561lo;

    public VectorIterator(int i, int i2) {
        this.endIndex = i2;
        VectorPointer.Cclass.$init$(this);
        this.blockIndex = i & (-32);
        this.f1561lo = i & 31;
        this.endLo = package$.MODULE$.min(i2 - blockIndex(), 32);
        this._hasNext = blockIndex() + m137lo() < i2;
    }

    private boolean _hasNext() {
        return this._hasNext;
    }

    private void _hasNext_$eq(boolean z) {
        this._hasNext = z;
    }

    private int blockIndex() {
        return this.blockIndex;
    }

    private void blockIndex_$eq(int i) {
        this.blockIndex = i;
    }

    private int endLo() {
        return this.endLo;
    }

    private void endLo_$eq(int i) {
        this.endLo = i;
    }

    /* renamed from: lo */
    private int m137lo() {
        return this.f1561lo;
    }

    private void lo_$eq(int i) {
        this.f1561lo = i;
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

    @Override // scala.collection.Iterator
    public boolean hasNext() {
        return _hasNext();
    }

    @Override // scala.collection.immutable.VectorPointer
    public final <U> void initFrom(VectorPointer<U> vectorPointer) {
        VectorPointer.Cclass.initFrom(this, vectorPointer);
    }

    @Override // scala.collection.immutable.VectorPointer
    public final <U> void initFrom(VectorPointer<U> vectorPointer, int i) {
        VectorPointer.Cclass.initFrom(this, vectorPointer, i);
    }

    @Override // scala.collection.Iterator
    public A next() {
        if (_hasNext()) {
            A a = (A) display0()[m137lo()];
            lo_$eq(m137lo() + 1);
            if (m137lo() == endLo()) {
                if (blockIndex() + m137lo() < this.endIndex) {
                    int blockIndex = blockIndex() + 32;
                    gotoNextBlockStart(blockIndex, blockIndex() ^ blockIndex);
                    blockIndex_$eq(blockIndex);
                    endLo_$eq(package$.MODULE$.min(this.endIndex - blockIndex(), 32));
                    lo_$eq(0);
                } else {
                    _hasNext_$eq(false);
                }
            }
            return a;
        }
        throw new NoSuchElementException("reached iterator end");
    }

    @Override // scala.collection.immutable.VectorPointer
    public final Object[] nullSlotAndCopy(Object[] objArr, int i) {
        return VectorPointer.Cclass.nullSlotAndCopy(this, objArr, i);
    }

    public int remainingElementCount() {
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        return richInt$.max$extension(this.endIndex - (blockIndex() + m137lo()), 0);
    }

    public Vector<A> remainingVector() {
        Vector<A> vector = new Vector<>(blockIndex() + m137lo(), this.endIndex, blockIndex() + m137lo());
        vector.initFrom(this);
        return vector;
    }

    @Override // scala.collection.immutable.VectorPointer
    public final void stabilize(int i) {
        VectorPointer.Cclass.stabilize(this, i);
    }
}
