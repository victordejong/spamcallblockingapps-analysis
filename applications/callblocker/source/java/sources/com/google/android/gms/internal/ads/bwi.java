package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bwi.class */
public final class bwi implements cah<bwf> {

    /* renamed from: a */
    private final Context f12391a;

    /* renamed from: b */
    private final ScheduledExecutorService f12392b;

    /* renamed from: c */
    private final Executor f12393c;

    public bwi(Context context, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f12391a = context;
        this.f12392b = scheduledExecutorService;
        this.f12393c = executor;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<bwf> mo11479a() {
        crt<bwf> m10780a;
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16532df)).booleanValue()) {
            m10780a = crg.m10778a((Object) null);
        } else {
            C3658yo c3658yo = new C3658yo();
            try {
                new cob(c3658yo) { // from class: com.google.android.gms.internal.ads.bwh

                    /* renamed from: a */
                    private final C3658yo f12390a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12390a = c3658yo;
                    }

                    @Override // com.google.android.gms.internal.ads.cob
                    /* renamed from: a */
                    public final void mo10948a(boolean z) {
                        this.f12390a.m6731b(false);
                    }
                }.mo10948a(false);
            } catch (Throwable th) {
                C3556uu.m6749c("ArCoreApk is not ready.");
                c3658yo.m6731b(false);
            }
            m10780a = crg.m10780a(crg.m10783a(crg.m10784a(c3658yo, 200L, TimeUnit.MILLISECONDS, this.f12392b), new coe(this) { // from class: com.google.android.gms.internal.ads.bwk

                /* renamed from: a */
                private final bwi f12395a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12395a = this;
                }

                @Override // com.google.android.gms.internal.ads.coe
                /* renamed from: a */
                public final Object mo7184a(Object obj) {
                    return new bwf(false, false, ((Boolean) obj).booleanValue());
                }
            }, this.f12393c), Throwable.class, bwj.f12394a, this.f12393c);
        }
        return m10780a;
    }
}
