package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbds.class */
public final class zzbds extends zzbdd implements zzbcu {
    private String zzekh;
    private boolean zzeqe;
    private zzbck zzeqm;
    private Exception zzeqn;
    private boolean zzeqo;

    public zzbds(zzbbo zzbboVar, zzbbl zzbblVar) {
        super(zzbboVar);
        zzbck zzbckVar = new zzbck(zzbboVar.getContext(), zzbblVar, this.zzepn.get());
        this.zzeqm = zzbckVar;
        zzbckVar.zza(this);
    }

    private static String zzb(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        return sb.toString();
    }

    private final void zzfj(String str) {
        synchronized (this) {
            this.zzeqe = true;
            notify();
            release();
        }
        String str2 = this.zzekh;
        if (str2 != null) {
            String zzfh = zzfh(str2);
            Exception exc = this.zzeqn;
            if (exc != null) {
                zza(this.zzekh, zzfh, "badUrl", zzb(str, exc));
            } else {
                zza(this.zzekh, zzfh, "externalAbort", "Programmatic precache abort.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void abort() {
        zzfj(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbdd, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzbck zzbckVar = this.zzeqm;
        if (zzbckVar != null) {
            zzbckVar.zza((zzbcu) null);
            this.zzeqm.release();
        }
        super.release();
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zza(String str, Exception exc) {
        String str2 = (String) zzwr.zzqr().zzd(zzabp.zzcmu);
        if (str2 != null) {
            List asList = Arrays.asList(str2.split(","));
            if (asList.contains("all") || asList.contains(exc.getClass().getCanonicalName())) {
                return;
            }
        }
        this.zzeqn = exc;
        zzd.zzd("Precache error", exc);
        zzfj(str);
    }

    public final zzbck zzaco() {
        synchronized (this) {
            this.zzeqo = true;
            notify();
        }
        this.zzeqm.zza((zzbcu) null);
        zzbck zzbckVar = this.zzeqm;
        this.zzeqm = null;
        return zzbckVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zzb(boolean z, long j) {
        zzbbo zzbboVar = this.zzepn.get();
        if (zzbboVar != null) {
            zzazp.zzeig.execute(new Runnable(zzbboVar, z, j) { // from class: com.google.android.gms.internal.ads.zzbdr
                private final boolean zzekn;
                private final long zzeno;
                private final zzbbo zzeol;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzeol = zzbboVar;
                    this.zzekn = z;
                    this.zzeno = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzeol.zza(this.zzekn, this.zzeno);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void zzdk(int i) {
        this.zzeqm.zzacl().zzds(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void zzdl(int i) {
        this.zzeqm.zzacl().zzdt(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void zzdm(int i) {
        this.zzeqm.zzacl().zzdm(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void zzdn(int i) {
        this.zzeqm.zzacl().zzdn(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zzdq(int i) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x0346, code lost:
        r0 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x049b, code lost:
        r0 = r21;
        r21 = r0;
        r19 = r20;
        r20 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0198, code lost:
        r0 = r20.zzeqn;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01a0, code lost:
        if (r0 == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01a9, code lost:
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01c9, code lost:
        throw new java.io.IOException("Abort requested before buffering finished. ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01ca, code lost:
        r26 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v256, types: [long] */
    /* JADX WARN: Type inference failed for: r0v316, types: [long] */
    /* JADX WARN: Type inference failed for: r0v320, types: [long] */
    /* JADX WARN: Type inference failed for: r0v324, types: [long] */
    /* JADX WARN: Type inference failed for: r19v16 */
    /* JADX WARN: Type inference failed for: r19v17 */
    @Override // com.google.android.gms.internal.ads.zzbdd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zze(java.lang.String r18, java.lang.String[] r19) {
        /*
            Method dump skipped, instructions count: 1355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbds.zze(java.lang.String, java.lang.String[]):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final boolean zzfg(String str) {
        return zze(str, new String[]{str});
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final String zzfh(String str) {
        String valueOf = String.valueOf(super.zzfh(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zzn(int i, int i2) {
    }
}
