package com.google.android.gms.internal.measurement;

import okhttp3.internal.http2.Settings;
/* renamed from: com.google.android.gms.internal.measurement.fx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fx.class */
final class C13511fx {

    /* renamed from: a */
    private final Object f50736a;

    /* renamed from: b */
    private final int f50737b;

    public C13511fx(Object obj, int i) {
        this.f50736a = obj;
        this.f50737b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C13511fx)) {
            return false;
        }
        C13511fx c13511fx = (C13511fx) obj;
        return this.f50736a == c13511fx.f50736a && this.f50737b == c13511fx.f50737b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f50736a) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.f50737b;
    }
}
