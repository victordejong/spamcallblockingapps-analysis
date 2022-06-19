package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqw$zzc.class */
final class zzfqw$zzc {

    /* renamed from: a */
    static final zzfqw$zzc f34104a = new zzfqw$zzc(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.ads.zzfqw$zzc.1
        {
            super("Failure occurred while trying to finish a future.");
        }

        @Override // java.lang.Throwable
        public final Throwable fillInStackTrace() {
            synchronized (this) {
            }
            return this;
        }
    });

    /* renamed from: b */
    final Throwable f34105b;

    public zzfqw$zzc(Throwable th) {
        Objects.requireNonNull(th);
        this.f34105b = th;
    }
}
