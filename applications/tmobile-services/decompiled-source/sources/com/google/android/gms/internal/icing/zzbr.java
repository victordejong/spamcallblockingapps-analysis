package com.google.android.gms.internal.icing;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbr.class */
public final class zzbr extends zzbq<Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbr(zzbu zzbuVar, String str, Boolean bool) {
        super(zzbuVar, str, bool, null);
    }

    @Override // com.google.android.gms.internal.icing.zzbq
    /* renamed from: c */
    final /* synthetic */ Boolean mo14004c(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (zzax.f7882c.matcher(str).matches()) {
                return Boolean.TRUE;
            }
            if (zzax.f7883d.matcher(str).matches()) {
                return Boolean.FALSE;
            }
        }
        String h = super.m14006h();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(h).length() + 28 + String.valueOf(valueOf).length());
        sb.append("Invalid boolean value for ");
        sb.append(h);
        sb.append(": ");
        sb.append(valueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
