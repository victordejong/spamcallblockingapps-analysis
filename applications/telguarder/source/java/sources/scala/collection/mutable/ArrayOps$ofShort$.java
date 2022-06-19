package scala.collection.mutable;

import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.WrappedArray;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayOps$ofShort$.class */
public class ArrayOps$ofShort$ {
    public static final ArrayOps$ofShort$ MODULE$ = null;

    static {
        new ArrayOps$ofShort$();
    }

    public ArrayOps$ofShort$() {
        MODULE$ = this;
    }

    public final short apply$extension(short[] sArr, int i) {
        return sArr[i];
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
        if ((r4 == (r5 == null ? null : ((scala.collection.mutable.ArrayOps.ofShort) r5).repr())) != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(short[] r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.collection.mutable.ArrayOps.ofShort
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
            scala.collection.mutable.ArrayOps$ofShort r0 = (scala.collection.mutable.ArrayOps.ofShort) r0
            short[] r0 = r0.repr()
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
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayOps$ofShort$.equals$extension(short[], java.lang.Object):boolean");
    }

    public final int hashCode$extension(short[] sArr) {
        return sArr.hashCode();
    }

    public final int length$extension(short[] sArr) {
        return sArr.length;
    }

    public final ArrayBuilder.ofShort newBuilder$extension(short[] sArr) {
        return new ArrayBuilder.ofShort();
    }

    public final WrappedArray<Object> thisCollection$extension(short[] sArr) {
        return new WrappedArray.ofShort(sArr);
    }

    public final WrappedArray<Object> toCollection$extension(short[] sArr, short[] sArr2) {
        return new WrappedArray.ofShort(sArr2);
    }

    public final void update$extension(short[] sArr, int i, short s) {
        sArr[i] = s;
    }
}
