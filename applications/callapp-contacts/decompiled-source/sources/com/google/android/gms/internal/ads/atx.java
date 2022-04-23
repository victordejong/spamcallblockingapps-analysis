package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.f;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/atx.class */
public final class atx extends awl<aub> {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f23879a;

    /* renamed from: b  reason: collision with root package name */
    private final f f23880b;

    /* renamed from: c  reason: collision with root package name */
    private long f23881c = -1;

    /* renamed from: d  reason: collision with root package name */
    private long f23882d = -1;
    private boolean e = false;
    private ScheduledFuture<?> f;

    public atx(ScheduledExecutorService scheduledExecutorService, f fVar) {
        super(Collections.emptySet());
        this.f23879a = scheduledExecutorService;
        this.f23880b = fVar;
    }

    private final void a(long j) {
        synchronized (this) {
            ScheduledFuture<?> scheduledFuture = this.f;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.f.cancel(true);
            }
            this.f23881c = this.f23880b.b() + j;
            this.f = this.f23879a.schedule(new aty(this, null), j, TimeUnit.MILLISECONDS);
        }
    }

    public final void a() {
        synchronized (this) {
            if (!this.e) {
                ScheduledFuture<?> scheduledFuture = this.f;
                if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                    this.f23882d = -1L;
                } else {
                    this.f.cancel(true);
                    this.f23882d = this.f23881c - this.f23880b.b();
                }
                this.e = true;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002a, code lost:
        if (r0 < 0) goto L_0x0033;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r6) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r6
            if (r0 > 0) goto L_0x0009
            r0 = r5
            monitor-exit(r0)
            return
        L_0x0009:
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS     // Catch: all -> 0x006d
            r1 = r6
            long r1 = (long) r1     // Catch: all -> 0x006d
            long r0 = r0.toMillis(r1)     // Catch: all -> 0x006d
            r7 = r0
            r0 = r5
            boolean r0 = r0.e     // Catch: all -> 0x006d
            if (r0 == 0) goto L_0x003b
            r0 = r5
            long r0 = r0.f23882d     // Catch: all -> 0x006d
            r9 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0030
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0030
            goto L_0x0033
        L_0x0030:
            r0 = r9
            r7 = r0
        L_0x0033:
            r0 = r5
            r1 = r7
            r0.f23882d = r1     // Catch: all -> 0x006d
            r0 = r5
            monitor-exit(r0)
            return
        L_0x003b:
            r0 = r5
            com.google.android.gms.common.util.f r0 = r0.f23880b     // Catch: all -> 0x006d
            long r0 = r0.b()     // Catch: all -> 0x006d
            r9 = r0
            r0 = r5
            long r0 = r0.f23881c     // Catch: all -> 0x006d
            r11 = r0
            r0 = r9
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0065
            r0 = r11
            r1 = r5
            com.google.android.gms.common.util.f r1 = r1.f23880b     // Catch: all -> 0x006d
            long r1 = r1.b()     // Catch: all -> 0x006d
            long r0 = r0 - r1
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x006a
        L_0x0065:
            r0 = r5
            r1 = r7
            r0.a(r1)     // Catch: all -> 0x006d
        L_0x006a:
            r0 = r5
            monitor-exit(r0)
            return
        L_0x006d:
            r13 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r13
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.atx.a(int):void");
    }

    public final void b() {
        synchronized (this) {
            if (this.e) {
                if (this.f23882d > 0 && this.f.isCancelled()) {
                    a(this.f23882d);
                }
                this.e = false;
            }
        }
    }

    public final void c() {
        synchronized (this) {
            this.e = false;
            a(0L);
        }
    }
}
