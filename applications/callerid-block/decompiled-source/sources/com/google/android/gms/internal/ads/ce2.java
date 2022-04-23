package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ce2.class */
public final class ce2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ bf2 f6261b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ce2(bf2 bf2Var) {
        this.f6261b = bf2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        si2 si2Var;
        ConditionVariable conditionVariable2;
        if (this.f6261b.f6146b == null) {
            conditionVariable = bf2.f6142c;
            synchronized (conditionVariable) {
                if (this.f6261b.f6146b == null) {
                    boolean z = false;
                    try {
                        z = C1842m3.f7491r1.m6222e().booleanValue();
                    } catch (IllegalStateException e) {
                        z = false;
                    }
                    if (z) {
                        try {
                            si2Var = this.f6261b.f6145a;
                            bf2.f6143d = new dv1(si2Var.f8469a, "ADSHIELD", null);
                        } catch (Throwable th) {
                        }
                    }
                    this.f6261b.f6146b = Boolean.valueOf(z);
                    conditionVariable2 = bf2.f6142c;
                    conditionVariable2.open();
                }
            }
        }
    }
}
