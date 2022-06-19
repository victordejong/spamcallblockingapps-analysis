package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jd2.class */
public final class jd2 implements wa2<kd2> {

    /* renamed from: a */
    private final ph0 f24843a;

    /* renamed from: b */
    private final boolean f24844b;

    /* renamed from: c */
    private final ScheduledExecutorService f24845c;

    /* renamed from: d */
    private final s03 f24846d;

    /* renamed from: e */
    private final String f24847e;

    /* renamed from: f */
    private final eh0 f24848f;

    public jd2(ph0 ph0Var, boolean z, eh0 eh0Var, s03 s03Var, String str, ScheduledExecutorService scheduledExecutorService, byte[] bArr) {
        this.f24843a = ph0Var;
        this.f24844b = z;
        this.f24848f = eh0Var;
        this.f24846d = s03Var;
        this.f24847e = str;
        this.f24845c = scheduledExecutorService;
    }

    /* renamed from: a */
    public final /* synthetic */ kd2 m14137a(Exception exc) {
        this.f24843a.m12235k(exc, "TrustlessTokenSignal");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<kd2> zza() {
        return (C6718ly.f26334a.m12799e().booleanValue() || this.f24844b) ? k03.m13998f(k03.m13996h(k03.m13994j(k03.m14003a(null), hd2.f23860a, this.f24846d), C6718ly.f26336c.m12799e().longValue(), TimeUnit.MILLISECONDS, this.f24845c), Exception.class, new nu2(this) { // from class: com.google.android.gms.internal.ads.id2

            /* renamed from: a */
            private final jd2 f24203a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24203a = this;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj) {
                this.f24203a.m14137a((Exception) obj);
                return null;
            }
        }, this.f24846d) : k03.m14003a(null);
    }
}
