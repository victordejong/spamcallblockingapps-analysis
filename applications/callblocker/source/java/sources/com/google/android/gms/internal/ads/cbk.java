package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cbk.class */
public final class cbk implements cah<cbh> {

    /* renamed from: a */
    private final AbstractC3537ub f12670a;

    /* renamed from: b */
    private final int f12671b;

    /* renamed from: c */
    private final Context f12672c;

    /* renamed from: d */
    private final C3542ug f12673d;

    /* renamed from: e */
    private final ScheduledExecutorService f12674e;

    /* renamed from: f */
    private final Executor f12675f;

    public cbk(AbstractC3537ub abstractC3537ub, int i, Context context, C3542ug c3542ug, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f12670a = abstractC3537ub;
        this.f12671b = i;
        this.f12672c = context;
        this.f12673d = c3542ug;
        this.f12674e = scheduledExecutorService;
        this.f12675f = executor;
    }

    /* renamed from: a */
    public final /* synthetic */ cbh m11495a(Exception exc) {
        this.f12673d.m7095a(exc, "ATTESTATION_TOKEN_FETCH");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [com.google.android.gms.internal.ads.crt] */
    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<cbh> mo11479a() {
        crb m10790a;
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16461cN)).booleanValue()) {
            m10790a = crg.m10778a((Object) null);
        } else {
            m10790a = crb.m10789c(crg.m10785a(new cqr(this) { // from class: com.google.android.gms.internal.ads.cbj

                /* renamed from: a */
                private final cbk f12669a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12669a = this;
                }

                @Override // com.google.android.gms.internal.ads.cqr
                /* renamed from: a */
                public final crt mo10802a() {
                    return this.f12669a.m11494b();
                }
            }, this.f12675f)).m10792a(cbm.f12677a, this.f12675f).m10793a(((Long) dyx.m8158e().m7876a(edi.f16385ar)).longValue(), TimeUnit.MILLISECONDS, this.f12674e).m10790a(Exception.class, new coe(this) { // from class: com.google.android.gms.internal.ads.cbl

                /* renamed from: a */
                private final cbk f12676a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12676a = this;
                }

                @Override // com.google.android.gms.internal.ads.coe
                /* renamed from: a */
                public final Object mo7184a(Object obj) {
                    return this.f12676a.m11495a((Exception) obj);
                }
            }, crv.m10766a());
        }
        return m10790a;
    }

    /* renamed from: b */
    public final /* synthetic */ crt m11494b() {
        return this.f12670a.mo7115a(this.f12672c, this.f12671b);
    }
}
