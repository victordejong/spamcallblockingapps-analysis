package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeip.class */
public final class zzeip implements zzedv {
    private final ThreadLocal<Mac> zzikq;
    private final String zzikr;
    private final Key zziks;
    private final int zzikt;

    public zzeip(String str, Key key) throws GeneralSecurityException {
        zzeis zzeisVar = new zzeis(this);
        this.zzikq = zzeisVar;
        this.zzikr = str;
        this.zziks = key;
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
                    this.zzikt = 20;
                    break;
                case true:
                    this.zzikt = 32;
                    break;
                case true:
                    this.zzikt = 48;
                    break;
                case true:
                    this.zzikt = 64;
                    break;
                default:
                    String valueOf = String.valueOf(str);
                    throw new NoSuchAlgorithmException(valueOf.length() != 0 ? "unknown Hmac algorithm: ".concat(valueOf) : new String("unknown Hmac algorithm: "));
            }
            zzeisVar.get();
            return;
        }
        throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzedv
    public final byte[] zzd(byte[] bArr, int i) throws GeneralSecurityException {
        if (i <= this.zzikt) {
            this.zzikq.get().update(bArr);
            return Arrays.copyOf(this.zzikq.get().doFinal(), i);
        }
        throw new InvalidAlgorithmParameterException("tag size too big");
    }
}
