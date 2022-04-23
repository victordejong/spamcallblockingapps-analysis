package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emg.class */
public final class emg {

    /* renamed from: a  reason: collision with root package name */
    public final int f27948a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f27949b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, String> f27950c;

    /* renamed from: d  reason: collision with root package name */
    public final List<eim> f27951d;
    public final boolean e;
    private final long f;

    private emg(int i, byte[] bArr, Map<String, String> map, List<eim> list, boolean z, long j) {
        this.f27948a = i;
        this.f27949b = bArr;
        this.f27950c = map;
        if (list == null) {
            this.f27951d = null;
        } else {
            this.f27951d = Collections.unmodifiableList(list);
        }
        this.e = z;
        this.f = j;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public emg(int r10, byte[] r11, java.util.Map<java.lang.String, java.lang.String> r12, boolean r13, long r14) {
        /*
            r9 = this;
            r0 = r12
            if (r0 != 0) goto L_0x000a
            r0 = 0
            r16 = r0
        L_0x0007:
            goto L_0x0077
        L_0x000a:
            r0 = r12
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x001b
            java.util.List r0 = java.util.Collections.emptyList()
            r16 = r0
            goto L_0x0007
        L_0x001b:
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
        L_0x0037:
            r0 = r17
            r16 = r0
            r0 = r18
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0007
            r0 = r18
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r16 = r0
            r0 = r17
            com.google.android.gms.internal.ads.eim r1 = new com.google.android.gms.internal.ads.eim
            r2 = r1
            r3 = r16
            java.lang.Object r3 = r3.getKey()
            java.lang.String r3 = (java.lang.String) r3
            r4 = r16
            java.lang.Object r4 = r4.getValue()
            java.lang.String r4 = (java.lang.String) r4
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            goto L_0x0037
        L_0x0077:
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.emg.<init>(int, byte[], java.util.Map, boolean, long):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public emg(int r10, byte[] r11, boolean r12, long r13, java.util.List<com.google.android.gms.internal.ads.eim> r15) {
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
            com.google.android.gms.internal.ads.eim r0 = (com.google.android.gms.internal.ads.eim) r0
            r16 = r0
            r0 = r17
            r1 = r16
            java.lang.String r1 = r1.f27864a
            r2 = r16
            java.lang.String r2 = r2.f27865b
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.emg.<init>(int, byte[], boolean, long, java.util.List):void");
    }

    @Deprecated
    public emg(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0L);
    }
}
