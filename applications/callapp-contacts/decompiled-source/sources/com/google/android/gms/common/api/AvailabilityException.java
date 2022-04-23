package com.google.android.gms.common.api;

import android.text.TextUtils;
import androidx.b.a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.b;
import com.google.android.gms.common.internal.o;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/AvailabilityException.class */
public class AvailabilityException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final a<b<?>, ConnectionResult> f22607a;

    public AvailabilityException(a<b<?>, ConnectionResult> aVar) {
        this.f22607a = aVar;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (b<?> bVar : this.f22607a.keySet()) {
            ConnectionResult connectionResult = (ConnectionResult) o.a(this.f22607a.get(bVar));
            z &= !connectionResult.isSuccess();
            String str = bVar.f22670a.f22612c;
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
