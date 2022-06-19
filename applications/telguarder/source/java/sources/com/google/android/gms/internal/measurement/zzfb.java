package com.google.android.gms.internal.measurement;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfb.class */
public final class zzfb extends zzfg<Boolean> {
    public zzfb(zzfe zzfeVar, String str, Boolean bool, boolean z) {
        super(zzfeVar, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzfg
    final /* bridge */ /* synthetic */ Boolean zza(Object obj) {
        Boolean bool;
        boolean z;
        if (zzei.zzc.matcher(obj).matches()) {
            z = true;
        } else if (!zzei.zzd.matcher(obj).matches()) {
            String zzd = super.zzd();
            int length = String.valueOf(zzd).length();
            String str = (String) obj;
            StringBuilder sb = new StringBuilder(length + 28 + str.length());
            sb.append("Invalid boolean value for ");
            sb.append(zzd);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            bool = null;
            return bool;
        } else {
            z = false;
        }
        bool = Boolean.valueOf(z);
        return bool;
    }
}
