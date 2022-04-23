package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzss.class */
public final class zzss extends zzsl<Double> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzss(zzsv zzsvVar, String str, Double d) {
        super(zzsvVar, str, d, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzfm */
    public final Double zzfj(String str) {
        try {
            return Double.valueOf(Double.parseDouble(str));
        } catch (NumberFormatException e) {
            String str2 = this.zzbrc;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 27 + String.valueOf(str).length());
            sb.append("Invalid double value for ");
            sb.append(str2);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            return null;
        }
    }
}
