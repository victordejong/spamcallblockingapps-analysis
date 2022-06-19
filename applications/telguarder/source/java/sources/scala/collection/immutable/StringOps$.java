package scala.collection.immutable;

import scala.collection.mutable.StringBuilder;
import scala.collection.mutable.StringBuilder$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StringOps$.class */
public final class StringOps$ {
    public static final StringOps$ MODULE$ = null;

    static {
        new StringOps$();
    }

    private StringOps$() {
        MODULE$ = this;
    }

    public final char apply$extension(String str, int i) {
        return str.charAt(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
        if ((r4 != null ? r4.equals(r5) : r5 == null) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals$extension(java.lang.String r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.collection.immutable.StringOps
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L41
            r0 = r5
            if (r0 != 0) goto L15
            r0 = 0
            r5 = r0
            goto L1d
        L15:
            r0 = r5
            scala.collection.immutable.StringOps r0 = (scala.collection.immutable.StringOps) r0
            java.lang.String r0 = r0.repr()
            r5 = r0
        L1d:
            r0 = r4
            if (r0 != 0) goto L28
            r0 = r5
            if (r0 == 0) goto L30
            goto L36
        L28:
            r0 = r4
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L36
        L30:
            r0 = 1
            r8 = r0
            goto L39
        L36:
            r0 = 0
            r8 = r0
        L39:
            r0 = r8
            if (r0 == 0) goto L41
            goto L44
        L41:
            r0 = 0
            r7 = r0
        L44:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.immutable.StringOps$.equals$extension(java.lang.String, java.lang.Object):boolean");
    }

    public final int hashCode$extension(String str) {
        return str.hashCode();
    }

    public final int length$extension(String str) {
        return str.length();
    }

    public final StringBuilder newBuilder$extension(String str) {
        return StringBuilder$.MODULE$.newBuilder();
    }

    public final WrappedString seq$extension(String str) {
        return new WrappedString(str);
    }

    public final String slice$extension(String str, int i, int i2) {
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        if (i2 <= i3 || i3 >= str.length()) {
            return "";
        }
        int i4 = i2;
        if (i2 > length$extension(str)) {
            i4 = length$extension(str);
        }
        return str.substring(i3, i4);
    }

    public final WrappedString thisCollection$extension(String str) {
        return new WrappedString(str);
    }

    public final WrappedString toCollection$extension(String str, String str2) {
        return new WrappedString(str2);
    }

    public final String toString$extension(String str) {
        return str;
    }
}
