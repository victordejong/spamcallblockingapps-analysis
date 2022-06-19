package scala.collection.mutable;

import scala.Array$;
import scala.Function1;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.collection.mutable.Builder;
import scala.collection.mutable.WrappedArray;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001a4A!\u0001\u0002\u0001\u0013\t\u0019rK]1qa\u0016$\u0017I\u001d:bs\n+\u0018\u000e\u001c3fe*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tQQcE\u0002\u0001\u0017=\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\u0011\u0001\u0012c\u0005\u0010\u000e\u0003\tI!A\u0005\u0002\u0003\u000f\t+\u0018\u000e\u001c3feB\u0011A#\u0006\u0007\u0001\t\u00151\u0002A1\u0001\u0018\u0005\u0005\t\u0015C\u0001\r\u001c!\ta\u0011$\u0003\u0002\u001b\r\t9aj\u001c;iS:<\u0007C\u0001\u0007\u001d\u0013\tibAA\u0002B]f\u00042\u0001E\u0010\u0014\u0013\t\u0001#A\u0001\u0007Xe\u0006\u0004\b/\u001a3BeJ\f\u0017\u0010\u0003\u0005#\u0001\t\u0005\t\u0015!\u0003$\u0003\r!\u0018m\u001a\t\u0004I\u001d\u001aR\"A\u0013\u000b\u0005\u00192\u0011a\u0002:fM2,7\r^\u0005\u0003Q\u0015\u0012\u0001b\u00117bgN$\u0016m\u001a\u0005\u0006U\u0001!\taK\u0001\u0007y%t\u0017\u000e\u001e \u0015\u00051j\u0003c\u0001\t\u0001'!)!%\u000ba\u0001G!9q\u0006\u0001b\u0001\n\u0003\u0001\u0014\u0001C7b]&4Wm\u001d;\u0016\u0003\rBCA\f\u001a6oA\u0011AbM\u0005\u0003i\u0019\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u00051\u0014aD;tK\u0002\"\u0018m\u001a\u0011j]N$X-\u00193\"\u0003a\naA\r\u00182a9\u0002\u0004B\u0002\u001e\u0001A\u0003%1%A\u0005nC:Lg-Z:uA!IA\b\u0001a\u0001\u0002\u0004%I!P\u0001\u0006K2,Wn]\u000b\u0002=!Iq\b\u0001a\u0001\u0002\u0004%I\u0001Q\u0001\nK2,Wn]0%KF$\"!\u0011#\u0011\u00051\u0011\u0015BA\"\u0007\u0005\u0011)f.\u001b;\t\u000f\u0015s\u0014\u0011!a\u0001=\u0005\u0019\u0001\u0010J\u0019\t\r\u001d\u0003\u0001\u0015)\u0003\u001f\u0003\u0019)G.Z7tA!9\u0011\n\u0001a\u0001\n\u0013Q\u0015\u0001C2ba\u0006\u001c\u0017\u000e^=\u0016\u0003-\u0003\"\u0001\u0004'\n\u000553!aA%oi\"9q\n\u0001a\u0001\n\u0013\u0001\u0016\u0001D2ba\u0006\u001c\u0017\u000e^=`I\u0015\fHCA!R\u0011\u001d)e*!AA\u0002-Caa\u0015\u0001!B\u0013Y\u0015!C2ba\u0006\u001c\u0017\u000e^=!\u0011\u001d)\u0006\u00011A\u0005\n)\u000bAa]5{K\"9q\u000b\u0001a\u0001\n\u0013A\u0016\u0001C:ju\u0016|F%Z9\u0015\u0005\u0005K\u0006bB#W\u0003\u0003\u0005\ra\u0013\u0005\u00077\u0002\u0001\u000b\u0015B&\u0002\u000bML'0\u001a\u0011\t\u000bu\u0003A\u0011\u00020\u0002\u000f5\\\u0017I\u001d:bsR\u0011ad\u0018\u0005\u0006+r\u0003\ra\u0013\u0005\u0006C\u0002!IAY\u0001\u0007e\u0016\u001c\u0018N_3\u0015\u0005\u0005\u001b\u0007\"B+a\u0001\u0004Y\u0005\"B3\u0001\t\u00032\u0017\u0001C:ju\u0016D\u0015N\u001c;\u0015\u0005\u0005;\u0007\"B+e\u0001\u0004Y\u0005\"B5\u0001\t\u0013Q\u0017AC3ogV\u0014XmU5{KR\u0011\u0011i\u001b\u0005\u0006+\"\u0004\ra\u0013\u0005\u0006[\u0002!\tA\\\u0001\tIAdWo\u001d\u0013fcR\u0011q\u000e]\u0007\u0002\u0001!)\u0011\u000f\u001ca\u0001'\u0005!Q\r\\3n\u0011\u0015\u0019\b\u0001\"\u0001u\u0003\u0015\u0019G.Z1s)\u0005\t\u0005\"\u0002<\u0001\t\u00039\u0018A\u0002:fgVdG\u000fF\u0001\u001f\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WrappedArrayBuilder.class */
public class WrappedArrayBuilder<A> implements Builder<A, WrappedArray<A>> {
    private WrappedArray<A> elems;
    private final ClassTag<A> manifest;
    private final ClassTag<A> tag;
    private int capacity = 0;
    private int size = 0;

