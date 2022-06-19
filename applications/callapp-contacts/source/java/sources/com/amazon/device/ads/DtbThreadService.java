package com.amazon.device.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbThreadService.class */
public class DtbThreadService {

    /* renamed from: b */
    static long f11912b = 10;

    /* renamed from: d */
    private static DtbThreadService f11913d = new DtbThreadService();

    /* renamed from: c */
    ScheduledExecutorService f11915c;

    /* renamed from: a */
    boolean f11914a = false;

    /* renamed from: e */
    private final ExecutorService f11916e = Executors.newFixedThreadPool(1);

    private DtbThreadService() {
        Runtime.getRuntime().addShutdownHook(new Thread() { // from class: com.amazon.device.ads.DtbThreadService.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                DtbThreadService.f11913d.f11914a = true;
                DtbLog.m38825b();
                DtbThreadService.this.f11916e.shutdown();
            }
        });
        Runtime.getRuntime().addShutdownHook(new Thread() { // from class: com.amazon.device.ads.DtbThreadService.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                DtbThreadService.f11913d.f11914a = true;
                DtbLog.m38825b();
                if (DtbThreadService.this.f11915c != null) {
                    DtbThreadService.this.f11915c.shutdown();
                }
            }
        });
    }

    /* renamed from: a */
    public static DtbThreadService m38766a() {
        return f11913d;
    }

    /* renamed from: a */
    public static void m38764a(InternalError internalError) {
        internalError.getLocalizedMessage().contains("shutdown");
        throw internalError;
    }

    /* renamed from: b */
    public static void m38760b(Runnable runnable) {
        new Handler(Looper.getMainLooper()).post(runnable);
    }

    /* renamed from: a */
    public final void m38763a(Runnable runnable) {
        try {
            if (this.f11914a) {
                return;
            }
            this.f11916e.execute(runnable);
        } catch (InternalError e) {
            m38764a(e);
        }
    }
}
