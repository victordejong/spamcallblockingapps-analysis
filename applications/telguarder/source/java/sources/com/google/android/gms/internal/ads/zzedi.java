package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedi.class */
final class zzedi implements zzeat {
    private final zzebf<zzeat> zzidn;

    public zzedi(zzebf<zzeat> zzebfVar) {
        this.zzidn = zzebfVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.zzeat
    public final byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return zzeho.zza(new byte[]{this.zzidn.zzbar().zzbaw(), this.zzidn.zzbar().zzbat().zzc(bArr, bArr2)});
    }
}
