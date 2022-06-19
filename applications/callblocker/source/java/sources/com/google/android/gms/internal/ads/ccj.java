package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ccj.class */
public final class ccj implements cah<ccg> {

    /* renamed from: a */
    private AbstractC3380og f12723a;

    /* renamed from: b */
    private ScheduledExecutorService f12724b;

    /* renamed from: c */
    private Context f12725c;

    public ccj(AbstractC3380og abstractC3380og, ScheduledExecutorService scheduledExecutorService, Context context) {
        this.f12723a = abstractC3380og;
        this.f12724b = scheduledExecutorService;
        this.f12725c = context;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<ccg> mo11479a() {
        return crg.m10783a(crg.m10784a(this.f12723a.mo7361a(this.f12725c), ((Long) dyx.m8158e().m7876a(edi.f16403bI)).longValue(), TimeUnit.MILLISECONDS, this.f12724b), cci.f12722a, C3650yg.f17642a);
    }
}
