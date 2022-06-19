package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.measurement.lu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/lu.class */
public final class BinderC13670lu extends AbstractBinderC13705nb {

    /* renamed from: a */
    private final AtomicReference<Bundle> f51006a = new AtomicReference<>();

    /* renamed from: b */
    private boolean f51007b;

    /* renamed from: a */
    public static final <T> T m12334a(Bundle bundle, Class<T> cls) {
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

    /* renamed from: a */
    public final String m12335a(long j) {
        return (String) m12334a(m12333b(j), String.class);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13706nc
    /* renamed from: a */
    public final void mo12294a(Bundle bundle) {
        synchronized (this.f51006a) {
            this.f51006a.set(bundle);
            this.f51007b = true;
            this.f51006a.notify();
        }
    }

    /* renamed from: b */
    public final Bundle m12333b(long j) {
        Bundle bundle;
        synchronized (this.f51006a) {
            if (!this.f51007b) {
                try {
                    this.f51006a.wait(j);
                } catch (InterruptedException e) {
                    return null;
                }
            }
            bundle = this.f51006a.get();
        }
        return bundle;
    }
}
