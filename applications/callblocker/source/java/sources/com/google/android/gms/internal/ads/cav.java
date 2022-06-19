package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cav.class */
public final class cav implements cah<cas> {

    /* renamed from: a */
    private final AbstractC3537ub f12641a;

    /* renamed from: b */
    private final Context f12642b;

    /* renamed from: c */
    private final ScheduledExecutorService f12643c;

    /* renamed from: d */
    private final Executor f12644d;

    public cav(AbstractC3537ub abstractC3537ub, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f12641a = abstractC3537ub;
        this.f12642b = context;
        this.f12643c = scheduledExecutorService;
        this.f12644d = executor;
    }

    /* renamed from: a */
    public final /* synthetic */ cas m11502a(Throwable th) {
        dyx.m8162a();
        return new cas(null, C3634xr.m6789b(this.f12642b));
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<cas> mo11479a() {
        crb m10777a;
        if (((Boolean) dyx.m8158e().m7876a(edi.f16384aq)).booleanValue()) {
            m10777a = crb.m10789c((crt) this.f12641a.mo7116a(this.f12642b)).m10792a(cau.f12640a, this.f12644d).m10793a(((Long) dyx.m8158e().m7876a(edi.f16385ar)).longValue(), TimeUnit.MILLISECONDS, this.f12643c).m10790a(Throwable.class, new coe(this) { // from class: com.google.android.gms.internal.ads.cay

                /* renamed from: a */
                private final cav f12650a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12650a = this;
                }

                @Override // com.google.android.gms.internal.ads.coe
                /* renamed from: a */
                public final Object mo7184a(Object obj) {
                    return this.f12650a.m11502a((Throwable) obj);
                }
            }, this.f12644d);
        } else {
            m10777a = crg.m10777a((Throwable) new Exception("Did not ad Ad ID into query param."));
        }
        return m10777a;
    }
}
