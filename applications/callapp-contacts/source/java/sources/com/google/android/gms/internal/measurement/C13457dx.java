package com.google.android.gms.internal.measurement;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.measurement.dx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dx.class */
public final class C13457dx extends AbstractC13463ec<Boolean> {
    public C13457dx(C13461ea c13461ea, String str, Boolean bool, boolean z) {
        super(c13461ea, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC13463ec
    /* renamed from: a */
    final /* synthetic */ Boolean mo12902a(Object obj) {
        Boolean bool;
        if (C13438de.f50624c.matcher(obj).matches()) {
            bool = Boolean.TRUE;
        } else if (C13438de.f50625d.matcher(obj).matches()) {
            bool = Boolean.FALSE;
        } else {
            String str = this.f50680b;
            int length = String.valueOf(str).length();
            String str2 = (String) obj;
            StringBuilder sb = new StringBuilder(length + 28 + str2.length());
            sb.append("Invalid boolean value for ");
            sb.append(str);
            sb.append(": ");
            sb.append(str2);
            Log.e("PhenotypeFlag", sb.toString());
            bool = null;
        }
        return bool;
    }
}
