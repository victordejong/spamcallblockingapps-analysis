package com.google.android.gms.internal.ads;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/daw.class */
final class daw extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f13915a;

    public daw(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th == null) {
            throw new NullPointerException("The referent cannot be null");
        }
        this.f13915a = System.identityHashCode(th);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0036, code lost:
        if (get() != r0.get()) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L11
            r0 = r4
            java.lang.Class r0 = r0.getClass()
            r1 = r3
            java.lang.Class r1 = r1.getClass()
            if (r0 == r1) goto L15
        L11:
            r0 = 0
            r6 = r0
        L13:
            r0 = r6
            return r0
        L15:
            r0 = r5
            r6 = r0
            r0 = r3
            r1 = r4
            if (r0 == r1) goto L13
            r0 = r4
            com.google.android.gms.internal.ads.daw r0 = (com.google.android.gms.internal.ads.daw) r0
            r4 = r0
            r0 = r3
            int r0 = r0.f13915a
            r1 = r4
            int r1 = r1.f13915a
            if (r0 != r1) goto L39
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.Object r0 = r0.get()
            r1 = r4
            java.lang.Object r1 = r1.get()
            if (r0 == r1) goto L13
        L39:
            r0 = 0
            r6 = r0
            goto L13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.daw.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return this.f13915a;
    }
}
