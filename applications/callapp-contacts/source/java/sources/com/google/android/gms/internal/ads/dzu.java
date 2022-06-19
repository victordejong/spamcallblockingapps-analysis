package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzu.class */
public final class dzu extends Thread {

    /* renamed from: a */
    private static final boolean f48451a = C12759mz.f49560a;

    /* renamed from: b */
    private final BlockingQueue<AbstractC13087z<?>> f48452b;

    /* renamed from: c */
    private final BlockingQueue<AbstractC13087z<?>> f48453c;

    /* renamed from: d */
    private final dxu f48454d;

    /* renamed from: e */
    private final AbstractC12678jz f48455e;

    /* renamed from: f */
    private volatile boolean f48456f = false;

    /* renamed from: g */
    private final C12860qr f48457g;

    public dzu(BlockingQueue<AbstractC13087z<?>> blockingQueue, BlockingQueue<AbstractC13087z<?>> blockingQueue2, dxu dxuVar, AbstractC12678jz abstractC12678jz) {
        this.f48452b = blockingQueue;
        this.f48453c = blockingQueue2;
        this.f48454d = dxuVar;
        this.f48455e = abstractC12678jz;
        this.f48457g = new C12860qr(this, blockingQueue2, abstractC12678jz);
    }

    /* renamed from: a */
    public final void m15383a() {
        this.f48456f = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f48451a) {
            C12759mz.m14482a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f48454d.mo14174a();
        while (true) {
            try {
                AbstractC13087z<?> take = this.f48452b.take();
                take.zzc("cache-queue-take");
                take.zzd(1);
                take.isCanceled();
                eap mo14166a = this.f48454d.mo14166a(take.zze());
                if (mo14166a == null) {
                    take.zzc("cache-miss");
                    if (!this.f48457g.m14227b(take)) {
                        this.f48453c.put(take);
                    }
                    take.zzd(2);
                } else if (mo14166a.m15364a()) {
                    take.zzc("cache-hit-expired");
                    take.zza(mo14166a);
                    if (!this.f48457g.m14227b(take)) {
                        this.f48453c.put(take);
                    }
                    take.zzd(2);
                } else {
                    take.zzc("cache-hit");
                    C12545fa<?> zza = take.zza(new emg(mo14166a.f48516a, mo14166a.f48522g));
                    take.zzc("cache-hit-parsed");
                    if (!zza.m14681a()) {
                        take.zzc("cache-parsing-failed");
                        this.f48454d.mo14161b(take.zze());
                        take.zza((eap) null);
                        if (!this.f48457g.m14227b(take)) {
                            this.f48453c.put(take);
                        }
                        take.zzd(2);
                    } else {
                        if (!(mo14166a.f48521f < System.currentTimeMillis())) {
                            this.f48455e.mo14561a(take, zza);
                        } else {
                            take.zzc("cache-hit-refresh-needed");
                            take.zza(mo14166a);
                            zza.f49283d = true;
                            if (!this.f48457g.m14227b(take)) {
                                this.f48455e.mo14560a(take, zza, new ecl(this, take));
                            } else {
                                this.f48455e.mo14561a(take, zza);
                            }
                        }
                        take.zzd(2);
                    }
                }
            } catch (InterruptedException e) {
                if (this.f48456f) {
                    Thread.currentThread().interrupt();
                    return;
                }
                C12759mz.m14479c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
