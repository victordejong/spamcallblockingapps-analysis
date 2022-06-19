package com.google.android.gms.internal.measurement;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.measurement.bo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bo.class */
public final class C3826bo extends AbstractC3821bj<Boolean> {
    public C3826bo(C3827bp c3827bp, String str, Boolean bool, boolean z) {
        super(c3827bp, str, bool, z, null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3821bj
    /* renamed from: a */
    final /* synthetic */ Boolean mo5857a(Object obj) {
        Boolean bool;
        if (obj instanceof Boolean) {
            bool = (Boolean) obj;
        } else {
            if (obj instanceof String) {
                String str = (String) obj;
                if (C3805au.f17845b.matcher(str).matches()) {
                    bool = true;
                } else if (C3805au.f17846c.matcher(str).matches()) {
                    bool = false;
                }
            }
            String m5871b = super.m5871b();
            String valueOf = String.valueOf(obj);
            Log.e("PhenotypeFlag", new StringBuilder(String.valueOf(m5871b).length() + 28 + String.valueOf(valueOf).length()).append("Invalid boolean value for ").append(m5871b).append(": ").append(valueOf).toString());
            bool = null;
        }
        return bool;
    }
}
