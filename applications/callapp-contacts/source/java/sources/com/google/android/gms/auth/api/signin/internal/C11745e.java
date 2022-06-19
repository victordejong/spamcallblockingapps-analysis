package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import androidx.p049h.p051b.AbstractC1167a;
import com.google.android.gms.common.api.AbstractC11826g;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.auth.api.signin.internal.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/e.class */
public final class C11745e extends AbstractC1167a<Void> {

    /* renamed from: c */
    private Semaphore f39066c = new Semaphore(0);

    /* renamed from: d */
    private Set<AbstractC11826g> f39067d;

    public C11745e(Context context, Set<AbstractC11826g> set) {
        super(context);
        this.f39067d = set;
    }

    /* renamed from: u */
    public final Void mo19543d() {
        Iterator<AbstractC11826g> it2 = this.f39067d.iterator();
        int i = 0;
        while (it2.hasNext()) {
            it2.next();
            if (AbstractC11826g.m19443d()) {
                i++;
            }
        }
        try {
            this.f39066c.tryAcquire(i, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override // androidx.p049h.p051b.C1170c
    /* renamed from: g */
    public final void mo19542g() {
        this.f39066c.drainPermits();
        m43428o();
    }
}
