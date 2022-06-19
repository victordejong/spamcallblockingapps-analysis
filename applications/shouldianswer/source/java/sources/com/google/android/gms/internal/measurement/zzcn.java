package com.google.android.gms.internal.measurement;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcn.class */
public final class zzcn extends zzcl<Long> {
    public zzcn(zzcr zzcrVar, String str, Long l) {
        super(zzcrVar, str, l, null);
    }

    /* renamed from: zzb */
    public final Long zza(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException e) {
            }
        }
        String zzb = super.zzb();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(zzb).length() + 25 + String.valueOf(valueOf).length());
        sb.append("Invalid long value for ");
        sb.append(zzb);
        sb.append(": ");
        sb.append(valueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
