package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwe.class */
public abstract class dwe {

    /* renamed from: a  reason: collision with root package name */
    public static final dwe f27292a = new dwd();

    public abstract int a();

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
        if ((a() - 1) == 0) goto L_0x003e;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(int r6, com.google.android.gms.internal.ads.dwg r7, com.google.android.gms.internal.ads.dwf r8, int r9) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = 0
            com.google.android.gms.internal.ads.dwg r0 = r0.a(r1, r2, r3)
            r0 = r5
            r1 = 0
            r2 = r8
            com.google.android.gms.internal.ads.dwf r0 = r0.a(r1, r2)
            r0 = 1
            r10 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0061
            r0 = r9
            if (r0 == 0) goto L_0x0043
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L_0x003e
            r0 = r9
            r1 = 2
            if (r0 != r1) goto L_0x0036
            r0 = r10
            r6 = r0
            r0 = r5
            int r0 = r0.a()
            r1 = 1
            int r0 = r0 - r1
            if (r0 != 0) goto L_0x0051
            goto L_0x003e
        L_0x0036:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x003e:
            r0 = 0
            r6 = r0
            goto L_0x0051
        L_0x0043:
            r0 = r10
            r6 = r0
            r0 = r5
            int r0 = r0.a()
            r1 = 1
            int r0 = r0 - r1
            if (r0 != 0) goto L_0x0051
            r0 = -1
            r6 = r0
        L_0x0051:
            r0 = r6
            r1 = -1
            if (r0 != r1) goto L_0x0058
            r0 = -1
            return r0
        L_0x0058:
            r0 = r5
            r1 = r6
            r2 = r8
            com.google.android.gms.internal.ads.dwf r0 = r0.a(r1, r2)
            r0 = 0
            return r0
        L_0x0061:
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dwe.a(int, com.google.android.gms.internal.ads.dwg, com.google.android.gms.internal.ads.dwf, int):int");
    }

    public abstract int a(Object obj);

    public abstract dwf a(int i, dwf dwfVar);

    public abstract dwg a(int i, dwg dwgVar, boolean z);

    public abstract int b();

    public final boolean c() {
        return a() == 0;
    }
}
