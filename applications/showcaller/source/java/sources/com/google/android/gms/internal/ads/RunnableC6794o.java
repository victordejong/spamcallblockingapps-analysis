package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
/* renamed from: com.google.android.gms.internal.ads.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o.class */
public final class RunnableC6794o implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C6831p f27382d;

    public RunnableC6794o(C6831p c6831p) {
        this.f27382d = c6831p;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        boolean z;
        C6869q0 c6869q0;
        ConditionVariable conditionVariable2;
        if (this.f27382d.f27805e != null) {
            return;
        }
        conditionVariable = C6831p.f27801a;
        synchronized (conditionVariable) {
            if (this.f27382d.f27805e != null) {
                return;
            }
            try {
                z = C6679kw.f25477F1.m12799e().booleanValue();
            } catch (IllegalStateException e) {
                z = false;
            }
            if (z) {
                try {
                    c6869q0 = this.f27382d.f27804d;
                    C6831p.f27802b = new jt2(c6869q0.f28255b, "ADSHIELD", null);
                } catch (Throwable th) {
                    z = false;
                }
            }
            this.f27382d.f27805e = Boolean.valueOf(z);
            conditionVariable2 = C6831p.f27801a;
            conditionVariable2.open();
        }
    }
}
