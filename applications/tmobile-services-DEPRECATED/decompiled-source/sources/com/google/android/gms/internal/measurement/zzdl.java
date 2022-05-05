package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdl.class */
public final class zzdl extends zzdh<Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdl(zzdm zzdmVar, String str, Boolean bool, boolean z) {
        super(zzdmVar, str, bool, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdh
    /* renamed from: e */
    final /* synthetic */ Boolean mo12756e(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (zzcp.f8310c.matcher(str).matches()) {
                return Boolean.TRUE;
            }
            if (zzcp.f8311d.matcher(str).matches()) {
                return Boolean.FALSE;
            }
        }
        String n = super.m12765n();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(n).length() + 28 + String.valueOf(valueOf).length());
        sb.append("Invalid boolean value for ");
        sb.append(n);
        sb.append(": ");
        sb.append(valueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
