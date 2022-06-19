package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzago.class */
public final class zzago {
    public final int zza;
    public final byte[] zzb;
    public final Map<String, String> zzc;
    public final List<zzagk> zzd;
    public final boolean zze;

    private zzago(int i, byte[] bArr, Map<String, String> map, List<zzagk> list, boolean z, long j) {
        this.zza = i;
        this.zzb = bArr;
        this.zzc = map;
        this.zzd = list == null ? null : Collections.unmodifiableList(list);
        this.zze = z;
    }

    @Deprecated
    public zzago(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        this(i, bArr, map, zza(map), z, j);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzago(int r10, byte[] r11, boolean r12, long r13, java.util.List<com.google.android.gms.internal.ads.zzagk> r15) {
        /*
            r9 = this;
            r0 = r15
            if (r0 != 0) goto Lb
            r0 = 0
            r16 = r0
        L8:
            goto L5f
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
            com.google.android.gms.internal.ads.zzagk r0 = (com.google.android.gms.internal.ads.zzagk) r0
            r16 = r0
            r0 = r17
            r1 = r16
            java.lang.String r1 = r1.zza()
            r2 = r16
            java.lang.String r2 = r2.zzb()
            java.lang.Object r0 = r0.put(r1, r2)
            goto L32
        L5f:
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzago.<init>(int, byte[], boolean, long, java.util.List):void");
    }

    @Deprecated
    public zzago(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, zza(map), false, 0L);
    }

    private static List<zzagk> zza(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new zzagk(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }
}
