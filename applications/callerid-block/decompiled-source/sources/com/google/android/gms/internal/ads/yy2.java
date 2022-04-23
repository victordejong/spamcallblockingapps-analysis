package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yy2.class */
public final class yy2 {

    /* renamed from: a */
    public final int f9285a;

    /* renamed from: b */
    public final byte[] f9286b;

    /* renamed from: c */
    public final Map<String, String> f9287c;

    /* renamed from: d */
    public final List<pv2> f9288d;

    /* renamed from: e */
    public final boolean f9289e;

    private yy2(int i, byte[] bArr, Map<String, String> map, List<pv2> list, boolean z, long j) {
        this.f9285a = i;
        this.f9286b = bArr;
        this.f9287c = map;
        this.f9288d = list == null ? null : Collections.unmodifiableList(list);
        this.f9289e = z;
    }

    @Deprecated
    public yy2(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        this(i, bArr, map, m4681a(map), z, j);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public yy2(int r10, byte[] r11, boolean r12, long r13, java.util.List<com.google.android.gms.internal.ads.pv2> r15) {
        /*
            r9 = this;
            r0 = r15
            if (r0 != 0) goto L_0x000b
            r0 = 0
            r16 = r0
        L_0x0008:
            goto L_0x0061
        L_0x000b:
            r0 = r15
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x001d
            java.util.Map r0 = java.util.Collections.emptyMap()
            r16 = r0
            goto L_0x0008
        L_0x001d:
            java.util.TreeMap r0 = new java.util.TreeMap
            r1 = r0
            java.util.Comparator r2 = java.lang.String.CASE_INSENSITIVE_ORDER
            r1.<init>(r2)
            r17 = r0
            r0 = r15
            java.util.Iterator r0 = r0.iterator()
            r18 = r0
        L_0x0032:
            r0 = r17
            r16 = r0
            r0 = r18
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0008
            r0 = r18
            java.lang.Object r0 = r0.next()
            com.google.android.gms.internal.ads.pv2 r0 = (com.google.android.gms.internal.ads.pv2) r0
            r16 = r0
            r0 = r17
            r1 = r16
            java.lang.String r1 = r1.m6158a()
            r2 = r16
            java.lang.String r2 = r2.m6157b()
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x0032
        L_0x0061:
            r0 = r9
            r1 = r10
            r2 = r11
            r3 = r16
            r4 = r15
            r5 = r12
            r6 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.yy2.<init>(int, byte[], boolean, long, java.util.List):void");
    }

    @Deprecated
    public yy2(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, m4681a(map), false, 0L);
    }

    /* renamed from: a */
    private static List<pv2> m4681a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new pv2(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }
}
