package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzakh.class */
public final class zzakh implements Runnable {
    private zzakh() {
    }

    public /* synthetic */ zzakh(zzakg zzakgVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            zzaki.zzc = MessageDigest.getInstance("MD5");
            countDownLatch = zzaki.zzb;
        } catch (NoSuchAlgorithmException e) {
            countDownLatch = zzaki.zzb;
        } catch (Throwable th) {
            zzaki.zzb.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }
}
