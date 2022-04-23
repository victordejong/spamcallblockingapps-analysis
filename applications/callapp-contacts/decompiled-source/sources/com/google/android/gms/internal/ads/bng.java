package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bng.class */
public final class bng implements dsi<dbt<String>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<die> f24751a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f24752b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<dbs> f24753c;

    private bng(dsv<die> dsvVar, dsv<Context> dsvVar2, dsv<dbs> dsvVar3) {
        this.f24751a = dsvVar;
        this.f24752b = dsvVar2;
        this.f24753c = dsvVar3;
    }

    public static bng a(dsv<die> dsvVar, dsv<Context> dsvVar2, dsv<dbs> dsvVar3) {
        return new bng(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        final die a2 = this.f24751a.a();
        final Context a3 = this.f24752b.a();
        return (dbt) dso.b(this.f24753c.a().a(new Callable(a2, a3) { // from class: com.google.android.gms.internal.ads.bnd

            /* renamed from: a  reason: collision with root package name */
            private final die f24746a;

            /* renamed from: b  reason: collision with root package name */
            private final Context f24747b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24746a = a2;
                this.f24747b = a3;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                die dieVar = this.f24746a;
                return dieVar.f26844b.zzb(this.f24747b);
            }
        }));
    }
}
