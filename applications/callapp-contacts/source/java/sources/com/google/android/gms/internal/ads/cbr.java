package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbr.class */
public final class cbr implements Runnable {
    /* JADX INFO: Access modifiers changed from: private */
    public cbr() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            MessageDigest unused = bzp.f45166c = MessageDigest.getInstance("MD5");
            bzp.f45164a.countDown();
        } catch (NoSuchAlgorithmException e) {
            bzp.f45164a.countDown();
        } catch (Throwable th) {
            bzp.f45164a.countDown();
            throw th;
        }
    }
}
