package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzax.class */
public final class zzax {
    long zzcl;
    final String zzcm;
    final String zzr;
    final long zzs;
    final long zzt;
    final long zzu;
    final long zzv;
    final List<zzv> zzx;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzax(java.lang.String r14, com.google.android.gms.internal.ads.zzn r15) {
        /*
            r13 = this;
            r0 = r15
            java.lang.String r0 = r0.zzr
            r16 = r0
            r0 = r15
            long r0 = r0.zzs
            r17 = r0
            r0 = r15
            long r0 = r0.zzt
            r19 = r0
            r0 = r15
            long r0 = r0.zzu
            r21 = r0
            r0 = r15
            long r0 = r0.zzv
            r23 = r0
            r0 = r15
            java.util.List<com.google.android.gms.internal.ads.zzv> r0 = r0.zzx
            if (r0 == 0) goto L2c
            r0 = r15
            java.util.List<com.google.android.gms.internal.ads.zzv> r0 = r0.zzx
            r15 = r0
            goto L8a
        L2c:
            r0 = r15
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.zzw
            r25 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r25
            int r2 = r2.size()
            r1.<init>(r2)
            r15 = r0
            r0 = r25
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r26 = r0
        L4f:
            r0 = r26
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L8a
            r0 = r26
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r25 = r0
            r0 = r15
            com.google.android.gms.internal.ads.zzv r1 = new com.google.android.gms.internal.ads.zzv
            r2 = r1
            r3 = r25
            java.lang.Object r3 = r3.getKey()
            java.lang.String r3 = (java.lang.String) r3
            r4 = r25
            java.lang.Object r4 = r4.getValue()
            java.lang.String r4 = (java.lang.String) r4
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            goto L4f
        L8a:
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzax.<init>(java.lang.String, com.google.android.gms.internal.ads.zzn):void");
    }

    private zzax(String str, String str2, long j, long j2, long j3, long j4, List<zzv> list) {
        this.zzcm = str;
        this.zzr = "".equals(str2) ? null : str2;
        this.zzs = j;
        this.zzt = j2;
        this.zzu = j3;
        this.zzv = j4;
        this.zzx = list;
    }

    public static zzax zzc(zzba zzbaVar) throws IOException {
        if (zzav.zzb((InputStream) zzbaVar) == 538247942) {
            return new zzax(zzav.zza(zzbaVar), zzav.zza(zzbaVar), zzav.zzc(zzbaVar), zzav.zzc(zzbaVar), zzav.zzc(zzbaVar), zzav.zzc(zzbaVar), zzav.zzb(zzbaVar));
        }
        throw new IOException();
    }

    public final boolean zza(OutputStream outputStream) {
        try {
            zzav.zza(outputStream, 538247942);
            zzav.zza(outputStream, this.zzcm);
            String str = this.zzr;
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            zzav.zza(outputStream, str2);
            zzav.zza(outputStream, this.zzs);
            zzav.zza(outputStream, this.zzt);
            zzav.zza(outputStream, this.zzu);
            zzav.zza(outputStream, this.zzv);
            List<zzv> list = this.zzx;
            if (list != null) {
                zzav.zza(outputStream, list.size());
                for (zzv zzvVar : list) {
                    zzav.zza(outputStream, zzvVar.getName());
                    zzav.zza(outputStream, zzvVar.getValue());
                }
            } else {
                zzav.zza(outputStream, 0);
            }
            outputStream.flush();
            return true;
        } catch (IOException e) {
            zzao.m1356d("%s", e.toString());
            return false;
        }
    }
}
