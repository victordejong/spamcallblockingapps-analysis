package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dku.class */
public final class dku implements dfx {

    /* renamed from: a  reason: collision with root package name */
    final String f26901a;

    /* renamed from: b  reason: collision with root package name */
    final Key f26902b;

    /* renamed from: c  reason: collision with root package name */
    private final ThreadLocal<Mac> f26903c;

    /* renamed from: d  reason: collision with root package name */
    private final int f26904d;

    public dku(String str, Key key) throws GeneralSecurityException {
        dkx dkxVar = new dkx(this);
        this.f26903c = dkxVar;
        this.f26901a = str;
        this.f26902b = key;
        if (key.getEncoded().length >= 16) {
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1823053428:
                    if (str.equals("HMACSHA1")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 392315118:
                    if (str.equals("HMACSHA256")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 392316170:
                    if (str.equals("HMACSHA384")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 392317873:
                    if (str.equals("HMACSHA512")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    this.f26904d = 20;
                    break;
                case 1:
                    this.f26904d = 32;
                    break;
                case 2:
                    this.f26904d = 48;
                    break;
                case 3:
                    this.f26904d = 64;
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
    public final byte[] a(byte[] bArr, int i) throws GeneralSecurityException {
        if (i <= this.f26904d) {
            this.f26903c.get().update(bArr);
            return Arrays.copyOf(this.f26903c.get().doFinal(), i);
        }
        throw new InvalidAlgorithmParameterException("tag size too big");
    }
}
