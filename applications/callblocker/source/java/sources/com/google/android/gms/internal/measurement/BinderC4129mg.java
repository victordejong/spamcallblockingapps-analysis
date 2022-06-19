package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.measurement.mg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/mg.class */
public final class BinderC4129mg extends AbstractBinderC4135mm {

    /* renamed from: a */
    private final AtomicReference<Bundle> f18504a = new AtomicReference<>();

    /* renamed from: b */
    private boolean f18505b;

    /* renamed from: a */
    public static <T> T m4952a(Bundle bundle, Class<T> cls) {
        T t = null;
        if (bundle != null) {
            Object obj = bundle.get("r");
            t = null;
            if (obj != null) {
                try {
                    t = cls.cast(obj);
                } catch (ClassCastException e) {
                    Log.w("AM", String.format(String.valueOf("Unexpected object type. Expected, Received").concat(": %s, %s"), cls.getCanonicalName(), obj.getClass().getCanonicalName()), e);
                    throw e;
                }
            }
        }
        return t;
    }

    /* renamed from: a */
    public final String m4953a(long j) {
        return (String) m4952a(m4951b(j), String.class);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4132mj
    /* renamed from: a */
    public final void mo4950a(Bundle bundle) {
        synchronized (this.f18504a) {
            this.f18504a.set(bundle);
            this.f18505b = true;
            this.f18504a.notify();
        }
    }

    /* renamed from: b */
    public final Bundle m4951b(long j) {
        Bundle bundle;
        synchronized (this.f18504a) {
            if (!this.f18505b) {
                try {
                    this.f18504a.wait(j);
                } catch (InterruptedException e) {
                    bundle = null;
                }
            }
            bundle = this.f18504a.get();
        }
        return bundle;
    }
}
