package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w03.class */
final class w03 extends cz2<Void> implements Runnable {

    /* renamed from: k */
    private final Runnable f31425k;

    public w03(Runnable runnable) {
        Objects.requireNonNull(runnable);
        this.f31425k = runnable;
    }

    @Override // com.google.android.gms.internal.ads.fz2
    /* renamed from: i */
    public final String mo9813i() {
        String valueOf = String.valueOf(this.f31425k);
        StringBuilder sb = new StringBuilder(valueOf.length() + 7);
        sb.append("task=[");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f31425k.run();
        } catch (Throwable th) {
            mo8631v(th);
            kv2.m13778a(th);
            throw new RuntimeException(th);
        }
    }
}
