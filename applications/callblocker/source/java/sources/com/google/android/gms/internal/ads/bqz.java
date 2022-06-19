package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bqz.class */
public final class bqz implements ave {

    /* renamed from: a */
    final /* synthetic */ bqx f11869a;

    /* renamed from: b */
    private final /* synthetic */ chd f11870b;

    /* renamed from: c */
    private final /* synthetic */ cgr f11871c;

    /* renamed from: d */
    private final /* synthetic */ bmx f11872d;

    public bqz(bqx bqxVar, chd chdVar, cgr cgrVar, bmx bmxVar) {
        this.f11869a = bqxVar;
        this.f11870b = chdVar;
        this.f11871c = cgrVar;
        this.f11872d = bmxVar;
    }

    @Override // com.google.android.gms.internal.ads.ave
    /* renamed from: a */
    public final void mo11706a() {
        Executor executor;
        executor = this.f11869a.f11861b;
        executor.execute(new Runnable(this, this.f11870b, this.f11871c, this.f11872d) { // from class: com.google.android.gms.internal.ads.brc

            /* renamed from: a */
            private final bqz f11881a;

            /* renamed from: b */
            private final chd f11882b;

            /* renamed from: c */
            private final cgr f11883c;

            /* renamed from: d */
            private final bmx f11884d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11881a = this;
                this.f11882b = chdVar;
                this.f11883c = cgrVar;
                this.f11884d = bmxVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                bqz bqzVar = this.f11881a;
                chd chdVar2 = this.f11882b;
                cgr cgrVar2 = this.f11883c;
                bmx bmxVar2 = this.f11884d;
                bqx bqxVar = bqzVar.f11869a;
                bqx.m11707c(chdVar2, cgrVar2, bmxVar2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ave
    /* renamed from: a */
    public final void mo11705a(int i) {
        String valueOf = String.valueOf(this.f11872d.f11570a);
        C3556uu.m6745e(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "));
    }
}
