package com.mixpanel.android.util;

import android.os.Build;
import android.util.Pair;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/util/MPPair.class */
public class MPPair<F, S> extends Pair<F, S> {
    public MPPair(F f, S s) {
        super(f, s);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0041, code lost:
        if (r0.first.equals(r3.first) != false) goto L_0x0044;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
        if (r0.second.equals(r3.second) != false) goto L_0x0068;
     */
    @Override // android.util.Pair
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 16
            if (r0 <= r1) goto L_0x000e
            r0 = r3
            r1 = r4
            boolean r0 = super.equals(r1)
            return r0
        L_0x000e:
            r0 = r4
            boolean r0 = r0 instanceof android.util.Pair
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L_0x001b
            r0 = 0
            return r0
        L_0x001b:
            r0 = r4
            android.util.Pair r0 = (android.util.Pair) r0
            r4 = r0
            r0 = r4
            java.lang.Object r0 = r0.first
            r1 = r3
            java.lang.Object r1 = r1.first
            if (r0 == r1) goto L_0x0044
            r0 = r6
            r5 = r0
            r0 = r4
            java.lang.Object r0 = r0.first
            if (r0 == 0) goto L_0x006a
            r0 = r6
            r5 = r0
            r0 = r4
            java.lang.Object r0 = r0.first
            r1 = r3
            java.lang.Object r1 = r1.first
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x006a
        L_0x0044:
            r0 = r4
            java.lang.Object r0 = r0.second
            r1 = r3
            java.lang.Object r1 = r1.second
            if (r0 == r1) goto L_0x0068
            r0 = r6
            r5 = r0
            r0 = r4
            java.lang.Object r0 = r0.second
            if (r0 == 0) goto L_0x006a
            r0 = r6
            r5 = r0
            r0 = r4
            java.lang.Object r0 = r0.second
            r1 = r3
            java.lang.Object r1 = r1.second
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x006a
        L_0x0068:
            r0 = 1
            r5 = r0
        L_0x006a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.util.MPPair.equals(java.lang.Object):boolean");
    }

    @Override // android.util.Pair
    public int hashCode() {
        if (Build.VERSION.SDK_INT > 16) {
            return super.hashCode();
        }
        int i = 0;
        int hashCode = this.first == null ? 0 : this.first.hashCode();
        if (this.second != null) {
            i = this.second.hashCode();
        }
        return hashCode ^ i;
    }
}
