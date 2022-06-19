package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.SignInConnectionListener;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import p1727n3.p1869w.p1871b.AbstractC27049a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/zbc.class */
public final class zbc extends AbstractC27049a<Void> implements SignInConnectionListener {

    /* renamed from: a */
    public final Semaphore f5567a = new Semaphore(0);

    /* renamed from: b */
    public final Set<GoogleApiClient> f5568b;

    public zbc(Context context, Set<GoogleApiClient> set) {
        super(context);
        this.f5568b = set;
    }

    @Override // com.google.android.gms.common.api.internal.SignInConnectionListener
    /* renamed from: a */
    public final void mo39018a() {
        this.f5567a.release();
    }

    @Override // p1727n3.p1869w.p1871b.AbstractC27049a
    public final /* bridge */ /* synthetic */ Void loadInBackground() {
        int i = 0;
        for (GoogleApiClient googleApiClient : this.f5568b) {
            if (googleApiClient.mo38994p(this)) {
                i++;
            }
        }
        try {
            this.f5567a.tryAcquire(i, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override // p1727n3.p1869w.p1871b.C27051b
    public final void onStartLoading() {
        this.f5567a.drainPermits();
        forceLoad();
    }
}
