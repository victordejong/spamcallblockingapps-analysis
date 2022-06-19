package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxe.class */
public abstract class zzaxe {
    private static MessageDigest zzb;
    public final Object zza = new Object();

    public abstract byte[] zza(String str);

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0035 -> B:14:0x0022). Please submit an issue!!! */
    public final MessageDigest zzb() {
        synchronized (this.zza) {
            MessageDigest messageDigest = zzb;
            if (messageDigest != null) {
                return messageDigest;
            }
            for (int i = 0; i < 2; i++) {
                try {
                    zzb = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException e) {
                }
            }
            return zzb;
        }
    }
}
