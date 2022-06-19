package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.tenor.android.core.constant.StringConstant;
import java.util.Collections;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzan.class */
public final class zzan {
    public final Uri zza;
    public final int zzb;
    public final byte[] zzc;
    public final Map<String, String> zzd;
    @Deprecated
    public final long zze;
    public final long zzf;
    public final long zzg;
    public final String zzh;
    public final int zzi;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
        if (r14 == (-1)) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzan(android.net.Uri r6, long r7, int r9, byte[] r10, java.util.Map<java.lang.String, java.lang.String> r11, long r12, long r14, java.lang.String r16, int r17, java.lang.Object r18) {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r7
            r1 = r12
            long r0 = r0 + r1
            r7 = r0
            r0 = 0
            r19 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L18
            r0 = 1
            r20 = r0
            goto L1b
        L18:
            r0 = 0
            r20 = r0
        L1b:
            r0 = r20
            com.google.android.gms.internal.ads.zzakt.zza(r0)
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L2d
            r0 = 1
            r20 = r0
            goto L30
        L2d:
            r0 = 0
            r20 = r0
        L30:
            r0 = r20
            com.google.android.gms.internal.ads.zzakt.zza(r0)
            r0 = r14
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L49
            r0 = r19
            r20 = r0
            r0 = r14
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L4c
        L49:
            r0 = 1
            r20 = r0
        L4c:
            r0 = r20
            com.google.android.gms.internal.ads.zzakt.zza(r0)
            r0 = r5
            r1 = r6
            r0.zza = r1
            r0 = r5
            r1 = 1
            r0.zzb = r1
            r0 = r5
            r1 = 0
            r0.zzc = r1
            r0 = r5
            java.util.HashMap r1 = new java.util.HashMap
            r2 = r1
            r3 = r11
            r2.<init>(r3)
            java.util.Map r1 = java.util.Collections.unmodifiableMap(r1)
            r0.zzd = r1
            r0 = r5
            r1 = r12
            r0.zzf = r1
            r0 = r5
            r1 = r7
            r0.zze = r1
            r0 = r5
            r1 = r14
            r0.zzg = r1
            r0 = r5
            r1 = 0
            r0.zzh = r1
            r0 = r5
            r1 = r17
            r0.zzi = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzan.<init>(android.net.Uri, long, int, byte[], java.util.Map, long, long, java.lang.String, int, java.lang.Object):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ zzan(Uri uri, Uri uri2, long j, int i, byte[] bArr, Map<String, String> map, long j2, long j3, String str, int i2, Object obj) {
        this(uri, 0L, 1, null, bArr, map, -1L, null, str, null);
    }

    @Deprecated
    public zzan(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        this(uri, j - j2, 1, null, Collections.emptyMap(), j2, j3, null, i, null);
    }

    public static String zza(int i) {
        return "GET";
    }

    public final String toString() {
        String zza = zza(1);
        String valueOf = String.valueOf(this.zza);
        long j = this.zzf;
        long j2 = this.zzg;
        int i = this.zzi;
        StringBuilder sb = new StringBuilder(zza.length() + 70 + valueOf.length() + 4);
        C22128a.m8666T0(sb, "DataSpec[", zza, StringConstant.SPACE, valueOf);
        C22128a.m8675Q0(sb, ", ", j, ", ");
        sb.append(j2);
        sb.append(", null, ");
        sb.append(i);
        sb.append("]");
        return sb.toString();
    }

    public final boolean zzb(int i) {
        return (this.zzi & i) == i;
    }
}
