package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bng.class */
public final class bng implements dsi<dbt<String>> {

    /* renamed from: a */
    private final dsv<die> f44333a;

    /* renamed from: b */
    private final dsv<Context> f44334b;

    /* renamed from: c */
    private final dsv<dbs> f44335c;

    private bng(dsv<die> dsvVar, dsv<Context> dsvVar2, dsv<dbs> dsvVar3) {
        this.f44333a = dsvVar;
        this.f44334b = dsvVar2;
        this.f44335c = dsvVar3;
    }

    /* renamed from: a */
    public static bng m17727a(dsv<die> dsvVar, dsv<Context> dsvVar2, dsv<dbs> dsvVar3) {
        return new bng(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (dbt) dso.m15764b(this.f44335c.mo14005a().mo16890a(new Callable(this.f44333a.mo14005a(), this.f44334b.mo14005a()) { // from class: com.google.android.gms.internal.ads.bnd

            /* renamed from: a */
            private final die f44328a;

            /* renamed from: b */
            private final Context f44329b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44328a = mo14005a;
                this.f44329b = mo14005a2;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                die dieVar = this.f44328a;
                return dieVar.f47085b.zzb(this.f44329b);
            }
        }));
    }
}
