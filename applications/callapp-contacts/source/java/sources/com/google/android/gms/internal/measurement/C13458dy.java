package com.google.android.gms.internal.measurement;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.measurement.dy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dy.class */
final class C13458dy extends AbstractC13463ec<Double> {
    public C13458dy(C13461ea c13461ea, String str, Double d, boolean z) {
        super(c13461ea, "measurement.test.double_flag", d, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13463ec
    /* renamed from: a */
    final /* synthetic */ Double mo12902a(Object obj) {
        Double d;
        try {
            d = Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException e) {
            String str = this.f50680b;
            int length = String.valueOf(str).length();
            String str2 = (String) obj;
            StringBuilder sb = new StringBuilder(length + 27 + str2.length());
            sb.append("Invalid double value for ");
            sb.append(str);
            sb.append(": ");
            sb.append(str2);
            Log.e("PhenotypeFlag", sb.toString());
            d = null;
        }
        return d;
    }
}
