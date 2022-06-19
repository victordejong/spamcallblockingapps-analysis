package com.google.android.gms.internal.common;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/common/zzw.class */
public abstract class zzw extends zzj<String> {
    public final CharSequence zzb;
    public final zzo zzc;
    public final boolean zzd;
    public int zze = 0;
    public int zzf = Integer.MAX_VALUE;

    public zzw(zzx zzxVar, CharSequence charSequence) {
        zzo zzoVar;
        boolean z;
        zzoVar = zzxVar.zza;
        this.zzc = zzoVar;
        z = zzxVar.zzb;
        this.zzd = z;
        this.zzb = charSequence;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0092, code lost:
        r0 = r4.zzf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0099, code lost:
        if (r0 != 1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009c, code lost:
        r0 = r4.zzb.length();
        r4.zze = -1;
        r6 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00af, code lost:
        if (r0 <= r5) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b2, code lost:
        r4.zzb.charAt(r0 - 1);
        r6 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c4, code lost:
        r4.zzf = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00cb, code lost:
        r8 = r4.zzb.subSequence(r5, r6).toString();
     */
    @Override // com.google.android.gms.internal.common.zzj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ java.lang.String zza() {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.common.zzw.zza():java.lang.Object");
    }

    public abstract int zzc(int i);

    public abstract int zzd(int i);
}
