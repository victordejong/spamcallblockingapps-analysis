package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import com.twitter.sdk.android.core.C17282n;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.twitter.sdk.android.core.identity.b */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/b.class */
public final class C17219b {

    /* renamed from: a */
    public final AtomicReference<AbstractC17218a> f60962a = new AtomicReference<>(null);

    /* renamed from: a */
    public final boolean m5703a() {
        return this.f60962a.get() != null;
    }

    /* renamed from: a */
    public final boolean m5702a(Activity activity, AbstractC17218a abstractC17218a) {
        boolean z;
        if (m5703a()) {
            C17282n.m5628c().mo5712b("Twitter", "Authorize already in progress");
        } else if (abstractC17218a.mo5694a(activity)) {
            boolean compareAndSet = this.f60962a.compareAndSet(null, abstractC17218a);
            z = compareAndSet;
            if (!compareAndSet) {
                C17282n.m5628c().mo5712b("Twitter", "Failed to update authHandler, authorize already in progress.");
                z = compareAndSet;
            }
            return z;
        }
        z = false;
        return z;
    }
}
