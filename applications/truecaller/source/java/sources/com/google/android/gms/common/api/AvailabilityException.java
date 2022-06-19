package com.google.android.gms.common.api;

import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.ApiKey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import p1727n3.p1788g.AbstractC26181g;
import p1727n3.p1788g.C26174a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/AvailabilityException.class */
public class AvailabilityException extends Exception {

    /* renamed from: a */
    public final C26174a<ApiKey<?>, ConnectionResult> f5694a;

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((AbstractC26181g.C26184c) this.f5694a.keySet()).iterator();
        boolean z = true;
        while (true) {
            AbstractC26181g.C26182a c26182a = (AbstractC26181g.C26182a) it;
            if (!c26182a.hasNext()) {
                break;
            }
            ApiKey apiKey = (ApiKey) c26182a.next();
            ConnectionResult connectionResult = this.f5694a.get(apiKey);
            Objects.requireNonNull(connectionResult, "null reference");
            z &= !connectionResult.m39076p2();
            String str = apiKey.f5734b.f5691c;
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + valueOf.length());
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
