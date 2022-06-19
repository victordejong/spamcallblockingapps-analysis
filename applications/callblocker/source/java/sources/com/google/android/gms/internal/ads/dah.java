package com.google.android.gms.internal.ads;

import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dah.class */
public final class dah implements ctd {

    /* renamed from: a */
    private final Mac f13897a;

    /* renamed from: b */
    private final int f13898b;

    /* renamed from: c */
    private final String f13899c;

    /* renamed from: d */
    private final Key f13900d;

    public dah(String str, Key key, int i) {
        if (i < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
        }
        if (key.getEncoded().length < 16) {
            throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
        }
        boolean z = true;
        switch (str.hashCode()) {
            case -1823053428:
                if (str.equals("HMACSHA1")) {
                    z = false;
                    break;
                }
                break;
            case 392315118:
                if (str.equals("HMACSHA256")) {
                    z = true;
                    break;
                }
                break;
            case 392317873:
                if (str.equals("HMACSHA512")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                if (i > 20) {
                    throw new InvalidAlgorithmParameterException("tag size too big");
                }
                break;
            case true:
                if (i > 32) {
                    throw new InvalidAlgorithmParameterException("tag size too big");
                }
                break;
            case true:
                if (i > 64) {
                    throw new InvalidAlgorithmParameterException("tag size too big");
                }
                break;
            default:
                String valueOf = String.valueOf(str);
                throw new NoSuchAlgorithmException(valueOf.length() != 0 ? "unknown Hmac algorithm: ".concat(valueOf) : new String("unknown Hmac algorithm: "));
        }
        this.f13899c = str;
        this.f13898b = i;
        this.f13900d = key;
        this.f13897a = czy.f13885b.m10281a(str);
        this.f13897a.init(key);
    }

    @Override // com.google.android.gms.internal.ads.ctd
    /* renamed from: a */
    public final byte[] mo10275a(byte[] bArr) {
        Mac m10281a;
        try {
            m10281a = (Mac) this.f13897a.clone();
        } catch (CloneNotSupportedException e) {
            m10281a = czy.f13885b.m10281a(this.f13899c);
            m10281a.init(this.f13900d);
        }
        m10281a.update(bArr);
        byte[] bArr2 = new byte[this.f13898b];
        System.arraycopy(m10281a.doFinal(), 0, bArr2, 0, this.f13898b);
        return bArr2;
    }
}
