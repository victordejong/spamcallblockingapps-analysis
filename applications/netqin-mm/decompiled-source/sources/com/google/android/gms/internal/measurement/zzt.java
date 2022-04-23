package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import com.inmobi.ads.C8302r;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzt.class */
public final class zzt extends zzz {

    /* renamed from: a */
    public final AtomicReference<Bundle> f29691a = new AtomicReference<>();

    /* renamed from: b */
    public boolean f29692b;

    /* renamed from: a */
    public static <T> T m9454a(Bundle bundle, Class<T> cls) {
        Object obj;
        if (bundle == null || (obj = bundle.get(C8302r.f32303d)) == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e) {
            Log.w("AM", String.format("Unexpected object type. Expected, Received".concat(": %s, %s"), cls.getCanonicalName(), obj.getClass().getCanonicalName()), e);
            throw e;
        }
    }

    /* renamed from: a */
    public final String m9455a(long j) {
        return (String) m9454a(m9453b(j), String.class);
    }

    /* renamed from: b */
    public final Bundle m9453b(long j) {
        Bundle bundle;
        synchronized (this.f29691a) {
            if (!this.f29692b) {
                try {
                    this.f29691a.wait(j);
                } catch (InterruptedException e) {
                    return null;
                }
            }
            bundle = this.f29691a.get();
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzw
    /* renamed from: d */
    public final void mo9452d(Bundle bundle) {
        synchronized (this.f29691a) {
            this.f29691a.set(bundle);
            this.f29692b = true;
            this.f29691a.notify();
        }
    }
}
