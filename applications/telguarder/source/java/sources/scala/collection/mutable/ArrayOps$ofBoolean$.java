package scala.collection.mutable;

import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.WrappedArray;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayOps$ofBoolean$.class */
public class ArrayOps$ofBoolean$ {
    public static final ArrayOps$ofBoolean$ MODULE$ = null;

    static {
        new ArrayOps$ofBoolean$();
    }

    public ArrayOps$ofBoolean$() {
        MODULE$ = this;
    }

    public final boolean apply$extension(boolean[] zArr, int i) {
        return zArr[i];
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
        if ((r4 == (r5 == null ? null : ((scala.collection.mutable.ArrayOps.ofBoolean) r5).repr())) != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(boolean[] r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.collection.mutable.ArrayOps.ofBoolean
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
            scala.collection.mutable.ArrayOps$ofBoolean r0 = (scala.collection.mutable.ArrayOps.ofBoolean) r0
            boolean[] r0 = r0.repr()
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
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayOps$ofBoolean$.equals$extension(boolean[], java.lang.Object):boolean");
    }

    public final int hashCode$extension(boolean[] zArr) {
        return zArr.hashCode();
    }

    public final int length$extension(boolean[] zArr) {
        return zArr.length;
    }

    public final ArrayBuilder.ofBoolean newBuilder$extension(boolean[] zArr) {
        return new ArrayBuilder.ofBoolean();
    }

    public final WrappedArray<Object> thisCollection$extension(boolean[] zArr) {
        return new WrappedArray.ofBoolean(zArr);
    }

    public final WrappedArray<Object> toCollection$extension(boolean[] zArr, boolean[] zArr2) {
        return new WrappedArray.ofBoolean(zArr2);
    }

    public final void update$extension(boolean[] zArr, int i, boolean z) {
        zArr[i] = z;
    }
}
