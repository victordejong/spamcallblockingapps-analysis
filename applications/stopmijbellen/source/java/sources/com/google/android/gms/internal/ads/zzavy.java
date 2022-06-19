package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import java.util.Arrays;
import p007a6.C0028d;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavy.class */
public final class zzavy {
    public final Uri zza;
    public final long zzb;
    public final long zzc;
    public final long zzd;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
        if (r12 == (-1)) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzavy(android.net.Uri r6, byte[] r7, long r8, long r10, long r12, java.lang.String r14, int r15) {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = 0
            r16 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L13
            r0 = 1
            r17 = r0
            goto L16
        L13:
            r0 = 0
            r17 = r0
        L16:
            r0 = r17
            com.google.android.gms.internal.ads.zzawm.zzc(r0)
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L28
            r0 = 1
            r17 = r0
            goto L2b
        L28:
            r0 = 0
            r17 = r0
        L2b:
            r0 = r17
            com.google.android.gms.internal.ads.zzawm.zzc(r0)
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L44
            r0 = r16
            r17 = r0
            r0 = r12
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L47
        L44:
            r0 = 1
            r17 = r0
        L47:
            r0 = r17
            com.google.android.gms.internal.ads.zzawm.zzc(r0)
            r0 = r5
            r1 = r6
            r0.zza = r1
            r0 = r5
            r1 = r8
            r0.zzb = r1
            r0 = r5
            r1 = r10
            r0.zzc = r1
            r0 = r5
            r1 = r12
            r0.zzd = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzavy.<init>(android.net.Uri, byte[], long, long, long, java.lang.String, int):void");
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        String arrays = Arrays.toString((byte[]) null);
        long j = this.zzb;
        long j2 = this.zzc;
        long j3 = this.zzd;
        StringBuilder sb = new StringBuilder(C0033h.m8890g(valueOf.length(), 93, String.valueOf(arrays).length(), 4));
        C0082b.m8749m(sb, "DataSpec[", valueOf, ", ", arrays);
        C0028d.m8911i(sb, ", ", j, ", ");
        sb.append(j2);
        sb.append(", ");
        sb.append(j3);
        sb.append(", null, 0]");
        return sb.toString();
    }
}
