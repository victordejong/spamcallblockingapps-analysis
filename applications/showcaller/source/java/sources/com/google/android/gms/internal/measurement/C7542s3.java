package com.google.android.gms.internal.measurement;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.measurement.s3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/s3.class */
public final class C7542s3 extends AbstractC7607x3<Boolean> {
    public C7542s3(C7581v3 c7581v3, String str, Boolean bool, boolean z) {
        super(c7581v3, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC7607x3
    /* renamed from: a */
    final /* bridge */ /* synthetic */ Boolean mo6775a(Object obj) {
        Boolean bool;
        if (C7619y2.f34776c.matcher(obj).matches()) {
            bool = Boolean.TRUE;
        } else if (C7619y2.f34777d.matcher(obj).matches()) {
            bool = Boolean.FALSE;
        } else {
            String m6772d = super.m6772d();
            int length = String.valueOf(m6772d).length();
            String str = (String) obj;
            StringBuilder sb = new StringBuilder(length + 28 + str.length());
            sb.append("Invalid boolean value for ");
            sb.append(m6772d);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            bool = null;
        }
        return bool;
    }
}
