package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzghg.class */
abstract class zzghg implements zzfxu {
    private final zzghe zza;
    private final zzghe zzb;

    public zzghg(byte[] bArr) throws GeneralSecurityException {
        if (zzgak.zza(1)) {
            this.zza = zzb(bArr, 1);
            this.zzb = zzb(bArr, 0);
            return;
        }
        throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
    }

    @Override // com.google.android.gms.internal.ads.zzfxu
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        if (length <= (Api.BaseClientBuilder.API_PRIORITY_OTHER - this.zza.zzb()) - 16) {
            ByteBuffer allocate = ByteBuffer.allocate(this.zza.zzb() + length + 16);
            if (allocate.remaining() < length + this.zza.zzb() + 16) {
                throw new IllegalArgumentException("Given ByteBuffer output is too small");
            }
            int position = allocate.position();
            this.zza.zze(allocate, bArr);
            allocate.position(position);
            byte[] bArr3 = new byte[this.zza.zzb()];
            allocate.get(bArr3);
            allocate.limit(allocate.limit() - 16);
            ByteBuffer zzd = this.zzb.zzd(bArr3, 0);
            byte[] bArr4 = new byte[32];
            zzd.get(bArr4);
            int remaining = allocate.remaining();
            int i = remaining % 16;
            int i2 = i == 0 ? remaining : (remaining + 16) - i;
            ByteBuffer order = ByteBuffer.allocate(i2 + 16).order(ByteOrder.LITTLE_ENDIAN);
            order.put(bArr2);
            order.position(0);
            order.put(allocate);
            order.position(i2);
            order.putLong(0L);
            order.putLong(remaining);
            byte[] zza = zzgia.zza(bArr4, order.array());
            allocate.limit(allocate.limit() + 16);
            allocate.put(zza);
            return allocate.array();
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    public abstract zzghe zzb(byte[] bArr, int i) throws InvalidKeyException;
}
