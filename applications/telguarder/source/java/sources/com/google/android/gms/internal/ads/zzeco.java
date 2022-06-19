package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeco.class */
public final class zzeco implements zzeaq {
    private static final byte[] zzidb = new byte[0];
    private final zzegg zzidc;
    private final zzeaq zzidd;

    public zzeco(zzegg zzeggVar, zzeaq zzeaqVar) {
        this.zzidc = zzeggVar;
        this.zzidd = zzeaqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    public final byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] byteArray = zzebm.zzb(this.zzidc).toByteArray();
        byte[] zzc = this.zzidd.zzc(byteArray, zzidb);
        byte[] zzc2 = ((zzeaq) zzebm.zza(this.zzidc.zzbdx(), byteArray, zzeaq.class)).zzc(bArr, bArr2);
        return ByteBuffer.allocate(zzc.length + 4 + zzc2.length).putInt(zzc.length).put(zzc).put(zzc2).array();
    }
}
