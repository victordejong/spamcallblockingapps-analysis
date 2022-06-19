package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzghe.class */
public abstract class zzghe implements zzghz {
    private static final int[] zzb = zzi(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107});
    public int[] zza;
    private final int zzc;

    public zzghe(byte[] bArr, int i) throws InvalidKeyException {
        if (bArr.length == 32) {
            this.zza = zzi(bArr);
            this.zzc = i;
            return;
        }
        throw new InvalidKeyException("The key length in bytes must be 32.");
    }

    public static void zzf(int[] iArr, int i, int i2, int i3, int i4) {
        int i5 = iArr[i] + iArr[i2];
        iArr[i] = i5;
        int i6 = i5 ^ iArr[i4];
        int i7 = (i6 >>> (-16)) | (i6 << 16);
        iArr[i4] = i7;
        int i8 = iArr[i3] + i7;
        iArr[i3] = i8;
        int i9 = iArr[i2] ^ i8;
        int i10 = (i9 >>> (-12)) | (i9 << 12);
        iArr[i2] = i10;
        int i11 = iArr[i] + i10;
        iArr[i] = i11;
        int i12 = iArr[i4] ^ i11;
        int i13 = (i12 >>> (-8)) | (i12 << 8);
        iArr[i4] = i13;
        int i14 = iArr[i3] + i13;
        iArr[i3] = i14;
        int i15 = iArr[i2] ^ i14;
        iArr[i2] = (i15 >>> (-7)) | (i15 << 7);
    }

    public static void zzg(int[] iArr, int[] iArr2) {
        int[] iArr3 = zzb;
        System.arraycopy(iArr3, 0, iArr, 0, iArr3.length);
        System.arraycopy(iArr2, 0, iArr, iArr3.length, 8);
    }

    public static void zzh(int[] iArr) {
        for (int i = 0; i < 10; i++) {
            zzf(iArr, 0, 4, 8, 12);
            zzf(iArr, 1, 5, 9, 13);
            zzf(iArr, 2, 6, 10, 14);
            zzf(iArr, 3, 7, 11, 15);
            zzf(iArr, 0, 5, 10, 15);
            zzf(iArr, 1, 6, 11, 12);
            zzf(iArr, 2, 7, 8, 13);
            zzf(iArr, 3, 4, 9, 14);
        }
    }

    public static int[] zzi(byte[] bArr) {
        IntBuffer asIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[asIntBuffer.remaining()];
        asIntBuffer.get(iArr);
        return iArr;
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        if (length <= Api.BaseClientBuilder.API_PRIORITY_OTHER - zzb()) {
            ByteBuffer allocate = ByteBuffer.allocate(zzb() + length);
            zze(allocate, bArr);
            return allocate.array();
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    public abstract int zzb();

    public abstract int[] zzc(int[] iArr, int i);

    public final ByteBuffer zzd(byte[] bArr, int i) {
        int[] zzc = zzc(zzi(bArr), i);
        int[] iArr = (int[]) zzc.clone();
        zzh(iArr);
        for (int i2 = 0; i2 < 16; i2++) {
            zzc[i2] = zzc[i2] + iArr[i2];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(zzc, 0, 16);
        return order;
    }

    public final void zze(ByteBuffer byteBuffer, byte[] bArr) throws GeneralSecurityException {
        if (byteBuffer.remaining() - zzb() >= bArr.length) {
            byte[] zza = zzgig.zza(zzb());
            byteBuffer.put(zza);
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int remaining = wrap.remaining();
            int i = (remaining / 64) + 1;
            for (int i2 = 0; i2 < i; i2++) {
                ByteBuffer zzd = zzd(zza, this.zzc + i2);
                if (i2 == i - 1) {
                    zzghc.zza(byteBuffer, wrap, zzd, remaining % 64);
                } else {
                    zzghc.zza(byteBuffer, wrap, zzd, 64);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Given ByteBuffer output is too small");
    }
}
