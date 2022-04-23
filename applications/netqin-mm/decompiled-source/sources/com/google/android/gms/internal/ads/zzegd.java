package com.google.android.gms.internal.ads;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p131c.p161d.p170b.p224d.p252g.p253a.a60;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegd.class */
public final class zzegd implements zzehl {

    /* renamed from: d */
    public static final ThreadLocal<Cipher> f27996d = new a60();

    /* renamed from: a */
    public final SecretKeySpec f27997a;

    /* renamed from: b */
    public final int f27998b;

    /* renamed from: c */
    public final int f27999c;

    public zzegd(byte[] bArr, int i) throws GeneralSecurityException {
        zzeht.m12548a(bArr.length);
        this.f27997a = new SecretKeySpec(bArr, "AES");
        int blockSize = f27996d.get().getBlockSize();
        this.f27999c = blockSize;
        if (i < 12 || i > blockSize) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.f27998b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzehl
    /* renamed from: a */
    public final byte[] mo12558a(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.f27998b;
        if (length <= MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i) {
            byte[] bArr2 = new byte[bArr.length + i];
            byte[] a = zzehs.m12550a(i);
            System.arraycopy(a, 0, bArr2, 0, this.f27998b);
            int length2 = bArr.length;
            int i2 = this.f27998b;
            Cipher cipher = f27996d.get();
            byte[] bArr3 = new byte[this.f27999c];
            System.arraycopy(a, 0, bArr3, 0, this.f27998b);
            cipher.init(1, this.f27997a, new IvParameterSpec(bArr3));
            if (cipher.doFinal(bArr, 0, length2, bArr2, i2) == length2) {
                return bArr2;
            }
            throw new GeneralSecurityException("stored output's length does not match input's length");
        }
        int i3 = this.f27998b;
        StringBuilder sb = new StringBuilder(43);
        sb.append("plaintext length can not exceed ");
        sb.append(MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i3);
        throw new GeneralSecurityException(sb.toString());
    }
}
