package com.google.android.gms.internal.measurement;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.measurement.bn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bn.class */
public final class C3825bn extends AbstractC3821bj<Double> {
    public C3825bn(C3827bp c3827bp, String str, Double d, boolean z) {
        super(c3827bp, str, d, z, null);
    }

    /* renamed from: b */
    public final Double mo5857a(Object obj) {
        Double valueOf;
        if (obj instanceof Double) {
            valueOf = (Double) obj;
        } else if (obj instanceof Float) {
            valueOf = Double.valueOf(((Float) obj).doubleValue());
        } else {
            if (obj instanceof String) {
                try {
                    valueOf = Double.valueOf(Double.parseDouble((String) obj));
                } catch (NumberFormatException e) {
                }
            }
            String m5871b = super.m5871b();
            String valueOf2 = String.valueOf(obj);
            Log.e("PhenotypeFlag", new StringBuilder(String.valueOf(m5871b).length() + 27 + String.valueOf(valueOf2).length()).append("Invalid double value for ").append(m5871b).append(": ").append(valueOf2).toString());
            valueOf = null;
        }
        return valueOf;
    }
}
