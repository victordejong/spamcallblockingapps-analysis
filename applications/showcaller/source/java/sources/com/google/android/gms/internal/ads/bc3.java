package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bc3.class */
public final class bc3 implements i53 {

    /* renamed from: a */
    private final ThreadLocal<Mac> f20341a;

    /* renamed from: b */
    private final String f20342b;

    /* renamed from: c */
    private final Key f20343c;

    /* renamed from: d */
    private final int f20344d;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public bc3(String str, Key key) {
        boolean z;
        int i;
        ac3 ac3Var = new ac3(this);
        this.f20341a = ac3Var;
        if (a43.m16694a(2)) {
            this.f20342b = str;
            this.f20343c = key;
            if (key.getEncoded().length < 16) {
                throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
            }
            switch (str.hashCode()) {
                case -1823053428:
                    if (str.equals("HMACSHA1")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case 392315023:
                    if (str.equals("HMACSHA224")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 392315118:
                    if (str.equals("HMACSHA256")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 392316170:
                    if (str.equals("HMACSHA384")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 392317873:
                    if (str.equals("HMACSHA512")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            if (!z) {
                i = 20;
            } else if (z) {
                i = 28;
            } else if (z) {
                i = 32;
            } else if (!z) {
                if (!z) {
                    throw new NoSuchAlgorithmException(str.length() != 0 ? "unknown Hmac algorithm: ".concat(str) : new String("unknown Hmac algorithm: "));
                }
                this.f20344d = 64;
                ac3Var.get();
                return;
            } else {
                i = 48;
            }
            this.f20344d = i;
            ac3Var.get();
            return;
        }
        throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }

    @Override // com.google.android.gms.internal.ads.i53
    /* renamed from: a */
    public final byte[] mo8453a(byte[] bArr, int i) {
        if (i <= this.f20344d) {
            this.f20341a.get().update(bArr);
            return Arrays.copyOf(this.f20341a.get().doFinal(), i);
        }
        throw new InvalidAlgorithmParameterException("tag size too big");
    }
}
