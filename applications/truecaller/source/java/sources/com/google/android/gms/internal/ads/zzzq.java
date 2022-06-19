package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzq.class */
public final class zzzq implements Runnable {
    private zzzq() {
    }

    public /* synthetic */ zzzq(zzzr zzzrVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            MessageDigest unused = zzzs.zzc = MessageDigest.getInstance("MD5");
            countDownLatch = zzzs.zzb;
        } catch (NoSuchAlgorithmException e) {
            countDownLatch = zzzs.zzb;
        } catch (Throwable th) {
            zzzs.zzb.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }
}
