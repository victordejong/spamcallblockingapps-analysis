package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjo.class */
public final class zzdjo extends zzdkb<zzaop> implements zzbqv {
    public zzdjo(Set<zzdlw<zzaop>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void zzbL(final String str, final String str2) {
        synchronized (this) {
            zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdjn
                @Override // com.google.android.gms.internal.ads.zzdka
                public final void zza(Object obj) {
                    ((zzaop) obj).zzbC(str, str2);
                }
            });
        }
    }
}
