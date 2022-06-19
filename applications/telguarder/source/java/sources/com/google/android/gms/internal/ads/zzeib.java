package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeib.class */
public final class zzeib implements zzeaq {
    private final zzeio zzijy;
    private final zzebd zzijz;
    private final int zzika;

    public zzeib(zzeio zzeioVar, zzebd zzebdVar, int i) {
        this.zzijy = zzeioVar;
        this.zzijz = zzebdVar;
        this.zzika = i;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r4v1, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.zzeaq
    public final byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] zzn = this.zzijy.zzn(bArr);
        byte[] bArr3 = bArr2;
        if (bArr2 == null) {
            bArr3 = new byte[0];
        }
        return zzeho.zza(new byte[]{zzn, this.zzijz.zzk(zzeho.zza(new byte[]{bArr3, zzn, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr3.length * 8).array(), 8)}))});
    }
}
