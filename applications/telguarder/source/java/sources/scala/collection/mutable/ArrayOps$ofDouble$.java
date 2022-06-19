package scala.collection.mutable;

import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.WrappedArray;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayOps$ofDouble$.class */
public class ArrayOps$ofDouble$ {
    public static final ArrayOps$ofDouble$ MODULE$ = null;

    static {
        new ArrayOps$ofDouble$();
    }

    public ArrayOps$ofDouble$() {
        MODULE$ = this;
    }

    public final double apply$extension(double[] dArr, int i) {
        return dArr[i];
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
        if ((r4 == (r5 == null ? null : ((scala.collection.mutable.ArrayOps.ofDouble) r5).repr())) != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(double[] r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.collection.mutable.ArrayOps.ofDouble
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
            scala.collection.mutable.ArrayOps$ofDouble r0 = (scala.collection.mutable.ArrayOps.ofDouble) r0
            double[] r0 = r0.repr()
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
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayOps$ofDouble$.equals$extension(double[], java.lang.Object):boolean");
    }

    public final int hashCode$extension(double[] dArr) {
        return dArr.hashCode();
    }

    public final int length$extension(double[] dArr) {
        return dArr.length;
    }

    public final ArrayBuilder.ofDouble newBuilder$extension(double[] dArr) {
        return new ArrayBuilder.ofDouble();
    }

    public final WrappedArray<Object> thisCollection$extension(double[] dArr) {
        return new WrappedArray.ofDouble(dArr);
    }

    public final WrappedArray<Object> toCollection$extension(double[] dArr, double[] dArr2) {
        return new WrappedArray.ofDouble(dArr2);
    }

    public final void update$extension(double[] dArr, int i, double d) {
        dArr[i] = d;
    }
}
