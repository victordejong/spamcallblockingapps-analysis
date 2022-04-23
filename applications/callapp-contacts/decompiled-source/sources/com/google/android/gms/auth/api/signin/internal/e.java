package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import androidx.h.b.a;
import com.google.android.gms.common.api.g;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/e.class */
public final class e extends a<Void> {

    /* renamed from: c  reason: collision with root package name */
    private Semaphore f22512c = new Semaphore(0);

    /* renamed from: d  reason: collision with root package name */
    private Set<g> f22513d;

    public e(Context context, Set<g> set) {
        super(context);
        this.f22513d = set;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public final Void d() {
        Iterator<g> it2 = this.f22513d.iterator();
        int i = 0;
        while (it2.hasNext()) {
            it2.next();
            if (g.d()) {
                i++;
            }
        }
        try {
            this.f22512c.tryAcquire(i, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override // androidx.h.b.c
    public final void g() {
        this.f22512c.drainPermits();
        o();
    }
}
