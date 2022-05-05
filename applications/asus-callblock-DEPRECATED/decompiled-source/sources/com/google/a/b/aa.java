package com.google.a.b;

import java.util.Collections;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/a/b/aa.class */
public final class aa {
    public static <E> HashSet<E> a(E... eArr) {
        HashSet<E> hashSet = new HashSet<>(s.a(eArr.length));
        Collections.addAll(hashSet, eArr);
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002d, code lost:
        if (r3.containsAll(r0) == false) goto L_0x0030;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.util.Set<?> r3, java.lang.Object r4) {
        /*
            r0 = 1
            r5 = r0
            r0 = r3
            r1 = r4
            if (r0 != r1) goto L_0x0009
        L_0x0007:
            r0 = r5
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof java.util.Set
            if (r0 == 0) goto L_0x0041
            r0 = r4
            java.util.Set r0 = (java.util.Set) r0
            r4 = r0
            r0 = r3
            int r0 = r0.size()     // Catch: NullPointerException -> 0x0035, ClassCastException -> 0x003b
            r1 = r4
            int r1 = r1.size()     // Catch: NullPointerException -> 0x0035, ClassCastException -> 0x003b
            if (r0 != r1) goto L_0x0030
            r0 = r3
            r1 = r4
            boolean r0 = r0.containsAll(r1)     // Catch: NullPointerException -> 0x0035, ClassCastException -> 0x003b
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0007
        L_0x0030:
            r0 = 0
            r5 = r0
            goto L_0x0007
        L_0x0035:
            r3 = move-exception
            r0 = 0
            r5 = r0
            goto L_0x0007
        L_0x003b:
            r3 = move-exception
            r0 = 0
            r5 = r0
            goto L_0x0007
        L_0x0041:
            r0 = 0
            r5 = r0
            goto L_0x0007
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.a.b.aa.a(java.util.Set, java.lang.Object):boolean");
    }
}
