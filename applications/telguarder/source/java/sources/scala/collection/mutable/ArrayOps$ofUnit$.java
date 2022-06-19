package scala.collection.mutable;

import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.WrappedArray;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayOps$ofUnit$.class */
public class ArrayOps$ofUnit$ {
    public static final ArrayOps$ofUnit$ MODULE$ = null;

    static {
        new ArrayOps$ofUnit$();
    }

    public ArrayOps$ofUnit$() {
        MODULE$ = this;
    }

    public final void apply$extension(BoxedUnit[] boxedUnitArr, int i) {
        BoxedUnit boxedUnit = boxedUnitArr[i];
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
        if ((r4 == (r5 == null ? null : ((scala.collection.mutable.ArrayOps.ofUnit) r5).repr())) != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(scala.runtime.BoxedUnit[] r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.collection.mutable.ArrayOps.ofUnit
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L33
            r0 = r5
            if (r0 != 0) goto L15
            r0 = 0
            r5 = r0
            goto L1d
        L15:
            r0 = r5
            scala.collection.mutable.ArrayOps$ofUnit r0 = (scala.collection.mutable.ArrayOps.ofUnit) r0
            scala.runtime.BoxedUnit[] r0 = r0.repr()
            r5 = r0
        L1d:
            r0 = r4
            r1 = r5
            if (r0 != r1) goto L28
            r0 = 1
            r8 = r0
            goto L2b
        L28:
            r0 = 0
            r8 = r0
        L2b:
            r0 = r8
            if (r0 == 0) goto L33
            goto L36
        L33:
            r0 = 0
            r7 = r0
        L36:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayOps$ofUnit$.equals$extension(scala.runtime.BoxedUnit[], java.lang.Object):boolean");
    }

    public final int hashCode$extension(BoxedUnit[] boxedUnitArr) {
        return boxedUnitArr.hashCode();
    }

    public final int length$extension(BoxedUnit[] boxedUnitArr) {
        return boxedUnitArr.length;
    }

    public final ArrayBuilder.ofUnit newBuilder$extension(BoxedUnit[] boxedUnitArr) {
        return new ArrayBuilder.ofUnit();
    }

    public final WrappedArray<BoxedUnit> thisCollection$extension(BoxedUnit[] boxedUnitArr) {
        return new WrappedArray.ofUnit(boxedUnitArr);
    }

    public final WrappedArray<BoxedUnit> toCollection$extension(BoxedUnit[] boxedUnitArr, BoxedUnit[] boxedUnitArr2) {
        return new WrappedArray.ofUnit(boxedUnitArr2);
    }

    public final void update$extension(BoxedUnit[] boxedUnitArr, int i, BoxedUnit boxedUnit) {
        boxedUnitArr[i] = boxedUnit;
    }
}
