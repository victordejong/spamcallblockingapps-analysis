package scala.collection.mutable;

import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.WrappedArray;
import scala.reflect.ClassTag$;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayOps$ofRef$.class */
public class ArrayOps$ofRef$ {
    public static final ArrayOps$ofRef$ MODULE$ = null;

    static {
        new ArrayOps$ofRef$();
    }

    public ArrayOps$ofRef$() {
        MODULE$ = this;
    }

    public final <T> T apply$extension(T[] tArr, int i) {
        return tArr[i];
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
        if ((r4 == (r5 == null ? null : ((scala.collection.mutable.ArrayOps.ofRef) r5).repr())) != false) goto L15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.Object[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> boolean equals$extension(T[] r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.collection.mutable.ArrayOps.ofRef
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
            scala.collection.mutable.ArrayOps$ofRef r0 = (scala.collection.mutable.ArrayOps.ofRef) r0
            java.lang.Object[] r0 = r0.repr()
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
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.ArrayOps$ofRef$.equals$extension(java.lang.Object[], java.lang.Object):boolean");
    }

    public final <T> int hashCode$extension(T[] tArr) {
        return tArr.hashCode();
    }

    public final <T> int length$extension(T[] tArr) {
        return tArr.length;
    }

    public final <T> ArrayBuilder.ofRef<T> newBuilder$extension(T[] tArr) {
        return new ArrayBuilder.ofRef<>(ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayElementClass(tArr.getClass())));
    }

    public final <T> WrappedArray<T> thisCollection$extension(T[] tArr) {
        return new WrappedArray.ofRef(tArr);
    }

    public final <T> WrappedArray<T> toCollection$extension(T[] tArr, T[] tArr2) {
        return new WrappedArray.ofRef(tArr2);
    }

    public final <T> void update$extension(T[] tArr, int i, T t) {
        tArr[i] = t;
    }
}
