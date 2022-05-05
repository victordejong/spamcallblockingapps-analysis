package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzsq.class */
public final class zzsq extends zzsl<Integer> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsq(zzsv zzsvVar, String str, Integer num) {
        super(zzsvVar, str, num, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzfl */
    public final Integer zzfj(String str) {
        try {
            return Integer.valueOf(Integer.parseInt(str));
        } catch (NumberFormatException e) {
            String str2 = this.zzbrc;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 28 + String.valueOf(str).length());
            sb.append("Invalid integer value for ");
            sb.append(str2);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            return null;
        }
    }
}
