package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaz.class */
public final class zzaz extends zzaw {
    public zzaz() {
        this.zza.add(zzbl.APPLY);
        this.zza.add(zzbl.BLOCK);
        this.zza.add(zzbl.BREAK);
        this.zza.add(zzbl.CASE);
        this.zza.add(zzbl.DEFAULT);
        this.zza.add(zzbl.CONTINUE);
        this.zza.add(zzbl.DEFINE_FUNCTION);
        this.zza.add(zzbl.FN);
        this.zza.add(zzbl.IF);
        this.zza.add(zzbl.QUOTE);
        this.zza.add(zzbl.RETURN);
        this.zza.add(zzbl.SWITCH);
        this.zza.add(zzbl.TERNARY);
    }

    private static zzap zzc(zzg zzgVar, List<zzap> list) {
        zzh.zzb(zzbl.FN.name(), 2, list);
        zzap zza = zzgVar.zza(list.get(0));
        zzap zza2 = zzgVar.zza(list.get(1));
        if (zza2 instanceof zzae) {
            List<zzap> zzb = ((zzae) zza2).zzb();
            ArrayList arrayList = new ArrayList();
            if (list.size() > 2) {
                arrayList = list.subList(2, list.size());
            }
            return new zzao(zza.zzc(), zzb, arrayList, zzgVar);
        }
        throw new IllegalArgumentException(String.format("FN requires an ArrayValue of parameter names found %s", zza2.getClass().getCanonicalName()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x01c0, code lost:
        if (r0.equals("continue") == false) goto L66;
     */
    @Override // com.google.android.gms.internal.measurement.zzaw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.zzap zza(java.lang.String r10, com.google.android.gms.internal.measurement.zzg r11, java.util.List<com.google.android.gms.internal.measurement.zzap> r12) {
        /*
            Method dump skipped, instructions count: 914
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzaz.zza(java.lang.String, com.google.android.gms.internal.measurement.zzg, java.util.List):com.google.android.gms.internal.measurement.zzap");
    }
}
