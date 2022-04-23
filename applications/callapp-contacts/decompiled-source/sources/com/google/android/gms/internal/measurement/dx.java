package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dx.class */
public final class dx extends ec<Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dx(ea eaVar, String str, Boolean bool, boolean z) {
        super(eaVar, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.ec
    final /* synthetic */ Boolean a(Object obj) {
        Boolean bool;
        if (de.f28952c.matcher(obj).matches()) {
            bool = Boolean.TRUE;
        } else if (de.f28953d.matcher(obj).matches()) {
            bool = Boolean.FALSE;
        } else {
            String str = this.f28985b;
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
