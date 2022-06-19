package scala.collection.mutable;

import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.WrappedArray;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayOps$ofByte$.class */
public class ArrayOps$ofByte$ {
    public static final ArrayOps$ofByte$ MODULE$ = null;

    static {
        new ArrayOps$ofByte$();
    }

    public ArrayOps$ofByte$() {
        MODULE$ = this;
    }

    public final byte apply$extension(byte[] bArr, int i) {
        return bArr[i];
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
        if ((r4 == (r5 == null ? null : ((scala.collection.mutable.ArrayOps.ofByte) r5).repr())) != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(byte[] r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.collection.mutable.ArrayOps.ofByte
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
            scala.collection.mutable.ArrayOps$ofByte r0 = (scala.collection.mutable.ArrayOps.ofByte) r0
            byte[] r0 = r0.repr()
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
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayOps$ofByte$.equals$extension(byte[], java.lang.Object):boolean");
    }

    public final int hashCode$extension(byte[] bArr) {
        return bArr.hashCode();
    }

    public final int length$extension(byte[] bArr) {
        return bArr.length;
    }

    public final ArrayBuilder.ofByte newBuilder$extension(byte[] bArr) {
        return new ArrayBuilder.ofByte();
    }

    public final WrappedArray<Object> thisCollection$extension(byte[] bArr) {
        return new WrappedArray.ofByte(bArr);
    }

    public final WrappedArray<Object> toCollection$extension(byte[] bArr, byte[] bArr2) {
        return new WrappedArray.ofByte(bArr2);
    }

    public final void update$extension(byte[] bArr, int i, byte b) {
        bArr[i] = b;
    }
}
