package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpw.class */
public final class cpw {
    /* renamed from: a */
    public static int m10859a(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Object next = it.next();
                i = ((i2 + (next != null ? next.hashCode() : 0)) ^ (-1)) ^ (-1);
            } else {
                return i2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002d, code lost:
        if (r3.containsAll(r0) == false) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m10858a(java.util.Set<?> r3, @org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object r4) {
        /*
            r0 = 1
            r5 = r0
            r0 = r3
            r1 = r4
            if (r0 != r1) goto L9
        L7:
            r0 = r5
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof java.util.Set
            if (r0 == 0) goto L3b
            r0 = r4
            java.util.Set r0 = (java.util.Set) r0
            r4 = r0
            r0 = r3
            int r0 = r0.size()     // Catch: java.lang.ClassCastException -> L35 java.lang.NullPointerException -> L40
            r1 = r4
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L35 java.lang.NullPointerException -> L40
            if (r0 != r1) goto L30
            r0 = r3
            r1 = r4
            boolean r0 = r0.containsAll(r1)     // Catch: java.lang.ClassCastException -> L35 java.lang.NullPointerException -> L40
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L7
        L30:
            r0 = 0
            r5 = r0
            goto L7
        L35:
            r3 = move-exception
        L36:
            r0 = 0
            r5 = r0
            goto L7
        L3b:
            r0 = 0
            r5 = r0
            goto L7
        L40:
            r3 = move-exception
            goto L36
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cpw.m10858a(java.util.Set, java.lang.Object):boolean");
    }
}
