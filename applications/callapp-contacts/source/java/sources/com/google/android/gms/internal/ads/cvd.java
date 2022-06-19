package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvd.class */
public final class cvd implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ cwd f46611a;

    public cvd(cwd cwdVar) {
        this.f46611a = cwdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        boolean z;
        dtg dtgVar;
        ConditionVariable conditionVariable2;
        if (this.f46611a.f46660b != null) {
            return;
        }
        conditionVariable = cwd.f46658d;
        synchronized (conditionVariable) {
            if (this.f46611a.f46660b != null) {
                return;
            }
            try {
                z = C12187aq.f42738bv.mo17481a().booleanValue();
            } catch (IllegalStateException e) {
                z = false;
            }
            if (z) {
                try {
                    dtgVar = this.f46611a.f46661c;
                    cwd.f46657a = new ehq(dtgVar.f47547a, "ADSHIELD", null);
                } catch (Throwable th) {
                    z = false;
                }
            }
            this.f46611a.f46660b = Boolean.valueOf(z);
            conditionVariable2 = cwd.f46658d;
            conditionVariable2.open();
        }
    }
}
