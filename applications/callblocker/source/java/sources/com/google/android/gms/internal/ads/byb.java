package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/byb.class */
public final class byb implements cah<byc> {

    /* renamed from: a */
    private final crs f12473a;

    /* renamed from: b */
    private final cgp f12474b;

    public byb(crs crsVar, cgp cgpVar) {
        this.f12473a = crsVar;
        this.f12474b = cgpVar;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<byc> mo11479a() {
        return this.f12473a.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.bye

            /* renamed from: a */
            private final byb f12478a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12478a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12478a.m11559b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ byc m11559b() {
        return new byc(this.f12474b);
    }
}
