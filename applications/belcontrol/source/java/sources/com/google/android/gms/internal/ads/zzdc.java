package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdc.class */
public final class zzdc implements Runnable {
    /* JADX INFO: Access modifiers changed from: private */
    public zzdc() {
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0019 -> B:3:0x0009). Please submit an issue!!! */
    @Override // java.lang.Runnable
    public final void run() {
        try {
            MessageDigest unused = zzda.zznt = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
        } catch (Throwable th) {
            zzda.zznw.countDown();
            throw th;
        }
        zzda.zznw.countDown();
    }
}
