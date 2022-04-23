package com.amazon.device.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbThreadService.class */
class DtbThreadService {

    /* renamed from: b  reason: collision with root package name */
    static long f6511b = 10;

    /* renamed from: d  reason: collision with root package name */
    private static DtbThreadService f6512d = new DtbThreadService();

    /* renamed from: c  reason: collision with root package name */
    ScheduledExecutorService f6514c;

    /* renamed from: a  reason: collision with root package name */
    boolean f6513a = false;
    private final ExecutorService e = Executors.newFixedThreadPool(1);

    private DtbThreadService() {
        Runtime.getRuntime().addShutdownHook(new Thread() { // from class: com.amazon.device.ads.DtbThreadService.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                DtbThreadService.f6512d.f6513a = true;
                DtbLog.b();
                DtbThreadService.this.e.shutdown();
            }
        });
        Runtime.getRuntime().addShutdownHook(new Thread() { // from class: com.amazon.device.ads.DtbThreadService.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                DtbThreadService.f6512d.f6513a = true;
                DtbLog.b();
                if (DtbThreadService.this.f6514c != null) {
                    DtbThreadService.this.f6514c.shutdown();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DtbThreadService a() {
        return f6512d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(InternalError internalError) {
        internalError.getLocalizedMessage().contains("shutdown");
        throw internalError;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(Runnable runnable) {
        new Handler(Looper.getMainLooper()).post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Runnable runnable) {
        try {
            if (!this.f6513a) {
                this.e.execute(runnable);
            }
        } catch (InternalError e) {
            a(e);
        }
    }
}
