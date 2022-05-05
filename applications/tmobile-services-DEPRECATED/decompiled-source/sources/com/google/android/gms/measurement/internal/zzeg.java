package com.google.android.gms.measurement.internal;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.List;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeg.class */
public final class zzeg<V> {

    /* renamed from: h */
    private static final Object f9076h = new Object();

    /* renamed from: a */
    private final String f9077a;

    /* renamed from: b */
    private final zzee<V> f9078b;

    /* renamed from: c */
    private final V f9079c;

    /* renamed from: d */
    private final V f9080d;

    /* renamed from: e */
    private final Object f9081e;
    @GuardedBy

    /* renamed from: f */
    private volatile V f9082f;
    @GuardedBy

    /* renamed from: g */
    private volatile V f9083g;

    private zzeg(@NonNull String str, @NonNull V v, @NonNull V v2, @Nullable zzee<V> zzeeVar) {
        this.f9081e = new Object();
        this.f9082f = null;
        this.f9083g = null;
        this.f9077a = str;
        this.f9079c = v;
        this.f9080d = v2;
        this.f9078b = zzeeVar;
    }

    /* renamed from: a */
    public final V m11594a(@Nullable V v) {
        List<zzeg> list;
        synchronized (this.f9081e) {
        }
        if (v != null) {
            return v;
        }
        if (zzeh.f9084a == null) {
            return this.f9079c;
        }
        synchronized (f9076h) {
            if (zzx.m10903a()) {
                return this.f9083g == null ? this.f9079c : this.f9083g;
            }
            try {
                list = zzat.f8928a;
                for (zzeg zzegVar : list) {
                    if (!zzx.m10903a()) {
                        V v2 = null;
                        try {
                            if (zzegVar.f9078b != null) {
                                v2 = zzegVar.f9078b.zza();
                            }
                        } catch (IllegalStateException e) {
                            v2 = null;
                        }
                        synchronized (f9076h) {
                            zzegVar.f9083g = v2;
                        }
                    } else {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                }
            } catch (SecurityException e2) {
            }
            zzee<V> zzeeVar = this.f9078b;
            if (zzeeVar == null) {
                return this.f9079c;
            }
            try {
                return zzeeVar.zza();
            } catch (IllegalStateException e3) {
                return this.f9079c;
            } catch (SecurityException e4) {
                return this.f9079c;
            }
        }
    }

    /* renamed from: b */
    public final String m11593b() {
        return this.f9077a;
    }
}
