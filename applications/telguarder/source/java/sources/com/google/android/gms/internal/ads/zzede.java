package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzede.class */
public class zzede implements zzebh<zzeau, zzeau> {
    private static final Logger logger = Logger.getLogger(zzede.class.getName());

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzede$zza.class */
    private static final class zza implements zzeau {
        private final zzebf<zzeau> zzidn;

        public zza(zzebf<zzeau> zzebfVar) {
            this.zzidn = zzebfVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzebh
    public final /* synthetic */ zzeau zza(zzebf<zzeau> zzebfVar) throws GeneralSecurityException {
        return new zza(zzebfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzebh
    public final Class<zzeau> zzbai() {
        return zzeau.class;
    }

    @Override // com.google.android.gms.internal.ads.zzebh
    public final Class<zzeau> zzbas() {
        return zzeau.class;
    }
}
