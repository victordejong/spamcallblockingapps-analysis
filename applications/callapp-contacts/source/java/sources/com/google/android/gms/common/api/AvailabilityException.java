package com.google.android.gms.common.api;

import android.text.TextUtils;
import androidx.p023b.C0428a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.C11859b;
import com.google.android.gms.common.internal.C12045o;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/AvailabilityException.class */
public class AvailabilityException extends Exception {

    /* renamed from: a */
    private final C0428a<C11859b<?>, ConnectionResult> f39172a;

    public AvailabilityException(C0428a<C11859b<?>, ConnectionResult> c0428a) {
        this.f39172a = c0428a;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (C11859b<?> c11859b : this.f39172a.keySet()) {
            ConnectionResult connectionResult = (ConnectionResult) C12045o.m19162a(this.f39172a.get(c11859b));
            z &= !connectionResult.isSuccess();
            String str = c11859b.f39267a.f39177c;
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(valueOf).length());
            sb.append(str);
            sb.append(": ");
            sb.append(valueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        if (z) {
            sb2.append("None of the queried APIs are available. ");
        } else {
            sb2.append("Some of the queried APIs are unavailable. ");
        }
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }
}
