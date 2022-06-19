package com.google.android.gms.internal.measurement;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.measurement.r3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/r3.class */
public final class C7529r3 extends AbstractC7607x3<Long> {
    public C7529r3(C7581v3 c7581v3, String str, Long l, boolean z) {
        super(c7581v3, str, l, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7607x3
    /* renamed from: a */
    final /* bridge */ /* synthetic */ Long mo6775a(Object obj) {
        Long l;
        try {
            l = Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException e) {
            String m6772d = super.m6772d();
            int length = String.valueOf(m6772d).length();
            String str = (String) obj;
            StringBuilder sb = new StringBuilder(length + 25 + str.length());
            sb.append("Invalid long value for ");
            sb.append(m6772d);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            l = null;
        }
        return l;
    }
}
