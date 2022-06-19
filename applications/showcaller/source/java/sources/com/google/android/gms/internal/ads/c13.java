package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c13.class */
public final class c13<V> extends zz2<V> {

    /* renamed from: k */
    private r03<V> f21072k;

    /* renamed from: l */
    private ScheduledFuture<?> f21073l;

    private c13(r03<V> r03Var) {
        Objects.requireNonNull(r03Var);
        this.f21072k = r03Var;
    }

    /* renamed from: I */
    public static <V> r03<V> m16134I(r03<V> r03Var, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        c13 c13Var = new c13(r03Var);
        a13 a13Var = new a13(c13Var);
        c13Var.f21073l = scheduledExecutorService.schedule(a13Var, j, timeUnit);
        r03Var.mo10015d(a13Var, zzfrr.INSTANCE);
        return c13Var;
    }

    @Override // com.google.android.gms.internal.ads.fz2
    /* renamed from: i */
    public final String mo9813i() {
        r03<V> r03Var = this.f21072k;
        ScheduledFuture<?> scheduledFuture = this.f21073l;
        if (r03Var != null) {
            String obj = r03Var.toString();
            StringBuilder sb = new StringBuilder(obj.length() + 14);
            sb.append("inputFuture=[");
            sb.append(obj);
            sb.append("]");
            String sb2 = sb.toString();
            String str = sb2;
            if (scheduledFuture != null) {
                long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
                str = sb2;
                if (delay > 0) {
                    StringBuilder sb3 = new StringBuilder(sb2.length() + 43);
                    sb3.append(sb2);
                    sb3.append(", remaining delay=[");
                    sb3.append(delay);
                    sb3.append(" ms]");
                    str = sb3.toString();
                }
            }
            return str;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.fz2
    /* renamed from: j */
    protected final void mo10469j() {
        m15003z(this.f21072k);
        ScheduledFuture<?> scheduledFuture = this.f21073l;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f21072k = null;
        this.f21073l = null;
    }
}
