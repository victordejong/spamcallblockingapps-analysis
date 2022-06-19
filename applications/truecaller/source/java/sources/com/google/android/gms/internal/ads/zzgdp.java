package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgdp.class */
public final class zzgdp implements zzfxc {
    private final ThreadLocal<Mac> zza;
    private final String zzb;
    private final Key zzc;
    private final int zzd;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzgdp(String str, Key key) throws GeneralSecurityException {
        boolean z;
        int i;
        zzgdo zzgdoVar = new zzgdo(this);
        this.zza = zzgdoVar;
        if (zzfvw.zza(2)) {
            this.zzb = str;
            this.zzc = key;
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
                this.zzd = 64;
                zzgdoVar.get();
                return;
            } else {
                i = 48;
            }
            this.zzd = i;
            zzgdoVar.get();
            return;
        }
        throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final byte[] zza(byte[] bArr, int i) throws GeneralSecurityException {
        if (i <= this.zzd) {
            this.zza.get().update(bArr);
            return Arrays.copyOf(this.zza.get().doFinal(), i);
        }
        throw new InvalidAlgorithmParameterException("tag size too big");
    }
}
