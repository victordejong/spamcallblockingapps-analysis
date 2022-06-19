package com.google.android.gms.internal.measurement;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.measurement.dw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dw.class */
public final class C13456dw extends AbstractC13463ec<Long> {
    public C13456dw(C13461ea c13461ea, String str, Long l, boolean z) {
        super(c13461ea, str, l, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13463ec
    /* renamed from: a */
    final /* synthetic */ Long mo12902a(Object obj) {
        Long l;
        try {
            l = Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException e) {
            String str = this.f50680b;
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
