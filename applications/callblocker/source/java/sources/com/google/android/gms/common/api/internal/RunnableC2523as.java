package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.AbstractC2495e;
import com.google.android.gms.common.api.AbstractC2500h;
import com.google.android.gms.common.api.AbstractC2574k;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.common.api.internal.as */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/as.class */
final class RunnableC2523as implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC2500h f7117a;

    /* renamed from: b */
    private final /* synthetic */ C2521aq f7118b;

    public RunnableC2523as(C2521aq c2521aq, AbstractC2500h abstractC2500h) {
        this.f7118b = c2521aq;
        this.f7117a = abstractC2500h;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WeakReference weakReference;
        HandlerC2522ar handlerC2522ar;
        HandlerC2522ar handlerC2522ar2;
        WeakReference weakReference2;
        AbstractC2574k abstractC2574k;
        HandlerC2522ar handlerC2522ar3;
        HandlerC2522ar handlerC2522ar4;
        WeakReference weakReference3;
        try {
            try {
                BasePendingResult.f7062a.set(true);
                abstractC2574k = this.f7118b.f7107a;
                AbstractC2495e m14213a = abstractC2574k.m14213a((AbstractC2574k) this.f7117a);
                handlerC2522ar3 = this.f7118b.f7114h;
                handlerC2522ar4 = this.f7118b.f7114h;
                handlerC2522ar3.sendMessage(handlerC2522ar4.obtainMessage(0, m14213a));
                BasePendingResult.f7062a.set(false);
                C2521aq c2521aq = this.f7118b;
                C2521aq.m14370b(this.f7117a);
                weakReference3 = this.f7118b.f7113g;
                AbstractC2492d abstractC2492d = (AbstractC2492d) weakReference3.get();
                if (abstractC2492d == null) {
                    return;
                }
                abstractC2492d.mo14396b(this.f7118b);
            } catch (RuntimeException e) {
                handlerC2522ar = this.f7118b.f7114h;
                handlerC2522ar2 = this.f7118b.f7114h;
                handlerC2522ar.sendMessage(handlerC2522ar2.obtainMessage(1, e));
                BasePendingResult.f7062a.set(false);
                C2521aq c2521aq2 = this.f7118b;
                C2521aq.m14370b(this.f7117a);
                weakReference2 = this.f7118b.f7113g;
                AbstractC2492d abstractC2492d2 = (AbstractC2492d) weakReference2.get();
                if (abstractC2492d2 == null) {
                    return;
                }
                abstractC2492d2.mo14396b(this.f7118b);
            }
        } catch (Throwable th) {
            BasePendingResult.f7062a.set(false);
            C2521aq c2521aq3 = this.f7118b;
            C2521aq.m14370b(this.f7117a);
            weakReference = this.f7118b.f7113g;
            AbstractC2492d abstractC2492d3 = (AbstractC2492d) weakReference.get();
            if (abstractC2492d3 != null) {
                abstractC2492d3.mo14396b(this.f7118b);
            }
            throw th;
        }
    }
}