    public WrappedArrayBuilder(ClassTag<A> classTag) {
        this.tag = classTag;
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
        this.manifest = classTag;
    }

    private int capacity() {
        return this.capacity;
    }

    private void capacity_$eq(int i) {
        this.capacity = i;
    }

    private WrappedArray<A> elems() {
        return this.elems;
    }

    private void elems_$eq(WrappedArray<A> wrappedArray) {
        this.elems = wrappedArray;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0022 -> B:8:0x001d). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void ensureSize(int r4) {
        /*
            r3 = this;
            r0 = r3
            int r0 = r0.capacity()
            r1 = r4
            if (r0 >= r1) goto L2e
            r0 = r3
            int r0 = r0.capacity()
            if (r0 != 0) goto L15
            r0 = 16
            r5 = r0
            goto L1d
        L15:
            r0 = r3
            int r0 = r0.capacity()
            r5 = r0
            goto L22
        L1d:
            r0 = r5
            r1 = r4
            if (r0 >= r1) goto L29
        L22:
            r0 = r5
            r1 = 2
            int r0 = r0 * r1
            r5 = r0
            goto L1d
        L29:
            r0 = r3
            r1 = r5
            r0.resize(r1)
        L2e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.WrappedArrayBuilder.ensureSize(int):void");
    }

    private WrappedArray<A> mkArray(int i) {
        WrappedArray.ofByte ofbyte;
        Class<?> arrayElementClass = ScalaRunTime$.MODULE$.arrayElementClass(this.tag);
        Class cls = Byte.TYPE;
        if (cls != null ? !cls.equals(arrayElementClass) : arrayElementClass != null) {
            Class cls2 = Short.TYPE;
            if (cls2 != null ? !cls2.equals(arrayElementClass) : arrayElementClass != null) {
                Class cls3 = Character.TYPE;
                if (cls3 != null ? !cls3.equals(arrayElementClass) : arrayElementClass != null) {
                    Class cls4 = Integer.TYPE;
                    if (cls4 != null ? !cls4.equals(arrayElementClass) : arrayElementClass != null) {
                        Class cls5 = Long.TYPE;
                        if (cls5 != null ? !cls5.equals(arrayElementClass) : arrayElementClass != null) {
                            Class cls6 = Float.TYPE;
                            if (cls6 != null ? !cls6.equals(arrayElementClass) : arrayElementClass != null) {
                                Class cls7 = Double.TYPE;
                                if (cls7 != null ? !cls7.equals(arrayElementClass) : arrayElementClass != null) {
                                    Class cls8 = Boolean.TYPE;
                                    if (cls8 != null ? !cls8.equals(arrayElementClass) : arrayElementClass != null) {
                                        Class cls9 = Void.TYPE;
                                        ofbyte = (cls9 != null ? !cls9.equals(arrayElementClass) : arrayElementClass != null) ? new WrappedArray.ofRef((Object[]) this.tag.newArray(i)) : new WrappedArray.ofUnit(new BoxedUnit[i]);
                                    } else {
                                        ofbyte = new WrappedArray.ofBoolean(new boolean[i]);
                                    }
                                } else {
                                    ofbyte = new WrappedArray.ofDouble(new double[i]);
                                }
                            } else {
                                ofbyte = new WrappedArray.ofFloat(new float[i]);
                            }
                        } else {
                            ofbyte = new WrappedArray.ofLong(new long[i]);
                        }
                    } else {
                        ofbyte = new WrappedArray.ofInt(new int[i]);
                    }
                } else {
                    ofbyte = new WrappedArray.ofChar(new char[i]);
                }
            } else {
                ofbyte = new WrappedArray.ofShort(new short[i]);
            }
        } else {
            ofbyte = new WrappedArray.ofByte(new byte[i]);
        }
        if (size() > 0) {
            Array$.MODULE$.copy(elems().array(), 0, ofbyte.array(), 0, size());
        }
        return ofbyte;
    }

    private void resize(int i) {
        elems_$eq(mkArray(i));
        capacity_$eq(i);
    }

    private int size() {
        return this.size;
    }

    private void size_$eq(int i) {
        this.size = i;
    }

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$eq(A a, A a2, Seq<A> seq) {
        Growable<A> $plus$plus$eq;
        $plus$plus$eq = $plus$eq((WrappedArrayBuilder<A>) a).$plus$eq(a2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
    public WrappedArrayBuilder<A> $plus$eq(A a) {
        ensureSize(size() + 1);
        elems().update(size(), a);
        size_$eq(size() + 1);
        return this;
    }

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
        return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        size_$eq(0);
    }

    public ClassTag<A> manifest() {
        return this.manifest;
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<A, NewTo> mapResult(Function1<WrappedArray<A>, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.mutable.Builder
    public WrappedArray<A> result() {
        return (capacity() == 0 || capacity() != size()) ? mkArray(size()) : elems();
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(int i) {
        if (capacity() < i) {
            resize(i);
        }
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
}
