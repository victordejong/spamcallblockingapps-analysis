package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbr.class */
public final class cbr implements Runnable {
    private cbr() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            MessageDigest unused = bzp.f25458c = MessageDigest.getInstance("MD5");
            bzp.f25456a.countDown();
        } catch (NoSuchAlgorithmException e) {
            bzp.f25456a.countDown();
        } catch (Throwable th) {
            bzp.f25456a.countDown();
            throw th;
        }
    }
}
