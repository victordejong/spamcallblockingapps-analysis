package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvd.class */
public final class cvd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ cwd f26454a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cvd(cwd cwdVar) {
        this.f26454a = cwdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        dtg dtgVar;
        ConditionVariable conditionVariable2;
        if (this.f26454a.f26491b == null) {
            conditionVariable = cwd.f26490d;
            synchronized (conditionVariable) {
                if (this.f26454a.f26491b == null) {
                    boolean z = false;
                    try {
                        z = aq.bv.a().booleanValue();
                    } catch (IllegalStateException e) {
                        z = false;
                    }
                    if (z) {
                        try {
                            dtgVar = this.f26454a.f26492c;
                            cwd.f26489a = new ehq(dtgVar.f27190a, "ADSHIELD", null);
                        } catch (Throwable th) {
                        }
                    }
                    this.f26454a.f26491b = Boolean.valueOf(z);
                    conditionVariable2 = cwd.f26490d;
                    conditionVariable2.open();
                }
            }
        }
    }
}
