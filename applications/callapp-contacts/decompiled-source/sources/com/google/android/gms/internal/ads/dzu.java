package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzu.class */
public final class dzu extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f27508a = mz.f28207a;

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue<z<?>> f27509b;

    /* renamed from: c  reason: collision with root package name */
    private final BlockingQueue<z<?>> f27510c;

    /* renamed from: d  reason: collision with root package name */
    private final dxu f27511d;
    private final jz e;
    private volatile boolean f = false;
    private final qr g;

    public dzu(BlockingQueue<z<?>> blockingQueue, BlockingQueue<z<?>> blockingQueue2, dxu dxuVar, jz jzVar) {
        this.f27509b = blockingQueue;
        this.f27510c = blockingQueue2;
        this.f27511d = dxuVar;
        this.e = jzVar;
        this.g = new qr(this, blockingQueue2, jzVar);
    }

    public final void a() {
        this.f = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f27508a) {
            mz.a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f27511d.a();
        while (true) {
            try {
                z<?> take = this.f27509b.take();
                take.zzc("cache-queue-take");
                take.zzd(1);
                take.isCanceled();
                eap a2 = this.f27511d.a(take.zze());
                if (a2 == null) {
                    take.zzc("cache-miss");
                    if (!this.g.b(take)) {
                        this.f27510c.put(take);
                    }
                    take.zzd(2);
                } else if (a2.a()) {
                    take.zzc("cache-hit-expired");
                    take.zza(a2);
                    if (!this.g.b(take)) {
                        this.f27510c.put(take);
                    }
                    take.zzd(2);
                } else {
                    take.zzc("cache-hit");
                    fa<?> zza = take.zza(new emg(a2.f27534a, a2.g));
                    take.zzc("cache-hit-parsed");
                    if (!zza.a()) {
                        take.zzc("cache-parsing-failed");
                        this.f27511d.b(take.zze());
                        take.zza((eap) null);
                        if (!this.g.b(take)) {
                            this.f27510c.put(take);
                        }
                        take.zzd(2);
                    } else {
                        if (!(a2.f < System.currentTimeMillis())) {
                            this.e.a(take, zza);
                        } else {
                            take.zzc("cache-hit-refresh-needed");
                            take.zza(a2);
                            zza.f27995d = true;
                            if (!this.g.b(take)) {
                                this.e.a(take, zza, new ecl(this, take));
                            } else {
                                this.e.a(take, zza);
                            }
                        }
                        take.zzd(2);
                    }
                }
            } catch (InterruptedException e) {
                if (this.f) {
                    Thread.currentThread().interrupt();
                    return;
                }
                mz.c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
