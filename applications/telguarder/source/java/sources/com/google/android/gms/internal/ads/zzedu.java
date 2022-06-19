package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedu.class */
class zzedu implements zzebh<zzebd, zzebd> {
    private static final Logger logger = Logger.getLogger(zzedu.class.getName());

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedu$zza.class */
    private static final class zza implements zzebd {
        private final zzebf<zzebd> zzidn;
        private final byte[] zzidy;

        private zza(zzebf<zzebd> zzebfVar) {
            this.zzidy = new byte[]{0};
            this.zzidn = zzebfVar;
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [byte[], byte[][]] */
        /* JADX WARN: Type inference failed for: r0v9, types: [byte[], byte[][]] */
        /* JADX WARN: Type inference failed for: r4v2, types: [byte[], byte[][]] */
        @Override // com.google.android.gms.internal.ads.zzebd
        public final byte[] zzk(byte[] bArr) throws GeneralSecurityException {
            return this.zzidn.zzbar().zzbav().equals(zzegx.LEGACY) ? zzeho.zza(new byte[]{this.zzidn.zzbar().zzbaw(), this.zzidn.zzbar().zzbat().zzk(zzeho.zza(new byte[]{bArr, this.zzidy}))}) : zzeho.zza(new byte[]{this.zzidn.zzbar().zzbaw(), this.zzidn.zzbar().zzbat().zzk(bArr)});
        }
    }

    @Override // com.google.android.gms.internal.ads.zzebh
    public final /* synthetic */ zzebd zza(zzebf<zzebd> zzebfVar) throws GeneralSecurityException {
        return new zza(zzebfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzebh
    public final Class<zzebd> zzbai() {
        return zzebd.class;
    }

    @Override // com.google.android.gms.internal.ads.zzebh
    public final Class<zzebd> zzbas() {
        return zzebd.class;
    }
}
