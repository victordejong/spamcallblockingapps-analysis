package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/csd.class */
public final class csd<V> extends cra<V> {
    @NullableDecl

    /* renamed from: a */
    private crt<V> f13633a;
    @NullableDecl

    /* renamed from: b */
    private ScheduledFuture<?> f13634b;

    private csd(crt<V> crtVar) {
        this.f13633a = (crt) cor.m10936a(crtVar);
    }

    /* renamed from: a */
    public static <V> crt<V> m10751a(crt<V> crtVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        csd csdVar = new csd(crtVar);
        csf csfVar = new csf(csdVar);
        csdVar.f13634b = scheduledExecutorService.schedule(csfVar, j, timeUnit);
        crtVar.mo6734a(csfVar, cqz.INSTANCE);
        return csdVar;
    }

    @Override // com.google.android.gms.internal.ads.cqf
    /* renamed from: a */
    public final String mo10747a() {
        String str;
        crt<V> crtVar = this.f13633a;
        ScheduledFuture<?> scheduledFuture = this.f13634b;
        if (crtVar != null) {
            String valueOf = String.valueOf(crtVar);
            String sb = new StringBuilder(String.valueOf(valueOf).length() + 14).append("inputFuture=[").append(valueOf).append("]").toString();
            str = sb;
            if (scheduledFuture != null) {
                long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
                str = sb;
                if (delay > 0) {
                    String valueOf2 = String.valueOf(sb);
                    str = new StringBuilder(String.valueOf(valueOf2).length() + 43).append(valueOf2).append(", remaining delay=[").append(delay).append(" ms]").toString();
                }
            }
        } else {
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.cqf
    /* renamed from: b */
    public final void mo10744b() {
        m10844a((Future<?>) this.f13633a);
        ScheduledFuture<?> scheduledFuture = this.f13634b;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f13633a = null;
        this.f13634b = null;
    }
}
