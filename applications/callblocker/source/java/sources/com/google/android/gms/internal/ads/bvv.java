package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvv.class */
public final class bvv implements cah<bvw> {

    /* renamed from: a */
    private final crs f12362a;

    /* renamed from: b */
    private final chh f12363b;

    public bvv(crs crsVar, chh chhVar) {
        this.f12362a = crsVar;
        this.f12363b = chhVar;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<bvw> mo11479a() {
        return this.f12362a.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.bvy

            /* renamed from: a */
            private final bvv f12367a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12367a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12367a.m11586b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ bvw m11586b() {
        return new bvw(this.f12363b.f13046j);
    }
}
