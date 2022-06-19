package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r24.class */
public final class r24 implements Runnable {
    public /* synthetic */ r24(s24 s24Var) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            MessageDigest unused = t24.f29799b = MessageDigest.getInstance("MD5");
            countDownLatch = t24.f29802e;
        } catch (NoSuchAlgorithmException e) {
            countDownLatch = t24.f29802e;
        } catch (Throwable th) {
            t24.f29802e.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }
}
