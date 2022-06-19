package com.verizon.ads.support;

import com.verizon.ads.Logger;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/SafeRunnable.class */
public abstract class SafeRunnable implements Runnable {

    /* renamed from: a */
    private static final Logger f61668a = Logger.getInstance(SafeRunnable.class);

    @Override // java.lang.Runnable
    public final void run() {
        try {
            safeRun();
        } catch (Throwable th) {
            f61668a.m5564e(null, th);
        }
    }

    public abstract void safeRun();
}
