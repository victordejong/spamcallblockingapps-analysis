package com.google.android.gms.internal.measurement;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.measurement.t3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/t3.class */
public final class C7555t3 extends AbstractC7607x3<Double> {
    public C7555t3(C7581v3 c7581v3, String str, Double d, boolean z) {
        super(c7581v3, "measurement.test.double_flag", d, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7607x3
    /* renamed from: a */
    final /* bridge */ /* synthetic */ Double mo6775a(Object obj) {
        Double d;
        try {
            d = Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException e) {
            String m6772d = super.m6772d();
            int length = String.valueOf(m6772d).length();
            String str = (String) obj;
            StringBuilder sb = new StringBuilder(length + 27 + str.length());
            sb.append("Invalid double value for ");
            sb.append(m6772d);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            d = null;
        }
        return d;
    }
}
