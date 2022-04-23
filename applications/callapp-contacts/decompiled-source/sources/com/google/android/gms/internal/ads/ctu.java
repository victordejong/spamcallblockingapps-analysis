package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ctu.class */
public final class ctu implements ctv {

    /* renamed from: a  reason: collision with root package name */
    final zc f26384a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f26385b;

    public ctu(Executor executor, zc zcVar) {
        this.f26385b = executor;
        this.f26384a = zcVar;
    }

    @Override // com.google.android.gms.internal.ads.ctv
    public final void a(final String str) {
        this.f26385b.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.ctx

            /* renamed from: a  reason: collision with root package name */
            private final ctu f26388a;

            /* renamed from: b  reason: collision with root package name */
            private final String f26389b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26388a = this;
                this.f26389b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ctu ctuVar = this.f26388a;
                ctuVar.f26384a.zzen(this.f26389b);
            }
        });
    }
}
