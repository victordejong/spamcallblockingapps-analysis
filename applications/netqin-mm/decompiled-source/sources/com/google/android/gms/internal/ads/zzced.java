package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzced.class */
public final class zzced {

    /* renamed from: a */
    public zzadz f25823a;

    public zzced(zzcdv zzcdvVar) {
        this.f25823a = zzcdvVar;
    }

    /* renamed from: a */
    public final zzadz m14731a() {
        zzadz zzadzVar;
        synchronized (this) {
            zzadzVar = this.f25823a;
        }
        return zzadzVar;
    }

    /* renamed from: a */
    public final void m14730a(zzadz zzadzVar) {
        synchronized (this) {
            this.f25823a = zzadzVar;
        }
    }
}
