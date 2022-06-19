package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzacy.class */
public final class zzacy<T> extends zzacx<T> {
    public zzacy(String str, Object obj, int i) {
        super(str, obj, i);
    }

    public static zzacx<Boolean> zzg(String str, boolean z) {
        return new zzacy(str, true, zzacz.zzdci);
    }

    @Override // com.google.android.gms.internal.ads.zzacx
    public final T get() {
        if (zzadw.zzdfe.get()) {
            return (T) super.get();
        }
        throw new IllegalStateException("Striped code is accessed: 54c42518-856a-44fb-aae0-cd6676d514e5");
    }
}
