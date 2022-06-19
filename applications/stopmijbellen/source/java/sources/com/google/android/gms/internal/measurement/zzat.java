package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzat.class */
public final class zzat implements Iterable<zzap>, zzap {
    private final String zza;

    public zzat(String str) {
        if (str != null) {
            this.zza = str;
            return;
        }
        throw new IllegalArgumentException("StringValue cannot be null.");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzat) {
            return this.zza.equals(((zzat) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<zzap> iterator() {
        return new zzas(this);
    }

    public final String toString() {
        String str = this.zza;
        StringBuilder sb = new StringBuilder(str.length() + 2);
        sb.append('\"');
        sb.append(str);
        sb.append('\"');
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:135:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x04ff A[LOOP:0: B:136:0x04f8->B:138:0x04ff, LOOP_END] */
    /* JADX WARN: Type inference failed for: r0v173, types: [double] */
    /* JADX WARN: Type inference failed for: r0v178, types: [double] */
    /* JADX WARN: Type inference failed for: r0v181, types: [double] */
    /* JADX WARN: Type inference failed for: r0v185, types: [double] */
    /* JADX WARN: Type inference failed for: r0v187, types: [double] */
    /* JADX WARN: Type inference failed for: r0v192, types: [double] */
    /* JADX WARN: Type inference failed for: r0v197, types: [double] */
    /* JADX WARN: Type inference failed for: r0v251, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [double] */
    /* JADX WARN: Type inference failed for: r0v79, types: [double] */
    /* JADX WARN: Type inference failed for: r0v84, types: [double] */
    @Override // com.google.android.gms.internal.measurement.zzap
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.zzap zzbK(java.lang.String r11, com.google.android.gms.internal.measurement.zzg r12, java.util.List<com.google.android.gms.internal.measurement.zzap> r13) {
        /*
            Method dump skipped, instructions count: 2503
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzat.zzbK(java.lang.String, com.google.android.gms.internal.measurement.zzg, java.util.List):com.google.android.gms.internal.measurement.zzap");
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double zzd() {
        if (this.zza.isEmpty()) {
            return Double.valueOf(0.0d);
        }
        try {
            return Double.valueOf(this.zza);
        } catch (NumberFormatException e) {
            return Double.valueOf(Double.NaN);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean zze() {
        return Boolean.valueOf(!this.zza.isEmpty());
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator<zzap> zzf() {
        return new zzar(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap zzt() {
        return new zzat(this.zza);
    }
}
