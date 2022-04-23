package com.verizon.ads.support;

import com.verizon.ads.Logger;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/SafeRunnable.class */
public abstract class SafeRunnable implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35600a = Logger.getInstance(SafeRunnable.class);

    @Override // java.lang.Runnable
    public final void run() {
        try {
            safeRun();
        } catch (Throwable th) {
            f35600a.e(null, th);
        }
    }

    public abstract void safeRun();
}
