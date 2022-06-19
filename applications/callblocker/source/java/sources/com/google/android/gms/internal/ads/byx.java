package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/byx.class */
public final class byx implements cah<byt> {

    /* renamed from: a */
    private final crs f12511a;

    /* renamed from: b */
    private final Bundle f12512b;

    public byx(crs crsVar, Bundle bundle) {
        this.f12511a = crsVar;
        this.f12512b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<byt> mo11479a() {
        return this.f12511a.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.byw

            /* renamed from: a */
            private final byx f12510a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12510a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12510a.m11549b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ byt m11549b() {
        return new byt(this.f12512b);
    }
}
