package com.google.android.gms.internal.measurement;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfc.class */
public final class zzfc extends zzfg<Double> {
    public zzfc(zzfe zzfeVar, String str, Double d, boolean z) {
        super(zzfeVar, "measurement.test.double_flag", d, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzfg
    final /* bridge */ /* synthetic */ Double zza(Object obj) {
        Double d;
        try {
            d = Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException e) {
            String zzd = super.zzd();
            int length = String.valueOf(zzd).length();
            String str = (String) obj;
            StringBuilder sb = new StringBuilder(length + 27 + str.length());
            sb.append("Invalid double value for ");
            sb.append(zzd);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            d = null;
        }
        return d;
    }
}
