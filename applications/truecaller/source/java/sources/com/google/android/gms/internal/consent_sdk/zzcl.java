package com.google.android.gms.internal.consent_sdk;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzcl.class */
public final class zzcl {
    private final ConcurrentHashMap<zzck, List<Throwable>> zza = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zzb = new ReferenceQueue<>();

    public final List<Throwable> zza(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.zzb.poll();
        while (true) {
            Reference<? extends Throwable> reference = poll;
            if (reference == null) {
                break;
            }
            this.zza.remove(reference);
            poll = this.zzb.poll();
        }
        List<Throwable> list = this.zza.get(new zzck(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.zza.putIfAbsent(new zzck(th, this.zzb), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}
