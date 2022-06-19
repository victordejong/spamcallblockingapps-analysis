package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cc2.class */
public final class cc2 implements wa2<dc2> {

    /* renamed from: a */
    private final Context f21165a;

    /* renamed from: b */
    private final ph0 f21166b;

    /* renamed from: c */
    private final ScheduledExecutorService f21167c;

    /* renamed from: d */
    private final Executor f21168d;

    /* renamed from: e */
    private final String f21169e;

    /* renamed from: f */
    private final gh0 f21170f;

    public cc2(gh0 gh0Var, int i, Context context, ph0 ph0Var, ScheduledExecutorService scheduledExecutorService, Executor executor, String str, byte[] bArr) {
        this.f21170f = gh0Var;
        this.f21165a = context;
        this.f21166b = ph0Var;
        this.f21167c = scheduledExecutorService;
        this.f21168d = executor;
        this.f21169e = str;
    }

    /* renamed from: a */
    public final /* synthetic */ dc2 m16087a(Exception exc) {
        this.f21166b.m12235k(exc, "AttestationTokenSignal");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<dc2> zza() {
        return k03.m13998f((a03) k03.m13996h(k03.m13994j(a03.m16718E(k03.m13999e(new tz2(this) { // from class: com.google.android.gms.internal.ads.yb2

            /* renamed from: a */
            private final cc2 f32461a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32461a = this;
            }

            @Override // com.google.android.gms.internal.ads.tz2
            public final r03 zza() {
                return k03.m14003a(null);
            }
        }, this.f21168d)), ac2.f19873a, this.f21168d), ((Long) C7192yr.m8714c().m14263c(C6679kw.f25484G0)).longValue(), TimeUnit.MILLISECONDS, this.f21167c), Exception.class, new nu2(this) { // from class: com.google.android.gms.internal.ads.bc2

            /* renamed from: a */
            private final cc2 f20340a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20340a = this;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj) {
                this.f20340a.m16087a((Exception) obj);
                return null;
            }
        }, y03.m9007a());
    }
}
