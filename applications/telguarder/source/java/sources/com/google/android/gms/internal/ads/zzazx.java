package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzazx.class */
public final class zzazx<T> extends zzbaa<T> {
    private final T zzeim;

    private zzazx(T t) {
        this.zzeim = t;
    }

    public static <T> zzazx<T> zzk(T t) {
        return new zzazx<>(t);
    }

    public final void zzaac() {
        set(this.zzeim);
    }
}
