package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepz.class */
public final class zzepz<T> implements zzeqb<T> {
    private zzeqo<T> zzjbx;

    public static <T> void zzbd(zzeqo<T> zzeqoVar, zzeqo<T> zzeqoVar2) {
        zzeqh.checkNotNull(zzeqoVar2);
        zzepz zzepzVar = (zzepz) zzeqoVar;
        if (zzepzVar.zzjbx == null) {
            zzepzVar.zzjbx = zzeqoVar2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final T get() {
        zzeqo<T> zzeqoVar = this.zzjbx;
        if (zzeqoVar != null) {
            return zzeqoVar.get();
        }
        throw new IllegalStateException();
    }
}
