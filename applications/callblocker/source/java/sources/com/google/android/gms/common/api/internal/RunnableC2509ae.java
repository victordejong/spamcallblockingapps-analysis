package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.api.internal.C2548f;
import java.util.Map;
/* renamed from: com.google.android.gms.common.api.internal.ae */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ae.class */
final class RunnableC2509ae implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C2579b f7084a;

    /* renamed from: b */
    private final /* synthetic */ C2548f.C2550b f7085b;

    public RunnableC2509ae(C2548f.C2550b c2550b, C2579b c2579b) {
        this.f7085b = c2550b;
        this.f7084a = c2579b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2531b c2531b;
        C2471a.AbstractC2483f abstractC2483f;
        C2471a.AbstractC2483f abstractC2483f2;
        C2471a.AbstractC2483f abstractC2483f3;
        Map map = C2548f.this.f7181m;
        c2531b = this.f7085b.f7201c;
        C2548f.C2549a c2549a = (C2548f.C2549a) map.get(c2531b);
        if (c2549a == null) {
            return;
        }
        if (!this.f7084a.m14210b()) {
            c2549a.mo14238b(this.f7084a);
            return;
        }
        this.f7085b.f7204f = true;
        abstractC2483f = this.f7085b.f7200b;
        if (abstractC2483f.mo6530h()) {
            this.f7085b.m14259a();
            return;
        }
        try {
            abstractC2483f2 = this.f7085b.f7200b;
            abstractC2483f3 = this.f7085b.f7200b;
            abstractC2483f2.m14449a(null, abstractC2483f3.mo14020l());
        } catch (SecurityException e) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
            c2549a.mo14238b(new C2579b(10));
        }
    }
}
