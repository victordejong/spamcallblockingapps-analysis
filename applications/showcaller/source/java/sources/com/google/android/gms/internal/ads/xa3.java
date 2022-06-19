package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import java.util.Collection;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xa3.class */
public final class xa3 implements l13 {

    /* renamed from: a */
    private static final Collection<Integer> f31955a = Arrays.asList(64);

    /* renamed from: b */
    private static final byte[] f31956b = new byte[16];

    /* renamed from: c */
    private final zb3 f31957c;

    /* renamed from: d */
    private final byte[] f31958d;

    public xa3(byte[] bArr) {
        if (a43.m16694a(1)) {
            Collection<Integer> collection = f31955a;
            int length = bArr.length;
            if (collection.contains(Integer.valueOf(length))) {
                int i = length >> 1;
                byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, i);
                this.f31958d = Arrays.copyOfRange(bArr, i, length);
                this.f31957c = new zb3(copyOfRange);
                return;
            }
            StringBuilder sb = new StringBuilder(59);
            sb.append("invalid key size: ");
            sb.append(length);
            sb.append(" bytes; key must have 64 bytes");
            throw new InvalidKeyException(sb.toString());
        }
        throw new GeneralSecurityException("Can not use AES-SIV in FIPS-mode.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v30, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* JADX WARN: Type inference failed for: r0v7, types: [byte[]] */
    @Override // com.google.android.gms.internal.ads.l13
    /* renamed from: a */
    public final byte[] mo9301a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        int i;
        if (bArr.length <= 2147483631) {
            Cipher m12953b = nb3.f27065d.m12953b("AES/CTR/NoPadding");
            ?? r0 = {bArr2, bArr};
            byte[] mo8453a = this.f31957c.mo8453a(f31956b, 16);
            for (int i2 = 0; i2 <= 0; i2++) {
                ?? r02 = r0[i2];
                byte[] bArr4 = r02;
                if (r02 == 0) {
                    bArr4 = new byte[0];
                }
                mo8453a = za3.m8468d(ya3.m8875a(mo8453a), this.f31957c.mo8453a(bArr4, 16));
            }
            ?? r03 = r0[1];
            int length = r03.length;
            if (length >= 16) {
                int length2 = mo8453a.length;
                if (length < length2) {
                    throw new IllegalArgumentException("xorEnd requires a.length >= b.length");
                }
                byte[] copyOf = Arrays.copyOf((byte[]) r03, length);
                int i3 = 0;
                while (true) {
                    bArr3 = copyOf;
                    if (i3 >= mo8453a.length) {
                        break;
                    }
                    copyOf[(length - length2) + i3] = (byte) (copyOf[i] ^ mo8453a[i3]);
                    i3++;
                }
            } else {
                bArr3 = za3.m8468d(ya3.m8874b(r03), ya3.m8875a(mo8453a));
            }
            byte[] mo8453a2 = this.f31957c.mo8453a(bArr3, 16);
            byte[] bArr5 = (byte[]) mo8453a2.clone();
            bArr5[8] = (byte) (bArr5[8] & Byte.MAX_VALUE);
            bArr5[12] = (byte) (bArr5[12] & Byte.MAX_VALUE);
            m12953b.init(1, new SecretKeySpec(this.f31958d, "AES"), new IvParameterSpec(bArr5));
            return za3.m8471a(new byte[]{mo8453a2, m12953b.doFinal(bArr)});
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
