package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cke.class */
public final class cke implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ chc f13196a;

    public cke(chc chcVar) {
        this.f13196a = chcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        boolean z;
        din dinVar;
        ConditionVariable conditionVariable2;
        if (this.f13196a.f13032b != null) {
            return;
        }
        conditionVariable = chc.f13030d;
        synchronized (conditionVariable) {
            if (this.f13196a.f13032b != null) {
                return;
            }
            try {
                z = edi.f16362aU.mo13599a().booleanValue();
            } catch (IllegalStateException e) {
                z = false;
            }
            boolean z2 = z;
            if (z) {
                try {
                    dinVar = this.f13196a.f13033c;
                    chc.f13029a = new dwn(dinVar.f14410a, "ADSHIELD", null);
                    z2 = z;
                } catch (Throwable th) {
                    z2 = false;
                }
            }
            this.f13196a.f13032b = Boolean.valueOf(z2);
            conditionVariable2 = chc.f13030d;
            conditionVariable2.open();
        }
    }
}
