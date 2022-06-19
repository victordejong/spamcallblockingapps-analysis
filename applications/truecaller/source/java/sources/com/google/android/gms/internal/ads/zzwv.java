package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwv.class */
public final class zzwv {
    public long zza;
    public final String zzb;
    public final String zzc;
    public final long zzd;
    public final long zze;
    public final long zzf;
    public final long zzg;
    public final List<zzvu> zzh;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzwv(java.lang.String r14, com.google.android.gms.internal.ads.zzvl r15) {
        /*
            r13 = this;
            r0 = r15
            java.lang.String r0 = r0.zzb
            r16 = r0
            r0 = r15
            long r0 = r0.zzc
            r17 = r0
            r0 = r15
            long r0 = r0.zzd
            r19 = r0
            r0 = r15
            long r0 = r0.zze
            r21 = r0
            r0 = r15
            long r0 = r0.zzf
            r23 = r0
            r0 = r15
            java.util.List<com.google.android.gms.internal.ads.zzvu> r0 = r0.zzh
            r25 = r0
            r0 = r25
            if (r0 == 0) goto L2e
            r0 = r25
            r15 = r0
        L2b:
            goto L89
        L2e:
            r0 = r15
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.zzg
            r15 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r15
            int r2 = r2.size()
            r1.<init>(r2)
            r25 = r0
            r0 = r15
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r26 = r0
        L4f:
            r0 = r25
            r15 = r0
            r0 = r26
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L2b
            r0 = r26
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r15 = r0
            r0 = r25
            com.google.android.gms.internal.ads.zzvu r1 = new com.google.android.gms.internal.ads.zzvu
            r2 = r1
            r3 = r15
            java.lang.Object r3 = r3.getKey()
            java.lang.String r3 = (java.lang.String) r3
            r4 = r15
            java.lang.Object r4 = r4.getValue()
            java.lang.String r4 = (java.lang.String) r4
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            goto L4f
        L89:
            r0 = r13
            r1 = r14
            r2 = r16
            r3 = r17
            r4 = r19
            r5 = r21
            r6 = r23
            r7 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzwv.<init>(java.lang.String, com.google.android.gms.internal.ads.zzvl):void");
    }

    private zzwv(String str, String str2, long j, long j2, long j3, long j4, List<zzvu> list) {
        this.zzb = str;
        this.zzc = true == "".equals(str2) ? null : str2;
        this.zzd = j;
        this.zze = j2;
        this.zzf = j3;
        this.zzg = j4;
        this.zzh = list;
    }

    public static zzwv zza(zzww zzwwVar) throws IOException {
        if (zzwy.zzi(zzwwVar) == 538247942) {
            String zzm = zzwy.zzm(zzwwVar);
            String zzm2 = zzwy.zzm(zzwwVar);
            long zzk = zzwy.zzk(zzwwVar);
            long zzk2 = zzwy.zzk(zzwwVar);
            long zzk3 = zzwy.zzk(zzwwVar);
            long zzk4 = zzwy.zzk(zzwwVar);
            int zzi = zzwy.zzi(zzwwVar);
            if (zzi < 0) {
                throw new IOException(C22128a.m8690L1(31, "readHeaderList size=", zzi));
            }
            ArrayList emptyList = zzi == 0 ? Collections.emptyList() : new ArrayList();
            for (int i = 0; i < zzi; i++) {
                emptyList.add(new zzvu(zzwy.zzm(zzwwVar).intern(), zzwy.zzm(zzwwVar).intern()));
            }
            return new zzwv(zzm, zzm2, zzk, zzk2, zzk3, zzk4, emptyList);
        }
        throw new IOException();
    }
}
