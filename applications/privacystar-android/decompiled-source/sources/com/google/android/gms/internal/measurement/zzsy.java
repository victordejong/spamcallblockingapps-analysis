package com.google.android.gms.internal.measurement;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzsy.class */
final class zzsy {
    private final ConcurrentHashMap<zzsz, List<Throwable>> zzbrw = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zzbrx = new ReferenceQueue<>();

    public final List<Throwable> zza(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.zzbrx.poll();
        while (poll != null) {
            this.zzbrw.remove(poll);
            poll = this.zzbrx.poll();
        }
        return this.zzbrw.get(new zzsz(th, null));
    }
}
