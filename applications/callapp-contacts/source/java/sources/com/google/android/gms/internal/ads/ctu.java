package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ctu.class */
public final class ctu implements ctv {

    /* renamed from: a */
    final C13090zc f46530a;

    /* renamed from: b */
    private final Executor f46531b;

    public ctu(Executor executor, C13090zc c13090zc) {
        this.f46531b = executor;
        this.f46530a = c13090zc;
    }

    @Override // com.google.android.gms.internal.ads.ctv
    /* renamed from: a */
    public final void mo17231a(String str) {
        this.f46531b.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.ctx

            /* renamed from: a */
            private final ctu f46534a;

            /* renamed from: b */
            private final String f46535b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46534a = this;
                this.f46535b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ctu ctuVar = this.f46534a;
                ctuVar.f46530a.zzen(this.f46535b);
            }
        });
    }
}
