package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import java.util.Collection;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgcm.class */
public final class zzgcm implements zzftj {
    private static final Collection<Integer> zza = Arrays.asList(64);
    private static final byte[] zzb = new byte[16];
    private final zzgdn zzc;
    private final byte[] zzd;

    public zzgcm(byte[] bArr) throws GeneralSecurityException {
        if (zzfvw.zza(1)) {
            Collection<Integer> collection = zza;
            int length = bArr.length;
            if (!collection.contains(Integer.valueOf(length))) {
                throw new InvalidKeyException(C22128a.m8686M1(59, "invalid key size: ", length, " bytes; key must have 64 bytes"));
            }
            int i = length >> 1;
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, i);
            this.zzd = Arrays.copyOfRange(bArr, i, length);
            this.zzc = new zzgdn(copyOfRange);
            return;
        }
        throw new GeneralSecurityException("Can not use AES-SIV in FIPS-mode.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v30, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* JADX WARN: Type inference failed for: r0v7, types: [byte[]] */
    @Override // com.google.android.gms.internal.ads.zzftj
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3;
        int i;
        if (bArr.length <= 2147483631) {
            Cipher zzb2 = zzgdb.zza.zzb("AES/CTR/NoPadding");
            ?? r0 = {bArr2, bArr};
            byte[] zza2 = this.zzc.zza(zzb, 16);
            for (int i2 = 0; i2 <= 0; i2++) {
                ?? r02 = r0[i2];
                byte[] bArr4 = r02;
                if (r02 == 0) {
                    bArr4 = new byte[0];
                }
                zza2 = zzgco.zzd(zzgcn.zza(zza2), this.zzc.zza(bArr4, 16));
            }
            ?? r03 = r0[1];
            int length = r03.length;
            if (length >= 16) {
                int length2 = zza2.length;
                if (length < length2) {
                    throw new IllegalArgumentException("xorEnd requires a.length >= b.length");
                }
                byte[] copyOf = Arrays.copyOf((byte[]) r03, length);
                int i3 = 0;
                while (true) {
                    bArr3 = copyOf;
                    if (i3 >= zza2.length) {
                        break;
                    }
                    copyOf[(length - length2) + i3] = (byte) (copyOf[i] ^ zza2[i3]);
                    i3++;
                }
            } else {
                bArr3 = zzgco.zzd(zzgcn.zzb(r03), zzgcn.zza(zza2));
            }
            byte[] zza3 = this.zzc.zza(bArr3, 16);
            byte[] bArr5 = (byte[]) zza3.clone();
            bArr5[8] = (byte) (bArr5[8] & Byte.MAX_VALUE);
            bArr5[12] = (byte) (bArr5[12] & Byte.MAX_VALUE);
            zzb2.init(1, new SecretKeySpec(this.zzd, "AES"), new IvParameterSpec(bArr5));
            return zzgco.zza(new byte[]{zza3, zzb2.doFinal(bArr)});
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
