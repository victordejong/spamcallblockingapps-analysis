package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/iu1.class */
public final class iu1 implements Runnable {
    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ iu1(kt1 kt1Var) {
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0019 -> B:3:0x0009). Please submit an issue!!! */
    @Override // java.lang.Runnable
    public final void run() {
        try {
            MessageDigest unused = cv1.f6301b = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
        } catch (Throwable th) {
            cv1.f6304e.countDown();
            throw th;
        }
        cv1.f6304e.countDown();
    }
}
