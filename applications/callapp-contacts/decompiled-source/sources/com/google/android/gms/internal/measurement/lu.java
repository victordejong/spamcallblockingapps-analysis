package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/lu.class */
public final class lu extends nb {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<Bundle> f29245a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private boolean f29246b;

    public static final <T> T a(Bundle bundle, Class<T> cls) {
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

    public final String a(long j) {
        return (String) a(b(j), String.class);
    }

    @Override // com.google.android.gms.internal.measurement.nc
    public final void a(Bundle bundle) {
        synchronized (this.f29245a) {
            this.f29245a.set(bundle);
            this.f29246b = true;
            this.f29245a.notify();
        }
    }

    public final Bundle b(long j) {
        Bundle bundle;
        synchronized (this.f29245a) {
            if (!this.f29246b) {
                try {
                    this.f29245a.wait(j);
                } catch (InterruptedException e) {
                    return null;
                }
            }
            bundle = this.f29245a.get();
        }
        return bundle;
    }
}
