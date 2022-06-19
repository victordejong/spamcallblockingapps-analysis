package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.util.Log;
import androidx.loader.content.AbstractC0831a;
import com.google.android.gms.common.api.AbstractC5999d;
import com.google.android.gms.common.api.internal.AbstractC6049n;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.auth.api.signin.internal.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/e.class */
public final class C5917e extends AbstractC0831a<Void> implements AbstractC6049n {

    /* renamed from: p */
    private Semaphore f19044p = new Semaphore(0);

    /* renamed from: q */
    private Set<AbstractC5999d> f19045q;

    public C5917e(Context context, Set<AbstractC5999d> set) {
        super(context);
        this.f19045q = set;
    }

    /* renamed from: D */
    public final Void mo17591A() {
        int i = 0;
        for (AbstractC5999d abstractC5999d : this.f19045q) {
            if (abstractC5999d.m17457d(this)) {
                i++;
            }
        }
        try {
            this.f19044p.tryAcquire(i, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e) {
            Log.i("GACSignInLoader", "Unexpected InterruptedException", e);
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override // androidx.loader.content.C0833b
    /* renamed from: o */
    protected final void mo17589o() {
        this.f19044p.drainPermits();
        m32314h();
    }
}
