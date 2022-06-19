package com.google.android.gms.internal.measurement;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.measurement.bl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bl.class */
public final class C3823bl extends AbstractC3821bj<Long> {
    public C3823bl(C3827bp c3827bp, String str, Long l, boolean z) {
        super(c3827bp, str, l, z, null);
    }

    /* renamed from: b */
    public final Long mo5857a(Object obj) {
        Long valueOf;
        if (obj instanceof Long) {
            valueOf = (Long) obj;
        } else {
            if (obj instanceof String) {
                try {
                    valueOf = Long.valueOf(Long.parseLong((String) obj));
                } catch (NumberFormatException e) {
                }
            }
            String m5871b = super.m5871b();
            String valueOf2 = String.valueOf(obj);
            Log.e("PhenotypeFlag", new StringBuilder(String.valueOf(m5871b).length() + 25 + String.valueOf(valueOf2).length()).append("Invalid long value for ").append(m5871b).append(": ").append(valueOf2).toString());
            valueOf = null;
        }
        return valueOf;
    }
}
