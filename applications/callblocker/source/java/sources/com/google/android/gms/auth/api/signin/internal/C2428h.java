package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.util.Log;
import androidx.p037g.p039b.AbstractC0721a;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.internal.AbstractC2559m;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.auth.api.signin.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/h.class */
public final class C2428h extends AbstractC0721a<Void> implements AbstractC2559m {

    /* renamed from: o */
    private Semaphore f6960o = new Semaphore(0);

    /* renamed from: p */
    private Set<AbstractC2492d> f6961p;

    public C2428h(Context context, Set<AbstractC2492d> set) {
        super(context);
        this.f6961p = set;
    }

    /* renamed from: v */
    public final Void mo14519d() {
        int i = 0;
        for (AbstractC2492d abstractC2492d : this.f6961p) {
            if (abstractC2492d.m14420a(this)) {
                i++;
            }
        }
        try {
            this.f6960o.tryAcquire(i, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e) {
            Log.i("GACSignInLoader", "Unexpected InterruptedException", e);
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override // androidx.p037g.p039b.C0723b
    /* renamed from: j */
    protected final void mo14518j() {
        this.f6960o.drainPermits();
        m19562l();
    }
}
