package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import com.twitter.sdk.android.core.n;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicReference<a> f35117a = new AtomicReference<>(null);

    public final boolean a() {
        return this.f35117a.get() != null;
    }

    public final boolean a(Activity activity, a aVar) {
        boolean z;
        if (a()) {
            n.c().b("Twitter", "Authorize already in progress");
        } else if (aVar.a(activity)) {
            boolean compareAndSet = this.f35117a.compareAndSet(null, aVar);
            z = compareAndSet;
            if (!compareAndSet) {
                n.c().b("Twitter", "Failed to update authHandler, authorize already in progress.");
                z = compareAndSet;
            }
            return z;
        }
        z = false;
        return z;
    }
}
