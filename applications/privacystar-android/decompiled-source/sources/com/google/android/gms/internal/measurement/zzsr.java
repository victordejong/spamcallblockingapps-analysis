package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzsr.class */
public final class zzsr extends zzsl<Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsr(zzsv zzsvVar, String str, Boolean bool) {
        super(zzsvVar, str, bool, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzsl
    protected final /* synthetic */ Boolean zzfj(String str) {
        if (zzsg.zzbqe.matcher(str).matches()) {
            return true;
        }
        if (zzsg.zzbqf.matcher(str).matches()) {
            return false;
        }
        String str2 = this.zzbrc;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 28 + String.valueOf(str).length());
        sb.append("Invalid boolean value for ");
        sb.append(str2);
        sb.append(": ");
        sb.append(str);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
