package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbh.class */
public final class zzbh extends zzaw {
    public zzbh() {
        this.zza.add(zzbl.FOR_IN);
        this.zza.add(zzbl.FOR_IN_CONST);
        this.zza.add(zzbl.FOR_IN_LET);
        this.zza.add(zzbl.FOR_LET);
        this.zza.add(zzbl.FOR_OF);
        this.zza.add(zzbl.FOR_OF_CONST);
        this.zza.add(zzbl.FOR_OF_LET);
        this.zza.add(zzbl.WHILE);
    }

    private static zzap zzc(zzbf zzbfVar, zzap zzapVar, zzap zzapVar2) {
        return zze(zzbfVar, zzapVar.zzf(), zzapVar2);
    }

    private static zzap zzd(zzbf zzbfVar, zzap zzapVar, zzap zzapVar2) {
        if (zzapVar instanceof Iterable) {
            return zze(zzbfVar, ((Iterable) zzapVar).iterator(), zzapVar2);
        }
        throw new IllegalArgumentException("Non-iterable type in for...of loop.");
    }

    private static zzap zze(zzbf zzbfVar, Iterator<zzap> it2, zzap zzapVar) {
        if (it2 != null) {
            while (it2.hasNext()) {
                zzap zzb = zzbfVar.zza(it2.next()).zzb((zzae) zzapVar);
                if (zzb instanceof zzag) {
                    zzag zzagVar = (zzag) zzb;
                    if ("break".equals(zzagVar.zzg())) {
                        return zzap.zzf;
                    }
                    if ("return".equals(zzagVar.zzg())) {
                        return zzagVar;
                    }
                }
            }
        }
        return zzap.zzf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x03de, code lost:
        if ("return".equals(r7.zzg()) != false) goto L90;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v9 */
    @Override // com.google.android.gms.internal.measurement.zzaw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.zzap zza(java.lang.String r7, com.google.android.gms.internal.measurement.zzg r8, java.util.List<com.google.android.gms.internal.measurement.zzap> r9) {
        /*
            Method dump skipped, instructions count: 1084
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbh.zza(java.lang.String, com.google.android.gms.internal.measurement.zzg, java.util.List):com.google.android.gms.internal.measurement.zzap");
    }
}
