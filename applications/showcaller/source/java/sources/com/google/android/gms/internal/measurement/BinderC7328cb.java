package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.measurement.cb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cb.class */
public final class BinderC7328cb extends AbstractBinderC7427jc {

    /* renamed from: d */
    private final AtomicReference<Bundle> f34377d = new AtomicReference<>();

    /* renamed from: e */
    private boolean f34378e;

    /* renamed from: m2 */
    public static final <T> T m7621m2(Bundle bundle, Class<T> cls) {
        T t = null;
        if (bundle != null) {
            Object obj = bundle.get("r");
            t = null;
            if (obj != null) {
                try {
                    t = cls.cast(obj);
                } catch (ClassCastException e) {
                    Log.w("AM", String.format("Unexpected object type. Expected, Received: %s, %s", cls.getCanonicalName(), obj.getClass().getCanonicalName()), e);
                    throw e;
                }
            }
        }
        return t;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7441kc
    /* renamed from: C0 */
    public final void mo7197C0(Bundle bundle) {
        synchronized (this.f34377d) {
            this.f34377d.set(bundle);
            this.f34378e = true;
            this.f34377d.notify();
        }
    }

    /* renamed from: D0 */
    public final String m7623D0(long j) {
        return (String) m7621m2(m7622J0(j), String.class);
    }

    /* renamed from: J0 */
    public final Bundle m7622J0(long j) {
        Bundle bundle;
        synchronized (this.f34377d) {
            if (!this.f34378e) {
                try {
                    this.f34377d.wait(j);
                } catch (InterruptedException e) {
                    return null;
                }
            }
            bundle = this.f34377d.get();
        }
        return bundle;
    }
}
