package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdc.class */
public final class zzdc implements Runnable {
    /* JADX INFO: Access modifiers changed from: private */
    public zzdc() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            MessageDigest unused = zzda.zznt = MessageDigest.getInstance("MD5");
            zzda.zznw.countDown();
        } catch (NoSuchAlgorithmException e) {
            zzda.zznw.countDown();
        } catch (Throwable th) {
            zzda.zznw.countDown();
            throw th;
        }
    }
}
