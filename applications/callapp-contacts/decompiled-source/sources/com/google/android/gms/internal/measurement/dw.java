package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dw.class */
public final class dw extends ec<Long> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dw(ea eaVar, String str, Long l, boolean z) {
        super(eaVar, str, l, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.ec
    final /* synthetic */ Long a(Object obj) {
        Long l;
        try {
            l = Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException e) {
            String str = this.f28985b;
            int length = String.valueOf(str).length();
            String str2 = (String) obj;
            StringBuilder sb = new StringBuilder(length + 25 + str2.length());
            sb.append("Invalid long value for ");
            sb.append(str);
            sb.append(": ");
            sb.append(str2);
            Log.e("PhenotypeFlag", sb.toString());
            l = null;
        }
        return l;
    }
}
