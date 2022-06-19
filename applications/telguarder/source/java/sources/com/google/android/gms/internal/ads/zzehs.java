package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehs.class */
abstract class zzehs implements zzeaq {
    private final zzehq zzijg;
    private final zzehq zzijh;

    public zzehs(byte[] bArr) throws InvalidKeyException {
        this.zzijg = zze(bArr, 1);
        this.zzijh = zze(bArr, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    public byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length <= (Integer.MAX_VALUE - this.zzijg.zzbfp()) - 16) {
            ByteBuffer allocate = ByteBuffer.allocate(bArr.length + this.zzijg.zzbfp() + 16);
            if (allocate.remaining() < bArr.length + this.zzijg.zzbfp() + 16) {
                throw new IllegalArgumentException("Given ByteBuffer output is too small");
            }
            int position = allocate.position();
            this.zzijg.zza(allocate, bArr);
            allocate.position(position);
            byte[] bArr3 = new byte[this.zzijg.zzbfp()];
            allocate.get(bArr3);
            allocate.limit(allocate.limit() - 16);
            byte[] bArr4 = bArr2;
            if (bArr2 == null) {
                bArr4 = new byte[0];
            }
            ByteBuffer zzf = this.zzijh.zzf(bArr3, 0);
            byte[] bArr5 = new byte[32];
            zzf.get(bArr5);
            int length = bArr4.length % 16 == 0 ? bArr4.length : (bArr4.length + 16) - (bArr4.length % 16);
            int remaining = allocate.remaining();
            int i = remaining % 16;
            int i2 = (i == 0 ? remaining : (remaining + 16) - i) + length;
            ByteBuffer order = ByteBuffer.allocate(i2 + 16).order(ByteOrder.LITTLE_ENDIAN);
            order.put(bArr4);
            order.position(length);
            order.put(allocate);
            order.position(i2);
            order.putLong(bArr4.length);
            order.putLong(remaining);
            byte[] zze = zzein.zze(bArr5, order.array());
            allocate.limit(allocate.limit() + 16);
            allocate.put(zze);
            return allocate.array();
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    abstract zzehq zze(byte[] bArr, int i) throws InvalidKeyException;
}
