package com.google.android.gms.internal.measurement;

import okhttp3.internal.http2.Settings;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fx.class */
final class fx {

    /* renamed from: a  reason: collision with root package name */
    private final Object f29037a;

    /* renamed from: b  reason: collision with root package name */
    private final int f29038b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fx(Object obj, int i) {
        this.f29037a = obj;
        this.f29038b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof fx)) {
            return false;
        }
        fx fxVar = (fx) obj;
        return this.f29037a == fxVar.f29037a && this.f29038b == fxVar.f29038b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f29037a) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.f29038b;
    }
}
