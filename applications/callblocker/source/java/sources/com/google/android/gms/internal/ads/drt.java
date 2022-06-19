package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/drt.class */
public final class drt {

    /* renamed from: a */
    public final int f15521a;

    /* renamed from: b */
    public final byte[] f15522b;

    /* renamed from: c */
    public final Map<String, String> f15523c;

    /* renamed from: d */
    public final List<dnv> f15524d;

    /* renamed from: e */
    public final boolean f15525e;

    /* renamed from: f */
    private final long f15526f;

    private drt(int i, byte[] bArr, Map<String, String> map, List<dnv> list, boolean z, long j) {
        this.f15521a = i;
        this.f15522b = bArr;
        this.f15523c = map;
        if (list == null) {
            this.f15524d = null;
        } else {
            this.f15524d = Collections.unmodifiableList(list);
        }
        this.f15525e = z;
        this.f15526f = j;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.util.List] */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public drt(int r10, byte[] r11, java.util.Map<java.lang.String, java.lang.String> r12, boolean r13, long r14) {
        /*
            r9 = this;
            r0 = r12
            if (r0 != 0) goto L15
            r0 = 0
            r16 = r0
        L7:
            r0 = r9
            r1 = r10
            r2 = r11
            r3 = r12
            r4 = r16
            r5 = r13
            r6 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        L15:
            r0 = r12
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L26
            java.util.List r0 = java.util.Collections.emptyList()
            r16 = r0
            goto L7
        L26:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r12
            int r2 = r2.size()
            r1.<init>(r2)
            r17 = r0
            r0 = r12
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r18 = r0
        L42:
            r0 = r17
            r16 = r0
            r0 = r18
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L7
            r0 = r18
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r16 = r0
            r0 = r17
            com.google.android.gms.internal.ads.dnv r1 = new com.google.android.gms.internal.ads.dnv
            r2 = r1
            r3 = r16
            java.lang.Object r3 = r3.getKey()
            java.lang.String r3 = (java.lang.String) r3
            r4 = r16
            java.lang.Object r4 = r4.getValue()
            java.lang.String r4 = (java.lang.String) r4
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            goto L42
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.drt.<init>(int, byte[], java.util.Map, boolean, long):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.util.Map] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public drt(int r10, byte[] r11, boolean r12, long r13, java.util.List<com.google.android.gms.internal.ads.dnv> r15) {
        /*
            r9 = this;
            r0 = r15
            if (r0 != 0) goto L16
            r0 = 0
            r16 = r0
        L8:
            r0 = r9
            r1 = r10
            r2 = r11
            r3 = r16
            r4 = r15
            r5 = r12
            r6 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        L16:
            r0 = r15
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L28
            java.util.Map r0 = java.util.Collections.emptyMap()
            r16 = r0
            goto L8
        L28:
            java.util.TreeMap r0 = new java.util.TreeMap
            r1 = r0
            java.util.Comparator r2 = java.lang.String.CASE_INSENSITIVE_ORDER
            r1.<init>(r2)
            r17 = r0
            r0 = r15
            java.util.Iterator r0 = r0.iterator()
            r18 = r0
        L3d:
            r0 = r17
            r16 = r0
            r0 = r18
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L8
            r0 = r18
            java.lang.Object r0 = r0.next()
            com.google.android.gms.internal.ads.dnv r0 = (com.google.android.gms.internal.ads.dnv) r0
            r16 = r0
            r0 = r17
            r1 = r16
            java.lang.String r1 = r1.m9048a()
            r2 = r16
            java.lang.String r2 = r2.m9047b()
            java.lang.Object r0 = r0.put(r1, r2)
            goto L3d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.drt.<init>(int, byte[], boolean, long, java.util.List):void");
    }

    @Deprecated
    public drt(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0L);
    }
}
