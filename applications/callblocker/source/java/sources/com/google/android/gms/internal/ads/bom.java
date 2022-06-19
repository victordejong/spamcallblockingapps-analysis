package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bom.class */
public final class bom implements Runnable {
    /* JADX INFO: Access modifiers changed from: private */
    public bom() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            MessageDigest unused = bml.f11547c = MessageDigest.getInstance("MD5");
            bml.f11545a.countDown();
        } catch (NoSuchAlgorithmException e) {
            bml.f11545a.countDown();
        } catch (Throwable th) {
            bml.f11545a.countDown();
            throw th;
        }
    }
}
