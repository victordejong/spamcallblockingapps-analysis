package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzebm;
import java.security.GeneralSecurityException;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebo.class */
public final class zzebo implements zzebm.zzb {
    private final /* synthetic */ zzeax zzich;

    public zzebo(zzeax zzeaxVar) {
        this.zzich = zzeaxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final <Q> zzeaw<Q> zzb(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new zzeav(this.zzich, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final Set<Class<?>> zzbam() {
        return this.zzich.zzbam();
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final zzeaw<?> zzbax() {
        zzeax zzeaxVar = this.zzich;
        return new zzeav(zzeaxVar, zzeaxVar.zzban());
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final Class<?> zzbay() {
        return this.zzich.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzebm.zzb
    public final Class<?> zzbaz() {
        return null;
    }
}
