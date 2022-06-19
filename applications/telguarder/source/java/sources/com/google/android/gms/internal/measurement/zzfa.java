package com.google.android.gms.internal.measurement;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfa.class */
public final class zzfa extends zzfg<Long> {
    public zzfa(zzfe zzfeVar, String str, Long l, boolean z) {
        super(zzfeVar, str, l, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzfg
    final /* bridge */ /* synthetic */ Long zza(Object obj) {
        Long l;
        try {
            l = Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException e) {
            String zzd = super.zzd();
            int length = String.valueOf(zzd).length();
            String str = (String) obj;
            StringBuilder sb = new StringBuilder(length + 25 + str.length());
            sb.append("Invalid long value for ");
            sb.append(zzd);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            l = null;
        }
        return l;
    }
}
