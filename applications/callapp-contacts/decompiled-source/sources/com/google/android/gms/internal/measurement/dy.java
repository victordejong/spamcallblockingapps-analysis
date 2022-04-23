package com.google.android.gms.internal.measurement;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dy.class */
final class dy extends ec<Double> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dy(ea eaVar, String str, Double d2, boolean z) {
        super(eaVar, "measurement.test.double_flag", d2, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.ec
    final /* synthetic */ Double a(Object obj) {
        Double d2;
        try {
            d2 = Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException e) {
            String str = this.f28985b;
            int length = String.valueOf(str).length();
            String str2 = (String) obj;
            StringBuilder sb = new StringBuilder(length + 27 + str2.length());
            sb.append("Invalid double value for ");
            sb.append(str);
            sb.append(": ");
            sb.append(str2);
            Log.e("PhenotypeFlag", sb.toString());
            d2 = null;
        }
        return d2;
    }
}
