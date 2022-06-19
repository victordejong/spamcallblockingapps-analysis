package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrv.class */
public abstract class zzrv {
    private static MessageDigest zzbug;
    protected Object mLock = new Object();

    public abstract byte[] zzbq(String str);

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0035 -> B:14:0x0022). Please submit an issue!!! */
    public final MessageDigest zzms() {
        synchronized (this.mLock) {
            MessageDigest messageDigest = zzbug;
            if (messageDigest != null) {
                return messageDigest;
            }
            for (int i = 0; i < 2; i++) {
                try {
                    zzbug = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException e) {
                }
            }
            return zzbug;
        }
    }
}
