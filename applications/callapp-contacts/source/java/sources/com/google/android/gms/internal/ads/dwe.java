package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwe.class */
public abstract class dwe {

    /* renamed from: a */
    public static final dwe f47769a = new dwd();

    /* renamed from: a */
    public abstract int mo15313a();

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
        if ((mo15313a() - 1) == 0) goto L14;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m15575a(int r6, com.google.android.gms.internal.ads.dwg r7, com.google.android.gms.internal.ads.dwf r8, int r9) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = 0
            com.google.android.gms.internal.ads.dwg r0 = r0.mo15311a(r1, r2, r3)
            r0 = r5
            r1 = 0
            r2 = r8
            com.google.android.gms.internal.ads.dwf r0 = r0.mo15312a(r1, r2)
            r0 = 1
            r10 = r0
            r0 = r6
            if (r0 != 0) goto L61
            r0 = r9
            if (r0 == 0) goto L43
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L3e
            r0 = r9
            r1 = 2
            if (r0 != r1) goto L36
            r0 = r10
            r6 = r0
            r0 = r5
            int r0 = r0.mo15313a()
            r1 = 1
            int r0 = r0 - r1
            if (r0 != 0) goto L51
            goto L3e
        L36:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r1.<init>()
            throw r0
        L3e:
            r0 = 0
            r6 = r0
            goto L51
        L43:
            r0 = r10
            r6 = r0
            r0 = r5
            int r0 = r0.mo15313a()
            r1 = 1
            int r0 = r0 - r1
            if (r0 != 0) goto L51
            r0 = -1
            r6 = r0
        L51:
            r0 = r6
            r1 = -1
            if (r0 != r1) goto L58
            r0 = -1
            return r0
        L58:
            r0 = r5
            r1 = r6
            r2 = r8
            com.google.android.gms.internal.ads.dwf r0 = r0.mo15312a(r1, r2)
            r0 = 0
            return r0
        L61:
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dwe.m15575a(int, com.google.android.gms.internal.ads.dwg, com.google.android.gms.internal.ads.dwf, int):int");
    }

    /* renamed from: a */
    public abstract int mo15310a(Object obj);

    /* renamed from: a */
    public abstract dwf mo15312a(int i, dwf dwfVar);

    /* renamed from: a */
    public abstract dwg mo15311a(int i, dwg dwgVar, boolean z);

    /* renamed from: b */
    public abstract int mo15309b();

    /* renamed from: c */
    public final boolean m15574c() {
        return mo15313a() == 0;
    }
}
