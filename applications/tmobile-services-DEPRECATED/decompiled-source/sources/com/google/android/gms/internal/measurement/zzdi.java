package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdi.class */
public final class zzdi extends zzdh<Long> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdi(zzdm zzdmVar, String str, Long l, boolean z) {
        super(zzdmVar, str, l, true, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public final Long mo12756e(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException e) {
            }
        }
        String n = super.m12765n();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(n).length() + 25 + String.valueOf(valueOf).length());
        sb.append("Invalid long value for ");
        sb.append(n);
        sb.append(": ");
        sb.append(valueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
