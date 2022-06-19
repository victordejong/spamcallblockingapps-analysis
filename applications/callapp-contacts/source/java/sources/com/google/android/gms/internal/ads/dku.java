package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dku.class */
public final class dku implements dfx {

    /* renamed from: a */
    final String f47159a;

    /* renamed from: b */
    final Key f47160b;

    /* renamed from: c */
    private final ThreadLocal<Mac> f47161c;

    /* renamed from: d */
    private final int f47162d;

    public dku(String str, Key key) throws GeneralSecurityException {
        dkx dkxVar = new dkx(this);
        this.f47161c = dkxVar;
        this.f47159a = str;
        this.f47160b = key;
        if (key.getEncoded().length >= 16) {
            str.hashCode();
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
                case 392316170:
                    if (str.equals("HMACSHA384")) {
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
                    this.f47162d = 20;
                    break;
                case true:
                    this.f47162d = 32;
                    break;
                case true:
                    this.f47162d = 48;
                    break;
                case true:
                    this.f47162d = 64;
                    break;
                default:
                    String valueOf = String.valueOf(str);
                    throw new NoSuchAlgorithmException(valueOf.length() != 0 ? "unknown Hmac algorithm: ".concat(valueOf) : new String("unknown Hmac algorithm: "));
            }
            dkxVar.get();
            return;
        }
        throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.dfx
    /* renamed from: a */
    public final byte[] mo16528a(byte[] bArr, int i) throws GeneralSecurityException {
        if (i <= this.f47162d) {
            this.f47161c.get().update(bArr);
            return Arrays.copyOf(this.f47161c.get().doFinal(), i);
        }
        throw new InvalidAlgorithmParameterException("tag size too big");
    }
}
