package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzz.class */
public final class zzz {
    public final List<zzv> allHeaders;
    public final byte[] data;
    public final int statusCode;
    public final Map<String, String> zzaj;
    public final boolean zzak;
    private final long zzal;

    private zzz(int i, byte[] bArr, Map<String, String> map, List<zzv> list, boolean z, long j) {
        this.statusCode = i;
        this.data = bArr;
        this.zzaj = map;
        if (list == null) {
            this.allHeaders = null;
        } else {
            this.allHeaders = Collections.unmodifiableList(list);
        }
        this.zzak = z;
        this.zzal = j;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzz(int r10, byte[] r11, java.util.Map<java.lang.String, java.lang.String> r12, boolean r13, long r14) {
        /*
            r9 = this;
            r0 = r12
            if (r0 != 0) goto La
            r0 = 0
            r16 = r0
        L7:
            goto L77
        La:
            r0 = r12
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L1b
            java.util.List r0 = java.util.Collections.emptyList()
            r16 = r0
            goto L7
        L1b:
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
        L37:
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
            com.google.android.gms.internal.ads.zzv r1 = new com.google.android.gms.internal.ads.zzv
            r2 = r1
            r3 = r16
            java.lang.Object r3 = r3.getKey()
            java.lang.String r3 = (java.lang.String) r3
            r4 = r16
            java.lang.Object r4 = r4.getValue()
            java.lang.String r4 = (java.lang.String) r4
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            goto L37
        L77:
            r0 = r9
            r1 = r10
            r2 = r11
            r3 = r12
            r4 = r16
            r5 = r13
            r6 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzz.<init>(int, byte[], java.util.Map, boolean, long):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzz(int r10, byte[] r11, boolean r12, long r13, java.util.List<com.google.android.gms.internal.ads.zzv> r15) {
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
            com.google.android.gms.internal.ads.zzv r0 = (com.google.android.gms.internal.ads.zzv) r0
            r16 = r0
            r0 = r17
            r1 = r16
            java.lang.String r1 = r1.getName()
            r2 = r16
            java.lang.String r2 = r2.getValue()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzz.<init>(int, byte[], boolean, long, java.util.List):void");
    }

    @Deprecated
    public zzz(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0L);
    }
}
