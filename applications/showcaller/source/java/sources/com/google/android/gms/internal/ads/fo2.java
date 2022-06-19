package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fo2.class */
public final class fo2 {

    /* renamed from: a */
    private final Executor f23012a;

    /* renamed from: b */
    private final ii0 f23013b;

    public fo2(Executor executor, ii0 ii0Var) {
        this.f23012a = executor;
        this.f23013b = ii0Var;
    }

    /* renamed from: a */
    public final void m15130a(String str) {
        this.f23012a.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.eo2

            /* renamed from: d */
            private final fo2 f22302d;

            /* renamed from: e */
            private final String f22303e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22302d = this;
                this.f22303e = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f22302d.m15129b(this.f22303e);
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ void m15129b(String str) {
        this.f23013b.mo9583n(str);
    }
}
