package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zy3.class */
public final class zy3 {

    /* renamed from: a */
    public final int f33455a;

    /* renamed from: b */
    public final byte[] f33456b;

    /* renamed from: c */
    public final Map<String, String> f33457c;

    /* renamed from: d */
    public final List<wy3> f33458d;

    /* renamed from: e */
    public final boolean f33459e;

    private zy3(int i, byte[] bArr, Map<String, String> map, List<wy3> list, boolean z, long j) {
        this.f33455a = i;
        this.f33456b = bArr;
        this.f33457c = map;
        this.f33458d = list == null ? null : Collections.unmodifiableList(list);
        this.f33459e = z;
    }

    @Deprecated
    public zy3(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        this(i, bArr, map, m8140a(map), z, j);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zy3(int r10, byte[] r11, boolean r12, long r13, java.util.List<com.google.android.gms.internal.ads.wy3> r15) {
        /*
            r9 = this;
            r0 = r15
            if (r0 != 0) goto Lb
            r0 = 0
            r16 = r0
        L8:
            goto L61
        Lb:
            r0 = r15
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L1d
            java.util.Map r0 = java.util.Collections.emptyMap()
            r16 = r0
            goto L8
        L1d:
            java.util.TreeMap r0 = new java.util.TreeMap
            r1 = r0
            java.util.Comparator r2 = java.lang.String.CASE_INSENSITIVE_ORDER
            r1.<init>(r2)
            r17 = r0
            r0 = r15
            java.util.Iterator r0 = r0.iterator()
            r18 = r0
        L32:
            r0 = r17
            r16 = r0
            r0 = r18
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L8
            r0 = r18
            java.lang.Object r0 = r0.next()
            com.google.android.gms.internal.ads.wy3 r0 = (com.google.android.gms.internal.ads.wy3) r0
            r16 = r0
            r0 = r17
            r1 = r16
            java.lang.String r1 = r1.m9415a()
            r2 = r16
            java.lang.String r2 = r2.m9414b()
            java.lang.Object r0 = r0.put(r1, r2)
            goto L32
        L61:
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zy3.<init>(int, byte[], boolean, long, java.util.List):void");
    }

    @Deprecated
    public zy3(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, m8140a(map), false, 0L);
    }

    /* renamed from: a */
    private static List<wy3> m8140a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new wy3(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }
}
