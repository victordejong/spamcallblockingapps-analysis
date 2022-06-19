package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bjf.class */
public final class bjf implements dht<crt<String>> {

    /* renamed from: a */
    private final dig<ctl> f11382a;

    /* renamed from: b */
    private final dig<Context> f11383b;

    /* renamed from: c */
    private final dig<crs> f11384c;

    private bjf(dig<ctl> digVar, dig<Context> digVar2, dig<crs> digVar3) {
        this.f11382a = digVar;
        this.f11383b = digVar2;
        this.f11384c = digVar3;
    }

    /* renamed from: a */
    public static bjf m11860a(dig<ctl> digVar, dig<Context> digVar2, dig<crs> digVar3) {
        return new bjf(digVar, digVar2, digVar3);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (crt) dhz.m9438a(this.f11384c.mo9430a().mo10767a(new Callable(this.f11382a.mo9430a(), this.f11383b.mo9430a()) { // from class: com.google.android.gms.internal.ads.bjc

            /* renamed from: a */
            private final ctl f11377a;

            /* renamed from: b */
            private final Context f11378b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11377a = mo9430a;
                this.f11378b = mo9430a2;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                ctl ctlVar = this.f11377a;
                return ctlVar.m10670a().mo11053a(this.f11378b);
            }
        }), "Cannot return null from a non-@Nullable @Provides method");
    }
}
