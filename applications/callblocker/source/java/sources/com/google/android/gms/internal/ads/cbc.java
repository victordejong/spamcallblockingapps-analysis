package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cbc.class */
public final class cbc implements cah<caz> {

    /* renamed from: a */
    private final AbstractC3537ub f12653a;

    /* renamed from: b */
    private final Executor f12654b;

    /* renamed from: c */
    private final String f12655c;

    /* renamed from: d */
    private final PackageInfo f12656d;

    public cbc(AbstractC3537ub abstractC3537ub, Executor executor, String str, PackageInfo packageInfo) {
        this.f12653a = abstractC3537ub;
        this.f12654b = executor;
        this.f12655c = str;
        this.f12656d = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<caz> mo11479a() {
        return crg.m10780a(crg.m10783a(this.f12653a.mo7114a(this.f12655c, this.f12656d), cbb.f12652a, this.f12654b), Throwable.class, new cqt(this) { // from class: com.google.android.gms.internal.ads.cbe

            /* renamed from: a */
            private final cbc f12658a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12658a = this;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f12658a.m11497a((Throwable) obj);
            }
        }, this.f12654b);
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11497a(Throwable th) {
        return crg.m10778a(new caz(this.f12655c));
    }
}
