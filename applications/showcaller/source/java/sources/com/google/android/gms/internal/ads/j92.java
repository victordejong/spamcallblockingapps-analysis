package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j92.class */
public final class j92 implements wa2<k92> {

    /* renamed from: a */
    private final s03 f24814a;

    /* renamed from: b */
    private final Bundle f24815b;

    public j92(s03 s03Var, Bundle bundle) {
        this.f24814a = s03Var;
        this.f24815b = bundle;
    }

    /* renamed from: a */
    public final /* synthetic */ k92 m14156a() {
        return new k92(this.f24815b);
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<k92> zza() {
        return this.f24814a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.i92

            /* renamed from: a */
            private final j92 f24177a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24177a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f24177a.m14156a();
            }
        });
    }
}
