package com.google.android.gms.common.api;

import android.text.TextUtils;
import androidx.p013b.C0373a;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.api.internal.C2531b;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/AvailabilityException.class */
public class AvailabilityException extends Exception {

    /* renamed from: a */
    private final C0373a<C2531b<?>, C2579b> f7025a;

    public AvailabilityException(C0373a<C2531b<?>, C2579b> c0373a) {
        this.f7025a = c0373a;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (C2531b<?> c2531b : this.f7025a.keySet()) {
            C2579b c2579b = this.f7025a.get(c2531b);
            if (c2579b.m14210b()) {
                z = false;
            }
            String m14357a = c2531b.m14357a();
            String valueOf = String.valueOf(c2579b);
            arrayList.add(new StringBuilder(String.valueOf(m14357a).length() + 2 + String.valueOf(valueOf).length()).append(m14357a).append(": ").append(valueOf).toString());
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("None of the queried APIs are available. ");
        } else {
            sb.append("Some of the queried APIs are unavailable. ");
        }
        sb.append(TextUtils.join("; ", arrayList));
        return sb.toString();
    }
}
